0. make sure you have a working install of the RKernel and that Jupyter can see it (https://irkernel.github.io/installation/) (NOTE: I didn't bother with step 3, since I don't use Jupyter Lab, but probably better?)
1. rename notebook appropriately (if needed)
2. launch notebook
3. Click Kernel --> Change kernel --> R
4. Work through the notebook, doing the following:
   a. editing the language so that it's relevant to R rather than Py
   b. rewriting the code in R
   c. leaving notes wherever we will need to change, remove, or add material
5. when done, save and exit
6. launch an R terminal/R studio process
7. load the packages `rmarkdown` and `xfun`
8. for a given ipynb file named <FILE.ipynb>, run the following lines:
        # convert to Rmd
        rmd = rmarkdown:::convert_ipynb('<FILE.ipynb>')
        # open an Rmd file to save the converted text into
        file_connection = file('<FILE.Rmd')
        # write the Rmd text into the new file
        writeLines(xfun::file_string(rmd), file_connection)
        # close the file connection
        close(file_connection)
9. if wanting to generate HTML from the Rmd file, then run:
        # render as HTML
        rmarkdown::render('<FILE.Rmd')
