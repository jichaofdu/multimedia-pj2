I = imread('test.png');%��ȡ�ļ�������ͼƬת��Ϊ�Ҷ�ͼ
i2 = rgb2gray(I);
imwrite(i2,'test4_1.png');
imhist(i2);%�Ҷ�ֵ�ֲ�ֱ��ͼ

J1 =imadjust(i3,[0.2 0.6], [0 1]);%�Ҷ�����
%imhist(J1);%�Ҷ�ֵ�ֲ�ֱ��ͼ
imwrite(J1,'test4_2.png');
J2 = histeq(i3);%ֱ��ͼ���⻯
%imhist(J2);%�Ҷ�ֵ�ֲ�ֱ��ͼ
imwrite(J2,'test4_3.png');
