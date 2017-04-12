# GroundCover-imagej
Macro developed to generate quantitative data of ground coverage photos using imagej. Information about crop ground cover as a phenotypic measurement can be found in CIMMYT's [Physiological Breeding II Guide](https://books.google.co.uk/books?id=lYVL-db0AtQC&pg=PA46), where an Adobe Photoshop image processing method is explained. This macro intend to replicate the same pipeline using an opensource software (i.e. ImageJ).

[_*If you end up publishing data using this macro remember to at least cite ImageJ as a way to support opensource projects*_](https://imagej.net/Citing)

## Instructions
* Download 'Ground coverage.ijm'.
* Open [ImageJ](https://imagej.net/ImageJ2) or [Fiji](https://fiji.sc/).
* Go to Process/Batch/Macro (see Fig1).
* Click on Input... and select the folder with the images (see Fig2).
* Click on Output.. and select the output folder (can be an empty folder inside the Input path called 'Results').
* Click on Open... and select the macro (Ground coverage.ijm).
* The macro will be displayed, scroll to the bottom and write the path where the '*.csv' file should be saved (I would recomend copying the Output path and add at the end ...//Results.csv) **Remember that the path should have double slash "//" between folders**
* Click process and watch all your images being processed into '*.csv' file with percentage of crop ground coverage.

### Figure 1
![Figure 1](/Images/Fig1.jpg)
### Figure 2
![Figure 2](/Images/Fig2.jpg)

## Results
Shadows doesn't seem to have a significant effect, as seen in Fig3.
### Figure 3
![Figure 3](/Images/Fig3.jpg)
