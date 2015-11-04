
function [] = getPicInfo( row,column,path )
    I=imread(path);%��ȡ�ļ�
    [y,x,~]=size(I);%��ȡ�ļ���С
    maxRow = y;     %����������������
    maxColumn = x;
    %������������if�ж��û�ѡȡ�����ص��Ƿ񳬳���ͼ��߽�֮��
    if(row > maxRow)
        disp('row index out of bound');
        return;
    end
    if(column > maxColumn)
        disp('column index out of bound');
        return;
    end
    %��������4��ifȷ���û�ѡȡ�����ص���Χ�м������ص㣨ȡֵ�߽磩
    if(row - 1 < 1)
       topEdge =  row; 
    else
       topEdge =  row - 1;
    end
    if(row + 1 > maxRow)
       bottomEdge =  row; 
    else
       bottomEdge =  row + 1;
    end
    if(column - 1 < 1)
       leftEdge = column; 
    else
       leftEdge = column - 1;
    end
    if(column + 1 > maxColumn)
       rightEdge = column; 
    else
       rightEdge = column + 1;
    end
    %��ȡֵ������������̨
    for i = topEdge:bottomEdge
        for j = leftEdge:rightEdge
            r = I(i,j,1);
            g = I(i,j,2);
            b = I(i,j,3);
            disp(['('  num2str(i)  ',' num2str(j)  '):('  num2str(r)  ','  num2str(g)  ','  num2str(b)  ')']);
        end
    end
    
end

