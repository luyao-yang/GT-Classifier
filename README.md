## Introduction
**GT-Classifier** is a machine learning-based model, specifically designed to transform the field of oncology. Leveraging a unique set of 71 GT (glycosyltransferase) genes, it has the capability to predict a wide array of cancer types and subtypes with high accuracy. It also provides valuable prognostic information by predicting survival probabilities. These predictions can empower clinicians and patients by providing them with a comprehensive understanding of the disease.

**The pipeline for the development of a CPGT-based predictive model in a set of cancer-related problems** 
<br>
<br>



![Pipeline for the development of a CPGT-based predictive model in a set of cancer-related problems ](GT.png)

<br>
## Data Preparation
For all pan-cancer The Cancer Genome Atlas Program(TCGA) data, we downloaded it from the [link](https://portal.gdc.cancer.gov/). As for our external validation set of The Metastatic Breast Cancer(CMI-MBC) and Clinical Proteomic Tumor Analysis Consortium(CPTAC), we also downloaded from the [link](https://portal.gdc.cancer.gov/).
Especially, the external dataset Chinese Glioma Genome Atlas(CCGA) is downloaded from [link](http://www.cgga.org.cn/).

After gaining all source data, we extracted 71 GT-genes and removed missing values. And we also collect the data that contains the cancer subtypes and paintent ID information. You can download all processed GT data from [src/star_data](https://github.com/luyao-yang/GT-Classifier/tree/main/src/star_data)

- **pan-cancer_data**
    Thies folder includes 27 cancers and the extracted 71 GT genes.
- **BRCA_data**
    Our analysis of differential gene expression has led to the collation of a dataset, termed 'BRCA_data'. This dataset is composed of GT genes and aligns them with their respective BRCA subtypes.
- **Glioma_data**
    Same as BRCA_data, this folder includes the GT genes and the coressponding Glioma subtypes
- **CMI_data**  
    This folder includes the BRCA sutypes and extracted defferential genes from CMI-MBC. We also extracted the PAM50 genes from CMI-MBC for the comparison with PAM50 with our differential genes.
- **survival_data**
    This folder including two main datasets. One includes 693 patients, and the other includes 325 patients. We save the genes data and corresponding clinical data.

- **In-patient_data**
    Finally, we clinically collected 57 patient tissue specimens, and we test all of our model on these in-house patient data.

## Content
We have folder **Deg** mainly provids the codes for genetic differential analysis based on GT genes of some cancer subtypes.
For the four main tasks in the article: 
* Pan-cancer classification 
* Cancer and normal classification 
* Cancer subtype classification 
* Patient survival analysis

We have four main codes in folder src which are corresponding to corresponding tasks. At the same time, we put all four trained models into folder **models** for everyone to test the results.


## Contact
If you have any questions in this repo, please contact email: luyao.yang@kaust.edu.sa or jing.kai@kaust.edu.sa

<!-- ## Citation
```javascript
@article{Painter,
  title={Images Speak in Images: A Generalist Painter for In-Context Visual Learning},
  author={Wang, Xinlong and Wang, Wen and Cao, Yue and Shen, Chunhua and Huang, Tiejun},
  journal={arXiv preprint arXiv:2212.02499},
  year={2023}
}
``` -->
