% ��Ե���
%�ԻҶ�ͼ��ʹ�ò�ͬ���ݶ����ӽ��б�Ե��⣬�ԱȲ�ͬ�ݶ����ӵļ������
%����ͼ���д������ϸ�ڣ�Roberts��log��Canny�������׼�������޹ر�Ե�������ں���������ѡ��
%�������ѡ��Sobel���Ӻ�Prewitt���ӣ�Ϊ�˽�һ�����ٱ����ı�Ե�������ر�ѡ���˴�ֱ����ļ�⡣
function [img_edge] = edge_detect(img_gray)
%��ⷽ����Prewitt��������ֵ0.1����ֱ����
img_edge = edge(img_gray,'Prewitt',0.1,'vertical'); 
end
