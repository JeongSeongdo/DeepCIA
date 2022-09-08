k=[1102, 48, 500, 538, 374, 177, 498,259]; 

classWeights=[]; sc=sum(k);
for cw=1:length(k)
 classWeights=[classWeights sc/k(cw)];
end

TN='D:\Version_1_Train_set';  
VN='D:\Version_1_Validation_set';
imds_Train = imageDatastore(TN,'IncludeSubfolders',true,'LabelSource','foldernames','FileExtensions','.mat','ReadFcn',@matRead);
imageSize=[38 39 1];
dsTrain = augmentedImageDatastore(imageSize,imds_Train,'ColorPreprocessing','rgb2gray');
imds_Validation = imageDatastore(VN,'IncludeSubfolders',true,'LabelSource','foldernames','FileExtensions','.mat','ReadFcn',@matRead);
dsVal = augmentedImageDatastore(imageSize,imds_Validation,'ColorPreprocessing','rgb2gray');

layers = [
    imageInputLayer([38 39 1], 'Name', 'input')
    convolution2dLayer(1,1,'Padding','same','Name','conv_1')
    batchNormalizationLayer('Name','BN_1')
    reluLayer('Name','relu_1')
    fullyConnectedLayer(1482,'Name','fc_1')  
    batchNormalizationLayer('Name','BN_2')  
    reluLayer('Name','relu_2')
    dropoutLayer('Name','drop1')
    fullyConnectedLayer(741,'Name','fc_2') 
    batchNormalizationLayer('Name','BN_3')
    reluLayer('Name','relu_3')
    fullyConnectedLayer(8,'Name','fc_4') 
    softmaxLayer('Name','softmax')
    classificationLayer('Name','classOutput')];


inputSize = layers(1).InputSize;
lgraph = layerGraph(layers);

newClassLayer = weightedClassificationLayer(classWeights,'newlayer');
lgraph = replaceLayer(lgraph,'classOutput',newClassLayer);   

options = trainingOptions('adam', ...
    'MiniBatchSize',8, ... 
    'MaxEpochs',101, ...
    'InitialLearnRate',3e-5, ... 
    'Shuffle','every-epoch', ...
	'ValidationData',dsVal, ...
    'ValidationFrequency',3, ...   
    'Verbose',true, ...
    'Plots','training-progress', ...
   'ExecutionEnvironment','multi-gpu');

Network_1 = trainNetwork(dsTrain,lgraph,options);

%%% Assessment of accuracy, precision, recall, and F1 scores for the train and validation sets of the first network%%%
% [YPred,probs] = classify(Network_1,dsTrain);
% accuracy_test = mean(YPred == imds_Train.Labels);
% confMat = confusionmat(imds_Train.Labels,YPred);
[YPred,probs] = classify(Network_1,dsVal);
accuracy = mean(YPred == imds_Validation.Labels);
confMat = confusionmat(imds_Validation.Labels,YPred);
for i =1:size(confMat,1)
 precision(i)=confMat(i,i)/sum(confMat(i,:));
end
precision(isnan(precision))=[];
Precision=sum(precision)/size(confMat,1);
for i =1:size(confMat,1)
 recall(i)=confMat(i,i)/sum(confMat(:,i));
end
Recall=sum(recall)/size(confMat,1);
F_score=2*Recall*Precision/(Precision+Recall);

%%% Accuracy, precision, recall, and F1 score evaluation on the test set of the first network%%%
TN='D:\Test';
imageSize=[38 39 1];
imds_Test = imageDatastore(TN,'IncludeSubfolders',true,'LabelSource','foldernames','FileExtensions','.mat','ReadFcn',@matRead);
dsTest = augmentedImageDatastore(imageSize,imds_Test,'ColorPreprocessing','rgb2gray');

[YPred,probs] = classify(Network_1,dsTest);
accuracy = mean(YPred == imds_Test.Labels);
confMat = confusionmat(imds_Test.Labels,YPred);
for i =1:size(confMat,1)
 recall(i)=confMat(i,i)/sum(confMat(i,:));
end
recall(isnan(recall))=[];
Recall=sum(recall)/size(confMat,1);
for i =1:size(confMat,1)
 precision(i)=confMat(i,i)/sum(confMat(:,i));
end
Precision=sum(precision)/size(confMat,1);
F_score=2*Precision*Recall/(Recall+Precision);

multiclass_metrics_common(confMat)
