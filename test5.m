I = imread('test.png');%��ȡ�ļ�������ͼƬת��Ϊ�Ҷ�ͼ
i2 = rgb2gray(I);
i3 = histeq(i2);

J = imnoise(i3,'salt & pepper',0.04);%��ӽ������� 
imwrite(J,'test5_1.png');

filter1 = medfilt2(i3);  %��ֵ,���ڴ�СΪ3��3
imwrite(filter1,'test5_2.png');

h = fspecial('average',[3,3]);%��ֵ,���ڴ�СΪ3��3
filter2 = imfilter(i3 ,h);
imwrite(filter2,'test5_3.png');

