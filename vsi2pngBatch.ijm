dir1=getDir("Choose folder");
list = getFileList(dir1);
str=".vsi";
filtered = Array.filter(list, str);
n=filtered.length;
dirout=getDir("choose output directory");
for (i = 0; i < n; i++) {
	run("Bio-Formats Importer", "open=" + dir1 + filtered[i] + " color_mode=Custom rois_import=[ROI manager] view=Hyperstack stack_order=XYCZT series_2 series_1_channel_0_red=0 series_2_channel_0_green=0 series_2_channel_0_blue=255 series_2_channel_1_red=255 series_2_channel_1_green=0 series_2_channel_1_blue=0");
	title = getTitle();
	selectWindow(title);
	run("Arrange Channels...", "new=21");
	resetMinAndMax();
	run("Enhance Contrast", "saturated=0.45");
	Stack.setChannel(1);
	resetMinAndMax();
	run("Enhance Contrast", "saturated=0.15");
	run("Merge Channels...", "c1=[" + title + "] c3=[" + title + "] create keep");
	saveAs("PNG", dirout + title +".png");
	close();
}
