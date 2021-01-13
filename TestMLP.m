% Prueba de la red neuronal
clc;
%clear all;
close all;
    [fname, path]=uigetfile('*.*','provide an Image for testing');
    if isequal(fname,0)
        f = errordlg('select an image','selection canceled');
    return   
    end
    fname=strcat(path, fname);
    im=imread(fname);
    im=im2bw(im);
    imshow(fname);
    title('Test Image');
    %% Find the class the test image belongs
    Ftest=FeatureStatistical(im)
    predict_object= sim(net, Ftest')
    % Rounding the MLP output
    %class = round(predict_ball)
    class = round(predict_object)
    % Convert binary to decimal
    pred = bintodec(class)
    % Determining the class
    if (pred==0)
        disp("No Usa Mascarilla");
        else if(pred==1)
            disp("Si Usa Mascarilla");
        end
    end
