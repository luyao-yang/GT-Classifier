library(caret)
library(ggplot2)
library(MASS)
library(reshape2)
library(pheatmap)
library(tsne)
library(gplots)
library(dplyr)
library(plyr)

### Import the testing Data
testing_data <- read.csv("../Data/external_data/CPTAC.csv",header = T)
pp = preProcess(x=testing_data, method = c("scale","center","YeoJohnson"),na.remove=TRUE)
pp_testing_data   = predict(pp, testing_data)

### load the pretrained model
modelPath <- ("../models/cancertypes.rds")
model <- readRDS(modelPath)

### predict on the external data CPTAC
preds <- predict(model,pp_testing_data[,!colnames(pp_testing_data) %in% c(".id")])
#predicted_labels <- factor(model_predictions, levels = unique(all_possible_classes))

### generate the confusion matrix
predicted_labels <- factor(preds, levels = unique(pp_testing_data$.id))
confmat <- confusionMatrix(predicted_labels,as.factor(pp_testing_data$.id))

### Visualize the pheatmap
result = pheatmap(confmat$table, scale = "column", cluster_rows=FALSE, cluster_cols=FALSE)
ggsave("../test.png", plot = result)
