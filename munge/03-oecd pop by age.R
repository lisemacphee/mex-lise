# population by age (OECD)

if (amilise == "no"){
  oecd.pop.by.age <- read.csv("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/EDU_DEM_26112018232710717.csv")
}
if (amilise == "yes"){
  oecd.pop.by.age <- read.csv("S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/EDU_DEM_26112018232710717.csv")
}

age.groups <- tribble(~Age, ~group,
                      "Less than 2", "0-4",
                      "2 years", "0-4",
                      "3 years", "0-4",
                      "4 years", "0-4",
                      "5 years", "5-9",
                      "6 years", "5-9",
                      "7 years", "5-9",
                      "8 years", "5-9",
                      "9 years", "5-9",
                      "10 years", "10-14",   
                      "11 years", "10-14",
                      "12 years", "10-14", 
                      "13 years", "10-14",
                      "14 years", "10-14",
                      "15 years", "15-19",
                      "16 years", "15-19",
                      "17 years", "15-19",
                      "18 years", "15-19",
                      "19 years", "15-19",
                      "20 years", "20-24",   
                      "21 years", "20-24",   
                      "22 years", "20-24",   
                      "23 years", "20-24",   
                      "24 years", "20-24",   
                      "25 years", "25-29",
                      "26 years", "25-29",
                      "27 years", "25-29",
                      "28 years", "25-29",
                      "29 years", "25-29",
                      "30 years", "30-34",   
                      "31 years", "30-34",   
                      "32 years", "30-34",   
                      "33 years", "30-34",   
                      "34 years", "30-34",   
                      "35 years", "35-39",
                      "36 years", "35-39",
                      "37 years", "35-39",
                      "38 years", "35-39",
                      "39 years", "35-39",
                      "40 years", "40-44",   
                      "41 years", "40-44",   
                      "42 years", "40-44",   
                      "43 years", "40-44",   
                      "44 years", "40-44",   
                      "45 years", "45-49",
                      "46 years", "45-49",
                      "47 years", "45-49",
                      "48 years", "45-49",
                      "49 years", "45-49",
                      "50-54 years", "50-54",
                      "55-59 years", "55-59",
                      "60-64 years", "60-64",
                      "65 and over", "65+")

pop.age <- oecd.pop.by.age %>%
  filter(Sex == "Total") %>%
  left_join(age.groups, by = "Age") %>%
  select(Country, Year, Value, group) %>%
  group_by(Country, group) %>%
  mutate(group.total = sum(Value)) %>%
  ungroup() %>%
  select(Country, Year, group, group.total) %>%
  distinct() %>%
  group_by(Country) %>%
  mutate(country.total = sum(group.total)) %>%
  group_by(Country, group) %>%
  mutate(percentage = (group.total/country.total)*100) %>%
  group_by(group) %>%
  mutate(oecd.average = mean(percentage)) %>%
  ungroup()

write.csv(pop.age, "output/mexport_24.csv", row.names = F)  
