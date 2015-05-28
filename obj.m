img1=imread('gaurav.jpg');
img1=rgb2gray(img1);
img2=im2bw(img1,graythresh(img1));
imshow(img2);
img2=~img2;
img2=bwareaopen(img2,1000);

imshow(img2);
B = bwboundaries(img2);
imshow(img2)
text(10,10,strcat('\color{green}Objects Found:',num2str(length(B))))
hold on
for k = 1:length(B)
boundary = B{k};
plot(boundary(:,2), boundary(:,1), 'g', 'LineWidth', 0.2)
end