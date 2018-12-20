## DO NOT USE -- UNDP provided newer data already indexed, see indigenous development gap script
# and deleted this data from the share drive

# replicating the measure of the indigenous development gap from 2010 UNDP report with 2015 INEGI survey data

install.packages('bit64')
library(bit64)

# make list of all the state files
if (amilise == "no"){
  all.states <- list("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA02.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA03.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA04.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA05.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA06.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA07.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA08.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA09.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA10.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA11.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA12.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA13.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA14.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA15.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA16.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA17.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA18.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA19.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA20.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA21.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA22.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA23.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA24.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA25.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA26.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA27.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA28.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA29.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA30.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA31.CSV",
                     "S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA32.CSV")
}
if (amilise == "yes"){
  all.states <- list("S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA02.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA03.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA04.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA05.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA06.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA07.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA08.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA09.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA10.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA11.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA12.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA13.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA14.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA15.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA16.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA17.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA18.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA19.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA20.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA21.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA22.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA23.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA24.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA25.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA26.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA27.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA28.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA29.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA30.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA31.CSV",
                     "S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA32.CSV")
}

# import the first state to attach all those from the for loop onto
if (amilise == "no"){
  states <- import("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA01.CSV") %>%
    select(ID_VIV, ID_PERSONA, ENT, FACTOR, EDAD, HLENGUA, ESCOLARI, INGTRMEN, EDAD_MORIR_A, EDAD_MORIR_M, EDAD_MORIR_D)
}
if (amilise == "yes"){
  states <- import("S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/Encuesta Intercensal/TR_PERSONA01.CSV") %>%
    select(ID_VIV, ID_PERSONA, ENT, FACTOR, EDAD, HLENGUA, ESCOLARI, INGTRMEN, EDAD_MORIR_A, EDAD_MORIR_M, EDAD_MORIR_D)
}

# import each file from the list, selecting only relevant columns, and rbinding to states df
for(i in all.states) {
  x = import(i) 
  x = select(x, ID_VIV, ID_PERSONA, ENT, FACTOR, EDAD, HLENGUA, ESCOLARI, INGTRMEN, EDAD_MORIR_A, EDAD_MORIR_M, EDAD_MORIR_D)
  states = rbind(states, x)
}


# indigenous -- anyone who speaks an indigenous language or lives in a home where someone does (from UNDP methodology)
indig <- states %>%
  group_by(ID_VIV, ENT) %>%
  filter(any(HLENGUA == 1)) %>% # keep only people in households where at least one person speaks indig lang
  ungroup()

# non-indigenous
nonindig <- states %>%
  group_by(ID_VIV, ENT) %>%
  filter(all(HLENGUA != 1)) %>% # keep only people in households where no one speaks indig lang
  ungroup()


# life expectancy at birth indicator-- avg of "EDAD_MORIR" (A, M, D) = age of your last child when they died (?)
# TODO: how to classify 98 ("menos de un mes/ano") in EDAD_MORIR_D & EDAD_MORIR_M so it doesn't mess with the mean
# & 99 in EDAD_MORIR_D is "no especificado"

# indig
life.exp.indig <- indig %>%
  # create column combining day, month & year responses into comparable measure
  mutate(EDAD_MORIR = ifelse(is.na(EDAD_MORIR_A),
                             ifelse(is.na(EDAD_MORIR_M),
                                    EDAD_MORIR_D/365,
                                    EDAD_MORIR_M/12),
                             EDAD_MORIR_A)) %>%
  filter(!is.na(EDAD_MORIR)) %>%
  group_by(ENT) %>%
  mutate(avg.age.death.indig = mean(EDAD_MORIR)) %>% # make column with mean of the measure by state
  ungroup() %>%
  select(ENT, avg.age.death.indig) %>% # get rid of extra columns
  distinct() # get rid of duplicate values

# nonindig
life.exp.nonindig <- nonindig %>%
  mutate(EDAD_MORIR = ifelse(is.na(EDAD_MORIR_A),
                             ifelse(is.na(EDAD_MORIR_M),
                                    EDAD_MORIR_D/365,
                                    EDAD_MORIR_M/12),
                             EDAD_MORIR_A)) %>%
  filter(!is.na(EDAD_MORIR)) %>%
  group_by(ENT) %>%
  mutate(avg.age.death.nonindig = mean(EDAD_MORIR)) %>%
  ungroup() %>%
  select(ENT, avg.age.death.nonindig) %>%
  distinct()

# domain of expected years of schooling & mean years of schooling of those 25 and older -- can do the 2nd indicator
#indig
yrs.schooling.indig <- indig %>%
  filter(EDAD >= 25) %>% # only 25 and older
  filter(ESCOLARI != 99) %>% # eliminate no especificado code
  group_by(ENT) %>%
  mutate(avg.yrs.school.indig = mean(ESCOLARI)) %>% # calculate mean by state
  ungroup() %>%
  select(ENT, avg.yrs.school.indig) %>% # get rid of extra columns
  distinct() # get rid of duplicate values

#nonindig
yrs.schooling.nonindig <- nonindig %>%
  filter(EDAD >= 25) %>%
  filter(ESCOLARI != 99) %>%
  group_by(ENT) %>%
  mutate(avg.yrs.school.nonindig = mean(ESCOLARI)) %>%
  ungroup() %>%
  select(ENT, avg.yrs.school.nonindig) %>%
  distinct()


# GNI per capita (PPP $) indicator -- avg income
# NOTE: incomes above 999,997 all classified as 999,998
# also "no recibe ingresos" = 0 (include or exclude?)

#indig
income.indig <- indig %>%
  filter(INGTRMEN != 999999) %>% # filter out no especificado code
  group_by(ENT) %>%
  mutate(avg.income.indig = mean(INGTRMEN)) %>% # calculate mean by state
  ungroup() %>%
  select(ENT, avg.income.indig) %>% # get rid of extra columns
  distinct() # get rid of duplicate values

#nonindig
income.nonindig <- nonindig %>%
  filter(INGTRMEN != 999999) %>%
  group_by(ENT) %>%
  mutate(avg.income.nonindig = mean(INGTRMEN)) %>%
  ungroup() %>%
  select(ENT, avg.income.nonindig) %>%
  distinct()

# put all together
indig.nonindig <- life.exp.indig %>%
  left_join(life.exp.nonindig, by = "ENT") %>%
  left_join(yrs.schooling.indig, by = "ENT") %>%
  left_join(yrs.schooling.nonindig, by = "ENT") %>%
  left_join(income.indig, by = "ENT") %>%
  left_join(income.nonindig, by = "ENT") %>% # left join all the different indicators
  rename(inegi.code = "ENT") %>%
  left_join(mpi.state.codes, by = "inegi.code") %>% # rename & left join in state codes
  select(9, 2:7) %>% # get rid of extra columns
  mutate(year = 2015) # add year column


# TODO: calculate HDI for indig & non-indig pops, calculate difference between
# (need methodology from UNDP 2010 measure)






