#### reporting rate ####

if (amilise == "no"){
  reporting.rate.18 <- read_xlsx("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2018_est.xlsx",
                                 sheet = 2) %>%
    mutate(year = 2018) %>%
    dplyr::rename(entidad = 1)
  
  reporting.rate.17 <- read_xlsx("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2017_est.xlsx",
                                 sheet = 2) %>%
    mutate(year = 2017) %>%
    dplyr::rename(entidad = 1)
  
  reporting.rate.16 <- read_xlsx("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2016_est.xlsx",
                                 sheet = 2) %>%
    mutate(year = 2016) %>%
    dplyr::rename(entidad = 1)
  
  reporting.rate.15 <- read_xlsx("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2015.xlsx",
                                 sheet = 2) %>%
    mutate(year = 2015) %>%
    dplyr::rename(entidad = 1)
  
  reporting.rate.15 <- read_xlsx("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2015.xlsx",
                                 sheet = 2) %>%
    mutate(year = 2015) %>%
    dplyr::rename(entidad = 1)
  
  reporting.rate.14 <- read_xls("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2014.xls",
                                sheet = 2) %>%
    mutate(year = 2014) %>%
    dplyr::rename(entidad = 1)
  
  reporting.rate.13 <- read_xls("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito.xls",
                                sheet = 2) %>%
    mutate(year = 2013) %>%
    dplyr::rename(entidad = 1)
  
  reporting.rate.12 <- read_xls("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2012.xls",
                                sheet = 2) %>%
    mutate(year = 2012) %>%
    dplyr::rename(entidad = 1)
}
if (amilise == "yes"){
  reporting.rate.18 <- read_xlsx("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2018_est.xlsx",
                                 sheet = 2) %>%
    mutate(year = 2018) %>%
    dplyr::rename(entidad = 1)
  
  reporting.rate.17 <- read_xlsx("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2017_est.xlsx",
                                 sheet = 2) %>%
    mutate(year = 2017) %>%
    dplyr::rename(entidad = 1)
  
  reporting.rate.16 <- read_xlsx("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2016_est.xlsx",
                                 sheet = 2) %>%
    mutate(year = 2016) %>%
    dplyr::rename(entidad = 1)
  
  reporting.rate.15 <- read_xlsx("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2015.xlsx",
                                 sheet = 2) %>%
    mutate(year = 2015) %>%
    dplyr::rename(entidad = 1)
  
  reporting.rate.15 <- read_xlsx("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2015.xlsx",
                                 sheet = 2) %>%
    mutate(year = 2015) %>%
    dplyr::rename(entidad = 1)
  
  reporting.rate.14 <- read_xls("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2014.xls",
                                sheet = 2) %>%
    mutate(year = 2014) %>%
    dplyr::rename(entidad = 1)
  
  reporting.rate.13 <- read_xls("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito.xls",
                                sheet = 2) %>%
    mutate(year = 2013) %>%
    dplyr::rename(entidad = 1)
  
  reporting.rate.12 <- read_xls("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2012.xls",
                                sheet = 2) %>%
    mutate(year = 2012) %>%
    dplyr::rename(entidad = 1)
}

#### reason for not reporting ####

if (amilise == "yes"){
  reporting.reason.18 <- read_xlsx("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2018_est.xlsx",
                                   sheet = 11) %>%
    mutate(year = 2018) %>%
    dplyr::rename(entidad = 1)
  
  reporting.reason.17 <- read_xlsx("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2017_est.xlsx",
                                   sheet = 11) %>%
    mutate(year = 2017) %>%
    dplyr::rename(entidad = 1)
  
  reporting.reason.16 <- read_xlsx("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2016_est.xlsx",
                                   sheet = 11) %>%
    mutate(year = 2016) %>%
    dplyr::rename(entidad = 1)
  
  reporting.reason.15 <- read_xlsx("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2015.xlsx",
                                   sheet = 9) %>%
    mutate(year = 2015) %>%
    dplyr::rename(entidad = 1)
  
  reporting.reason.14 <- read_xls("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2014.xls",
                                  sheet = 9) %>%
    mutate(year = 2014) %>%
    dplyr::rename(entidad = 1)
  
  reporting.reason.13 <- read_xls("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito.xls",
                                  sheet = 9) %>%
    mutate(year = 2013) %>%
    dplyr::rename(entidad = 1)
  
  reporting.reason.12 <- read_xls("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2012.xls",
                                  sheet = 9) %>%
    mutate(year = 2012) %>%
    dplyr::rename(entidad = 1)
}
if (amilise == "yes"){
  reporting.reason.18 <- read_xlsx("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2018_est.xlsx",
                                   sheet = 11) %>%
    mutate(year = 2018) %>%
    dplyr::rename(entidad = 1)
  
  reporting.reason.17 <- read_xlsx("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2017_est.xlsx",
                                   sheet = 11) %>%
    mutate(year = 2017) %>%
    dplyr::rename(entidad = 1)
  
  reporting.reason.16 <- read_xlsx("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2016_est.xlsx",
                                   sheet = 11) %>%
    mutate(year = 2016) %>%
    dplyr::rename(entidad = 1)
  
  reporting.reason.15 <- read_xlsx("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2015.xlsx",
                                   sheet = 9) %>%
    mutate(year = 2015) %>%
    dplyr::rename(entidad = 1)
  
  reporting.reason.14 <- read_xls("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2014.xls",
                                  sheet = 9) %>%
    mutate(year = 2014) %>%
    dplyr::rename(entidad = 1)
  
  reporting.reason.13 <- read_xls("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito.xls",
                                  sheet = 9) %>%
    mutate(year = 2013) %>%
    dplyr::rename(entidad = 1)
  
  reporting.reason.12 <- read_xls("S:/National Peace Indices/Mexico Peace Index/rawdata/ENVIPE/III_denuncia_delito_2012.xls",
                                  sheet = 9) %>%
    mutate(year = 2012) %>%
    dplyr::rename(entidad = 1)
}
