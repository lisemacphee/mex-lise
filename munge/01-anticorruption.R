# anticorruption programs
# not for index

if (amilise == "no"){
  anticorruption.program <- read.dbf("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/CTRINANT.DBF")
}
if (amilise == "yes"){
  anticorruption.program <- read.dbf("S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/CTRINANT.DBF")
}

anticorruption <- anticorruption.program %>%
  select(ENTIDAD, CTA_ANTC)

# 1 is yes, 2 is in the process of integration, 3 is no, 9 is don't know


# in the judiciary
if (amilise == "no"){
  anticorruption.judiciary <- read.dbf("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/CTRLANTI.DBF")
}
if (amilise == "yes"){
  anticorruption.judiciary <- read.dbf("S:/National Peace Indices/Mexico Peace Index/MPI 2019/Data/MPPI Data/CTRLANTI.DBF")
}

anticorrupt.jud <- anticorruption.judiciary %>%
  select(ENTIDAD, RE_SPNN1)