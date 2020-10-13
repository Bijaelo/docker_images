
FROM rocker/rstudio:latest

RUN apt-get update -y \
 & apt-get install -y \
      build-essential \
      cmake \
	  libxml2-dev \
  & R -e 'install.packages(c("arrow", "aws.s3", "data.table", "tidyverse", "dplyr", "tidyr", "odbc", "DBI", "purrr"))'
