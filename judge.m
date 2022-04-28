% ���ݴ���õ�ͼ���ж�һ��ʼ�Ƿ����ԭʼͼ��ֱ��ͼ���⻯
function img_morphology = judge(img_morphology,img)
%������̬ѧ�����ÿ�� 8 ��ͨ���������󣩵����Լ��Ĳ���ֵ
stats = regionprops(img_morphology,'BoundingBox','Centroid');
%�������ά�ȵĳ���
L = length(stats);
% �ж��Ƿ���Ҫֱ��ͼ���⻯
if L~=0
    return
else
%��Ԥ����һ��
img_gray = preprocess(img);
%ʹ��ֱ��ͼ������ǿ�Աȶ�
img_gray = histeq(img_gray);
img_edge = edge_detect(img_gray);
[img_morphology] = morphology(img_edge,1000);
end

end
