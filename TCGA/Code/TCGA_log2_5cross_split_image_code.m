BRCA=readmatrix('TCGA_TF1462_BRCA1102.csv');
DLBC=readmatrix('TCGA_TF1462_DLBC48.csv');
HNSC=readmatrix('TCGA_TF1462_HNSC500.csv');
KIRC=readmatrix('TCGA_TF1462_KIRC538.csv');
OV=readmatrix('TCGA_TF1462_OV374.csv');
PAAD=readmatrix('TCGA_TF1462_PAAD177.csv');
PRAD=readmatrix('TCGA_TF1462_PRAD498.csv');
SARC=readmatrix('TCGA_TF1462_SARC259.csv');
BRCA(:,1)=[];
DLBC(:,1)=[];
HNSC(:,1)=[];
KIRC(:,1)=[];
OV(:,1)=[];
PAAD(:,1)=[];
PRAD(:,1)=[];
SARC(:,1)=[];


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


%%%BRCA%%%
BRCA_ver1=BRCA_mat(:,1:221); %221 
BRCA_ver2=BRCA_mat(:,222:442); %221
BRCA_ver3=BRCA_mat(:,443:662); %220
BRCA_ver4=BRCA_mat(:,663:882); %220
BRCA_ver5=BRCA_mat(:,883:1102); %220

BRCA_4Train_ver1=horzcat(BRCA_ver2, BRCA_ver3,BRCA_ver4,BRCA_ver5);

