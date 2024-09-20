% import the image 
img_color=imread('shubhi gulati.png');

% display the image 
figure;
imshow(img_color);
title('original color image');
saveas(gcf,'fig1.png');

% decrease the size of the image 
img_resize=imresize(img_color,0.5);

%display the image
figure;
imshow(img_resize);
title('Resized  image -half size');
saveas(gcf,'fig2.png');

% gray scale
img_gray=rgb2gray(img_resize);

% display
figure;
imshow(img_gray);
title('Graysize  image ');
saveas(gcf,'fig3.png');

%convert into 1D array
img_gray_1D=img_gray(:);

 % display
 disp('First 10 elements of 1D array');
 disp(img_gray_1D(1:10));

 %reconstruct 
 img_gray_recons=reshape(img_gray_1D,size(img_gray));

 %display
 figure;
imshow(img_gray_recons);
title(' REconstructed Graysize  image ');
saveas(gcf,'fig4.png');

%back to color
img_color_recons=cat(3,img_gray_recons,img_gray_recons,img_gray_recons);

%display
 figure;
imshow(img_color_recons);
title(' Psuedo color  image ');
saveas(gcf,'fig5.png');


