run("Bio-Formats Importer", "color_mode=Custom rois_import=[ROI manager] view=Hyperstack stack_order=XYCZT series_2 series_1_channel_0_red=0 series_2_channel_0_green=0 series_2_channel_0_blue=255 series_2_channel_1_red=255 series_2_channel_1_green=0 series_2_channel_1_blue=0");
title = getTitle();
selectWindow(title);
run("Arrange Channels...", "new=21");
resetMinAndMax();
run("Enhance Contrast", "saturated=0.45");
Stack.setChannel(1);
resetMinAndMax();
run("Enhance Contrast", "saturated=0.15");
run("Merge Channels...", "c1=[" + title + "] c3=[" + title + "] create keep");
dirout=getDir("choose output directory");
saveAs("PNG", dirout + title +".png");
close();

