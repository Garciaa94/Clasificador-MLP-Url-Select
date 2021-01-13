%clear all ;
clc;
close all;
[file,path] = uigetfile('*.*','Select One or More Files','MultiSelect', 'on');
if isequal(file,0)
     f = errordlg('select an image','selection canceled');
    return
end
total_images_selected = numel(file);
images = cell(1,total_images_selected);
rows = ceil(sqrt(length(file)))


c=input('Enter the Class(Number from 1-12): '); % Clase
for count = 1:total_images_selected
    images{count} = imread(fullfile(path,file{count}));
    % analysis
    im=im2bw(images{count});  
    imshow(im);
    subplot(15, 15, count);
    imshow(fullfile(path,file{count}));
    %title(file{count}.name, 'Interpreter', 'none');
    drawnow;
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