library(dplyr)
library(tibble)
library(DT)

f <- list.files()
# all talk directories have format 'YYYYMMDD'
talks <- f[grepl("[0-9]{8}", f)]

# get yaml front matter fields from a given talk
get_yaml <- function(talk, fields = c("title", "venue", "recording")) {
  txt <- readLines(file.path(talk, "index.Rmd"))
  sep <- which(txt == "---")
  front <- txt[seq.int(sep[1] + 1, sep[2] - 1)]
  yml <- yaml::yaml.load(paste(front, collapse = "\n"))
  yml[names(yml) %in% fields]
}
dauto <- talks %>%
  lapply(get_yaml) %>%
  bind_rows() %>%
  mutate(date = talks) %>%
  mutate(title = sprintf(
    '<a href="%s" target="_blank">%s</a>', sprintf("https://workshops.cpsievert.me/%s", date), title
  ))

# other workshops that are located elsewhere
dalt <- tibble(
  title = c(
    "<a href='https://cpsievert.github.io/plotcon17/workshop/day1' target='_blank'> Getting (re)-acquainted with R, RStudio, data wrangling, ggplot2, and plotly</a>",
    "<a href='https://cpsievert.github.io/plotcon17/workshop/day2' target='_blank'> Advanced plotly</a>",
    "<a href='https://monash-r.cpsievert.me' target='_blank'> Introduction to Data Science with R </a>",
    "<a href='https://isu-r.cpsievert.me' target='_blank'> Introduction to Data Science with R </a>"
  ),
  venue = c(
    "Plotcon 2017",
    "Plotcon 2017",
    "Monash University",
    "Iowa State University"
  ),
  recording = c(
    "none",
    "none",
    "none",
    "none"
  ),
  date = c(
    "20170504",
    "20170505",
    "20160301",
    "20150612"
  )
)

d <- bind_rows(dauto, dalt)

d %>%
  mutate(date = as.Date(date, format = "%Y%m%d")) %>%
  arrange(desc(date)) %>%
  select(date, title, venue, recording) %>%
  datatable(escape = F, options = list(pageLength = 50), rownames = FALSE) %>%
  saveWidget(file = "index.html")

