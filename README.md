# Cassava-Leaf-Disease-Classification

## Score

| Train      | Inference          | Model           | Public LB | CV         | Comment                                      |
| ---        | ---                | ---             | ---       | ---        | ---                                          |
| [v1-train] | [v1-inf]           | resnext50_32x4d | 0.894     | 0.88568    | image size: 256 -> 384, batch size: 32 -> 16 |
| [v2]       | [v2]               | resnext50_32x4d | 0.890     | 0.88674    | add 2019 dataset, batch size: 16 -> 24       |
| [v3]       | [v3]               | resnext50_32x4d | 0.891     | 0.88772    | image size: 384 -> 512, batch size: 24 -> 14 |
| same above | [v3-TTA]           | resnext50_32x4d | 0.889     | same above | TTA x3 mean()                                |
| same above | [v3-TTAx7]         | resnext50_32x4d | 0.891     | same above | TTA x7 mean()                                |
| same above | [v3-TTAx10]        | resnext50_32x4d | 0.893     | same above | TTA x10 mean()                               |
| same above | [v3-TTAx15]        | resnext50_32x4d | 0.894     | same above | TTA x15 mean()                               |
| [v4-train] | [v4-inf]           | resnext50_32x4d | 0.895     | 0.88822    | add augmentation functions, no TTA           |
| same above | [v4-TTAx3]         | resnext50_32x4d | 0.893     | same above | TTA x3 mean()                                |
| same above | [v4-TTAx10]        | resnext50_32x4d | 0.895     | same above | TTA x10 mean()                               |
| same above | [v4-TTAx10-simple] | resnext50_32x4d | -         | same above | TTA x10 mean() simplify                      |

## Memo

### GPU

- [x] [Multi GPU](https://aru47.hatenablog.com/entry/2020/11/06/225052)

### Datasets

- [x] [Use 2019 datasets](https://www.kaggle.com/piantic/train-cassava-starter-using-various-loss-funcs/notebook)
- [ ] [Oversampling classes 0, 1, 2, and 4](https://www.kaggle.com/dimitreoliveira/cassava-leaf-disease-training-with-tpu-v2-pods#Dataset-oversampled)

### Preprocessing

- [x] [Image size 512](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/207450)
- [x] [Additional augumentations](https://www.kaggle.com/khyeh0719/pytorch-efficientnet-baseline-train-amp-aug#Define-Train\Validation-Image-Augmentations)

### Model

- [x] Resnext50_32x4d
- [ ] EfficientNet B3, B4 with Noisy Student
- vision transformer

### Loss

- [x] [Bi-Tempered Logistic Loss](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/202017)
    - [x] [with label smoothing](https://www.kaggle.com/piantic/train-cassava-starter-using-various-loss-funcs/notebook#Bi-Tempered-Loss)

### Training

- [ ] [batch normalization layers frozen for EfficientNet](https://keras.io/examples/vision/image_classification_efficientnet_fine_tuning/#tips-for-fine-tuning-efficientnet)
- early stopping

### Inference

- [x] [TTA(Test Time Augmentation)](https://www.kaggle.com/khyeh0719/pytorch-efficientnet-baseline-inference-tta)

### Tips

- [A few things for easy start](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/207450)
- [Sharing some improvements and experiments](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/203594)
- [Important points to boost the LB score](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/208402)


[v1-train]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/59a171a0e4ee6c8d7f87a3e9248333506a466405
[v1-inf]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/c0832c6fcb233e2d96f87335e3f663995d5a3e6f
[v2]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/d8017ac61f1487ef9b8c167db6c7966847399673
[v3]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/55377f11fe060e03bff0c89ff9a6b9add1f3c337
[v3-TTA]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/8f1fbf66d74cd00e163d35d9cee717a805fcd6bd
[v3-TTAx7]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/1863c98425e322ad2a7e0b662d0e6e1f871fc62b
[v3-TTAx10]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/e92433fc5bd6c8a3d456586050b1a77ca1df0e17
[v3-TTAx15]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/7297aecb96fc1630178344702f5466c50bd1c836
[v4-train]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/c88d247a84fd424d58403437888346e458466a1c
[v4-inf]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/da37e635677cefd6df64f5ff38d286f336af7b92
[v4-TTAx3]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/af68da580b9ab946e423da2199adb95c8956ca43
[v4-TTAx10]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/8380374c5fc9af94a2d1f0d52c42c9c841bfbfda
[v4-TTAx10-simple]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/1d82bb6509100281ce563b339b85a23524dbf1f6