FN='D:\Train_set\BRCA_ver1';
for i = 1:881
    c=BRCA_4Train_ver1(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

BRCA_4Train_ver2=horzcat(BRCA_ver1, BRCA_ver3,BRCA_ver4,BRCA_ver5);

FN='D:\Train_set\BRCA_ver2';
for i = 1:881
    c=BRCA_4Train_ver2(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end


BRCA_4Train_ver3=horzcat(BRCA_ver1, BRCA_ver2,BRCA_ver4,BRCA_ver5);

FN='D:\Train_set\BRCA_ver3';
for i = 1:882
    c=BRCA_4Train_ver3(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

BRCA_4Train_ver4=horzcat(BRCA_ver1, BRCA_ver2,BRCA_ver3,BRCA_ver5);

FN='D:\Train_set\BRCA_ver4';
for i = 1:882
    c=BRCA_4Train_ver4(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end


BRCA_4Train_ver5=horzcat(BRCA_ver1, BRCA_ver2,BRCA_ver3,BRCA_ver4);


FN='D:\Train_set\BRCA_ver5';
for i = 1:882
    c=BRCA_4Train_ver5(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

%%%%DLBC%%%
DLBC_ver1=DLBC_mat(:,1:10); %10
DLBC_ver2=DLBC_mat(:,11:20); %10
DLBC_ver3=DLBC_mat(:,21:30); %10
DLBC_ver4=DLBC_mat(:,31:39); %9
DLBC_ver5=DLBC_mat(:,40:48); %9


DLBC_4Train_ver1=horzcat(DLBC_ver2, DLBC_ver3,DLBC_ver4,DLBC_ver5);

FN='D:\Train_set\DLBC_ver1';
for i = 1:38
    c=DLBC_4Train_ver1(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

DLBC_4Train_ver2=horzcat(DLBC_ver1, DLBC_ver3,DLBC_ver4,DLBC_ver5);

FN='D:\Train_set\DLBC_ver2';
for i = 1:38
    c=DLBC_4Train_ver2(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

DLBC_4Train_ver3=horzcat(DLBC_ver1, DLBC_ver2,DLBC_ver4,DLBC_ver5);

FN='D:\Train_set\DLBC_ver3';
for i = 1:38
    c=DLBC_4Train_ver3(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

DLBC_4Train_ver4=horzcat(DLBC_ver1, DLBC_ver2,DLBC_ver3,DLBC_ver5);

FN='D:\Train_set\DLBC_ver4';
for i = 1:39
    c=DLBC_4Train_ver4(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

DLBC_4Train_ver5=horzcat(DLBC_ver1, DLBC_ver2,DLBC_ver3,DLBC_ver4);

FN='D:\Train_set\DLBC_ver5';
for i = 1:39
    c=DLBC_4Train_ver5(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

%%%HNSC%%%
HNSC_ver1=HNSC_mat(:,1:100); %100
HNSC_ver2=HNSC_mat(:,101:200); %100
HNSC_ver3=HNSC_mat(:,201:300); %100
HNSC_ver4=HNSC_mat(:,301:400); %100
HNSC_ver5=HNSC_mat(:,401:500); %100

HNSC_4Train_ver1=horzcat(HNSC_ver2, HNSC_ver3,HNSC_ver4,HNSC_ver5);

FN='D:\Train_set\HNSC_ver1';
for i = 1:400
    c=HNSC_4Train_ver1(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

HNSC_4Train_ver2=horzcat(HNSC_ver1, HNSC_ver3,HNSC_ver4,HNSC_ver5);

FN='D:\Train_set\HNSC_ver2';
for i = 1:400
    c=HNSC_4Train_ver2(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end


HNSC_4Train_ver3=horzcat(HNSC_ver1, HNSC_ver2,HNSC_ver4,HNSC_ver5);

FN='D:\Train_set\HNSC_ver3';
for i = 1:400
    c=HNSC_4Train_ver3(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

HNSC_4Train_ver4=horzcat(HNSC_ver1, HNSC_ver2,HNSC_ver3,HNSC_ver5);

FN='D:\Train_set\HNSC_ver4';
for i = 1:400
    c=HNSC_4Train_ver4(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

HNSC_4Train_ver5=horzcat(HNSC_ver1, HNSC_ver2,HNSC_ver3,HNSC_ver4);

FN='D:\Train_set\HNSC_ver5';
for i = 1:400
    c=HNSC_4Train_ver5(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

%%%KIRC%%%
KIRC_ver1=KIRC_mat(:,1:108); %108
KIRC_ver2=KIRC_mat(:,109:216); %108
KIRC_ver3=KIRC_mat(:,217:324); %108
KIRC_ver4=KIRC_mat(:,325:431); %107
KIRC_ver5=KIRC_mat(:,432:538); %107

KIRC_4Train_ver1=horzcat(KIRC_ver2, KIRC_ver3,KIRC_ver4,KIRC_ver5);

FN='D:\Train_set\KIRC_ver1';
for i = 1:430
    c=KIRC_4Train_ver1(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

KIRC_4Train_ver2=horzcat(KIRC_ver1, KIRC_ver3,KIRC_ver4,KIRC_ver5);

FN='D:\Train_set\KIRC_ver2';
for i = 1:430
    c=KIRC_4Train_ver2(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

KIRC_4Train_ver3=horzcat(KIRC_ver1, KIRC_ver2,KIRC_ver4,KIRC_ver5);

FN='D:\Train_set\KIRC_ver3';
for i = 1:430
    c=KIRC_4Train_ver3(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

KIRC_4Train_ver4=horzcat(KIRC_ver1, KIRC_ver2,KIRC_ver3,KIRC_ver5);

FN='D:\Train_set\KIRC_ver4';
for i = 1:431
    c=KIRC_4Train_ver4(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

KIRC_4Train_ver5=horzcat(KIRC_ver1, KIRC_ver2,KIRC_ver3,KIRC_ver4);

FN='D:\Train_set\KIRC_ver5';
for i = 1:431
    c=KIRC_4Train_ver5(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

%%%OV%%%
OV_ver1=OV_mat(:,1:75); %75
OV_ver2=OV_mat(:,76:150); %75
OV_ver3=OV_mat(:,151:225); %75
OV_ver4=OV_mat(:,226:300); %75
OV_ver5=OV_mat(:,301:374); %74

OV_4Train_ver1=horzcat(OV_ver2, OV_ver3,OV_ver4,OV_ver5);


FN='D:\Train_set\OV_ver1';
for i = 1:299
    c=OV_4Train_ver1(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

OV_4Train_ver2=horzcat(OV_ver1, OV_ver3,OV_ver4,OV_ver5);

FN='D:\Train_set\OV_ver2';
for i = 1:299
    c=OV_4Train_ver2(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

OV_4Train_ver3=horzcat(OV_ver1, OV_ver2,OV_ver4,OV_ver5);

FN='D:\Train_set\OV_ver3';
for i = 1:299
    c=OV_4Train_ver3(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

OV_4Train_ver4=horzcat(OV_ver1, OV_ver2,OV_ver3,OV_ver5);

FN='D:\Train_set\OV_ver4';
for i = 1:299
    c=OV_4Train_ver4(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

OV_4Train_ver5=horzcat(OV_ver1, OV_ver2,OV_ver3,OV_ver4);

FN='D:\Train_set\OV_ver5';
for i = 1:300
    c=OV_4Train_ver5(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

%%%PAAD%%%
PAAD_ver1=PAAD_mat(:,1:36); %36
PAAD_ver2=PAAD_mat(:,37:72); %36
PAAD_ver3=PAAD_mat(:,73:107); %35
PAAD_ver4=PAAD_mat(:,108:142); %35
PAAD_ver5=PAAD_mat(:,143:177); %35

PAAD_4Train_ver1=horzcat(PAAD_ver2, PAAD_ver3,PAAD_ver4,PAAD_ver5);

FN='D:\Train_set\PAAD_ver1';
for i = 1:141
    c=PAAD_4Train_ver1(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

PAAD_4Train_ver2=horzcat(PAAD_ver1, PAAD_ver3,PAAD_ver4,PAAD_ver5);

FN='D:\Train_set\PAAD_ver2';
for i = 1:141
    c=PAAD_4Train_ver2(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

PAAD_4Train_ver3=horzcat(PAAD_ver1, PAAD_ver2,PAAD_ver4,PAAD_ver5);

FN='D:\Train_set\PAAD_ver3';
for i = 1:142
    c=PAAD_4Train_ver3(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

PAAD_4Train_ver4=horzcat(PAAD_ver1, PAAD_ver2,PAAD_ver3,PAAD_ver5);

FN='D:\Train_set\PAAD_ver4';
for i = 1:142
    c=PAAD_4Train_ver4(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

PAAD_4Train_ver5=horzcat(PAAD_ver1, PAAD_ver2,PAAD_ver3,PAAD_ver4);

FN='D:\Train_set\PAAD_ver5';
for i = 1:142
    c=PAAD_4Train_ver5(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

%%%PRAD%%%
PRAD_ver1=PRAD_mat(:,1:100);%100
PRAD_ver2=PRAD_mat(:,101:200);%100
PRAD_ver3=PRAD_mat(:,201:300);%100
PRAD_ver4=PRAD_mat(:,301:399); %99
PRAD_ver5=PRAD_mat(:,400:498); %99

PRAD_4Train_ver1=horzcat(PRAD_ver2, PRAD_ver3,PRAD_ver4,PRAD_ver5);

FN='D:\Train_set\PRAD_ver1';
for i = 1:398
    c=PRAD_4Train_ver1(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

PRAD_4Train_ver2=horzcat(PRAD_ver1, PRAD_ver3,PRAD_ver4,PRAD_ver5);

FN='D:\Train_set\PRAD_ver2';
for i = 1:398
    c=PRAD_4Train_ver2(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

PRAD_4Train_ver3=horzcat(PRAD_ver1, PRAD_ver2,PRAD_ver4,PRAD_ver5);

FN='D:\Train_set\PRAD_ver3';
for i = 1:398
    c=PRAD_4Train_ver3(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

PRAD_4Train_ver4=horzcat(PRAD_ver1, PRAD_ver2,PRAD_ver3,PRAD_ver5);

FN='D:\Train_set\PRAD_ver4';
for i = 1:399
    c=PRAD_4Train_ver4(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

PRAD_4Train_ver5=horzcat(PRAD_ver1, PRAD_ver2,PRAD_ver3,PRAD_ver4);

FN='D:\Train_set\PRAD_ver5';
for i = 1:399
    c=PRAD_4Train_ver5(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end


%%%SARC%%%
SARC_ver1=SARC_mat(:,1:52); %52
SARC_ver2=SARC_mat(:,53:104); %52
SARC_ver3=SARC_mat(:,105:156); %52
SARC_ver4=SARC_mat(:,157:208); %52
SARC_ver5=SARC_mat(:,209:259); %51

SARC_4Train_ver1=horzcat(SARC_ver2, SARC_ver3,SARC_ver4,SARC_ver5);

FN='D:\Train_set\SARC_ver1';
for i = 1:207
    c=SARC_4Train_ver1(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end


SARC_4Train_ver2=horzcat(SARC_ver1, SARC_ver3,SARC_ver4,SARC_ver5);

FN='D:\Train_set\SARC_ver2';
for i = 1:207
    c=SARC_4Train_ver2(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end


SARC_4Train_ver3=horzcat(SARC_ver1, SARC_ver2,SARC_ver4,SARC_ver5);

FN='D:\Train_set\SARC_ver3';
for i = 1:207
    c=SARC_4Train_ver3(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end


SARC_4Train_ver4=horzcat(SARC_ver1, SARC_ver2,SARC_ver3,SARC_ver5);

FN='D:\Train_set\SARC_ver4';
for i = 1:207
    c=SARC_4Train_ver4(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end


SARC_4Train_ver5=horzcat(SARC_ver1, SARC_ver2,SARC_ver3,SARC_ver4);

FN='D:\Train_set\SARC_ver5';
for i = 1:208
    c=SARC_4Train_ver5(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

%%%Validation set%%%
%%%BRCA%%%
FN='D:\Validation_set\BRCA_ver1';
for i = 1:221
    c=BRCA_ver1(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\BRCA_ver2';
for i = 1:221
    c=BRCA_ver2(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\BRCA_ver3';
for i = 1:220
    c=BRCA_ver3(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\BRCA_ver4';
for i = 1:220
    c=BRCA_ver4(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\BRCA_ver5';
for i = 1:220
    c=BRCA_ver5(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

%%%DLBC%%%
FN='D:\Validation_set\DLBC_ver1';
for i = 1:10
    c=DLBC_ver1(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\DLBC_ver2';
for i = 1:10
    c=DLBC_ver2(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\DLBC_ver3';
for i = 1:10
    c=DLBC_ver3(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\DLBC_ver4';
for i = 1:9
    c=DLBC_ver4(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\DLBC_ver5';
for i = 1:9
    c=DLBC_ver5(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

%%%HNSC%%%
FN='D:\Validation_set\HNSC_ver1';
for i = 1:100
    c=HNSC_ver1(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\HNSC_ver2';
for i = 1:100
    c=HNSC_ver2(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\HNSC_ver3';
for i = 1:100
    c=HNSC_ver3(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\HNSC_ver4';
for i = 1:100
    c=HNSC_ver4(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\HNSC_ver5';
for i = 1:100
    c=HNSC_ver5(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

%%%KIRC%%%
FN='D:\Validation_set\KIRC_ver1';
for i = 1:108
    c=KIRC_ver1(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\KIRC_ver2';
for i = 1:108
    c=KIRC_ver2(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\KIRC_ver3';
for i = 1:108
    c=KIRC_ver3(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\KIRC_ver4';
for i = 1:107
    c=KIRC_ver4(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\KIRC_ver5';
for i = 1:107
    c=KIRC_ver5(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

%%%OV%%%
FN='D:\Validation_set\OV_ver1';
for i = 1:75
    c=OV_ver1(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\OV_ver2';
for i = 1:75
    c=OV_ver2(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\OV_ver3';
for i = 1:75
    c=OV_ver3(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\OV_ver4';
for i = 1:75
    c=OV_ver4(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\OV_ver5';
for i = 1:74
    c=OV_ver5(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

%%%PAAD%%%
FN='D:\Validation_set\PAAD_ver1';
for i = 1:36
    c=PAAD_ver1(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\PAAD_ver2';
for i = 1:36
    c=PAAD_ver2(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\PAAD_ver3';
for i = 1:35
    c=PAAD_ver3(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\PAAD_ver4';
for i = 1:35
    c=PAAD_ver4(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\PAAD_ver5';
for i = 1:35
    c=PAAD_ver5(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

%%%PRAD%%%
FN='D:\Validation_set\PRAD_ver1';
for i = 1:100
    c=PRAD_ver1(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\PRAD_ver2';
for i = 1:100
    c=PRAD_ver2(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\PRAD_ver3';
for i = 1:100
    c=PRAD_ver3(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\PRAD_ver4';
for i = 1:99
    c=PRAD_ver4(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\PRAD_ver5';
for i = 1:99
    c=PRAD_ver5(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end


%%%SARC%%%
FN='D:\Validation_set\SARC_ver1';
for i = 1:52
    c=SARC_ver1(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\SARC_ver2';
for i = 1:52
    c=SARC_ver2(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\SARC_ver3';
for i = 1:52
    c=SARC_ver3(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\SARC_ver4';
for i = 1:52
    c=SARC_ver4(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end

FN='D:\Validation_set\SARC_ver5';
for i = 1:51
    c=SARC_ver5(:,i);
    image1=squareReshape(c);
    image2=repmat(image1, 1, 1, 3);
    SN=horzcat(FN,'\',num2str(i),'.mat');
    save(SN, 'image2');
end