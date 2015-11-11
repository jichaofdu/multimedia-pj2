I = imread('test.png');%读取文件，并将图片转化为灰度图
i2 = rgb2gray(I);
i3 = histeq(i2);

J = imnoise(i3,'salt & pepper',0.04);%添加椒盐噪声 
imwrite(J,'test5_1.png');

filter1 = medfilt2(i3);  %中值,窗口大小为3×3
imwrite(filter1,'test5_2.png');

h = fspecial('average',[3,3]);%均值,窗口大小为3×3
filter2 = imfilter(i3 ,h);
imwrite(filter2,'test5_3.png');

