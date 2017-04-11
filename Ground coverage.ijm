////////         REMEMBER!!!
//copy the output address and paste it at the bottom between " " (make the \ double --> \\)
//where it says: saveAs("Results","
//and at the end put \\Results.csv")

//Image procesing
//run("Threshold...");
// Color Thresholder 1.48i
min=newArray(3);
max=newArray(3);
filter=newArray(3);
a=getTitle();
run("HSB Stack");
run("Convert Stack to Images");
selectWindow("Hue");
rename("0");
selectWindow("Saturation");
rename("1");
selectWindow("Brightness");
rename("2");
min[0]=34;
max[0]=117;
filter[0]="pass";
min[1]=0;
max[1]=255;
filter[1]="pass";
min[2]=0;
max[2]=255;
filter[2]="pass";
for (i=0;i<3;i++){
  selectWindow(""+i);
  setThreshold(min[i], max[i]);
  run("Convert to Mask");
  if (filter[i]=="stop")  run("Invert");
}
imageCalculator("AND create", "0","1");
imageCalculator("AND create", "Result of 0","2");
for (i=0;i<3;i++){
  selectWindow(""+i);
  close();
}
selectWindow("Result of 0");
close();
selectWindow("Result of Result of 0");
rename(a);

// Pixel counting
blackPixels = 0;
totalPixels = getHeight * getWidth;
for (j = 0; j < getHeight(); j+=1){
	for(i = 0; i< getWidth(); i+=1){
		val=getPixel(i,j);
		if(val==255){
			blackPixels +=1;
		}
	}
}
percent=(blackPixels)*100/totalPixels;

//Results
n=nResults;
e= getTitle();
setResult("File", n,a);
setResult("% Ground cover", n, percent);



//Saving results as *.csv on desktop (because i dont know the output address)
saveAs("Results", "C:\\Users\\gonzaleo\\Desktop\\Results.csv");


