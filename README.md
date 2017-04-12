# GroundCover-imagej
Macro developed to generate quantitative data of ground coverage photos using imagej. Information about crop ground cover as a phenotypic measurement can be found in CIMMYT's [Physiological Breeding II Guide](https://books.google.co.uk/books?id=lYVL-db0AtQC&pg=PA46), where an Adobe Photoshop image processing method is explained. This macro intend to replicate the same pipeline using an opensource software (i.e. ImageJ).

## Instructions
* Download 'Ground coverage.ijm'.
* Open [ImageJ](https://imagej.net/ImageJ2) or [Fiji](https://fiji.sc/).
* Go to Process/Batch/Macro (see Fig1).
* Click on Input... and select the folder with the images (see Fig2).
* Click on Output.. and select the output folder (can be an empty folder inside the Input path called 'Results').
* Click on Open... and select the macro (Ground coverage.ijm).
* Click process and watch all your images being processed into '*.csv' file with percentage of crop ground coverage.

![Figure 1](/Images/Fig1.jpg)

![Figure 2](/Images/Fig2.jpg)

[_*If you end up publishing data using this macro remember to at least cite ImageJ as a way to support opensource projects*_](https://imagej.net/Citing)