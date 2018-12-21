# make tribble of responses corresponding to each response code & question
# (taken from 2017, but checked with all preceding years - 7 & 8 responses added from 2011)

envipe.responses17 <- tribble(~question, ~response.code, ~response,
                              "sabe usted si alguna de las siguientes acciones se realizaron en el 2015 en su municipio/localidad, como mejorar el alumbrado?", 1, "si sabe",
                              "sabe usted si alguna de las siguientes acciones se realizaron en el 2015 en su municipio/localidad, como mejorar el alumbrado?", 2, "no sabe",
                              "sabe usted si alguna de las siguientes acciones se realizaron en el 2015 en su municipio/localidad, como mejorar el alumbrado?", 3, "no se realizo",
                              "sabe usted si alguna de las siguientes acciones se realizaron en el 2015 en su municipio/localidad, como mejorar el alumbrado?", 9, "no responde",
                              "sabe usted si alguna de las siguientes acciones se realizaron en el 2015 en su municipio/localidad, como mejorar el alumbrado?", 7, "no responde",
                              "sabe usted si alguna de las siguientes acciones se realizaron en el 2015 en su municipio/localidad, como construccion/mantenemiento de parques y canchas deportivas?", 1, "si sabe",
                              "sabe usted si alguna de las siguientes acciones se realizaron en el 2015 en su municipio/localidad, como construccion/mantenemiento de parques y canchas deportivas?", 2, "no sabe",
                              "sabe usted si alguna de las siguientes acciones se realizaron en el 2015 en su municipio/localidad, como construccion/mantenemiento de parques y canchas deportivas?", 3, "no se realizo",
                              "sabe usted si alguna de las siguientes acciones se realizaron en el 2015 en su municipio/localidad, como construccion/mantenemiento de parques y canchas deportivas?", 9, "no responde",
                              "sabe usted si alguna de las siguientes acciones se realizaron en el 2015 en su municipio/localidad, como construccion/mantenemiento de parques y canchas deportivas?", 7, "no responde",
                              "que tan efectivo considera el desempeno de la policia preventiva municipal?", 1, "muy efectivo",
                              "que tan efectivo considera el desempeno de la policia preventiva municipal?", 2, "algo efectivo",
                              "que tan efectivo considera el desempeno de la policia preventiva municipal?", 3, "poco efectivo",
                              "que tan efectivo considera el desempeno de la policia preventiva municipal?", 4, "nada efectivo",
                              "que tan efectivo considera el desempeno de la policia preventiva municipal?", 9, "no sabe/no responde",
                              "que tan efectivo considera el desempeno de la policia preventiva municipal?", 8, "no sabe/no responde",
                              "a su juicio, el ministerio publico y procuradurias estatales puede calificarse como corrupto?", 1, "si",
                              "a su juicio, el ministerio publico y procuradurias estatales puede calificarse como corrupto?", 2, "no",
                              "a su juicio, el ministerio publico y procuradurias estatales puede calificarse como corrupto?", 9, "no sabe/no responde",
                              "a su juicio, el ministerio publico y procuradurias estatales puede calificarse como corrupto?", 8, "no sabe/no responde",
                              "a su juicio, la policia preventiva municipal puede calificarse como corrupto?", 1, "si",
                              "a su juicio, la policia preventiva municipal puede calificarse como corrupto?", 2, "no",
                              "a su juicio, la policia preventiva municipal puede calificarse como corrupto?", 9, "no sabe/no responde",
                              "a su juicio, la policia preventiva municipal puede calificarse como corrupto?", 8, "no sabe/no responde",
                              "a su juicio, la policia estatal puede calificarse como corrupto?", 1, "si",
                              "a su juicio, la policia estatal puede calificarse como corrupto?", 2, "no",
                              "a su juicio, la policia estatal puede calificarse como corrupto?", 9, "no sabe/no responde",
                              "a su juicio, la policia estatal puede calificarse como corrupto?", 8, "no sabe/no responde",
                              "digame el grado de confianza que tiene en los vecinos", 1, "mucha",
                              "digame el grado de confianza que tiene en los vecinos", 2, "alguna",
                              "digame el grado de confianza que tiene en los vecinos", 3, "poca",
                              "digame el grado de confianza que tiene en los vecinos", 4, "nada",
                              "digame el grado de confianza que tiene en los vecinos", 5, "no aplica",
                              "digame el grado de confianza que tiene en los vecinos", 9, "no sabe/no responde",
                              "digame el grado de confianza que tiene en los vecinos", 8, "no sabe/no responde",
                              "en terminos de delincuencia, considera que vivir en colonia/localidad es...", 1, "seguro",
                              "en terminos de delincuencia, considera que vivir en colonia/localidad es...", 2, "inseguro",
                              "en terminos de delincuencia, considera que vivir en colonia/localidad es...", 9, "no sabe/no responde",
                              "en terminos de delincuencia, considera que vivir en colonia/localidad es...", 8, "no sabe/no responde")


