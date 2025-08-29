library(devtools)
devtools::load_all()
# library(gcamreport)

## -- store the database path, name, and scenarios in a variable.
dbpath <- "/Users/xiangwenfu/Princeton Dropbox/Xiangwen Fu/Study/postdoc/GCAM/gcam-core/output"
dbname <- "db_trn_urb_test_250828"
scen <- c("trn_urb_test_250828")
GCAMv <- "v8.2"
prjname <- "gcamreport_trn_urb_test_250828.dat"

## -- generate the reporting dataset until 2050 for EU-12 and EU-15 for all the
## -- Agricultural variables, save the output in .RData, .csv and .xlsx format,
## -- and lunch the user interface
generate_report(db_path = dbpath, db_name = dbname,
                prj_name = prjname, scenarios = scen,
                final_year = 2050, GCAM_version = GCAMv,
                #  desired_regions = c('China','USA'),
                desired_variables = c('Energy Service|Transportation*', 'Sales*', 'Stocks*', 'Population*', 'GDP*'),
                save_output = TRUE, launch_ui = FALSE,
                output_file=paste0("output/", scen))
