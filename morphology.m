% ��̬ѧ����
function [img_morphology] = morphology(img_edge,remove_threshold)

%����һ����СΪ[1,25]�ľ��νṹԪ��
se1=strel('rectangle',[1,25]);

%��ͼ��ִ����̬ѧ������-��ն�
bw_close=imclose(img_edge,se1); 
% �Ӷ�ֵͼ����ɾ��С��������remove_threshold��1000�������ص�������ͨ����������
bw_remvoe = bwareaopen(bw_close,remove_threshold);  
%��ͼ��ִ����̬ѧ����������ͻ��
bw_open=imopen(bw_remvoe,se1);

%����һ����СΪ[10,5]�ľ��νṹԪ��
se3 = strel('rectangle',[10,5]);
%����
img_morphology = imdilate(bw_open,se3);
end