# tribbles of questions with question codes by year


envipe.questions17 <- tribble(~question.code, ~question, ~year,
                              "AP5_1_02", "sabe usted si alguna de las siguientes acciones se realizaron en el 2015 en su municipio/localidad, como mejorar el alumbrado?", 2017,
                              "AP5_1_01", "sabe usted si alguna de las siguientes acciones se realizaron en el 2015 en su municipio/localidad, como construccion/mantenemiento de parques y canchas deportivas?", 2017,
                              "AP5_6_02", "que tan efectivo considera el desempeno de la policia preventiva municipal?", 2017,
                              "AP5_5_06", "a su juicio, el ministerio publico y procuradurias estatales puede calificarse como corrupto?", 2017,
                              "AP5_5_02", "a su juicio, la policia preventiva municipal puede calificarse como corrupto?", 2017,
                              "AP5_5_03", "a su juicio, la policia estatal puede calificarse como corrupto?", 2017,
                              "AP5_2_1", "digame el grado de confianza que tiene en los vecinos", 2017,
                              "AP4_3_1", "en terminos de delincuencia, considera que vivir en colonia/localidad es...", 2017)

# same as '17
envipe.questions16 <- tribble(~question.code, ~question, ~year,
                              "AP5_1_02", "sabe usted si alguna de las siguientes acciones se realizaron en el 2015 en su municipio/localidad, como mejorar el alumbrado?", 2016,
                              "AP5_1_01", "sabe usted si alguna de las siguientes acciones se realizaron en el 2015 en su municipio/localidad, como construccion/mantenemiento de parques y canchas deportivas?", 2016,
                              "AP5_6_02", "que tan efectivo considera el desempeno de la policia preventiva municipal?", 2016,
                              "AP5_5_06", "a su juicio, el ministerio publico y procuradurias estatales puede calificarse como corrupto?", 2016,
                              "AP5_5_02", "a su juicio, la policia preventiva municipal puede calificarse como corrupto?", 2016,
                              "AP5_5_03", "a su juicio, la policia estatal puede calificarse como corrupto?", 2016,
                              "AP5_2_1", "digame el grado de confianza que tiene en los vecinos", 2016,
                              "AP4_3_1", "en terminos de delincuencia, considera que vivir en colonia/localidad es...", 2016)

# no municipal police questions
envipe.questions15 <- tribble(~question.code, ~question, ~year,
                              "AP5_1_02", "sabe usted si alguna de las siguientes acciones se realizaron en el 2015 en su municipio/localidad, como mejorar el alumbrado?", 2015,
                              "AP5_1_01", "sabe usted si alguna de las siguientes acciones se realizaron en el 2015 en su municipio/localidad, como construccion/mantenemiento de parques y canchas deportivas?", 2015,
                              "AP5_5_06", "a su juicio, el ministerio publico y procuradurias estatales puede calificarse como corrupto?", 2015,
                              "AP5_5_03", "a su juicio, la policia estatal puede calificarse como corrupto?", 2015,
                              "AP5_2_1", "digame el grado de confianza que tiene en los vecinos", 2015,
                              "AP4_3_1", "en terminos de delincuencia, considera que vivir en colonia/localidad es...", 2015)

#same as '16 & '17
envipe.questions14 <- tribble(~question.code, ~question, ~year,
                              "AP5_1_02", "sabe usted si alguna de las siguientes acciones se realizaron en el 2015 en su municipio/localidad, como mejorar el alumbrado?", 2014,
                              "AP5_1_01", "sabe usted si alguna de las siguientes acciones se realizaron en el 2015 en su municipio/localidad, como construccion/mantenemiento de parques y canchas deportivas?", 2014,
                              "AP5_6_02", "que tan efectivo considera el desempeno de la policia preventiva municipal?", 2014,
                              "AP5_5_06", "a su juicio, el ministerio publico y procuradurias estatales puede calificarse como corrupto?", 2014,
                              "AP5_5_02", "a su juicio, la policia preventiva municipal puede calificarse como corrupto?", 2014,
                              "AP5_5_03", "a su juicio, la policia estatal puede calificarse como corrupto?", 2014,
                              "AP5_2_1", "digame el grado de confianza que tiene en los vecinos", 2014,
                              "AP4_3_1", "en terminos de delincuencia, considera que vivir en colonia/localidad es...", 2014)

