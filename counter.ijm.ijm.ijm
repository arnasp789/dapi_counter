// Code made by Arnas Petrauskas (TCD, TCIN) 20190623
// For ZIDAS 2019 exercise
// I suggest you don't use this code, it was only an exercise...

run("HeLa Cells (1.3M, 48-bit RGB)");
run("Split Channels");
selectWindow("C1-hela-cells.tif");
close();
selectWindow("C2-hela-cells.tif");
close();
selectWindow("C3-hela-cells.tif");
run("Gaussian Blur...", "sigma=2");
setAutoThreshold("MaxEntropy dark");
setOption("BlackBackground", true);
run("Convert to Mask");


run("Analyze Particles...", "size=2-Infinity display exclude");
saveAs("Results", "D:/data/code/dapi_counter_output/Results.csv");
close();
