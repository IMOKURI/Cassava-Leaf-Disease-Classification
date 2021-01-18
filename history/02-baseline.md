# Cassava-Leaf-Disease-Classification

## Score

| Train          | Inference          | Model                               | Public LB | CV      | Comment |
| ---            | ---                | ---                                 | ---       | ---     | ---     |
| [resnext-v1]   | [resnext-inf-v1]   | resnext50_32x4d                     | 0.894     | 0.89069 | -       |
| [efficient-v1] | [efficient-inf-v1] | efficientnet_b4_ns                  | 0.900     | 0.89103 | -       |
| -              | [ensemble-v1]      | resnext50_32x4d, efficientnet_b4_ns | 0.894     | -       | -       |


[efficient-inf-v1]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/bc1bc571b52a0d3b5ec6e739fc5bc5e598c26c62
[efficient-v1]: https://github.com/imokuri/cassava-leaf-disease-classification/commit/f639150116370039666b7bab452abd85932f4d24
[ensemble-v1]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/2add41e660eafaac35f87a4f506a5314383c9cba
[resnext-inf-v1]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/8fa6fe163d8e90cad183bc44d52e6e430510e5a8
[resnext-v1]: https://github.com/imokuri/cassava-leaf-disease-classification/commit/df110ca08bcbd3a69e45ffda3f33154bfde7fc12
