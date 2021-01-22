# Cassava-Leaf-Disease-Classification

## Score

- [01-starter](history/01-starter.md)
- [02-baseline](history/02-baseline.md)

## Memo

### GPU

- [x] [Multi GPU](https://aru47.hatenablog.com/entry/2020/11/06/225052)

### Datasets

- [x] Good! [Use 2019 datasets](https://www.kaggle.com/piantic/train-cassava-starter-using-various-loss-funcs/notebook)
- [ ] Bad.. [Oversampling classes 0, 1, 2, and 4](https://www.kaggle.com/dimitreoliveira/cassava-leaf-disease-training-with-tpu-v2-pods#Dataset-oversampled)

### Preprocessing

- [x] Good! [Image size 512](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/207450)
- [x] Good! [Additional augumentations](https://www.kaggle.com/khyeh0719/pytorch-efficientnet-baseline-train-amp-aug#Define-Train\Validation-Image-Augmentations)
    - [ ] Remove augmentation for final epoch.
- [ ] [`CenterCrop` instead of `Resize`](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/210921#1151453)
- [x] Good! [`CutMix`](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/209065)
- [ ] [MixUp](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/212060)

### Model

- [x] Resnext50_32x4d
- [x] EfficientNet B3, B4 with Noisy Student
- [ ] vision transformer
- [ ] [DeiT: Data-efficient Image Transformers](https://github.com/facebookresearch/deit)

### Loss

- [x] Good! [Bi-Tempered Logistic Loss](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/202017)
    - [x] [with label smoothing](https://www.kaggle.com/piantic/train-cassava-starter-using-various-loss-funcs/notebook#Bi-Tempered-Loss)

### Training

- [x] Good! [batch normalization layers frozen for EfficientNet](https://keras.io/examples/vision/image_classification_efficientnet_fine_tuning/#tips-for-fine-tuning-efficientnet)
- [ ] Gradient accumulation for increasing batch size.

### Inference

- [x] [TTA(Test Time Augmentation)](https://www.kaggle.com/khyeh0719/pytorch-efficientnet-baseline-inference-tta)
- [x] [Include original image on TTA](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/210921#1153396)

### Tips

- [A few things for easy start](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/207450)
- [Sharing some improvements and experiments](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/203594)
- [Important points to boost the LB score](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/208402)
- [Practical tips for handling noisy data and annotaiton](https://www2.slideshare.net/RyuichiKanoh/practical-tips-for-handling-noisy-data-and-annotaiton-204195412)
