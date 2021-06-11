# Kernel-Density-Estimation
Implementation of Kernel-Density-Estimation (KDE) with Matlab

## smooth kernel function (Gaussian kernel)
![1](https://user-images.githubusercontent.com/85555218/121732801-e90bb400-cb07-11eb-8fa3-e73f0dc976f8.png)

# example1
## pdf
![2](https://user-images.githubusercontent.com/85555218/121733438-bd3cfe00-cb08-11eb-8204-412a0be044c8.png)
## figure1 (N = 1000, h = 0.1)
![first_exp(1)](https://user-images.githubusercontent.com/85555218/121733678-0725e400-cb09-11eb-8b0f-1ff3635a78d1.jpg)
## figure2 (N = 1000, h = 0.01)
![first_exp(2)](https://user-images.githubusercontent.com/85555218/121733723-15740000-cb09-11eb-801b-32d5e8fe6801.jpg)
## figure3 (N = 10000, h = 0.1)
![first_exp(3)](https://user-images.githubusercontent.com/85555218/121733729-186ef080-cb09-11eb-92b3-5475bbca5678.jpg)

# example2
## pdf
![3](https://user-images.githubusercontent.com/85555218/121733845-42281780-cb09-11eb-8feb-ef881ca1eb34.png)
## figure0 (real distribution)
![second_exp_real_distribution](https://user-images.githubusercontent.com/85555218/121733939-5d932280-cb09-11eb-9ff4-56bec59e0cf9.jpg)
## figure1 (N = 1000, h = 0.1)
![second_exp(1)](https://user-images.githubusercontent.com/85555218/121733953-6126a980-cb09-11eb-96c8-2a6706f322b7.jpg)
## figure2 (N = 1000, h = 0.01)
![second_exp(2)](https://user-images.githubusercontent.com/85555218/121733972-671c8a80-cb09-11eb-8bd8-c43bee9ce935.jpg)
## figure3 (N = 10000, h = 0.1)
![second_exp(3)](https://user-images.githubusercontent.com/85555218/121733982-6ab01180-cb09-11eb-8256-eda66b0356f6.jpg)

## results
> As expected, the estimated density will be more accurate with more data points (see figure3 in example1 and example2). furthermore, a large ℎ will over-smooth the density estimation and mask the structure of the data, and a small ℎ will yield a density estimation that is spiky and very hard to interpret. (see image below)
> **Actually, If we had unlimited data points, the best result would be obtained by bringing h near zero.**
>![4](https://user-images.githubusercontent.com/85555218/121736530-ed869b80-cb0c-11eb-8652-a62a924ebbf6.png)
> I prefer using the smooth kernel function instead of the parzen window because parzen window yields density estimates that have discontinuities, and weights equally all points, regardless of their distance to the estimation point.
