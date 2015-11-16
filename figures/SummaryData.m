data = csvread("SummaryData.csv");
name = textread("CategoryTitles.csv", "%s", "delimiter", ",");
fontsize = 12;
fontsizeaxis = 12;

usability = data(:,2);
deployability = data(:,3);
security = data(:,4);
category = data(:,1);

#h = figure
subplot(2,2,4);
scatter3(usability, deployability, security, 10, category, "filled");
xlabel ("Usability", "fontsize", fontsize, "fontweight", "bold");
axis("ij");
ylabel ("Deployability", "fontsize", fontsize, "fontweight", "bold");
zlabel ("Security", "fontsize", fontsize, "fontweight", "bold");
axis("nolabel");

subplot(2,2,1);
scatter(usability, deployability, 10, category, "filled");
xlabel ("Usability", "fontsize", fontsize, "fontweight", "bold");
ylabel ("Deployability", "fontsize", fontsize, "fontweight", "bold");
axis("nolabel");

subplot(2,2,2);
scatter(deployability, security, 10, category, "filled");
xlabel ("Deployability", "fontsize", fontsize, "fontweight", "bold");
ylabel ("Security", "fontsize", fontsize, "fontweight", "bold");
axis("nolabel");

subplot(2,2,3);
scatter(usability, security, 10, category, "filled");
xlabel ("Usability", "fontsize", fontsize, "fontweight", "bold");
ylabel ("Security", "fontsize", fontsize, "fontweight", "bold");
axis("nolabel");

subplot(2,2,4);
[~, I] = unique(category); %
p = findobj(gca,'Type','Patch');
I = flipud(I);
legend(p(I),name, "location", "northeast", "orientation", "vertical");

annotation("textbox", [.12 .545 .3 .3], "String", "Low", "linestyle", "none", "fontsize", fontsizeaxis);
annotation("textbox", [.445 .545 .3 .3], "String", "High", "linestyle", "none", "fontsize", fontsizeaxis);
annotation("textbox", [.10 .57 .3 .3], "String", "Low", "linestyle", "none", "fontsize", fontsizeaxis);
annotation("textbox", [.10 .912 .3 .3], "String", "High", "linestyle", "none", "fontsize", fontsizeaxis);

annotation("textbox", [.57 .545 .3 .3], "String", "Low", "linestyle", "none", "fontsize", fontsizeaxis);
annotation("textbox", [.895 .545 .3 .3], "String", "High", "linestyle", "none", "fontsize", fontsizeaxis);
annotation("textbox", [.55 .57 .3 .3], "String", "Low", "linestyle", "none", "fontsize", fontsizeaxis);
annotation("textbox", [.55 .912 .3 .3], "String", "High", "linestyle", "none", "fontsize", fontsizeaxis);

annotation("textbox", [.12 .085 .3 .3], "String", "Low", "linestyle", "none", "fontsize", fontsizeaxis);
annotation("textbox", [.445 .085 .3 .3], "String", "High", "linestyle", "none", "fontsize", fontsizeaxis);
annotation("textbox", [.10 .11 .3 .3], "String", "Low", "linestyle", "none", "fontsize", fontsizeaxis);
annotation("textbox", [.10 .452 .3 .3], "String", "High", "linestyle", "none", "fontsize", fontsizeaxis);

annotation("textbox", [.55 .18 .3 .3], "String", "Low", "linestyle", "none", "fontsize", fontsizeaxis);
annotation("textbox", [.55 .382 .3 .3], "String", "High", "linestyle", "none", "fontsize", fontsizeaxis);
annotation("textbox", [.69 .09 .3 .3], "String", "High", "linestyle", "none", "fontsize", fontsizeaxis);
annotation("textbox", [.72 .08 .3 .3], "String", "Low", "linestyle", "none", "fontsize", fontsizeaxis);
annotation("textbox", [.902 .15 .3 .3], "String", "High", "linestyle", "none", "fontsize", fontsizeaxis);

