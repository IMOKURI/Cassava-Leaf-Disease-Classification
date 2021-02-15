# 🍃 Cassava-Leaf-Disease-Classification 🍃

[Cassava Leaf Disease Classification](https://www.kaggle.com/c/cassava-leaf-disease-classification/overview)

## ✨ Result


## 🔖 Solution

This competition is my first image classification competition,
so many part of my solution came from discussions in this competition.
I don't have strong single model, but ensemble is suprised me.

### ✔️ Base Model

- EfficientNet B4 with Noisy Student
- SE-ResNeXt50 (32x4d)
- Vision Transformer (base patch16)

| Train          | Inference          | Public LB | CV          |
| ---            | ---                | ---       | ---         |
| [EfficientNet] | [EfficientNet-inf] | **0.900** | 0.89103     |
| [SE-ResNeXt50] | [SE-ResNeXt50-inf] | 0.899     | **0.89532** |
| [ViT]          | [ViT-inf]          | 0.899     | 0.89220     |

[EfficientNet]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/blob/f639150116370039666b7bab452abd85932f4d24/cassava-training.ipynb
[EfficientNet-inf]: https://www.kaggle.com/imokuri/cassava-inference?scriptVersionId=52135491
[SE-ResNeXt50]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/blob/fb7397ca97d624eb4db467c3d67a4c492313aaad/cassava-training.ipynb
[SE-ResNeXt50-inf]: https://www.kaggle.com/imokuri/cassava-inference?scriptVersionId=52812836
[ViT]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/blob/9b7093ed7501254f7705edd31f96467f2be00d8b/cassava-training.ipynb
[ViT-inf]: https://www.kaggle.com/imokuri/cassava-inference?scriptVersionId=52893502

### 🐎 Ensemble and TTA

TTA Weight is the ratio between inference of original images and augmented images.
In other words weighted ensemble between no TTA and TTA.

| Inference        | Validation   | TTA | Public LB | CV     | TTA weight |
| ---              | ---          | --- | ---       | ---    | ---        |
| [inf-no-TTA]     | [val-no-TTA] | 1   | 0.905     | 0.9429 | -          |
| [inf-TTA]        | -            | 7   | 0.907     | -      | -          |
| [inf-TTA-weight] | -            | 7   | **0.908** | -      | 4:6        |

[inf-no-TTA]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/35741622e876fe21950b8bf19358082a9c11692b
[inf-TTA]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/eef41a3d1b49cbf98b856c7e7cfb9a694c86b707
[inf-TTA-weight]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/de47d585a2b257987dbe6367cc2efade5a0bbe0b
[val-no-TTA]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/f7143beaf5c25829e686f94162cdfa7d0d88d7b1

## ✏️ Memo

I've tried following techniques for this competition.

### 🍃 Datasets

- [x] [Use 2019 datasets](https://www.kaggle.com/piantic/train-cassava-starter-using-various-loss-funcs/notebook)

### 🛠️ Preprocessing

- [x] [Image size 512 ~ 384](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/207450)
- [x] [Additional augumentations](https://www.kaggle.com/khyeh0719/pytorch-efficientnet-baseline-train-amp-aug#Define-Train\Validation-Image-Augmentations)
    - [x] [No augmentation for first few epochs.](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/212347)
    - [x] Reduce augmentation for last few epochs.
    - [x] Remove augmentation for final epoch.
    - [x] [CutMix](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/209065)
    - [x] [MixUp](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/212060)

### 📉 Loss

- [x] [Bi-Tempered Logistic Loss](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/202017)
    - [x] [with label smoothing](https://www.kaggle.com/piantic/train-cassava-starter-using-various-loss-funcs/notebook#Bi-Tempered-Loss)

### 🏃 Training

- [x] [batch normalization layers frozen for EfficientNet](https://keras.io/examples/vision/image_classification_efficientnet_fine_tuning/#tips-for-fine-tuning-efficientnet)
    - [x] also vision transformer.
- [x] Gradient accumulation for increasing batch size.
- [x] ~~[Distillation](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/214959)~~
    - [x] ~~[Distillation Loss](https://ramesharvind.github.io/posts/deep-learning/knowledge-distillation/)~~

### 🚀 Inference

- [x] Random seed ensemble.
- [x] [TTA(Test Time Augmentation)](https://www.kaggle.com/khyeh0719/pytorch-efficientnet-baseline-inference-tta)
    - [x] [10 is the minimum number to establish a stable result.](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/214559#1171803)
- [x] [Include original image on TTA.](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/210921#1153396)
    - Weighted ensemble of original image inference and augmented one.
- [x] [Light augmentation for inference](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/206489)

### 💡 Tips

- [A few things for easy start](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/207450)
- [Sharing some improvements and experiments](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/203594)
- [Important points to boost the LB score](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/208402)
- [Practical tips for handling noisy data and annotaiton](https://www2.slideshare.net/RyuichiKanoh/practical-tips-for-handling-noisy-data-and-annotaiton-204195412)


## 📚 History

- [01-starter](history/01-starter.md)
- [02-baseline](history/02-baseline.md)
- [03-final](history/03-final.md)
