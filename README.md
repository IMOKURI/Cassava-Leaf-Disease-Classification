# Cassava-Leaf-Disease-Classification

## Score

| Train      | Inference | Model           | Public LB | CV      | Comment                                      |
| ---        | ---       | ---             | ---       | ---     | ---                                          |
| [v1-train] | [v1-inf]  | resnext50_32x4d | 0.894     | 0.88568 | image size: 256 -> 384, batch size: 32 -> 16 |
| [v2]       | [v2]      | resnext50_32x4d | 0.890     | 0.88674 | add 2019 dataset, batch size: 16 -> 24       |

## Memo

### GPU

- [x] [Multi GPU](https://aru47.hatenablog.com/entry/2020/11/06/225052)

### Datasets

- [x] [Use 2019 datasets](https://www.kaggle.com/piantic/train-cassava-starter-using-various-loss-funcs/notebook)
- [ ] Oversampling classes 0, 1, 2, and 4

### Preprocessing

- [x] [Image size 384](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/207450)
    - [ ] Try 512 (and control batch size.)

### Model

- [x] Resnext50_32x4d
- EfficientNet
- vision transformer

### Loss

- [x] [Bi-Tempered Logistic Loss](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/202017)
    - [x] [with label smoothing](https://www.kaggle.com/piantic/train-cassava-starter-using-various-loss-funcs/notebook#Bi-Tempered-Loss)


### Tips

- [A few things for easy start](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/207450)
- [Sharing some improvements and experiments](https://www.kaggle.com/c/cassava-leaf-disease-classification/discussion/203594)


[v1-train]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/59a171a0e4ee6c8d7f87a3e9248333506a466405
[v1-inf]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/c0832c6fcb233e2d96f87335e3f663995d5a3e6f
[v2]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/d8017ac61f1487ef9b8c167db6c7966847399673
