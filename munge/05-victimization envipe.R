# envipe microdatos 2018
# national, not for database

# TODO: expansion factors
# FAC_ELE is for 18+, not in sdem, or TModVic
# FAC_VIV and FAC_HOG are not individual

if (amilise == "no"){
  envipe.2018.sdem <- import("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/ENVIPE/TSDem.dbf") %>%
    dplyr::rename(R_SEL = N_REN) # N_REN in sdem is the same as R_SEL in the others
  envipe.2018.vic1 <- import("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/ENVIPE/TPer_Vic1.dbf")
  envipe.2018.vic2 <- import("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/ENVIPE/TPer_Vic2.dbf")
  envipe.2018.modvic <- import("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/ENVIPE/TMod_Vic.dbf")
}
if (amilise == "yes"){
  envipe.2018.sdem <- import("S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/ENVIPE/TSDem.dbf") %>%
    dplyr::rename(R_SEL = N_REN) # N_REN in sdem is the same as R_SEL in the others
  envipe.2018.vic1 <- import("S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/ENVIPE/TPer_Vic1.dbf")
  envipe.2018.vic2 <- import("S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/ENVIPE/TPer_Vic2.dbf")
  envipe.2018.modvic <- import("S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/ENVIPE/TMod_Vic.dbf")
  envipe.2018.sdem <- import("S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/ENVIPE/TSDem.dbf") %>%
    dplyr::rename(R_SEL = N_REN) # N_REN in sdem is the same as R_SEL in the others
  envipe.2018.vic1 <- import("S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/ENVIPE/TPer_Vic1.dbf")
  envipe.2018.vic2 <- import("S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/ENVIPE/TPer_Vic2.dbf")
  envipe.2018.modvic <- import("S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/ENVIPE/TMod_Vic.dbf")
}

# exp factor test
envipe.insecurity <- envipe.2018.vic1 %>%
  mutate(AP4_2_05 = as.numeric(as.character(AP4_2_05))) %>%
  mutate(FAC_ELE = as.numeric(as.character(FAC_ELE))) %>%
  mutate(CVE_ENT = as.character(CVE_ENT)) %>%
  group_by(CVE_ENT) %>%
  dplyr::summarise(insecurity = weighted.mean(AP4_2_05, FAC_ELE), total = sum(FAC_ELE))


# this is a bad way to do this, lots of duplicate columns, need to fix
envipe.18 <- envipe.2018.modvic[,c("UPM", "VIV_SEL", "HOGAR", "R_SEL", "BP1_20")] %>%
  merge(envipe.2018.vic2[,c("UPM", "VIV_SEL", "HOGAR", "R_SEL","AP7_2")], by = c("UPM", "VIV_SEL", "HOGAR", "R_SEL")) %>%
  merge(envipe.2018.vic1[,c("UPM", "VIV_SEL", "HOGAR", "R_SEL","FAC_ELE", "AP5_5_06" )], by = c("UPM", "VIV_SEL", "HOGAR", "R_SEL"))

victim.perception <- envipe.18 %>%
  select(5:8) %>%
  filter(AP7_2 == 1) %>%
  filter(!is.na(AP5_5_06)) %>%
  mutate(total = n()) %>%
  group_by(AP5_5_06) %>%
  mutate(n = dplyr::n()) %>% # make column of the number of each response
  ungroup() %>%
  distinct() %>% # remove duplicate values
  mutate(value = (n/total) * 100) %>%
  select(4:7) %>%
  distinct()
# of 5000 victims of crime who answered the q, 78% see public ministry as corrupt

reported.perception <- envipe.18 %>%
  select(5:8) %>%
  filter(BP1_20 == 1) %>%
  filter(!is.na(AP5_5_06)) %>%
  mutate(total = n()) %>%
  group_by(AP5_5_06) %>%
  mutate(n = dplyr::n()) %>% # make column of the number of each response
  ungroup() %>%
  distinct() %>% # remove duplicate values
  mutate(value = (n/total) * 100) %>%
  select(4:7) %>%
  distinct()
# of 3000 who reported crime, 73% see public ministry as corrupt

non.reported.perception <- envipe.18 %>%
  select(5:8) %>%
  filter(BP1_20 == 2) %>%
  filter(!is.na(AP5_5_06)) %>%
  mutate(total = n()) %>%
  group_by(AP5_5_06) %>%
  mutate(n = dplyr::n()) %>% # make column of the number of each response
  ungroup() %>%
  distinct() %>% # remove duplicate values
  mutate(value = (n/total) * 100) %>%
  select(4:7) %>%
  distinct()
# of 20000 who did not report crime, 75% see public ministry as corrupt

corruption.reported <- envipe.18 %>%
  select(5:8) %>%
  filter(AP5_5_06 == 1) %>%
  filter(!is.na(BP1_20)) %>%
  mutate(total = n()) %>%
  group_by(BP1_20) %>%
  mutate(n = dplyr::n()) %>% # make column of the number of each response
  ungroup() %>%
  distinct() %>% # remove duplicate values
  mutate(value = (n/total) * 100) %>%
  select(1, 5:7) %>%
  distinct()
# of 17,000 who see public ministry as corrupt, 12% reported a crime


corruption.victims <- envipe.18 %>%
  select(5:8) %>%
  filter(AP5_5_06 == 1) %>%
  filter(!is.na(AP7_2)) %>%
  mutate(total = n()) %>%
  group_by(AP7_2) %>%
  mutate(n = dplyr::n()) %>% # make column of the number of each response
  ungroup() %>%
  distinct() %>% # remove duplicate values
  mutate(value = (n/total) * 100) %>%
  select(2, 5:7) %>%
  distinct()
# of 17,000 who see pub min as corrupt, 22% were victims




# AP7_2 (1) yes, victim of crime in 2018

# BP1_20 (1) yes, reported the crime

# AP5_5_06 is the public ministry corrupt -- 1 yes, 2 no, 9 don't know/respond