
clc;
%clear all;
%'C:\Users\AdrianGarcia\Desktop\Inteligencia Artificial II\Unidad 3\clasificador-de-animales\MLP Classification\img\Face Mask Detection\dataset\with_mask\'
%'C:\Users\AdrianGarcia\Desktop\Inteligencia Artificial II\Unidad 3\clasificador-de-animales\MLP Classification\img\Face Mask Detection\dataset\without_mask\'
close all;
% prompt = 'Cuantas clases quiere crear: ';
% x = input(prompt);  %variable N traint
% for r = 1:x
 prompt = 'Ingrese la ruta de las imagenes: ';
xruta = input(prompt);  %variable ruta Img
folder = xruta;
filePattern = fullfile(folder, '*.png');
myFiles = dir(filePattern); % the folder inwhich ur images exists
rows = ceil(sqrt(length(myFiles)))

c=input('Enter the Class(Number from 1-12): '); % Clase

for k = 1 : length(myFiles)
  fullFileName = fullfile(folder, myFiles(k).name);
  
  im=imread(fullFileName)
  im=im2bw(im);  
  imshow(im);
  subplot(rows, rows, k);
  imshow(fullFileName);
  title(myFiles(k).name, 'Interpreter', 'none');
  drawnow;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Feature Extraction
F=FeatureStatistical(im);
%% Saving features 
try 
    load db1;
    F=[F c];
    db1=[db1; F];
    save db1.mat db1 
catch 
    db1=[F c]; % 10 12 1
    save db1.mat db1
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  
  
end
% Enlarge figure to full screen.
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0.04, 1, 0.96]);
% end