%%%Calculate CAM images for individual networks %%% 
load 1-Network %1-Network, 2-Network, 3-Network, 4-Network, 5-Network (_ver1, _ver2, _ver3, _ver4, _ver5)
TN='D:\Version_1_Train_set\BRCA_ver1'; %Import individual cancer type file path (BRCA_ver1, DLBC_ver1, HNSC_ver1, KIRC_ver1, OV_ver1, PAAD_ver1, PRAD_ver1, SARC_ver1)
imds_Train = imageDatastore(TN,'IncludeSubfolders',true,'LabelSource','foldernames','FileExtensions','.mat','ReadFcn',@matRead);

for i=1:length(imds_Train.Files) 
SN=horzcat('D:\CAM_image\BRCA\',num2str(i),'.mat'); %folder path to save
im=load(imds_Train.Files{i});
im=im.image2;
im=rgb2gray(im);
layerName = 'relu_1';
imageActivations = activations(Network_1,im,layerName); 
scores = squeeze(mean(imageActivations,[1 2]));
[~,classIds] = maxk(scores,3);
classActivationMap = imageActivations(:,:,classIds(1));
CAM=classActivationMap;
imSize = size(im);
CAM_ori = normalizeImage(CAM);
save(SN, 'CAM_ori')
end

%%%Acquisition of CAM images for individual cancer types%%%
FN='D:\CAM_image\BRCA'; %folder path to load
info=dir(FN); info(1:2)=[];

CAM=single(zeros(38,39));
for i=1:length(info)
    a=load(fullfile(info(i).folder, info(i).name));
    im=a.CAM_ori;
    CAM=CAM+im;
end
CAM=CAM/length(info);
save('total_CAM_BRCA_ver1', 'CAM')


FN='D:\CAM_image\DLBC';
info=dir(FN); info(1:2)=[];

CAM=single(zeros(38,39));
for i=1:length(info)
    a=load(fullfile(info(i).folder, info(i).name));
    im=a.CAM_ori;
    CAM=CAM+im;
end
CAM=CAM/length(info);
save('total_CAM_DLBC_ver1', 'CAM')


FN='D:\CAM_image\HNSC';
info=dir(FN); info(1:2)=[];

CAM=single(zeros(38,39));
for i=1:length(info)
    a=load(fullfile(info(i).folder, info(i).name));
    im=a.CAM_ori;
    CAM=CAM+im;
end
CAM=CAM/length(info);
save('total_CAM_HNSC_ver1', 'CAM')

FN='D:\CAM_image\KIRC';
info=dir(FN); info(1:2)=[];

CAM=single(zeros(38,39));
for i=1:length(info)
    a=load(fullfile(info(i).folder, info(i).name));
    im=a.CAM_ori;
    CAM=CAM+im;
end
CAM=CAM/length(info);
save('total_CAM_KIRC_ver1', 'CAM')

FN='D:\CAM_image\OV';
info=dir(FN); info(1:2)=[];

CAM=single(zeros(38,39));
for i=1:length(info)
    a=load(fullfile(info(i).folder, info(i).name));
    im=a.CAM_ori;
    CAM=CAM+im;
end
CAM=CAM/length(info);
save('total_CAM_OV_ver1', 'CAM')

FN='D:\CAM_image\PAAD';
info=dir(FN); info(1:2)=[];

CAM=single(zeros(38,39));
for i=1:length(info)
    a=load(fullfile(info(i).folder, info(i).name));
    im=a.CAM_ori;
    CAM=CAM+im;
end
CAM=CAM/length(info);
save('total_CAM_PAAD_ver1', 'CAM')

FN='D:\CAM_image\PRAD';
info=dir(FN); info(1:2)=[];

CAM=single(zeros(38,39));
for i=1:length(info)
    a=load(fullfile(info(i).folder, info(i).name));
    im=a.CAM_ori;
    CAM=CAM+im;
end
CAM=CAM/length(info);
save('total_CAM_PRAD_ver1', 'CAM')

FN='D:\CAM_image\SARC';
info=dir(FN); info(1:2)=[];

CAM=single(zeros(38,39));
for i=1:length(info)
    a=load(fullfile(info(i).folder, info(i).name));
    im=a.CAM_ori;
    CAM=CAM+im;
end
CAM=CAM/length(info);
save('total_CAM_SARC_ver1', 'CAM')