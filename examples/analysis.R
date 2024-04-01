
# load libraries
# -----------------------------------------------------------------------------
library(Rcpp)
library(magrittr)
library(devtools)
library(dplyr)
library(tidyr)
library(rgcam)
library(readr)
# library(gcammaptools)
library(ggplot2)
library(gtable)
library(grid)
# We also need to make sure that the fonts we want to use are properly loaded into R
library(extrafont)
library(RColorBrewer)
library(gridExtra)
library(stringr)
library(tibble)
# -----------------------------------------------------------------------------

# Define pathways and values
# -----------------------------------------------------------------------------

# gcam_dir <- paste0(getwd(), "/../../gcam_onDT2/g20_runs/")
# out_dir <- paste0(gcam_dir, "outs/")
# fig_dir <- paste0(gcam_dir, "/figs")

# Using BC3's gcamreport library ----------------------------------------

##library(gcamreport)

## Use this package instead:
devtools::load_all()


# Load data ----------------

# prj_data <- "1plN_27-29.dat"
#
# gcam_dir2 <- paste0(gcam_dir, "10-13_NDCp_and_NDCpp/")

prj <- loadProject(paste0(out_dir, "/", prj_data))

Scenarios <- listScenarios(prj); Scenarios

# # Only save .dat file after changing scenarios, such as after dropping some of them
# saveProject(prj, paste0(out_dir, "/", prj_data))

Scenarios <- listScenarios(prj); Scenarios

listQueries(prj, last(Scenarios))


# Looks like the option that isn't "All" isn't working:
run(project_path = paste0(out_dir, "/", prj_data))

# , desired_variables = c("GDP_MER_clean", "GDP_PPP_clean", "global_temp_clean", "forcing_clean",
#                                                                          "co2_concentration_clean", "co2_emissions_clean", "tot_co2_clean",
#                                                                          "co2_sequestration_clean", "ag_demand_clean", "land_clean",
#                                                                          "primary_energy_clean", "energy_trade_clean", "elec_gen_tech_clean",
#                                                                          "elec_capacity_tot_clean", "elec_capacity_add_clean", "se_gen_tech_clean",
#                                                                          "fe_sector_clean", "energy_service_transportation_clean",
#                                                                          "energy_service_buildings_clean", "ag_prices_clean", "industry_production_clean",
#                                                                          "elec_capital_clean", "elec_investment_clean", "transmission_invest_clean",
#                                                                          "CCS_invest_clean", "resource_investment_clean", "nonco2_clean", "population_clean")) ##"co2_price_clean",

