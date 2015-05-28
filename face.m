clear all
clc
%%
%Detect objects using Viola-Jones Algorithm
%Viola jones is a special machine learning algoritm to detect face
count=0;
%%
%To detect Face
FDetect = vision.CascadeObjectDetector;
% vison.CascadeObjectDetector is a special function for vision class

%%
%Read the input image
I = imread('face.jpg');

%Returns Bounding Box values based on number of objects
%counts the no of objects and returns bounding box around it
BB = step(FDetect,I);

figure,
imshow(I); hold on
for i = 1:size(BB,1)
    rectangle('Position',BB(i,:),'LineWidth',5,'LineStyle','-','EdgeColor','r');
    count=count+1;
    %styling bounding box 
end
title('Face Detection');
hold off;


%%
%To detect Nose
%now again special function for detecting nose
NoseDetect = vision.CascadeObjectDetector('Nose','MergeThreshold',16);



BB=step(NoseDetect,I);


figure,
imshow(I); hold on
for i = 1:size(BB,1)
    rectangle('Position',BB(i,:),'LineWidth',4,'LineStyle','-','EdgeColor','b');
end
title('Nose Detection');
hold off;




%%
%To detect Mouth
MouthDetect = vision.CascadeObjectDetector('Mouth','MergeThreshold',16);

BB=step(MouthDetect,I);


figure,
imshow(I); hold on
for i = 1:size(BB,1)
 rectangle('Position',BB(i,:),'LineWidth',4,'LineStyle','-','EdgeColor','r');
end
title('Mouth Detection');
hold off;

%%
%To detect Eyes
EyeDetect = vision.CascadeObjectDetector('EyePairBig');

%Read the input Image
I = imread('face.jpg');

BB=step(EyeDetect,I);



figure,imshow(I);
rectangle('Position',BB,'LineWidth',4,'LineStyle','-','EdgeColor','b');
title('Eyes Detection');
Eyes=imcrop(I,BB);
figure,imshow(Eyes);
