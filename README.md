# Machine Learning-Based CSI Feedback With Variable Length in FDD Massive MIMO

This code package is related to the paper:

M. Nerini, V. Rizzello, M. Joham, W. Utschick and B. Clerckx, "[Machine Learning-Based CSI Feedback With Variable Length in FDD Massive MIMO](https://ieeexplore.ieee.org/document/9928062)," in IEEE Transactions on Wireless Communications, 2022.

If you use this code or any modified part of it, please cite our original paper.

## Abstract

To fully unlock the benefits of multiple-input multiple-output (MIMO) networks, downlink channel state information (CSI) is required at the base station (BS). In frequency division duplex (FDD) systems, the CSI is acquired through a feedback signal from the user equipment (UE). However, this may lead to an important overhead in FDD massive MIMO systems. Focusing on these systems, in this study, we propose a novel strategy to design the CSI feedback. Our strategy allows to optimally design variable length feedback, that is promising compared to fixed feedback since users experience channel matrices differently sparse. Specifically, principal component analysis (PCA) is used to compress the channel into a latent space with adaptive dimensionality. To quantize this compressed channel, the feedback bits are smartly allocated to the latent space dimensions by minimizing the normalized mean squared error (NMSE) distortion. Finally, the quantization codebook is determined with k-means clustering. Numerical simulations show that our strategy improves the zero-forcing beamforming sum rate by 17%, compared to CsiNetPro. The number of model parameters is reduced by 23.4 times, thus causing a significantly smaller offloading overhead. At the same time, PCA is characterized by a lightweight unsupervised training, requiring eight times fewer training samples than CsiNetPro.

## Content of Code Package

The dataset can be downloaded [here](https://www.dropbox.com/scl/fo/qrwfwygxs801qoh88miwd/h?dl=0&rlkey=xblkn11p83eu0mn2j8hcksjtp).

The file `main.m` returns the results needed to reproduce Fig. 4 in the paper.
These results are saved in the folder `results` to easy the reproduction.
