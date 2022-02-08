load 1-Network %1-Network, 2-Network, 3-Network, 4-Network, 5-Network
%%%Train ROC curve%%%
TN='D:\Version_1_Train_set'; %Folder path to load (Version_1_Train_set, Version_2_Train_set, Version_3_Train_set, Version_4_Train_set, Version_5_Train_set)
imds_Train = imageDatastore(TN,'IncludeSubfolders',true,'LabelSource','foldernames','FileExtensions','.mat','ReadFcn',@matRead);
imageSize=[38 39 1];
dsTrain = augmentedImageDatastore(imageSize,imds_Train,'ColorPreprocessing','rgb2gray');
[YPred,probs] = classify(1-Network,dsTrain);
label = cellstr(YPred);
label_cancer = unique(label);
TL=cellstr(imds_Train.Labels);

[FalsePositiveRate1, TruePositiveRate1, T1, AUC1] = perfcurve(TL, probs(:,1), label_cancer(1));
[FalsePositiveRate2, TruePositiveRate2, T2, AUC2] = perfcurve(TL, probs(:,2), label_cancer(2));
[FalsePositiveRate3, TruePositiveRate3, T3, AUC3] = perfcurve(TL, probs(:,3), label_cancer(3));
[FalsePositiveRate4, TruePositiveRate4, T4, AUC4] = perfcurve(TL, probs(:,4), label_cancer(4));
[FalsePositiveRate5, TruePositiveRate5, T5, AUC5] = perfcurve(TL, probs(:,5), label_cancer(5));
[FalsePositiveRate6, TruePositiveRate6, T6, AUC6] = perfcurve(TL, probs(:,6), label_cancer(6));
[FalsePositiveRate7, TruePositiveRate7, T7, AUC7] = perfcurve(TL, probs(:,7), label_cancer(7));
[FalsePositiveRate8, TruePositiveRate8, T8, AUC8] = perfcurve(TL, probs(:,8), label_cancer(8));

FalsePositive=horzcat(FalsePositiveRate1, FalsePositiveRate2, FalsePositiveRate3, FalsePositiveRate4, FalsePositiveRate5, FalsePositiveRate6, FalsePositiveRate7, FalsePositiveRate8);
TruePositive=horzcat(TruePositiveRate1, TruePositiveRate2, TruePositiveRate3, TruePositiveRate4, TruePositiveRate5, TruePositiveRate6, TruePositiveRate7, TruePositiveRate8);
AUC = horzcat(AUC1, AUC2, AUC3, AUC4, AUC5, AUC6, AUC7, AUC8);
False_Positive_Mean=mean(FalsePositive,2);
Ture_Positive_Mean=mean(TruePositive,2);
AUC_Total=mean(AUC);
plot(False_Positive_Mean, Ture_Positive_Mean, 'LineWidth', 1)
xlabel('False positive rate'); 
ylabel('True positive rate');
legend('5-Network','Location','Best')

%%%Validation ROC curve%%%
VN='D:\Version_1_Validation_set'; %Folder path to load (Version_1_Validation_set, Version_2_Validation_set, Version_3_Validation_set, Version_4_Validation_set, Version_5_Validation_set)
imageSize=[38 39 1];
imds_Validation = imageDatastore(VN,'IncludeSubfolders',true,'LabelSource','foldernames','FileExtensions','.mat','ReadFcn',@matRead);
dsVal = augmentedImageDatastore(imageSize,imds_Validation,'ColorPreprocessing','rgb2gray');
[YPred,probs] = classify(1-Network,dsVal);
label = cellstr(YPred);
label_cancer = unique(label);
TL=cellstr(imds_Validation.Labels);

