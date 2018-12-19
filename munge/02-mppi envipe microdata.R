# TODO: expansion factors (relevant to state level?)

if (amilise == "no"){
  TVivienda_16 <- import("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/TVivienda_16.dbf") %>% # read in microdata with state names
    select(2:4) # select id & state columns from Vivienda df to left join in state id to main df
  TVivienda_15 <- import("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/TVivienda_15.dbf") %>%
    select(2:4)
  TVivienda_14 <- import("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/TVivienda_14.dbf") %>%
    select(1:3)
  TVivienda_13 <- import("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/TVivienda_13.dbf") %>%
    select(1:3)
  TVivienda_12 <- import("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/TVivienda_12.dbf") %>%
    select(1:3)
  TVivienda_11 <- import("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/TVivienda_11.dbf") %>%
    select(1:3)
  
  
  TPer_Vic1_16 <- import("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/TPer_Vic1_16.dbf") # read in envipe microdata
  TPer_Vic1_15 <- import("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/TPer_Vic1_15.dbf")
  TPer_Vic1_14 <- import("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/TPer_Vic1_14.dbf")
  TPer_Vic1_13 <- import("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/TPer_Vic1_13.dbf")
  TPer_Vic1_12 <- import("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/TPer_Vic1_12.dbf")
  TPer_Vic1_11 <- import("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/TPer_Vic1_11.dbf")
}
if (amilise == "yes"){
  TVivienda_16 <- import("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/TVivienda_16.dbf") %>% # read in microdata with state names
    select(2:4) # select id & state columns from Vivienda df to left join in state id to main df
  TVivienda_15 <- import("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/TVivienda_15.dbf") %>%
    select(2:4)
  TVivienda_14 <- import("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/TVivienda_14.dbf") %>%
    select(1:3)
  TVivienda_13 <- import("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/TVivienda_13.dbf") %>%
    select(1:3)
  TVivienda_12 <- import("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/TVivienda_12.dbf") %>%
    select(1:3)
  TVivienda_11 <- import("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/TVivienda_11.dbf") %>%
    select(1:3)
  
  
  TPer_Vic1_16 <- import("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/TPer_Vic1_16.dbf") # read in envipe microdata
  TPer_Vic1_15 <- import("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/TPer_Vic1_15.dbf")
  TPer_Vic1_14 <- import("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/TPer_Vic1_14.dbf")
  TPer_Vic1_13 <- import("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/TPer_Vic1_13.dbf")
  TPer_Vic1_12 <- import("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/TPer_Vic1_12.dbf")
  TPer_Vic1_11 <- import("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/TPer_Vic1_11.dbf")
}

# select only columns of 8 questions used as MPPI indicators
# left join in id codes & state numbers
# get rid of individual id columns
# add year column

envipe16.mppi <- TPer_Vic1_16 %>%
  select("UPM", "VIV_SEL", "AP5_1_02", "AP5_1_01", "AP5_6_02", "AP5_5_06", "AP5_5_02", "AP5_5_03", "AP5_2_1", "AP4_3_1") %>% 
  left_join(TVivienda_16, by = c("UPM", "VIV_SEL")) %>% 
  select(-"UPM", -"VIV_SEL") %>% 
  mutate(year = 2016) 

envipe15.mppi <- TPer_Vic1_15 %>%
  select("UPM", "VIV_SEL", "AP5_1_02", "AP5_1_01", "AP5_5_06", "AP5_5_03", "AP5_2_1", "AP4_3_1") %>%
  ## municipal police q's don't exist in this year (AP5_6_02 & AP5_5_02)
  left_join(TVivienda_15, by = c("UPM", "VIV_SEL")) %>%
  select(-"UPM", -"VIV_SEL") %>%
  mutate(year = 2015)

envipe14.mppi <- TPer_Vic1_14 %>%
  select("CONTROL", "VIV_SEL", "AP5_1_02", "AP5_1_01", "AP5_6_02", "AP5_5_06", "AP5_5_02", "AP5_5_03", "AP5_2_1", "AP4_3_1") %>%
  left_join(TVivienda_14, by = c("CONTROL", "VIV_SEL")) %>%
  select(-"CONTROL", -"VIV_SEL") %>%
  mutate(year = 2014)

envipe13.mppi <- TPer_Vic1_13 %>%
  select("CONTROL", "VIV_SEL", "AP5_1_02", "AP5_1_01", "AP5_6_2", "AP5_5_6", "AP5_5_2", "AP5_5_3", "AP5_2_1", "AP4_3_1") %>%
  left_join(TVivienda_13, by = c("CONTROL", "VIV_SEL")) %>%
  select(-"CONTROL", -"VIV_SEL") %>%
  mutate(year = 2013)

envipe12.mppi <- TPer_Vic1_12 %>%
  select("CONTROL", "VIV_SEL", "AP5_1_2", "AP5_1_1", "AP5_6_2", "AP5_5_6", "AP5_5_2", "AP5_5_3", "AP5_2_11", "AP4_4_1") %>%
  left_join(TVivienda_12, by = c("CONTROL", "VIV_SEL")) %>%
  select(-"CONTROL", -"VIV_SEL") %>%
  mutate(year = 2012)

