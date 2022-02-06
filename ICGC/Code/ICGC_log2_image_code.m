BRCA=readmatrix('ICGC_TF1462_BRCA_KR50.csv');
DLBC=readmatrix('ICGC_TF1462_MALY_DE105.csv');
HNSC=readmatrix('ICGC_TF1462_ORCA_IN40.csv');
KIRC=readmatrix('ICGC_TF1462_RECA_EU91.csv');
OV=readmatrix('ICGC_TF1462_OV_AU93.csv');
PAAD=readmatrix('ICGC_TF1462_PACA_AU91.csv');
PRAD=readmatrix('ICGC_TF1462_PRAD_FR25.csv');
SARC=readmatrix('ICGC_TF1462_BOCA_FR57.csv');
BRCA(:,1:2)=[];
DLBC(:,1:2)=[];
HNSC(:,1:2)=[];
KIRC(:,1:2)=[];
OV(:,1:2)=[];
PAAD(:,1:2)=[];
PRAD(:,1:2)=[];
SARC(:,1:2)=[];


BRCA_mat = BRCA + 1;
BRCA_mat= log2(BRCA_mat);
DLBC_mat = DLBC + 1;
DLBC_mat= log2(DLBC_mat);
HNSC_mat = HNSC + 1;
HNSC_mat= log2(HNSC_mat);
KIRC_mat = KIRC + 1;
KIRC_mat= log2(KIRC_mat);
OV_mat = OV + 1;
OV_mat= log2(OV_mat);
PAAD_mat = PAAD + 1;
PAAD_mat= log2(PAAD_mat);
PRAD_mat = PRAD + 1;
PRAD_mat= log2(PRAD_mat);
SARC_mat = SARC + 1;
SARC_mat= log2(SARC_mat);


FN='D:\Test\BRCA';
for i = 1:50
    c=BRCA_mat(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Test\DLBC';
for i = 1:105
    c=DLBC_mat(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Test\HNSC';
for i = 1:40
    c=HNSC_mat(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Test\KIRC';
for i = 1:91
    c=KIRC_mat(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Test\OV';
for i = 1:93
    c=OV_mat(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Test\PAAD';
for i = 1:91
    c=PAAD_mat(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Test\PRAD';
for i = 1:25
    c=PRAD_mat(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Test\SARC';
for i = 1:57
    c=SARC_mat(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end
