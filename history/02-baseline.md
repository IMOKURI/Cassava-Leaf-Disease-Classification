# Cassava-Leaf-Disease-Classification

## Score

| Train          | Inference          | Model                               | Public LB | CV      | Comment                                              |
| ---            | ---                | ---                                 | ---       | ---     | ---                                                  |
| [resnext-v1]   | [resnext-inf-v1]   | resnext50_32x4d                     | 0.894     | 0.89069 | -                                                    |
| [efficient-v1] | [efficient-inf-v1] | efficientnet_b4_ns                  | **0.900** | 0.89103 | CutMix, freeze batch normalization                   |
| same           | [efficient-inf-v2] | efficientnet_b4_ns                  | 0.898     | same    | TTA x10                                              |
| -              | [ensemble-v1]      | resnext50_32x4d, efficientnet_b4_ns | 0.894     | -       | -                                                    |
| [efficient-v2] | [efficient-inf-v3] | efficientnet_b4_ns                  | 0.897     | 0.88814 | gradient accumulation, CosineAnnealingWarmupRestarts |


[efficient-inf-v1]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/bc1bc571b52a0d3b5ec6e739fc5bc5e598c26c62
[efficient-inf-v2]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/05454a2cb7f7ffac5680cd3c69421b7a81e72e77
[efficient-inf-v3]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/81633875dcaa68399b8b7e86e248a86758a0706a
[efficient-v1]: https://github.com/imokuri/cassava-leaf-disease-classification/commit/f639150116370039666b7bab452abd85932f4d24
[efficient-v2]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/d19c4c26aaacc5f6c1e08d91821939f6d9c1e5d8
[ensemble-v1]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/2add41e660eafaac35f87a4f506a5314383c9cba
[resnext-inf-v1]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/8fa6fe163d8e90cad183bc44d52e6e430510e5a8
[resnext-v1]: https://github.com/imokuri/cassava-leaf-disease-classification/commit/df110ca08bcbd3a69e45ffda3f33154bfde7fc12