envipe11.mppi <- TPer_Vic1_11 %>%
  select("CONTROL", "VIV_SEL", "AP5_1_2", "AP5_1_1", "AP5_6_2", "AP5_5_6", "AP5_5_2", "AP5_5_3", "AP5_2_13", "AP4_3_1") %>%
  left_join(TVivienda_11, by = c("CONTROL", "VIV_SEL")) %>%
  select(-"CONTROL", -"VIV_SEL") %>%
  mutate(year = 2011)


# merge all the years
envipe.mppi <- envipe16.mppi %>%
  merge(envipe15.mppi, all = T) %>%
  merge(envipe14.mppi, all = T) %>%
  merge(envipe13.mppi, all = T) %>%
  merge(envipe12.mppi, all = T) %>%
  merge(envipe11.mppi, all = T) %>%
  dplyr::rename(inegi.leading = ENT) %>% # rename state number column to left join state codes later
  mutate(inegi.leading = as.integer(inegi.leading)) %>% # make state numbers integer to enable left_join of state codes
  gather(key = "question.code", value = "response.code", -"inegi.leading", -"year") %>% # gather variablenames into a single column
  filter(!(is.na(response.code))) %>% # filter out NA values
  group_by(inegi.leading, question.code, year) %>% # group by state, question, year
  mutate(total = dplyr::n()) %>% # make "total" column with the number of observations per state & question
  ungroup() %>%
  mutate(response.code = as.numeric(response.code)) %>% # make response codes numeric
  group_by(inegi.leading, question.code, response.code, year) %>% # group by response
  mutate(n = dplyr::n()) %>% # make column of the number of each response
  ungroup() %>%
  distinct() %>% # remove duplicate values
  mutate(value = (n/total) * 100) %>% # make value column of the percentage of each response
  mutate(metric = "porcentaje de las respuestas") %>% # add in column with metric of the value
  left_join(codes17, by = c("question.code", "response.code", "year")) %>% # add in questions & responses from codes table
  left_join(mpi.state.codes, by = "inegi.leading") %>% # bring in state codes
  select(code, question.code, question, response.code, response, metric, value, year) # get rid of extra columns


## add in 2017 (done separately because they started putting the state name as a column, so very different than other years)

TPer_Vic1_17 <- import("S:/National Peace Indices/Mexico Peace Index/rawdata/TPer_Vic1_17.dbf") # read in 2017 envipe microdata

envipe17.mppi <- TPer_Vic1_17 %>%
  select("NOM_ENT", "AP5_1_02", "AP5_1_01", "AP5_6_02", "AP5_5_06", "AP5_5_02", "AP5_5_03", "AP5_2_1", "AP4_3_1") %>% # select only columns of 8 questions used as MPPI indicators
  dplyr::rename(state.new.long = NOM_ENT) %>% # rename state column for left join state codes
  gather(key = "question.code", value = "response.code", -"state.new.long") %>% # gather variablenames into a single column
  filter(!(is.na(response.code))) %>% # filter out NA values
  group_by(state.new.long, question.code) %>% # group by state and question
  mutate(total = dplyr::n()) %>% # make "total" column with the number of observations per state & question
  ungroup() %>%
  mutate(response.code = as.numeric(response.code)) %>% # make response codes numeric
  group_by(state.new.long, question.code, response.code) %>% # group by response
  mutate(n = dplyr::n()) %>% # make column of the number of each response
  ungroup() %>%
  distinct() %>% # remove duplicate values
  mutate(value = (n/total) * 100) %>% # make value column of the percentage of each response
  mutate(metric = "porcentaje de las respuestas") %>% # add in column with metric of the value
  mutate(year = 2017) %>% # add year column
  left_join(codes17, by = c("question.code", "response.code", "year")) %>% # add in questions & responses from codes table
  mutate(state.new.long = as.character(state.new.long))

# fix accents
envipe17.mppi$state.new.long <- iconv(envipe17.mppi$state.new.long, "UTF-8", "ASCII", sub = "")

envipe17.mppi$state.new.long <- gsub("Mxico", "México", envipe17.mppi$state.new.long)
envipe17.mppi$state.new.long <- gsub("Quertaro", "Querétaro", envipe17.mppi$state.new.long)
envipe17.mppi$state.new.long <- gsub("Michoacn", "Michoacán", envipe17.mppi$state.new.long)
envipe17.mppi$state.new.long <- gsub("Yucatn", "Yucatán", envipe17.mppi$state.new.long)
envipe17.mppi$state.new.long <- gsub("Len", "León", envipe17.mppi$state.new.long)
envipe17.mppi$state.new.long <- gsub("Potos", "Potosí", envipe17.mppi$state.new.long)

envipe17.mppi <- envipe17.mppi %>% 
  left_join(mpi.state.codes, by = "state.new.long") %>% # bring in state codes
  select(code, question.code, question, response.code, response, metric, value, year) # get rid of extra columns


envipe.mppi <- envipe.mppi %>%
  rbind(envipe17.mppi) # add in 2017
