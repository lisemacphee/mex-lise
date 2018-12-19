# community cooperation to solve issues

#### 2017 to correlate with change in MPI scores ####

if (amilise == "no"){
  cooperation.17 <- read_xlsx("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/V_percepcion_seguridad_2017_est.xlsx",
                              sheet = 23)
}
if (amilise == "yes"){
  cooperation.17 <- read_xlsx("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/V_percepcion_seguridad_2017_est.xlsx",
                              sheet = 23)
}

names(cooperation.17) <- c("problema","total_pop","X_2","X_3","X_4","X_5",
                           "X_6","X_7","X_8","X_9", "org_rel", "X_11", "X_12", "no_org_rel","year","X")

cooperation17 <- cooperation.17 %>%
  mutate(statename = NA)

for (n in 1:33){
  state_name <- as.character(cooperation17[8*n - 1,1])
  for (i in (8*n):(8*n+5)){
    cooperation17$statename[i] <- state_name
  }
}

cooperation17 <- cooperation17[complete.cases(cooperation17$statename),]
cooperation17 <- cooperation17 %>%
  select('statename','problema','org_rel','no_org_rel')

cooperation17$org_rel <- as.numeric(cooperation17$org_rel)
cooperation17$no_org_rel <- as.numeric(cooperation17$no_org_rel)

names(cooperation17) <- c('state.new.long','problema','community organization to solve',
                          'no community organization to solve')
cooperation17$state.new.long <- gsub("Estados Unidos Mexicanos", "National", cooperation17$state.new.long)
cooperation17$state.new.long <- gsub("Estado de ", "", cooperation17$state.new.long)

cooperation17 <- cooperation17 %>%
  gather(indicator, value, 3:4) %>%
  left_join(mpi.state.codes, by = "state.new.long") %>%
  mutate(year = 2016) %>%
  select(code, indicator, problema, year, value) %>%
  mutate(indicator = paste(indicator, problema)) %>%
  mutate(type = "rate")

cooperation17 <- cooperation17[,c(1:2,5,3:4)]

write.csv(cooperation17, "output/mexport_13.csv", row.names = F)
