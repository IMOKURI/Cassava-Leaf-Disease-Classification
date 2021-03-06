# Cassava-Leaf-Disease-Classification

## Score

### Ensemble

- Model
    - [efficientnet_b4_ns]
    - [seresnext50_32x4d_v2]
    - [vit_base_patch16_384]
- Weight ensemble for no TTA/TTA
    - no TTA:TTA = 1:1.5

| Inference   | Validation | Ver. | TTA | BS  | Seed | Public LB | CV                 | TTA weight | Comment |
| ---         | ---        | ---  | --- | --- | ---  | ---       | ---                | ---        | ---     |
| [final-v1]  | [val-v1]   | 108  | 1   | 32  | 22   | 0.905     | 0.9429319968105707 | -          | -       |
| [final-v2]  | [val-v2]   | 109  | 1   | 64  | 22   | 0.905     | 0.9429319968105707 | -          | -       |
| -           | [val-v3]   |      | 3   | 32  | 22   | -         | 0.9361734442039716 | -          | -       |
| -           | [val-v4]   |      | 3   | 64  | 22   | -         | 0.9362114136006379 | -          | -       |
| [final-v3]  | -          | 110  | 7   | 32  | 22   | 0.907     | -                  | -          | -       |
| [final-v4]  | -          | 111  | 7   | 64  | 22   | 0.906     | -                  | -          | -       |
| [final-v5]  | -          | 112  | 9   | 32  | 22   | -         | -                  | -          | -       |
| [final-v6]  | -          | 113  | 9   | 64  | 22   | -         | -                  | -          | -       |
| [final-v7]  | -          | 114  | 10  | 64  | 22   | -         | -                  | -          | -       |
| [final-v8]  | -          | 116  | 7   | 32  | 22   | 0.907     | -                  | 1:1        | -       |
| [final-v12] | -          | 120  | 8   | 32  | 22   | 0.907     | -                  | 1:1        | -       |
| [final-v9]  | -          | 117  | 9   | 32  | 22   | 0.907     | -                  | 1:1        | -       |
| [final-v21] | -          | 129  | 10  | 64  | 22   | -         | -                  | 1:1        | -       |
| [final-v22] | -          | 130  | 7   | 32  | 22   | 0.908     | -                  | 10:6       | -       |
| [final-v23] | -          | 131  | 7   | 32  | 22   | **0.908** | -                  | 4:6        | -       |
| [final-v26] | -          | 134  | 7   | 32  | 22   | 0.908     | -                  | 3:6        | -       |
| [final-v24] | -          | 132  | 9   | 32  | 22   | 0.907     | -                  | 5:8        | -       |
| [final-v18] | -          | 126  | 9   | 32  | 22   | 0.907     | -                  | 12:8       | -       |
| [final-v17] | -          | 125  | 9   | 64  | 22   | -         | -                  | 12:8       | -       |
| [final-v19] | -          | 127  | 10  | 64  | 22   | -         | -                  | 12:9       | -       |
| [final-v20] | -          | 128  | 10  | 64  | 22   | -         | -                  | 15:9       | -       |
| [final-v25] | -          | 133  | 10  | 64  | 22   | 0.906     | -                  | 6:9        | -       |
| [final-v13] | -          | 121  | 7   | 32  | 4129 | 0.906     | -                  | 1:1        | -       |
| [final-v14] | -          | 122  | 8   | 32  | 4129 | -         | -                  | 1:1        | -       |
| [final-v15] | -          | 123  | 9   | 32  | 4129 | -         | -                  | 1:1        | -       |
| [final-v16] | -          | 124  | 10  | 64  | 4129 | -         | -                  | 1:1        | -       |
| [final-v27] | -          | 135  | 7   | 32  | 42   | 0.907     | -                  | 4:6        | -       |
| [final-v30] | -          | 138  | 7   | 32  | 42   | 0.907     | -                  | 1:1        | -       |
| [final-v32] | -          | 140  | 9   | 32  | 42   | 0.906     | -                  | 1:1        | -       |
| [final-v28] | -          | 136  | 7   | 32  | 556  | 0.907     | -                  | 4:6        | -       |
| [final-v29] | -          | 137  | 7   | 32  | 2028 | 0.907     | -                  | 4:6        | -       |
| [final-v31] | -          | 139  | 7   | 32  | 2028 | 0.907     | -                  | 1:1        | -       |
| [final-v33] | -          | 141  | 9   | 32  | 2028 | 0.908     | -                  | 1:1        | -       |
| [final-v34] | -          | 142  | 10  | 64  | 2028 | 0.906     | -                  | 1:1        | -       |
| [final-v38] | -          | 146  | 7   | 32  | 4021 | 0.905     | -                  | 1:1        | -       |
| [final-v39] | -          | 147  | 9   | 32  | 4021 | 0.906     | -                  | 1:1        | -       |
| [final-v35] | -          | 143  | 10  | 64  | 4021 | 0.908     | -                  | 1:1        | -       |
| [final-v36] | -          | 144  | 10  | 64  | 8289 | 0.906     | -                  | 1:1        | -       |
| [final-v37] | -          | 145  | 10  | 64  | 3634 | 0.907     | -                  | 1:1        | -       |
| [final-v40] | -          | 148  | 10  | 64  | 5178 | 0.906     | -                  | 1:1        | -       |
| [final-v41] | -          | 149  | 10  | 64  | 5876 | 0.906     | -                  | 1:1        | -       |
| [final-v42] | -          | 150  | 10  | 64  | 3722 | 0.906     | -                  | 1:1        | -       |
| [final-v43] | -          | 151  | 10  | 64  | 7864 | 0.907     | -                  | 1:1        | -       |
| [final-v44] | -          | 152  | 10  | 64  | 7097 | 0.907     | -                  | 1:1        | -       |

