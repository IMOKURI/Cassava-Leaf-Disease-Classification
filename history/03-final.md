# Cassava-Leaf-Disease-Classification

## Score

### Ensemble

- Model
    - [efficientnet_b4_ns]
    - [seresnext50_32x4d_v2]
    - [vit_base_patch16_384]

| Inference   | Validation | Ver. | TTA | BS  | Seed | Public LB | CV                 | Comment    |
| ---         | ---        | ---  | --- | --- | ---  | ---       | ---                | ---        |
| [final-v1]  | [val-v1]   | 108  | 1   | 32  | 22   | 0.905     | 0.9429319968105707 | -          |
| [final-v2]  | [val-v2]   | 109  | 1   | 64  | 22   | 0.905     | 0.9429319968105707 | -          |
| -           | [val-v3]   |      | 3   | 32  | 22   | -         |                    | -          |
| -           | [val-v4]   |      | 3   | 64  | 22   | -         |                    | -          |
| [final-v3]  | -          | 110  | 7   | 32  | 22   | 0.907     | -                  | -          |
| [final-v4]  | -          | 111  | 7   | 64  | 22   | 0.906     | -                  | -          |
| [final-v5]  | -          | 112  | 9   | 32  | 22   | -         | -                  | -          |
| [final-v6]  | -          | 113  | 9   | 64  | 22   | -         | -                  | -          |
| [final-v7]  | -          | 114  | 10  | 64  | 22   | -         | -                  | -          |
| [final-v8]  | -          | 116  | 7   | 32  | 22   | **0.907** | -                  | TTA weight |
| [final-v12] | -          | 120  | 8   | 32  | 22   |           | -                  | TTA weight |
| [final-v9]  | -          | 117  | 9   | 32  | 22   |           | -                  | TTA weight |

- Model
    - [efficientnet_b4_ns]
    - [seresnext50_32x4d_v1]
    - [vit_base_patch16_384]

| Inference   | Validation | Ver.  | TTA | BS  | Seed | Public LB | CV  | Comment    |
| ---         | ---        | ---   | --- | --- | ---  | ---       | --- | ---        |
| -           |            | val.4 | 1   | 32  | 22   | -         |     | -          |
| [final-v10] | -          | 118   | 7   | 32  | 22   |           | -   | TTA weight |
| [final-v11] | -          | 119   | 9   | 32  | 22   |           | -   | TTA weight |

[final-v1]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/35741622e876fe21950b8bf19358082a9c11692b
[final-v2]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/2660543d37c5f6c994c43e6f75025553aa276892
[final-v3]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/eef41a3d1b49cbf98b856c7e7cfb9a694c86b707
[final-v4]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/f84fb35da9f75cbab7817cde3af8093075ac47df
[final-v5]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/2f74efb27ee96c0b7cb278274cd541933f5c94cc
[final-v6]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/c89e9479f3aa6e3848fbf497c2c0be0974662bd2
[final-v7]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/adcd3fb90429b35f1b31813ca249e9e7d679544a
[final-v8]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/fc3a88d14ad9ae2dbc5d796e024fd0484add2b03
[final-v9]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/279ec7a9d1a68b4cdbf7da91bdb5d6f5498b507f
[final-v10]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/bac47c98baeedea96c325134dc16ac00fdd97725
[final-v11]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/19ac6d11ba87808f2f3a186c0fa131c1ab6d7e38
[final-v12]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/e0c553d546dcf17f9efd1bb981938c216724c614
[val-v1]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/f7143beaf5c25829e686f94162cdfa7d0d88d7b1
[val-v2]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/e4e5a946cdce5a90451825fa0578ec5922f0cc93
[efficientnet_b4_ns]: https://github.com/imokuri/cassava-leaf-disease-classification/commit/f639150116370039666b7bab452abd85932f4d24
[seresnext50_32x4d_v1]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/448848da662d9f7347b39439fb0af771ff019fd7
[seresnext50_32x4d_v2]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/fb7397ca97d624eb4db467c3d67a4c492313aaad
[vit_base_patch16_384]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/9b7093ed7501254f7705edd31f96467f2be00d8b
