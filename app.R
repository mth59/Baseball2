#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)
library(dplyr)
library(ggplot2)
library(readxl)

# Data 
feb_21 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 NONCONFERENCE DATA//Pitt vs Monmouth Feb21.xlsx")
feb_21 <- feb_21[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
feb_21$Date <- as.Date("02/21/2024", format = "%m/%d/%Y")


feb_22 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 NONCONFERENCE DATA//Pitt vs Monmouth Feb22.xlsx")
feb_22 <- feb_22[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
feb_22$Date <- as.Date("02/22/2024", format = "%m/%d/%Y")


feb_25 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 NONCONFERENCE DATA//Pitt vs Bucknell Feb25.xlsx")
feb_25 <- feb_25[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
feb_25$Date <- as.Date("02/25/2024", format = "%m/%d/%Y")

#feb_25 <- feb_25 %>%
 # rename(yt_HitSpinConfidence = HitLaunchConfidence) 
#feb_25 <- feb_25 %>%
 # rename(HitType = AutoHitType) 

mar_7 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 NONCONFERENCE DATA//Pitt vs ETSU Mar7.xlsx")
mar_7 <- mar_7[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
mar_7$Date <- as.Date("03/07/2024", format = "%m/%d/%Y")

mar_8 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 NONCONFERENCE DATA//Pitt vs ETSU Mar8.xlsx")
mar_8 <- mar_8[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                   "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                   "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                   "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
mar_8$Date <- as.Date("03/08/2024", format = "%m/%d/%Y")

mar_9 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 NONCONFERENCE DATA//Pitt vs ETSU Mar9.xlsx")
mar_9 <- mar_9[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                   "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                   "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                   "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
mar_9$Date <- as.Date("03/09/2024", format = "%m/%d/%Y")



mar_12 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 NONCONFERENCE DATA//Pitt vs YSU Mar12.xlsx")
mar_12 <- mar_12[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                   "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                   "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                   "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
mar_12$Date <- as.Date("03/12/2024", format = "%m/%d/%Y")


mar_14 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs GT Mar14.xlsx")
mar_14 <- mar_14[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
mar_14$Date <- as.Date("03/14/2024", format = "%m/%d/%Y")


mar_15 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs GT Mar15.xlsx")
mar_15 <- mar_15[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
mar_15$Date <- as.Date("03/15/2024", format = "%m/%d/%Y")


mar_16 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs GT Mar16.xlsx")
mar_16 <- mar_16[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
mar_16$Date <- as.Date("03/16/2024", format = "%m/%d/%Y")


mar_18 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 NONCONFERENCE DATA//Pitt vs Akron Mar18.xlsx")
mar_18 <- mar_18[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
mar_18$Date <- as.Date("03/18/2024", format = "%m/%d/%Y")


mar_19 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 NONCONFERENCE DATA//Pitt vs Kent Mar19.xlsx")
mar_19 <- mar_19[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
mar_19$Date <- as.Date("03/19/2024", format = "%m/%d/%Y")


mar_21 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs NCSt Mar21.xlsx")
mar_21 <- mar_21[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
mar_21$Date <- as.Date("03/21/2024", format = "%m/%d/%Y")


mar_22 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs NCSt Mar22.xlsx")
mar_22 <- mar_22[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
mar_22$Date <- as.Date("03/22/2024", format = "%m/%d/%Y")


mar_23 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs NCSt Mar23.xlsx")
mar_23 <- mar_23[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
mar_23$Date <- as.Date("03/23/2024", format = "%m/%d/%Y")


mar_25 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 NONCONFERENCE DATA//Pitt vs PSU Mar25.xlsx")
mar_25 <- mar_25[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
mar_25$Date <- as.Date("03/25/2024", format = "%m/%d/%Y")


mar_28_1 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs BC1 Mar28.xlsx")
mar_28_1 <- mar_28_1[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
mar_28_1$Date <- as.Date("03/28/2024", format = "%m/%d/%Y")


mar_28_2 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs BC2 Mar28.xlsx")
mar_28_2 <- mar_28_2[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                         "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                         "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                         "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
mar_28_2$Date <- as.Date("03/28/2024", format = "%m/%d/%Y")


mar_30 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs BC Mar30.xlsx")
mar_30 <- mar_30[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                         "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                         "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                         "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
mar_30$Date <- as.Date("03/30/2024", format = "%m/%d/%Y")


apr_2 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 NONCONFERENCE DATA//Pitt vs WVU Apr2.xlsx")
apr_2 <- apr_2[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
apr_2$Date <- as.Date("04/02/2024", format = "%m/%d/%Y")


apr_4 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs Miami Apr4.xlsx")
apr_4 <- apr_4[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                   "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                   "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                   "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
apr_4$Date <- as.Date("04/04/2024", format = "%m/%d/%Y")

apr_4_2 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs Miami2 Apr4.xlsx")
apr_4_2 <- apr_4_2[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                   "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                   "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                   "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
apr_4_2$Date <- as.Date("04/04/2024", format = "%m/%d/%Y")

apr_6 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs Miami Apr6.xlsx")
apr_6 <- apr_6[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                       "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                       "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                       "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
apr_6$Date <- as.Date("04/06/2024", format = "%m/%d/%Y")


apr_12 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs UVA Apr12.xlsx")
apr_12 <- apr_12[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                   "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                   "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                   "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
apr_12$Date <- as.Date("04/12/2024", format = "%m/%d/%Y")

apr_12_2 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs UVA2 Apr12.xlsx")
apr_12_2 <- apr_12_2[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
apr_12_2$Date <- as.Date("04/12/2024", format = "%m/%d/%Y")

apr_13 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs UVA Apr13.xlsx")
apr_13 <- apr_13[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                         "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                         "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                         "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
apr_13$Date <- as.Date("04/13/2024", format = "%m/%d/%Y")


apr_17 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs Duke Apr17.xlsx")
apr_17 <- apr_17[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
apr_17$Date <- as.Date("04/17/2024", format = "%m/%d/%Y")

apr_18 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs Duke Apr18.xlsx")
apr_18 <- apr_18[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
apr_18$Date <- as.Date("04/18/2024", format = "%m/%d/%Y")

apr_19 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs Duke Apr19.xlsx")
apr_19 <- apr_19[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
apr_19$Date <- as.Date("04/19/2024", format = "%m/%d/%Y")

apr_23 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 NONCONFERENCE DATA//Pitt vs Mercy Apr23.xlsx")
apr_23 <- apr_23[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
apr_23$Date <- as.Date("04/23/2024", format = "%m/%d/%Y")


apr_25 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs UNC Apr25.xlsx")
apr_25 <- apr_25[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
apr_25$Date <- as.Date("04/25/2024", format = "%m/%d/%Y")

apr_26 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs UNC Apr26.xlsx")
apr_26 <- apr_26[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
apr_26$Date <- as.Date("04/26/2024", format = "%m/%d/%Y")

apr_27 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs UNC Apr27.xlsx")
apr_27 <- apr_27[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
apr_27$Date <- as.Date("04/27/2024", format = "%m/%d/%Y")

apr_30 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 NONCONFERENCE DATA//Pitt vs Akron Apr30.xlsx")
apr_30 <- apr_30[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
apr_30$Date <- as.Date("04/30/2024", format = "%m/%d/%Y")


may_2 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs VT May2.xlsx")
may_2 <- may_2[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
may_2$Date <- as.Date("05/02/2024", format = "%m/%d/%Y")

may_4_1 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs VT1 May4.xlsx")
may_4_1 <- may_4_1[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                   "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                   "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                   "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
may_4_1$Date <- as.Date("05/04/2024", format = "%m/%d/%Y")

may_4_2 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs VT2 May4.xlsx")
may_4_2 <- may_4_2[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                       "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                       "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                       "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
may_4_2$Date <- as.Date("05/04/2024", format = "%m/%d/%Y")

may_6 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 NONCONFERENCE DATA//Pitt vs WVU May6.xlsx")
may_6 <- may_6[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                       "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                       "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                       "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
may_6$Date <- as.Date("05/06/2024", format = "%m/%d/%Y")


may_9 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs Wake May9.xlsx")
may_9 <- may_9[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                   "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                   "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                   "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
may_9$Date <- as.Date("05/09/2024", format = "%m/%d/%Y")

may_10 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs Wake May10.xlsx")
may_10 <- may_10[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                   "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                   "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                   "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
may_10$Date <- as.Date("05/10/2024", format = "%m/%d/%Y")

may_11 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs Wake May11.xlsx")
may_11 <- may_11[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
may_11$Date <- as.Date("05/11/2024", format = "%m/%d/%Y")


may_15 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs Clem May15.xlsx")
may_15 <- may_15[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
may_15$Date <- as.Date("05/15/2024", format = "%m/%d/%Y")

may_16 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs Clem May16.xlsx")
may_16 <- may_16[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
may_16$Date <- as.Date("05/16/2024", format = "%m/%d/%Y")

may_17 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs Clem May17.xlsx")
may_17 <- may_17[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
may_17$Date <- as.Date("05/17/2024", format = "%m/%d/%Y")

may_20 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs Louis May20.xlsx")
may_20 <- may_20[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
may_20$Date <- as.Date("05/20/2024", format = "%m/%d/%Y")

may_21 <- read_excel("C://Users//mason//OneDrive//Pitt Baseball Data//CollectedBaseballData//2025 CONFERENCE DATA//Pitt vs Duke May21.xlsx")
may_21 <- may_21[, c("Date", "PAofInning", "PitchofPA", "Batter", "BatterSide", "BatterTeam", "Inning", "Outs", "Balls", "Strikes",
                     "TaggedPitchType", "PitchCall", "AutoHitType", "KorBB", "PlayResult", "OutsOnPlay", "PlateLocHeight", "PlateLocSide", 
                     "TaggedHitType", "RunsScored", "PitchReleaseConfidence", "PitchMovementConfidence", "PitchLocationConfidence", "ExitSpeed", 
                     "Angle","HitLaunchConfidence", "RelSpeed", "Direction", "Distance", "HitLandingConfidence")]
may_21$Date <- as.Date("05/21/2024", format = "%m/%d/%Y")

#all_data <- rbind(feb_21, feb_22, feb_25, mar_7, mar_8, mar_9, mar_12, mar_14, mar_15, mar_16, mar_18, mar_19, mar_21, mar_22, mar_23, mar_25, 
 #                 mar_28_1, mar_28_2, mar_30, apr_2, apr_4, apr_4_2, apr_6, apr_12, apr_12_2, apr_13, apr_18, apr_19, apr_23, apr_25, apr_26,
  #                apr_27, apr_30, may_2, may_4_1, may_4_2, may_6, may_9, may_10, may_11, may_15, may_16, may_17, may_20, may_21)

all_data <- may_21


all_data <- all_data %>%
  filter(PitchReleaseConfidence == "High", PitchMovementConfidence == "High", PitchLocationConfidence == "High")


# Create filtered datasets: 
bip_data <- all_data %>% 
  filter(PitchCall == "InPlay") %>% 
  filter(HitLaunchConfidence %in% c("High", "high")) 

average_exit_speed <- bip_data %>%
  group_by(Batter) %>%
  summarise(AverageExitSpeed = mean(ExitSpeed, na.rm = TRUE))

swing_data <- all_data %>% 
  filter(PitchCall %in% c("StrikeSwinging", "Foul", "FoulTip", "InPlay", "FoulBallNotFieldable"))

take_data <- all_data %>% 
  filter(PitchCall %in% c("BallCalled", "StrikeCalled", "HitByPitch", "BallinDirt"))


# (soft) damage zone boundaries 
damage_lft <- .4 
damage_rt <- -.4 
damage_low <- 1.8 
damage_up <- 2.9 

baseball_radius_ft <- .1208 

damage_left <- damage_lft + baseball_radius_ft 
damage_right <- damage_rt - baseball_radius_ft 
damage_lower <- damage_low - baseball_radius_ft 
damage_upper <- damage_up + baseball_radius_ft 

# strike zone boundaries 
left_border <- 0.708333
right_border <- -0.708333 
lower_border <- 1.5
upper_border <- 3 + (2.5/12)

# true strike zone boundaries 
left_true_strike_border <- left_border + baseball_radius_ft
right_true_strike_border <- right_border - baseball_radius_ft 
lower_true_strike_border <- lower_border - baseball_radius_ft 
upper_true_strike_border <- upper_border + baseball_radius_ft 


# Append "AverageExitSpeed" values to each batter 
all_data <- all_data %>%
  left_join(average_exit_speed, by = "Batter")


# Define UI for application that draws a histogram
ui <- fluidPage(titlePanel("Postgame Hitter Report"),
                sidebarLayout(sidebarPanel(
                  dateRangeInput(
                    inputId = "date_select",
                    label = "Select Date Range:",
                    start = min(all_data$Date),
                    end = max(all_data$Date),
                    min = min(all_data$Date),
                    max = max(all_data$Date)
                  ),
                  selectizeInput(
                    inputId = "batter_select",
                    label = "Select Batter(s):",
                    choices = NULL,
                    # Populated dynamically in server
                    selected = NULL,
                    multiple = TRUE
                  )
                  
                ),
                
                mainPanel(
                  tableOutput("summary_table"),
                  tableOutput("new_summary_table"),
                  plotOutput("zone_plot"),
                  plotOutput("zone_plot2"),
                  tableOutput("bip_table")
                )))

# Define server logic required to draw a histogram
server <- function(input, output, session) {
  
  # Puts all unique batters in the batter select dropdown 
  updateSelectInput(
    session,
    inputId = "batter_select",
    choices = unique(all_data$Batter)
  )
  
  # dataset that only takes data from given date and batter 
  filtered_data <- reactive({
    req(input$batter_select, input$date_select)
    all_data %>%
      filter(Batter %in% input$batter_select, 
             Date >= input$date_select[1], 
             Date <= input$date_select[2]) %>%
      mutate(NumberPA = cumsum(PitchofPA == 1))
  })
  
   
  # Calculate metrics and P Score
  summary_table_data <- reactive({
    data <- filtered_data()
    
    # Add P Score calculation
    data <- data %>%
      mutate(
        # Damage zone BIP angle points 
        P_Score_Component1 = case_when(
          PitchCall %in% c("InPlay") &
            PlateLocSide >= damage_rt &
            PlateLocSide <= damage_lft &
            PlateLocHeight >= damage_low &
            PlateLocHeight <= damage_up ~
            case_when(
              Angle >= 10 & Angle <= 20 ~ 2,
              Angle >= 5 & Angle < 10 | Angle > 20 & Angle <= 25 ~ 1,
              Angle >= 0 & Angle < 5 | Angle > 25 & Angle <= 30 ~ 0,
              Angle >= -10 &
                Angle < 0 | Angle > 30 & Angle <= 40 ~ -1,
              Angle < -10 | Angle > 40 ~ -2,
              TRUE ~ 0
            ),
          TRUE ~ 0
        ),
        P_Score_Component2 = case_when(
          # Damage zone BIP exit velo points 
          PitchCall %in% c("InPlay") &
            PlateLocSide >= damage_rt &
            PlateLocSide <= damage_lft &
            PlateLocHeight >= damage_low &
            PlateLocHeight <= damage_up ~
            case_when(
              ExitSpeed >= 110 ~ 3,
              ExitSpeed >= 105 & ExitSpeed < 110 ~ 2,
              ExitSpeed >= 100 & ExitSpeed < 105 ~ 1,
              ExitSpeed >= 85 & ExitSpeed < 100 ~ 0,
              ExitSpeed >= 80 & ExitSpeed < 85 ~ -1,
              ExitSpeed < 80 ~ -2,
              TRUE ~ 0
            ),
          TRUE ~ 0
        ),
        P_Score_Component3 = case_when(
          # Damage zone take points 
          Strikes == 0 & Balls == 3 ~ 0,
          # 3-0 count takes in damage zone are scored 0 points
          PitchCall %in% c("BallCalled", "StrikeCalled", "HitByPitch", "BallinDirt") &
            PlateLocSide >= damage_rt &
            PlateLocSide <= damage_lft &
            PlateLocHeight >= damage_low &
            PlateLocHeight <= damage_up ~
            ifelse(TaggedPitchType == "Fastball", -2, 0),
          TRUE ~ 0
        ),
        P_Score_Component4 = ifelse(
          # chase swings 
          PitchCall %in% c("StrikeSwinging", "Foul", "FoulTip", "InPlay", "FoulBallNotFieldable", "FoulBallFieldable") &
            (
              PlateLocSide < right_true_strike_border |
                PlateLocSide > left_true_strike_border |
                PlateLocHeight < lower_true_strike_border |
                PlateLocHeight > upper_true_strike_border
            ),
          -1,
          0
        ),
        P_Score_Component5 = ifelse(
          # balls taken 
          PitchCall %in% c("BallCalled", "StrikeCalled", "HitByPitch", "BallinDirt") &
            (
              PlateLocSide < right_true_strike_border |
                PlateLocSide > left_true_strike_border |
                PlateLocHeight < lower_true_strike_border |
                PlateLocHeight > upper_true_strike_border
            ),
          0.25,
          0
        ),
        P_Score_Component6 = ifelse(
          # damage zone swings non BIP 
          PitchCall %in% c("StrikeSwinging", "Foul", "FoulTip", "FoulBallNotFieldable", "FoulBallFieldable") &
            PlateLocSide >= damage_rt &
            PlateLocSide <= damage_lft &
            PlateLocHeight >= damage_low &
            PlateLocHeight <= damage_up, 
          0.5, 
          0
        )
      ) %>%
      rowwise() %>%
      mutate(
        P_Score = sum(
          P_Score_Component1,
          P_Score_Component2,
          P_Score_Component3,
          P_Score_Component4,
          P_Score_Component5,
          P_Score_Component6,
          na.rm = TRUE
        )
      ) %>%
      ungroup()
    
    
    data <- data %>%
      mutate(
        R_Score_K = case_when(
          KorBB == "Strikeout" & PitchCall %in% c("StrikeLooking", "StrikeCalled") ~ -2,
          KorBB == "Strikeout" & PitchCall == "StrikeSwinging" ~ -1.5,
          TRUE ~ 0
        )
      )
    
    
    # Summarise for table
    data %>%
      summarise(
        `PA` = sum(PitchofPA == 1),
        `Pitches` = n(),
        `Pitches / PA` = `Pitches` / `PA`,
        `Damage Zone Swings` = sum(
          PitchCall %in% c("StrikeSwinging", "Foul", "FoulTip", "InPlay", "FoulBallNotFieldable", "FoulBallFieldable") &
            PlateLocSide >= damage_rt &
            PlateLocSide <= damage_lft &
            PlateLocHeight >= damage_low &
            PlateLocHeight <= damage_up
        ),
        `Damage Zone Takes` = sum(
          PitchCall %in% c("BallCalled", "StrikeCalled", "HitByPitch", "BallinDirt") &
            PlateLocSide >= damage_rt &
            PlateLocSide <= damage_lft &
            PlateLocHeight >= damage_low &
            PlateLocHeight <= damage_up
        ),
        `Chase Swings` = sum(
          PitchCall %in% c("StrikeSwinging", "Foul", "FoulTip", "InPlay", "FoulBallNotFieldable", "FoulBallFieldable") &
            (
              PlateLocSide < right_true_strike_border |
                PlateLocSide > left_true_strike_border |
                PlateLocHeight < lower_true_strike_border |
                PlateLocHeight > upper_true_strike_border
            )
        ),
        `Out of Zone Takes` = sum(
          PitchCall %in% c("BallCalled", "StrikeCalled", "HitByPitch", "BallinDirt") &
            (
              PlateLocSide < right_true_strike_border |
                PlateLocSide > left_true_strike_border |
                PlateLocHeight < lower_true_strike_border |
                PlateLocHeight > upper_true_strike_border
            )
        ),
        `P Score` = sum(P_Score),
        `AverageExitSpeed` = mean(AverageExitSpeed),
        `Walks` = as.integer(coalesce(sum(
          KorBB %in% c("Walk")
        ), 0)),
        `HBP` = as.integer(coalesce(sum(
          PitchCall == "HitByPitch"
        ), 0)),
        `K` = sum(KorBB %in% c(
          "Strikeout"
        )),
        `R_Score_K` = sum(R_Score_K),
        `TB` = as.integer(sum(
          case_when(
            PlayResult == "Single" ~ 1,
            PlayResult == "Double" ~ 2,
            PlayResult == "Triple" ~ 3,
            PlayResult %in% c("Homerun", "HomeRun") ~ 4,
            TRUE ~ 0
          )
        )),
        # maybe add a constraint so no RBI is tallied if Error committed, might not be true 100% of the time though... think about it. 
        `RBI` = as.integer(sum(RunsScored, na.rm = TRUE)),
        `R Score` = sum(R_Score_K, Walks, HBP, RBI, TB, na.rm = TRUE),
        `Total` = sum(`R Score`, `P Score`),
        `HER/PA` = `Total` / `PA`
      )
  })
  
  # Render the first table
  output$summary_table <- renderTable({
    req(summary_table_data())
    summary_table_data()
  }, rownames = FALSE) # Hide row names
  
  
  
  
  new_summary_table_data <- reactive({
    data <- filtered_data()
    
    
    data <- data %>%
      arrange(Inning, PAofInning, PitchofPA)
    
    # Initialize a new column for battles, set to 0 by default
    data <- data %>%
      mutate(battles = 0)
    
    # Loop through the data while searching for two-strike counts
    i <- 1  # Start index
    while (i <= (nrow(data) - 4)) {  # Ensure we don't check beyond the last 4 rows
      
      # When 2 strikes occur, check conditions
      if (data$Strikes[i] == 2) {
        # Store the value of PitchofPA at this moment
        initial_pitch <- data$PitchofPA[i]
        
        # Move exactly 4 rows ahead and check if PitchofPA has increased by 4
        if (data$PitchofPA[i+4] == initial_pitch + 4) {
          data$battles[i+4] <- 1  # Mark as a battle
        }
        
        # Move forward until the next occurrence of (data$Strikes == 2)
        i <- i + 5  # Skip ahead to avoid redundant checks
      } else {
        i <- i + 1  # Increment normally if no 2-strike count is found
      }
    }
    
    
    data <- data %>%
      group_by(NumberPA) %>%
      mutate(QAB = ifelse(row_number() == 1 & (
        any(PitchofPA == 8, na.rm = TRUE) |
          any(battles == 1, na.rm = TRUE) |
          any(PlayResult == "Sacrifice", na.rm = TRUE) |
          any(KorBB %in% c("Walk"), na.rm = TRUE) |
          any(PitchCall == "HitByPitch", na.rm = TRUE) |
          any(RunsScored > 0, na.rm = TRUE) |
          any(ExitSpeed >= 95 & PitchCall == "InPlay" & HitLaunchConfidence == "High", na.rm = TRUE)
      ), 1, 0)) %>%
      ungroup()
    
    # Summarising final table
    data <- data %>%
      summarise(
        `PA` = sum(PitchofPA == 1),
        `Hits` = sum(
          PlayResult %in% c("Single", "Double", "Triple", "HomeRun", "Homerun")
        ),
        `Hard Hit` = sum(ExitSpeed >= 95 & PitchCall == "InPlay" & HitLaunchConfidence == "High", na.rm = TRUE),
        `8+ Pitches` = sum(PitchofPA == 8),
        `Battles` = sum(battles, na.rm = TRUE),
        `Sacrifice` = sum(PlayResult == "Sacrifice", na.rm = TRUE),
        `BB/HBP` = sum(KorBB %in% c("Walk"), na.rm = TRUE) + sum(PitchCall == "HitByPitch", na.rm = TRUE),
        `RBI` = as.integer(sum(RunsScored, na.rm = TRUE)),
        `QAB` = sum(QAB),
        `QAB%` = paste0(round((`QAB` / `PA`) * 100, 2), "%")
      )
    
  })
  
  # Render the new table
  output$new_summary_table <- renderTable({
    req(new_summary_table_data())
    new_summary_table_data()
  }, rownames = FALSE) 
  
  
  
  # First plot with all pitches on zone 
  output$zone_plot <- renderPlot({
    # Filter data based on user selection
    data <- filtered_data()
    
    # Create plot
    ggplot(data, aes(x = PlateLocSide, y = PlateLocHeight, color = TaggedPitchType)) +
      geom_rect(
        xmin = right_border, xmax = left_border,
        ymin = lower_border, ymax = upper_border,
        fill = NA, color = "black", linetype = "solid", size = 1
      ) +
      geom_rect(
        xmin = damage_lft, xmax = damage_rt,
        ymin = damage_low, ymax = damage_up,
        fill = scales::alpha("lightgreen", 0.03), color = NA
      ) +
      geom_point(size = 4, alpha = 1) +  # Larger points with full opacity
      scale_color_viridis_d(option = "turbo") +  # More vivid color palette
      scale_x_reverse(limits = c(2, -2)) +
      scale_y_continuous(limits = c(.5, 3.8)) +
      labs(
        title = "All Zone Points (Catcher's Perspective)",
        x = "Plate Location Side",
        y = "Plate Location Height",
        color = "Pitch Type"
      ) +
      theme_minimal(base_size = 14) +
      theme(legend.position = "right")
  })
  
  
  output$zone_plot2 <- renderPlot({
    # Filter data based on user selection and only include swings
    data <- filtered_data() %>%
      filter(PitchCall %in% c("StrikeSwinging", "Foul", "FoulTip", "InPlay", "FoulBallNotFieldable", "FoulBallFieldable") | 
               (PitchCall == "StrikeCalled" & KorBB == "Strikeout")
             )
    
    # Create new column for SwingResult to combine PitchCall and PlayResult for legend
    data <- data %>%
      mutate(SwingResult = case_when(
        PitchCall %in% c("FoulBallNotFieldable", "FoulBallFieldable") ~ "Foul",
        PitchCall == "StrikeSwinging" ~ "StrikeSwinging",
        PlayResult %in% c("Out", "FieldersChoice") ~ "InPlayOut",
        PlayResult == "Single" ~ "Single",
        PlayResult == "Double" ~ "Double",
        PlayResult == "Triple" ~ "Triple",
        PlayResult %in% c("HomeRun", "Homerun") ~ "HomeRun",
        PlayResult == "Sacrifice" ~ "Sacrifice",
        PlayResult == "Error" ~ "Error",
        PitchCall == "StrikeCalled" & KorBB == "Strikeout" ~ "StrikeThreeLooking",
        TRUE ~ "Other" # A default case for any other situations
      ))
    
    # Create plot
    ggplot(data, aes(x = PlateLocSide, y = PlateLocHeight, color = TaggedPitchType, shape = SwingResult)) +
      geom_rect(
        xmin = right_border, xmax = left_border,
        ymin = lower_border, ymax = upper_border,
        fill = NA, color = "black", linetype = "solid", size = 1
      ) + # Add zone rectangle
      geom_rect(
        xmin = damage_lft, xmax = damage_rt,
        ymin = damage_low, ymax = damage_up,
        fill = scales::alpha("lightgreen", 0.03), color = NA  # Light green fill with no border
      ) +
      geom_point(size = 4, alpha = 1) +
      scale_color_manual(values = RColorBrewer::brewer.pal(n = length(unique(data$TaggedPitchType)), name = "Dark2")) +
      scale_shape_manual(values = c(
        "Foul" = 3,           # "+" 
        "StrikeSwinging" = 4, # "x" 
        "InPlayOut" = 0,      # open square 
        "Single" = 16,        # solid circle
        "Double" = 17,        # solid triangle 
        "Triple" = 15,        # solid square 
        "HomeRun" = 8,        # boom symbol
        "Sacrifice" = 2,      # open triangle
        "Error" = 5,          # open diamond 
        "StrikeThreeLooking" = 13
      )) + # Assign shapes to SwingResult categories
      scale_x_reverse(limits = c(2, -2)) +  # Set x axis range from 2 to -2
      scale_y_continuous(limits = c(0.5, 3.8)) +
      labs(
        title = "All Swings (Catcher's Perspective) and Looking 3rd Strikes",
        x = "Plate Location Side",
        y = "Plate Location Height",
        color = "Pitch Type",
        shape = "Swing Result"  
      ) +
      theme_minimal(base_size = 14) +
      theme(legend.position = "right")
  })
  
  bip_table <- reactive({
    filtered_data() %>%
      filter(PitchCall == "InPlay", HitLaunchConfidence %in% c("High", "high")) %>%
      mutate(Inning = as.integer(Inning)) %>%
      select(Batter, Inning, ExitSpeed, Angle, Distance, PlateLocSide, PlateLocHeight) %>%
      rename(
        "Exit Velo" = ExitSpeed,
        "Plate Location Side" = PlateLocSide,
        "Plate Location Height" = PlateLocHeight
      )
  })
  
  output$bip_table <- renderTable({
    bip_table()
  })
  
}

# Run the application 
shinyApp(ui = ui, server = server)
