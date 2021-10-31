FROM bioconductor/bioconductor_docker:devel

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

ENV RHUB_PLATFORM linux-x86_64-ubuntu-gcc

ENV DEBIAN_FRONTEND noninteractive

RUN Rscript -e "BiocManager::install(ask=FALSE); saveRDS(remotes::dev_package_deps(dependencies = TRUE), '.github/depends.Rds', version = 2)"

RUN Rscript -e "remotes::install_github('r-hub/sysreqs')"

RUN apt-get -y update && apt-get install -y libssl-dev pandoc pandoc-citeproc libharfbuzz-dev make libxml2-dev libfribidi-dev libicu-dev libcurl4-openssl-dev libtiff-dev libpng-dev

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); BiocManager::repositories(); remotes::install_deps(dependencies = TRUE, repos = BiocManager::repositories()); remotes::install_cran('rcmdcheck'); library(torch); install_torch(timeout = 1200)"

RUN Rscript -e "devtools::install('.', dependencies=NA, build_vignettes=FALSE, upgrade='never')"

