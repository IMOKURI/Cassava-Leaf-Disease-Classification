# 🍃 Cassava Leaf Disease Classification 🍃

[Cassava Leaf Disease Classification](https://www.kaggle.com/c/cassava-leaf-disease-classification/overview)

Identify the type of disease present on a Cassava Leaf image

## ✨ Result

- Private: 28th, 0.9010
- Public: 8th, 0.9086

This competition is my first image classification competition,
so many parts of my solution came from public notebooks and discussions in this competition.
I've learnt many things from it.

Thank you for all kagglers and organizers for this competition.

And I'm happy to get a solo silver as my first medal!

## 🔖 Solution

I don't have a strong single model, but the ensemble has surprised me.

### 🎨 Base Model

- EfficientNet B4 with Noisy Student
- SE-ResNeXt50 (32x4d)
- Vision Transformer (base patch16)

| Train          | Inference          | Public LB | Private LB | CV          |
| ---            | ---                | ---       | ---        | ---         |
| [EfficientNet] | [EfficientNet-inf] | **0.900** | 0.891      | 0.89103     |
| [SE-ResNeXt50] | [SE-ResNeXt50-inf] | 0.899     | 0.894      | **0.89532** |
| [ViT]          | [ViT-inf]          | 0.899     | 0.890      | 0.89220     |

[EfficientNet]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/blob/f639150116370039666b7bab452abd85932f4d24/cassava-training.ipynb
[EfficientNet-inf]: https://www.kaggle.com/imokuri/cassava-inference?scriptVersionId=52135491
[SE-ResNeXt50]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/blob/fb7397ca97d624eb4db467c3d67a4c492313aaad/cassava-training.ipynb
[SE-ResNeXt50-inf]: https://www.kaggle.com/imokuri/cassava-inference?scriptVersionId=52812836
[ViT]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/blob/9b7093ed7501254f7705edd31f96467f2be00d8b/cassava-training.ipynb
[ViT-inf]: https://www.kaggle.com/imokuri/cassava-inference?scriptVersionId=52893502

### 🐎 Ensemble and TTA

I tried weighted average of no TTA and TTA.

| Inference        | Validation   | TTA           | Public LB | Private LB | CV     | TTA weight |
| ---              | ---          | ---           | ---       | ---        | ---    | ---        |
| [inf-no-TTA]     | [val-no-TTA] | noTTA         | 0.905     | 0.896      | 0.9429 | -          |
| [inf-TTA]        | -            | noTTA + TTAx6 | 0.907     | 0.899      | -      | 6:6        |
| [inf-TTA-weight] | -            | noTTA + TTAx6 | **0.908** | 0.900      | -      | 4:6        |

I decided TTA weight by the public LB score, So I think this may overfit to public LB.
I choose second final submission is average of no TTA and TTA.

| Inference     | Validation | TTA           | Public LB | Private LB | CV  | TTA weight |
| ---           | ---        | ---           | ---       | ---        | --- | ---        |
| [inf-TTA-avg] | -          | noTTA + TTAx9 | 0.908     | **0.901**  | -   | 9:9        |

[inf-no-TTA]: https://www.kaggle.com/imokuri/cassava-inference?scriptVersionId=54132321
[inf-TTA]: https://www.kaggle.com/imokuri/cassava-inference?scriptVersionId=54141945
[inf-TTA-weight]: https://www.kaggle.com/imokuri/cassava-inference?scriptVersionId=54244968
[val-no-TTA]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/blob/f7143beaf5c25829e686f94162cdfa7d0d88d7b1/cassava-validation.ipynb
[inf-TTA-avg]: https://www.kaggle.com/imokuri/cassava-inference/execution?scriptVersionId=54503857

## ✏️ Memo

I've used following techniques for this competition.

### 🍃 Datasets

- [Use 2019 datasets](https://www.kaggle.com/piantic/train-cassava-starter-using-various-loss-funcs/notebook)

### 🛠️ Preprocessing

- [Image size 512 ~ 384](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/207450)
- [Additional augumentations](https://www.kaggle.com/khyeh0719/pytorch-efficientnet-baseline-train-amp-aug#Define-Train\Validation-Image-Augmentations)
    - [No augmentation for first few epochs.](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/212347)
    - Reduce augmentation for last few epochs.
    - Remove augmentation for final epoch.
    - [CutMix](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/209065)
    - [MixUp](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/212060)

### 📉 Loss

- [Bi-Tempered Logistic Loss](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/202017)
    - [with label smoothing](https://www.kaggle.com/piantic/train-cassava-starter-using-various-loss-funcs/notebook#Bi-Tempered-Loss)

### 🏃 Training

- [batch normalization layers frozen for EfficientNet](https://keras.io/examples/vision/image_classification_efficientnet_fine_tuning/#tips-for-fine-tuning-efficientnet)
    - also vision transformer.
- Gradient accumulation for increasing batch size.
- ~~[Distillation](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/214959)~~
    - ~~[Distillation Loss](https://ramesharvind.github.io/posts/deep-learning/knowledge-distillation/)~~

### 🚀 Inference

- Random seed ensemble.
- [TTA(Test Time Augmentation)](https://www.kaggle.com/khyeh0719/pytorch-efficientnet-baseline-inference-tta)
    - [10 is the minimum number to establish a stable result.](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/214559#1171803)
- [Include original image on TTA.](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/210921#1153396)
    - Weighted ensemble of original image inference and augmented one.
- [Light augmentation for inference](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/206489)

### 💡 Tips

- [A few things for easy start](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/207450)
- [Sharing some improvements and experiments](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/203594)
- [Important points to boost the LB score](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/208402)
- [Practical tips for handling noisy data and annotaiton](https://www2.slideshare.net/RyuichiKanoh/practical-tips-for-handling-noisy-data-and-annotaiton-204195412)


## 📚 History

- [01-starter](history/01-starter.md)
- [02-baseline](history/02-baseline.md)
- [03-final](history/03-final.md)
