
<!-- badges: start -->

[![Launch Rstudio
Binder](http://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/IdoBar/3030NSC_Workshop6_DGE/main?urlpath=rstudio)
<!-- badges: end -->

<img src="https://www.griffith.edu.au/__data/assets/image/0018/653121/Griffith_Full_Logo_scaled.png" width="25%" style="display: block; margin: auto 0 auto auto;" />

# 3030NSC Workshop6 - Differential Gene Expression (Binder-ready)

This repository was developed as an educational tutorial/workshop for
the Applied Bioinformatics course (3030NSC/7104ESC) offered at Griffith
University (see [course
details](https://www.griffith.edu.au/study/courses/applied-bioinformatics-3030NSC)).
The tutorial covers basic differential gene expression analysis and
visualisation in R using `DESeq2`.  
The teaching material for the workshop was developed by Dr. Alex
Cristion (<a.cristino@griffith.edu.au>) and prepared as a
[Binder](https://mybinder.org/) repository by Dr. Ido Bar
(<i.bar@griffith.edu.au>).  
The tutorial is setup to be run live and interactively in class either
setup locally on the students’ computers or using
[Binder](https://mybinder.org/) (see instructions below).

## Instructions

### <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 581 512" class="rfa" style="height:0.75em;fill:#384CB7;position:relative;"><path d="M581 226.6C581 119.1 450.9 32 290.5 32S0 119.1 0 226.6C0 322.4 103.3 402 239.4 418.1V480h99.1v-61.5c24.3-2.7 47.6-7.4 69.4-13.9L448 480h112l-67.4-113.7c54.5-35.4 88.4-84.9 88.4-139.7zm-466.8 14.5c0-73.5 98.9-133 220.8-133s211.9 40.7 211.9 133c0 50.1-26.5 85-70.3 106.4-2.4-1.6-4.7-2.9-6.4-3.7-10.2-5.2-27.8-10.5-27.8-10.5s86.6-6.4 86.6-92.7-90.6-87.9-90.6-87.9h-199V361c-74.1-21.5-125.2-67.1-125.2-119.9zm225.1 38.3v-55.6c57.8 0 87.8-6.8 87.8 27.3 0 36.5-38.2 28.3-87.8 28.3zm-.9 72.5H365c10.8 0 18.9 11.7 24 19.2-16.1 1.9-33 2.8-50.6 2.9v-22.1z"/></svg>

R is a programming language and free software environment for
statistical computing and graphics supported by the R Foundation for
Statistical Computing. The R language is widely used among statisticians
and data miners for developing statistical software and data analysis.

### RStudio

RStudio is a set of integrated tools designed to help you be more
productive with R. It includes a console, syntax-highlighting editor
that supports direct code execution, and a variety of robust tools for
plotting, viewing history, debugging and managing your workspace. It
requires R to be installed prior to be able to send commands to the
interpreter.

### Using R and RStudio from Cloud services

If we want to keep things simple (for this course) or we would like to
use R on shared computers, where we can’t install software, we can run R
and Rstudio through a web client that is hosted on a remote server.  
We will use the [Binder](https://mybinder.org/) service, which is free,
easy to use and can be launched from a single GitHub repository (more
about this in the workshop).

#### Running R and RStudio on Binder

Using Binder is as simple as clicking on the Binder badge - [![Launch
Rstudio
Binder](http://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/IdoBar/3030NSC_Workshop6_DGE/main?urlpath=rstudio).  
Alternatively, you can navigate to the [Binder](https://mybinder.org/)
homepage and enter the URL of this tutorial [GitHub
repository](https://github.com/IdoBar/3030NSC_Workshop6_DGE.git)
`https://github.com/IdoBar/3030NSC_Workshop6_DGE.git` and click on the
**launch** button (see screenshot in Figure 1 below).

<div class="figure" style="text-align: center">

<img src="https://github.com/IdoBar/6003ESC_workshops_binder/raw/main/figs/Screenshot_The_Binder_Project.png" alt="Figure  1: Binder launch screenshot." width="100%" />

<p class="caption">

Figure 1: Binder launch screenshot.

</p>

</div>

Now be patient while the environment is loading…  
You should now see in your web browser an RStudio interface (if you got
to the Jupyter page, click on new –\> RStudio) and are ready to start
working in R in “The Cloud”\!
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512" class="rfa" style="height:0.75em;fill:#5599FF;position:relative;"><path d="M537.6 226.6c4.1-10.7 6.4-22.4 6.4-34.6 0-53-43-96-96-96-19.7 0-38.1 6-53.3 16.2C367 64.2 315.3 32 256 32c-88.4 0-160 71.6-160 160 0 2.7.1 5.4.2 8.1C40.2 219.8 0 273.2 0 336c0 79.5 64.5 144 144 144h368c70.7 0 128-57.3 128-128 0-61.9-44-113.6-102.4-125.4z"/></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512" class="rfa" style="height:0.75em;fill:#5599FF;position:relative;"><path d="M537.6 226.6c4.1-10.7 6.4-22.4 6.4-34.6 0-53-43-96-96-96-19.7 0-38.1 6-53.3 16.2C367 64.2 315.3 32 256 32c-88.4 0-160 71.6-160 160 0 2.7.1 5.4.2 8.1C40.2 219.8 0 273.2 0 336c0 79.5 64.5 144 144 144h368c70.7 0 128-57.3 128-128 0-61.9-44-113.6-102.4-125.4z"/></svg><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512" class="rfa" style="height:0.75em;fill:#5599FF;position:relative;"><path d="M537.6 226.6c4.1-10.7 6.4-22.4 6.4-34.6 0-53-43-96-96-96-19.7 0-38.1 6-53.3 16.2C367 64.2 315.3 32 256 32c-88.4 0-160 71.6-160 160 0 2.7.1 5.4.2 8.1C40.2 219.8 0 273.2 0 336c0 79.5 64.5 144 144 144h368c70.7 0 128-57.3 128-128 0-61.9-44-113.6-102.4-125.4z"/></svg>

#### Downloading files from Binder

After we’ve finished working on Binder we would like to download the R
script that we wrote and any output files (summary tables and figures).
We can access those files by using the `files` tab in RStudio (bottom
right pane).  
Select the files/folders that you would like to download and click on
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" class="rfa" style="height:0.75em;fill:#4383A4;position:relative;"><path d="M487.4 315.7l-42.6-24.6c4.3-23.2 4.3-47 0-70.2l42.6-24.6c4.9-2.8 7.1-8.6 5.5-14-11.1-35.6-30-67.8-54.7-94.6-3.8-4.1-10-5.1-14.8-2.3L380.8 110c-17.9-15.4-38.5-27.3-60.8-35.1V25.8c0-5.6-3.9-10.5-9.4-11.7-36.7-8.2-74.3-7.8-109.2 0-5.5 1.2-9.4 6.1-9.4 11.7V75c-22.2 7.9-42.8 19.8-60.8 35.1L88.7 85.5c-4.9-2.8-11-1.9-14.8 2.3-24.7 26.7-43.6 58.9-54.7 94.6-1.7 5.4.6 11.2 5.5 14L67.3 221c-4.3 23.2-4.3 47 0 70.2l-42.6 24.6c-4.9 2.8-7.1 8.6-5.5 14 11.1 35.6 30 67.8 54.7 94.6 3.8 4.1 10 5.1 14.8 2.3l42.6-24.6c17.9 15.4 38.5 27.3 60.8 35.1v49.2c0 5.6 3.9 10.5 9.4 11.7 36.7 8.2 74.3 7.8 109.2 0 5.5-1.2 9.4-6.1 9.4-11.7v-49.2c22.2-7.9 42.8-19.8 60.8-35.1l42.6 24.6c4.9 2.8 11 1.9 14.8-2.3 24.7-26.7 43.6-58.9 54.7-94.6 1.5-5.5-.7-11.3-5.6-14.1zM256 336c-44.1 0-80-35.9-80-80s35.9-80 80-80 80 35.9 80 80-35.9 80-80 80z"/></svg>More
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" class="rfa" style="height:0.75em;fill:currentColor;position:relative;"><path d="M313.941 216H12c-6.627 0-12 5.373-12 12v56c0 6.627 5.373 12 12 12h301.941v46.059c0 21.382 25.851 32.09 40.971 16.971l86.059-86.059c9.373-9.373 9.373-24.569 0-33.941l-86.059-86.059c-15.119-15.119-40.971-4.411-40.971 16.971V216z"/></svg>
Export… (see screenshot in Figure 2 below) to save the file on your
computer.

<div class="figure" style="text-align: center">

<img src="https://github.com/IdoBar/6003ESC_workshops_binder/raw/main/figs/Rstudio_export_screenshot.png" alt="Figure  2: Download files from Binder/RStudio screenshot." width="75%" />

<p class="caption">

Figure 2: Download files from Binder/RStudio screenshot.

</p>

</div>

### Installing R and RStudio locally

Alternatively, both R and RStudio can be installed locally on any
operating system
(<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" class="rfa" style="height:0.75em;fill:currentColor;position:relative;"><path d="M318.7 268.7c-.2-36.7 16.4-64.4 50-84.8-18.8-26.9-47.2-41.7-84.7-44.6-35.5-2.8-74.3 20.7-88.5 20.7-15 0-49.4-19.7-76.4-19.7C63.3 141.2 4 184.8 4 273.5q0 39.3 14.4 81.2c12.8 36.7 59 126.7 107.2 125.2 25.2-.6 43-17.9 75.8-17.9 31.8 0 48.3 17.9 76.4 17.9 48.6-.7 90.4-82.5 102.6-119.3-65.2-30.7-61.7-90-61.7-91.9zm-56.6-164.2c27.3-32.4 24.8-61.9 24-72.5-24.1 1.4-52 16.4-67.9 34.9-17.5 19.8-27.8 44.3-25.6 71.9 26.1 2 49.9-11.4 69.5-34.3z"/></svg>,
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" class="rfa" style="height:0.75em;fill:#5599FF;position:relative;"><path d="M0 93.7l183.6-25.3v177.4H0V93.7zm0 324.6l183.6 25.3V268.4H0v149.9zm203.8 28L448 480V268.4H203.8v177.9zm0-380.6v180.1H448V32L203.8 65.7z"/></svg>,
or
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" class="rfa" style="height:0.75em;fill:currentColor;position:relative;"><path d="M220.8 123.3c1 .5 1.8 1.7 3 1.7 1.1 0 2.8-.4 2.9-1.5.2-1.4-1.9-2.3-3.2-2.9-1.7-.7-3.9-1-5.5-.1-.4.2-.8.7-.6 1.1.3 1.3 2.3 1.1 3.4 1.7zm-21.9 1.7c1.2 0 2-1.2 3-1.7 1.1-.6 3.1-.4 3.5-1.6.2-.4-.2-.9-.6-1.1-1.6-.9-3.8-.6-5.5.1-1.3.6-3.4 1.5-3.2 2.9.1 1 1.8 1.5 2.8 1.4zM420 403.8c-3.6-4-5.3-11.6-7.2-19.7-1.8-8.1-3.9-16.8-10.5-22.4-1.3-1.1-2.6-2.1-4-2.9-1.3-.8-2.7-1.5-4.1-2 9.2-27.3 5.6-54.5-3.7-79.1-11.4-30.1-31.3-56.4-46.5-74.4-17.1-21.5-33.7-41.9-33.4-72C311.1 85.4 315.7.1 234.8 0 132.4-.2 158 103.4 156.9 135.2c-1.7 23.4-6.4 41.8-22.5 64.7-18.9 22.5-45.5 58.8-58.1 96.7-6 17.9-8.8 36.1-6.2 53.3-6.5 5.8-11.4 14.7-16.6 20.2-4.2 4.3-10.3 5.9-17 8.3s-14 6-18.5 14.5c-2.1 3.9-2.8 8.1-2.8 12.4 0 3.9.6 7.9 1.2 11.8 1.2 8.1 2.5 15.7.8 20.8-5.2 14.4-5.9 24.4-2.2 31.7 3.8 7.3 11.4 10.5 20.1 12.3 17.3 3.6 40.8 2.7 59.3 12.5 19.8 10.4 39.9 14.1 55.9 10.4 11.6-2.6 21.1-9.6 25.9-20.2 12.5-.1 26.3-5.4 48.3-6.6 14.9-1.2 33.6 5.3 55.1 4.1.6 2.3 1.4 4.6 2.5 6.7v.1c8.3 16.7 23.8 24.3 40.3 23 16.6-1.3 34.1-11 48.3-27.9 13.6-16.4 36-23.2 50.9-32.2 7.4-4.5 13.4-10.1 13.9-18.3.4-8.2-4.4-17.3-15.5-29.7zM223.7 87.3c9.8-22.2 34.2-21.8 44-.4 6.5 14.2 3.6 30.9-4.3 40.4-1.6-.8-5.9-2.6-12.6-4.9 1.1-1.2 3.1-2.7 3.9-4.6 4.8-11.8-.2-27-9.1-27.3-7.3-.5-13.9 10.8-11.8 23-4.1-2-9.4-3.5-13-4.4-1-6.9-.3-14.6 2.9-21.8zM183 75.8c10.1 0 20.8 14.2 19.1 33.5-3.5 1-7.1 2.5-10.2 4.6 1.2-8.9-3.3-20.1-9.6-19.6-8.4.7-9.8 21.2-1.8 28.1 1 .8 1.9-.2-5.9 5.5-15.6-14.6-10.5-52.1 8.4-52.1zm-13.6 60.7c6.2-4.6 13.6-10 14.1-10.5 4.7-4.4 13.5-14.2 27.9-14.2 7.1 0 15.6 2.3 25.9 8.9 6.3 4.1 11.3 4.4 22.6 9.3 8.4 3.5 13.7 9.7 10.5 18.2-2.6 7.1-11 14.4-22.7 18.1-11.1 3.6-19.8 16-38.2 14.9-3.9-.2-7-1-9.6-2.1-8-3.5-12.2-10.4-20-15-8.6-4.8-13.2-10.4-14.7-15.3-1.4-4.9 0-9 4.2-12.3zm3.3 334c-2.7 35.1-43.9 34.4-75.3 18-29.9-15.8-68.6-6.5-76.5-21.9-2.4-4.7-2.4-12.7 2.6-26.4v-.2c2.4-7.6.6-16-.6-23.9-1.2-7.8-1.8-15 .9-20 3.5-6.7 8.5-9.1 14.8-11.3 10.3-3.7 11.8-3.4 19.6-9.9 5.5-5.7 9.5-12.9 14.3-18 5.1-5.5 10-8.1 17.7-6.9 8.1 1.2 15.1 6.8 21.9 16l19.6 35.6c9.5 19.9 43.1 48.4 41 68.9zm-1.4-25.9c-4.1-6.6-9.6-13.6-14.4-19.6 7.1 0 14.2-2.2 16.7-8.9 2.3-6.2 0-14.9-7.4-24.9-13.5-18.2-38.3-32.5-38.3-32.5-13.5-8.4-21.1-18.7-24.6-29.9s-3-23.3-.3-35.2c5.2-22.9 18.6-45.2 27.2-59.2 2.3-1.7.8 3.2-8.7 20.8-8.5 16.1-24.4 53.3-2.6 82.4.6-20.7 5.5-41.8 13.8-61.5 12-27.4 37.3-74.9 39.3-112.7 1.1.8 4.6 3.2 6.2 4.1 4.6 2.7 8.1 6.7 12.6 10.3 12.4 10 28.5 9.2 42.4 1.2 6.2-3.5 11.2-7.5 15.9-9 9.9-3.1 17.8-8.6 22.3-15 7.7 30.4 25.7 74.3 37.2 95.7 6.1 11.4 18.3 35.5 23.6 64.6 3.3-.1 7 .4 10.9 1.4 13.8-35.7-11.7-74.2-23.3-84.9-4.7-4.6-4.9-6.6-2.6-6.5 12.6 11.2 29.2 33.7 35.2 59 2.8 11.6 3.3 23.7.4 35.7 16.4 6.8 35.9 17.9 30.7 34.8-2.2-.1-3.2 0-4.2 0 3.2-10.1-3.9-17.6-22.8-26.1-19.6-8.6-36-8.6-38.3 12.5-12.1 4.2-18.3 14.7-21.4 27.3-2.8 11.2-3.6 24.7-4.4 39.9-.5 7.7-3.6 18-6.8 29-32.1 22.9-76.7 32.9-114.3 7.2zm257.4-11.5c-.9 16.8-41.2 19.9-63.2 46.5-13.2 15.7-29.4 24.4-43.6 25.5s-26.5-4.8-33.7-19.3c-4.7-11.1-2.4-23.1 1.1-36.3 3.7-14.2 9.2-28.8 9.9-40.6.8-15.2 1.7-28.5 4.2-38.7 2.6-10.3 6.6-17.2 13.7-21.1.3-.2.7-.3 1-.5.8 13.2 7.3 26.6 18.8 29.5 12.6 3.3 30.7-7.5 38.4-16.3 9-.3 15.7-.9 22.6 5.1 9.9 8.5 7.1 30.3 17.1 41.6 10.6 11.6 14 19.5 13.7 24.6zM173.3 148.7c2 1.9 4.7 4.5 8 7.1 6.6 5.2 15.8 10.6 27.3 10.6 11.6 0 22.5-5.9 31.8-10.8 4.9-2.6 10.9-7 14.8-10.4s5.9-6.3 3.1-6.6-2.6 2.6-6 5.1c-4.4 3.2-9.7 7.4-13.9 9.8-7.4 4.2-19.5 10.2-29.9 10.2s-18.7-4.8-24.9-9.7c-3.1-2.5-5.7-5-7.7-6.9-1.5-1.4-1.9-4.6-4.3-4.9-1.4-.1-1.8 3.7 1.7 6.5z"/></svg>,
see a [detailed
tutorial](https://www.datacamp.com/community/tutorials/installing-R-windows-mac-ubuntu%20)),
which provides complete control over the installation, added packages
and can be used anywhere without requiring internet connection. This is
recommended for anyone who is planning to do any future serious analysis
in R (including the assignments in this course).

#### Project Management with RStudio

Regardless whether we installed R and RStudio locally or we use the
Binder service, we interact with R through the RStudio integrated
development environment (IDE), which let’s us easily write our code,
test it, see our files, objects in memory and plots that we produce. If
we run the analysis locally, it is highly recommended to use RStudio’s
built-in Projects to contain our analysis in its own folder with all the
files required. That will also help in reading data files and writing
results and figures back to the hard drive.

> 1.  Start RStudio by clicking on its icon.  
> 2.  Start a new project by selecting “File –\> New Project” or
>     clicking on the “New Project” icon (under “Edit” in the
>     taskbar).  
> 3.  Select “New Directory –\> New Project” and then enter “Workshop1”
>     in the Directory name text box and browse to the “wrokspace”
>     folder to create the project folder in (see screenshots A-D in
>     Figure 3 below)

<div class="figure" style="text-align: center">

<img src="https://github.com/IdoBar/6003ESC_workshops_binder/raw/main/figs/RStudio_create_project.png" alt="Figure  3: Create a new project in RStudio screenshots." width="100%" />

<p class="caption">

Figure 3: Create a new project in RStudio screenshots.

</p>

</div>

> 4.  Create a new R script file by selecting “File –\> New File –\> R
>     Script” or clicking on the “New File” icon (under the “File” in
>     the taskbar)  
> 5.  Save the script file by select “File –\> Save” or pressing Ctrl+s
>     or clicking on the floppy disk icon on the top bar

### Install Packages

R can be extended with additional functionality by installing external
packages (usually hosted at the Comprehensive R Archive Network
repository –
[CRAN](https://cran.r-project.org/web/packages/index.html)). To find
which packages can be useful for your type analysis, use search engine
(Google is your friend) and the available [Task Views on
CRAN](https://cran.r-project.org/web/views/), which provide some
guidance on which packages on CRAN are relevant for tasks related to a
certain topic. Another great source for Genomics and Bioinformatics
packages is BioConductor (see their list of [suggested
workflows](https://www.bioconductor.org/packages/release/BiocViews.html#___Workflow)).

Please note that the required packages for this workshop are already
pre-installed in Binder, but they will need to be installed if you chose
to run the analysis locally.  
To install these packages, we use the `install.packages('package')`
command (or `BiocManager::install('package')` if installing from
BioConductor), please note that the package name need to be quoted and
that we only need to be perform it once, or when we want or need to
update the package. Once the package was installed, we can load its
functions using the `library(package)` command. *Note that in this case
we use the package name without quotes\!*.

### Additional Information

For more details and instructions how to setup a similar repository,
please visit [From Zero to Binder in
R\!](https://github.com/alan-turing-institute/the-turing-way/blob/master/workshops/boost-research-reproducibility-binder/workshop-presentations/zero-to-binder-r.md)
