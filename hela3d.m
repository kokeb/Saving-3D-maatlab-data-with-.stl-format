close all
clear all
%load your 3D data
load('Hela_ROI_01_30_876_1665_81_Nuclei.mat')
%only considering the first 10 slices
h1=isosurface(Hela_nuclei(1:10:end,1:10:end,:),0.5);
stlwrite('hela.stl', h1)
