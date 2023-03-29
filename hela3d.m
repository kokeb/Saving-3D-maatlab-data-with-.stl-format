close all
clear all

load('Hela_ROI_01_30_876_1665_81_Nuclei.mat')
load('Hela_ROI_01_30_876_1665_81_Cell.mat')

imagesc(Hela_cell(:,:,190)*2+3*Hela_nuclei(:,:,190)+1*Hela_background(:,:,190))
imagesc(Hela_cell(:,:,90)*2+3*Hela_nuclei(:,:,90)+1*Hela_background(:,:,90))

figure
h1=isosurface(Hela_nuclei(1:8:end,1:8:end,:),0.5);
h2=patch(h1);
h2.EdgeColor='none';
h2.FaceColor='r';
lighting phong
camlight right
stlwrite('hela.stl', h1)