I = imread('test.png');%读取文件，并将图片转化为灰度图
i2 = rgb2gray(I);
imwrite(i2,'test4_1.png');
imhist(i2);%灰度值分布直方图

J1 =imadjust(i3,[0.2 0.6], [0 1]);%灰度拉伸
%imhist(J1);%灰度值分布直方图
imwrite(J1,'test4_2.png');
J2 = histeq(i3);%直方图均衡化
%imhist(J2);%灰度值分布直方图
imwrite(J2,'test4_3.png');
