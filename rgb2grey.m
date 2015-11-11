function [] = rgb2grey(path)
    I=imread(path);%��ȡ�ļ�
    [y,x,~]=size(I);%��ȡ�ļ���С
    maxRow = y;     %����������������
    maxColumn = x;
    total = 0;
    intArray = int32(total);
    %������ͼƬ����ɨ��
    for i = 1:maxRow
        for j = 1:maxColumn
            r = I(i,j,1);    %��ȡ������ص��Ӧ��rgbֵ
            g = I(i,j,2);
            b = I(i,j,3);
            grey = 0.29900 * r + 0.58700 * g + 0.11400 * b; %�Ҷ�ֵ���㹫ʽ
            I(i,j,1) = grey;    %��������ĻҶ�ֵ����rgb����r = g = bʱͼ��ʻ�ɫ
            I(i,j,2) = grey;
            I(i,j,3) = grey;
            intArray = intArray + int32(grey);
        end
    end
    imwrite(I,'test2.png');   %��ͼƬ���
    %���������󷽲�
    mean = intArray / ( maxRow * maxColumn);
    intArray = 0;
    for i = 1:maxRow
        for j = 1:maxColumn
            intArray = intArray + (mean - int32(I(i,j,1))) * (mean - int32(I(i,j,1)));
            
        end
    end
    finalResult = intArray / (maxRow * maxColumn);
    disp(['����Ϊ��' num2str(finalResult)]);
    
   
end