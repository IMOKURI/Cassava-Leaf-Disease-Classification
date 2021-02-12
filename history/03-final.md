# Cassava-Leaf-Disease-Classification

## Score

### Ensemble

- Model
    - [efficientnet_b4_ns]
    - [seresnext50_32x4d]
    - [vit_base_patch16_384]

| Inference  | Ver. | TTA | BS  | Seed | Public LB | CV  | Comment |
| ---        | ---  | --- | --- | ---  | ---       | --- | ---     |
| [final-v1] | 108  | 1   | 32  | 22   | 0.905     | -   | -       |
| [final-v2] | 109  | 1   | 64  | 22   | 0.905     | -   | -       |
| [final-v3] | 110  | 7   | 32  | 22   |           | -   | -       |
| [final-v4] | 111  | 7   | 64  | 22   |           | -   | -       |
| [final-v5] | 112  | 9   | 32  | 22   |           | -   | -       |
| [final-v6] | 113  | 9   | 64  | 22   |           | -   | -       |
| [final-v7] | 114  | 10  | 64  | 22   |           | -   | -       |

[final-v1]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/35741622e876fe21950b8bf19358082a9c11692b
[final-v2]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/2660543d37c5f6c994c43e6f75025553aa276892
[final-v3]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/eef41a3d1b49cbf98b856c7e7cfb9a694c86b707
[final-v4]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/f84fb35da9f75cbab7817cde3af8093075ac47df
[final-v5]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/2f74efb27ee96c0b7cb278274cd541933f5c94cc
[final-v6]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/c89e9479f3aa6e3848fbf497c2c0be0974662bd2
[final-v7]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/adcd3fb90429b35f1b31813ca249e9e7d679544a
[efficientnet_b4_ns]: https://github.com/imokuri/cassava-leaf-disease-classification/commit/f639150116370039666b7bab452abd85932f4d24
[seresnext50_32x4d]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/fb7397ca97d624eb4db467c3d67a4c492313aaad
[vit_base_patch16_384]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/9b7093ed7501254f7705edd31f96467f2be00d8b
