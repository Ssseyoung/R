# 데이터 결합
# 세로 결합
library(readxl)
path <- "C:/LSY/R/code/source/"
m_history <- paste0(path, "Sample2_m_history.xlsx")
f_history <- paste0(path, "Sample3_f_history.xlsx")

m_excel <- read_excel(m_history)
f_excel <- read_excel(f_history)

# 세로 결합
ex_bind <- bind_rows(m_excel, f_excel)
View(ex_bind)

# 가로 결합
library(readxl)
path <- "C:/LSY/R/code/source/"
jeju_21 <- read_excel(paste0(path, "Sample4_y21_history.xlsx"))
jeju_20 <- read_excel(paste0(path, "Sample5_y20_history.xlsx"))

View(jeju_21)
View(jeju_20)

#
bind_inner <- inner_join(jeju_21, jeju_20, by="ID")
bind_left <- left_join(jeju_21, jeju_20, by="ID")
bind_right <- right_join(jeju_21, jeju_20, by="ID")
bind_full <- full_join(jeju_21, jeju_20, by="ID")

View(bind_inner)
View(bind_left)
View(bind_right)
View(bind_full)
