# no zeros in middle 4
envipe.questions13 <- tribble(~question.code, ~question, ~year,
                              "AP5_1_02", "sabe usted si alguna de las siguientes acciones se realizaron en el 2015 en su municipio/localidad, como mejorar el alumbrado?", 2013,
                              "AP5_1_01", "sabe usted si alguna de las siguientes acciones se realizaron en el 2015 en su municipio/localidad, como construccion/mantenemiento de parques y canchas deportivas?", 2013,
                              "AP5_6_2", "que tan efectivo considera el desempeno de la policia preventiva municipal?", 2013,
                              "AP5_5_6", "a su juicio, el ministerio publico y procuradurias estatales puede calificarse como corrupto?", 2013,
                              "AP5_5_2", "a su juicio, la policia preventiva municipal puede calificarse como corrupto?", 2013,
                              "AP5_5_3", "a su juicio, la policia estatal puede calificarse como corrupto?", 2013,
                              "AP5_2_1", "digame el grado de confianza que tiene en los vecinos", 2013,
                              "AP4_3_1", "en terminos de delincuencia, considera que vivir en colonia/localidad es...", 2013)

# no zeros in first 2 either & last two codes different
envipe.questions12 <- tribble(~question.code, ~question, ~year,
                              "AP5_1_2", "sabe usted si alguna de las siguientes acciones se realizaron en el 2015 en su municipio/localidad, como mejorar el alumbrado?", 2012,
                              "AP5_1_1", "sabe usted si alguna de las siguientes acciones se realizaron en el 2015 en su municipio/localidad, como construccion/mantenemiento de parques y canchas deportivas?", 2012,
                              "AP5_6_2", "que tan efectivo considera el desempeno de la policia preventiva municipal?", 2012,
                              "AP5_5_6", "a su juicio, el ministerio publico y procuradurias estatales puede calificarse como corrupto?", 2012,
                              "AP5_5_2", "a su juicio, la policia preventiva municipal puede calificarse como corrupto?", 2012,
                              "AP5_5_3", "a su juicio, la policia estatal puede calificarse como corrupto?", 2012,
                              "AP5_2_11", "digame el grado de confianza que tiene en los vecinos", 2012,
                              "AP4_4_1", "en terminos de delincuencia, considera que vivir en colonia/localidad es...", 2012)

# last two codes different
# also they add 8 for response code to mean no responde - 9 still means no sabe
# in first two, 7 is "no especificado" instead of 9 for no responde
envipe.questions11 <- tribble(~question.code, ~question, ~year,
                              "AP5_1_2", "sabe usted si alguna de las siguientes acciones se realizaron en el 2015 en su municipio/localidad, como mejorar el alumbrado?", 2011,
                              "AP5_1_1", "sabe usted si alguna de las siguientes acciones se realizaron en el 2015 en su municipio/localidad, como construccion/mantenemiento de parques y canchas deportivas?", 2011,
                              "AP5_6_2", "que tan efectivo considera el desempeno de la policia preventiva municipal?", 2011,
                              "AP5_5_6", "a su juicio, el ministerio publico y procuradurias estatales puede calificarse como corrupto?", 2011,
                              "AP5_5_2", "a su juicio, la policia preventiva municipal puede calificarse como corrupto?", 2011,
                              "AP5_5_3", "a su juicio, la policia estatal puede calificarse como corrupto?", 2011,
                              "AP5_2_13", "digame el grado de confianza que tiene en los vecinos", 2011,
                              "AP4_3_1", "en terminos de delincuencia, considera que vivir en colonia/localidad es...", 2011)

# bring together questions from all years & left_join in responses & codes by question
envipe.codes17 <- envipe.questions17 %>%
  rbind(envipe.questions16) %>%
  rbind(envipe.questions15) %>%
  rbind(envipe.questions14) %>%
  rbind(envipe.questions13) %>%
  rbind(envipe.questions12) %>%
  rbind(envipe.questions11) %>%
  left_join(envipe.responses17, by = "question")

cache("codes17") # cached to be joined into dataframes with responses