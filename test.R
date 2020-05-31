library(psych)
library(ggplot2)
install.packages("effsize")
library(effsize)
# описательная статистика для корпуса двух периодов. Данные из файла periody.xlsx записаны в переменную periody
describe(periody$women)
describe(periody$women_2)
describe(periody$men)
describe(periody$men_2)
describe(periody$dact)
describe(periody$dact_2)
describe(periody$gyper)
describe(periody$gyper_2)
describe(periody$exact)
describe(periody$exact_2)
describe(periody$nonexact)
describe(periody$nonexact_2)
describe(periody$odn)
describe(periody$odn_2)
describe(periody$rasn)
describe(periody$rasn_2)
describe(periody$bedn)
describe(periody$bedn_2)
describe(periody$bog)
describe(periody$bog_2)

# визуализация распределения для первых четырех параметров
hist(periody$women)
hist(periody$nonexact)
hist(periody$gyper)
hist(periody$dact)

# Хи-квадрат для корпуса двух периодов
chisq.test(periody$women, periody$women_2) #женская 
chisq.test(periody$men, periody$men_2) # мужская
chisq.test(periody$dact, periody$dact_2) # дактилическая
chisq.test(periody$gyper, periody$gyper_2) # гипердактилическая

chisq.test(periody$exact, periody$exact_2) # точная
chisq.test(periody$nonexact, periody$nonexact_2) # неточная

chisq.test(periody$odn, periody$odn_2) # однородная
chisq.test(periody$rasn, periody$rasn_2) # разнородная

chisq.test(periody$bedn, periody$bedn_2) # бедная
chisq.test(periody$bog, periody$bog_2) # богатая

# Хи-квадрат для корпуса тексов трех авторов
# здесь bed_p - бедная рифма у Пушкина, bed_ya - бедная рифма у Языкова
# exact_p - точная рифма у Пушкина, exact_l - точная рифма у Лермонтова
# women_p - женская рифма у Пушкина, women_l - женская рифма Лермонтова
chisq.test(author$bed_p, author$bed_ya)
chisq.test(author$exact_p, author$exact_l)
chisq.test(author$women_p, author$women_l)

# размер эффекта
# Для Пушкина и Языкова
cohen.d(bed_py ~ author_py, data = author)
# для Лермонтова и Пушкина 
cohen.d(exact_lp ~ author_lp, data = author)
# для Лермонтова и Пушкина
cohen.d(women_lp ~ author_lp, data = author)
