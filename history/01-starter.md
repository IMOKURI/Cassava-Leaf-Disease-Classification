# Cassava-Leaf-Disease-Classification

## Score

| Train                    | Inference          | Model                                  | Public LB | CV         | Comment                                               |
| ---                      | ---                | ---                                    | ---       | ---        | ---                                                   |
| [v1-train]               | [v1-inf]           | resnext50_32x4d                        | 0.894     | 0.88568    | image size: 256 -> 384, batch size: 32 -> 16          |
| [v2]                     | [v2]               | resnext50_32x4d                        | 0.890     | 0.88674    | add 2019 dataset, batch size: 16 -> 24                |
| [v3]                     | [v3]               | resnext50_32x4d                        | 0.891     | 0.88772    | image size: 384 -> 512, batch size: 24 -> 14          |
| same above               | [v3-TTA]           | resnext50_32x4d                        | 0.889     | same above | TTA x3 mean()                                         |
| same above               | [v3-TTAx7]         | resnext50_32x4d                        | 0.891     | same above | TTA x7 mean()                                         |
| same above               | [v3-TTAx10]        | resnext50_32x4d                        | 0.893     | same above | TTA x10 mean()                                        |
| same above               | [v3-TTAx15]        | resnext50_32x4d                        | 0.894     | same above | TTA x15 mean()                                        |
| [v4-train]               | [v4-inf]           | resnext50_32x4d                        | 0.895     | 0.88822    | add augmentation functions, no TTA                    |
| same above               | [v4-TTAx3]         | resnext50_32x4d                        | 0.893     | same above | TTA x3 mean()                                         |
| same above               | [v4-TTAx10]        | resnext50_32x4d                        | 0.895     | same above | TTA x10 mean()                                        |
| same above               | [v4-TTAx10-simple] | resnext50_32x4d                        | 0.894     | same above | TTA x10 mean() simplify                               |
| [b4-v1-train]            | [b4-v1-inf-noTTA]  | tf_efficientnet_b4_ns                  | 0.893     | 0.88879    | Use EfficientNet B4 Noisy Student based on [v4-train] |
| [v4-train] [b4-v1-train] | [ensemble-v1]      | resnext50_32x4d, tf_efficientnet_b4_ns | 0.895     | -          | Ensemble ResNext50, EfficientNet B4                   |
| same above               | [ensemble-v2]      | resnext50_32x4d, tf_efficientnet_b4_ns | 0.892     | -          | Ensemble ResNext50, EfficientNet B4, TTA x3           |
| same above               | [ensemble-v3]      | resnext50_32x4d, tf_efficientnet_b4_ns | 0.894     | -          | Ensemble ResNext50, EfficientNet B4, TTA x8           |
| [v5-train]               | [v5-inf]           | resnext50_32x4d                        | 0.882     | 0.89365    | Oversampling 0, 1, 2 and 4                            |


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
[b4-v1-train]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/0a253ac1dd41f17b3f42b9d442a97fe6c12ea7af
[b4-v1-inf-noTTA]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/e10c0bd10cc8fadfb03a127cdf781037229731f1
[ensemble-v1]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/3aba137bfcafc5bde60bf291ab396bf6bcbc9917
[ensemble-v2]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/1f22409d2062fa0ae2f527c7471d2d00bd0a95b0
[ensemble-v3]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/5ffe1e137f93cecf0e67df24d09ab2d56dec94b3
[v5-train]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/887b0a45f0a00049cb31475c1b05a5acd1388985
[v5-inf]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/0bd84b67d74b72a8de8d137374f88d5309a68898
