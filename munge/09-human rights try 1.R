# Censo Nacional de Derechos Humanos Estatal 2017
# complaints, by group and acceptance
# use part 2 instead pls

if (amilise == "no"){
  human_afec <- import("S:/Institute for Economics and Peace/National Peace Indices/Mexico Peace Index/Human Rights/data/ESTAAFEC.DBF")
}
if (amilise == "yes"){
  human_afec <- import("S:/National Peace Indices/Mexico Peace Index/Human Rights/data/ESTAAFEC.DBF")
}

human.rights <- as.data.frame(lapply(human_afec, function(x) as.numeric(as.character(x))))

human.rights[is.na(human.rights)] <- 0

complaints <- human.rights %>%
  group_by(ENTIDAD) %>%
  mutate(total.complaints = sum(POBLAATT)) %>%
  mutate(total.disabled = sum(POBLAA1)) %>%
  mutate(total.elderly = sum(POBLAA2)) %>%
  mutate(total.child = sum(POBLAA3)) %>%
  mutate(total.student = sum(POBLAA4)) %>%
  mutate(total.migrant = sum(POBLAA5)) %>%
  mutate(total.woman = sum(POBLAA6)) %>%
  mutate(total.crimevictim = sum(POBLAA7)) %>%
  mutate(total.disappeared = sum(POBLAA8)) %>%
  mutate(total.privadadelibertad = sum(POBLAA9)) %>%
  mutate(total.journalist = sum(POBLAA10)) %>%
  mutate(total.defender = sum(POBLAA11)) %>%
  mutate(total.laborenviroeconcult = sum(POBLAA12)) %>%
  mutate(total.indigenous = sum(POBLAA13)) %>%
  mutate(total.LGBTI = sum(POBLAA14)) %>%
  mutate(total.minority = sum(POBLAA15)) %>%
  ungroup() %>%
  # mutate(percent_disabled = (total.disabled/total.complaints)*100) %>%
  # mutate(percent_elderly = (total.elderly/total.complaints)*100) %>%
  # mutate(percent_child = (total.child/total.complaints)*100) %>%
  # mutate(percent_student = (total.student/total.complaints)*100) %>%
  # mutate(percent_migrant = (total.migrant/total.complaints)*100) %>%
  # mutate(percent_woman = (total.woman/total.complaints)*100) %>%
  # mutate(percent_crimevictim = (total.crimevictim/total.complaints)*100) %>%
  # mutate(percent_disappeared = (total.disappeared/total.complaints)*100) %>%
  # mutate(percent_privadadelibertad = (total.privadadelibertad/total.complaints)*100) %>%
  # mutate(percent_journalist = (total.journalist/total.complaints)*100) %>%
  # mutate(percent_defender = (total.defender/total.complaints)*100) %>%
# mutate(percent_laborenviroeconcult = (total.laborenviroeconcult/total.complaints)*100) %>%
# mutate(percent_indigenous = (total.indigenous/total.complaints)*100) %>%
# mutate(percent_LGBTI = (total.LGBTI/total.complaints)*100) %>%
# mutate(percent_minority = (total.minority/total.complaints)*100) %>%

filter(ESTQUEJA == 100) %>%
  # mutate(percent.accepted = (POBLAATT/total.complaints)*100) %>%
  # mutate(accepted.disabled = (POBLAA1/total.disabled)*100) %>%
  # mutate(accepted.elderly = (POBLAA2/total.elderly)*100) %>%
  # mutate(accepted.child = (POBLAA3/total.child)*100) %>%
  # mutate(accepted.student = (POBLAA4/total.student)*100) %>%
  # mutate(accepted.migrant = (POBLAA5/total.migrant)*100) %>%
  # mutate(accepted.woman = (POBLAA6/total.woman)*100) %>%
  # mutate(accepted.crimevictim = (POBLAA7/total.crimevictim)*100) %>%
  # mutate(accepted.disappeared = (POBLAA8/total.disappeared)*100) %>%
  # mutate(accepted.privadadelibertad = (POBLAA9/total.privadadelibertad)*100) %>%
  # mutate(accepted.journalist = (POBLAA10/total.journalist)*100) %>%
# mutate(accepted.defender = (POBLAA11/total.defender)*100) %>%
# mutate(accepted.laborenviroeconcult = (POBLAA12/total.laborenviroeconcult)*100) %>%
# mutate(accepted.indigenous = (POBLAA13/total.indigenous)*100) %>%
# mutate(accepted.LGBTI = (POBLAA14/total.LGBTI)*100) %>%
# mutate(accepted.minority = (POBLAA15/total.minority)*100) %>%
mutate(inegi.code = as.integer(ENTIDAD)) %>%
  left_join(mpi.state.codes, by = "inegi.code") %>%
  select("code", 3:18, 21:36) %>%
  dplyr::rename(total.accepted = 2, accepted.disabled = 3, accepted.elderly = 4, accepted.child = 5, accepted.student = 6,
                accepted.migrant = 7, accepted.woman = 8, accepted.crimevictim = 9, accepted.disappeared = 10,
                accepted.privadadelibertad = 11, accepted.journalist = 12, accepted.defender = 13,
                accepted.laborenviroeconcult = 14, accepted.indigenous = 15, accepted.LGBTI = 16, accepted.minority = 17)

write.csv(complaints, "output/mexport_14.csv")  

