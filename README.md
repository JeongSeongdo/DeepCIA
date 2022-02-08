# DeepCIA
###
We present code and data on "A novel deep learning model for the identification of cancer types using class activation mapping via transcription factor expression".

#####
1. TCGA and ICGC files have "Code" and "Preprocessed Data" folders. "Code" presents R codes and MATLAB codes for download and preprocessing processes to individual cancer types. And "Preprocessed Data" provides a preprocessed ".csv file".
2. Network files have "Code" and "Results" folders. "Code" describes the MTALAB code for learning each network and calculation methods such as Accuracy, Precision, Recall, and F1-score. Also, "Results" provides learned network files.
3. "ROC_curve.m" was used to obtain the study results in Figure 3. The average ROC curve and AUC value were obtained by changing the path of the data set corresponding to each network.
4. "CAM_image" was used to obtain the results of the study in Figure 5. After acquiring individual CAM images of each cancer type by adjusting only the network type and file path, the average CAM image was obtained using the arithmetic mean.
5. "Function"

Files in "Function" are essential functions scripts in progressing code and can only be used by adding them to the MATLAB path.