[FalsePositiveRate1, TruePositiveRate1, T1, AUC1] = perfcurve(TL, probs(:,1), label_cancer(1));
[FalsePositiveRate2, TruePositiveRate2, T2, AUC2] = perfcurve(TL, probs(:,2), label_cancer(2));
[FalsePositiveRate3, TruePositiveRate3, T3, AUC3] = perfcurve(TL, probs(:,3), label_cancer(3));
[FalsePositiveRate4, TruePositiveRate4, T4, AUC4] = perfcurve(TL, probs(:,4), label_cancer(4));
[FalsePositiveRate5, TruePositiveRate5, T5, AUC5] = perfcurve(TL, probs(:,5), label_cancer(5));
[FalsePositiveRate6, TruePositiveRate6, T6, AUC6] = perfcurve(TL, probs(:,6), label_cancer(6));
[FalsePositiveRate7, TruePositiveRate7, T7, AUC7] = perfcurve(TL, probs(:,7), label_cancer(7));
[FalsePositiveRate8, TruePositiveRate8, T8, AUC8] = perfcurve(TL, probs(:,8), label_cancer(8));

FalsePositive=horzcat(FalsePositiveRate1, FalsePositiveRate2, FalsePositiveRate3, FalsePositiveRate4, FalsePositiveRate5, FalsePositiveRate6, FalsePositiveRate7, FalsePositiveRate8);
TruePositive=horzcat(TruePositiveRate1, TruePositiveRate2, TruePositiveRate3, TruePositiveRate4, TruePositiveRate5, TruePositiveRate6, TruePositiveRate7, TruePositiveRate8);
AUC = horzcat(AUC1, AUC2, AUC3, AUC4, AUC5, AUC6, AUC7, AUC8);
False_Positive_Mean=mean(FalsePositive,2);
Ture_Positive_Mean=mean(TruePositive,2);
AUC_Total=mean(AUC);
plot(False_Positive_Mean, Ture_Positive_Mean, 'LineWidth', 1)
xlabel('False positive rate'); 
ylabel('True positive rate');
legend('1-Network','Location','Best')

%%%Test ROC curve%%%
TN='D:\Test';
imageSize=[38 39 1];
imds_Test = imageDatastore(TN,'IncludeSubfolders',true,'LabelSource','foldernames','FileExtensions','.mat','ReadFcn',@matRead);
dsTest = augmentedImageDatastore(imageSize,imds_Test,'ColorPreprocessing','rgb2gray');
[YPred,probs] = classify(1-Network,dsTest);
label = cellstr(YPred);
label_cancer = unique(label);

TL=cellstr(imds_Test.Labels);veRate1, T1, AUC1] = perfcurve(TL, probs(:,1), label_cancer(1));
[FalsePositiveRate2, TruePositiveRate2, T2, AUC2] = perfcurve(TL, probs(:,2), label_cancer(2));
[FalsePositiveRate3, TruePositiveRate3, T3, AUC3] = perfcurve(TL, probs(:,3), label_cancer(3));
[FalsePositiveRate4, TruePositiveRate4, T4, AUC4] = perfcurve(TL, probs(:,4), label_cancer(4));
[FalsePositiveRate5, TruePositiveRate5, T5, AUC5] = perfcurve(TL, probs(:,5), label_cancer(5));
[FalsePositiveRate6, TruePositiveRate6, T6, AUC6] = perfcurve(TL, probs(:,6), label_cancer(6));
[FalsePositiveRate7, TruePositiveRate7, T7, AUC7] = perfcurve(TL, probs(:,7), label_cancer(7));
[FalsePositiveRate8, TruePositiveRate8, T8, AUC8] = perfcurve(TL, probs(:,8), label_cancer(8));

FalsePositive=horzcat(FalsePositiveRate1, FalsePositiveRate2, FalsePositiveRate3, FalsePositiveRate4, FalsePositiveRate5, FalsePositiveRate6, FalsePositiveRate7, FalsePositiveRate8);
TruePositive=horzcat(TruePositiveRate1, TruePositiveRate2, TruePositiveRate3, TruePositiveRate4, TruePositiveRate5, TruePositiveRate6, TruePositiveRate7, TruePositiveRate8);
AUC = horzcat(AUC1, AUC2, AUC3, AUC4, AUC5, AUC6, AUC7, AUC8);
False_Positive_Mean=mean(FalsePositive,2);
Ture_Positive_Mean=mean(TruePositive,2);
AUC_Total=mean(AUC,2);
plot(False_Positive_Mean, Ture_Positive_Mean, 'LineWidth', 1)
xlabel('False positive rate'); 
ylabel('True positive rate');
legend('1-Network','Location','Best')