- Model
    - [efficientnet_b4_ns]
    - [seresnext50_32x4d_v1]
    - [vit_base_patch16_384]

| Inference   | Validation | Ver.  | TTA | BS  | Seed | Public LB | CV                 | Comment           |
| ---         | ---        | ---   | --- | --- | ---  | ---       | ---                | ---               |
| -           | [val-v5]   | val.4 | 1   | 32  | 22   | -         | 0.9424763640505752 | -                 |
| [final-v10] | -          | 118   | 7   | 32  | 22   | 0.907     | -                  | TTA weight (even) |
| [final-v11] | -          | 119   | 9   | 32  | 22   | 0.906     | -                  | TTA weight (even) |

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
[final-v13]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/ed6e49781a4d1d3d912263f1e591dbfbd83fa4c8
[final-v14]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/3d17e495aa75a203d9b679271e32b1764ee7338a
[final-v15]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/14105f2a2c2f6573d4c2d1b989a2eba4b821e2d4
[final-v16]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/00bd6f6a85deec75f9dd6b01446a2422efdf87a6
[final-v17]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/cf9d2c0a608b7ba1d054ac28d16342151eb9a309
[final-v18]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/364b112c29d2c3478e0ca6fdd8ec661a98b7e470
[final-v19]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/0f2b484a0edb0c81f8315fbd4e7d70debc715ce0
[final-v20]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/ee56054f177b0251293002929747598914c60ac4
[final-v21]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/516d593ea1c73f911bd88fad86a00f5b692bd37d
[final-v22]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/05384f440dc7e51cac3e90706ab550aa66946ea1
[final-v23]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/de47d585a2b257987dbe6367cc2efade5a0bbe0b
[final-v24]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/7f74f15ac7ce3edc60a631c2731ce958e2b6055b
[final-v25]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/2571bcb3819bb3e0dc72be6a202ff1cdb8fe8a55
[final-v26]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/a700cc5a6dd981595e35a73b0b0b03751658e958
[final-v27]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/a36f698e680486399a89d34b8871fc4eea3b78c4
[final-v28]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/dbc063cd4c8490d931a2b90227ca4e4c60255e88
[final-v29]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/4429d5827dbf62415536b31da5df70017abbfb02
[final-v30]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/47f0976ac95445caee65294dc249b97aff42ddc9
[final-v31]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/7287102627182e42cc24cd44260afbf2cd3f9eea
[final-v32]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/2f8397676924db6db34d9d3036008b8e94e41477
[final-v33]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/cd3bc99bfd4f150037f4e464fa60163a75ff0875
[final-v34]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/c4f536839d854bf3106a330455a53a7b9dac6ba8
[final-v35]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/c8bde5acd1831760657ffd143f671a5fec1eef3f
[final-v36]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/2503623bf92e7666c1cbd396e4f79252258529da
[final-v37]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/c90e0b3ab8acda2ee5aaece66d7786c1d009cef5
[final-v38]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/4e3e7689fc10737da1aed60837d64eca37d95a36
[final-v39]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/26b4f501a997ddbb2e7e9b7ccad59ccee828cb13
[final-v40]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/8c24a5daa11e653c831ed252c5ada7d5ca8d6fd9
[final-v41]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/d4a388cabd20add2d92e36f0b5450033495daf11
[final-v42]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/1d0b22e801362694d3d5f5b4f7b2902e6c726788
[final-v43]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/c27aa14ba703125b0cb0f65424acd3be9a45a00e
[final-v44]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/cee32e3d786980ac64a85de175dcc3d3c6026396
[val-v1]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/f7143beaf5c25829e686f94162cdfa7d0d88d7b1
[val-v2]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/e4e5a946cdce5a90451825fa0578ec5922f0cc93
[val-v3]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/8cb509a66caa3ec08b1b8dfb26344ff04dfa9372
[val-v4]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/a90b69a45c7b7ed0606eb66fbf22766f00de6a9a
[val-v5]: https://www.kaggle.com/imokuri/cassava-validation?scriptVersionId=54208618
[efficientnet_b4_ns]: https://github.com/imokuri/cassava-leaf-disease-classification/commit/f639150116370039666b7bab452abd85932f4d24
[seresnext50_32x4d_v1]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/448848da662d9f7347b39439fb0af771ff019fd7
[seresnext50_32x4d_v2]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/fb7397ca97d624eb4db467c3d67a4c492313aaad
[vit_base_patch16_384]: https://github.com/IMOKURI/Cassava-Leaf-Disease-Classification/commit/9b7093ed7501254f7705edd31f96467f2be00d8b
