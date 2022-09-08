# DeepCIA
###
We present code and data on "A novel deep learning model for the identification of cancer types using class activation mapping via transcription factor expression".

#####
1. TCGA and ICGC files have "Code" and "Preprocessed Data" folders. "Code" presents R codes and MATLAB codes for download and data preprocessing to individual cancer types. And "Preprocessed Data" provides a preprocessed ".csv file".
2. Network files have "5 fold cross validation" and "Results" folders. "Code" describes the MATLAB code for learning each network and calculation methods such as Accuracy, Precision, Recall(Sensitivity) , F1-score, Specificity and Balanced Accuracy. Also, "Results" provides learned network files.
3. "ROC_curve.m" was used to obtain the study results in Figure 3. The average ROC curve and AUC value were obtained by changing the path of the data set corresponding to each network.
4. "machine learning" folder presents the analysis code of the Support Vector Machine and the K-Nearest Neighbor and shares a preprocessed dataset for easy access by researchers.
5. "CAM_image" was used to obtain the results of the study in Figure 5. After acquiring individual CAM images of each cancer type by adjusting only the network type and file path, the average CAM image was obtained using the arithmetic mean.
6. "Function"

The files in "Function" are required function scripts and have been used in addition to the MATLAB path.


