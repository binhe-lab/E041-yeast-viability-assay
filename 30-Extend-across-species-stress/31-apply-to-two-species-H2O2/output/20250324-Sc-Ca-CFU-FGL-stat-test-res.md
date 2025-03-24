## _S. cerevisiae_
### CFU
``` r
tmp <- aov(p_live ~ Treatment, data = cfu_calc)
TukeyHSD(tmp)
```

```
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = p_live ~ Treatment, data = cfu_calc)

$Treatment
                diff        lwr         upr     p adj
0.6-0    -0.76318241 -0.9563465 -0.57001829 0.0000068
6-0      -0.96831614 -1.1614803 -0.77515202 0.0000011
1000-0   -1.00000000 -1.1931641 -0.80683588 0.0000008
6-0.6    -0.20513373 -0.3982978 -0.01196961 0.0378581
1000-0.6 -0.23681759 -0.4299817 -0.04365347 0.0183948
1000-6   -0.03168386 -0.2248480  0.16148025 0.9505547
```

### FGL/p_live
``` r
tmp <- dye_based %>% 
  dplyr::filter(Treatment != "5C", Dye == "Both") %>%
  aov(p_live ~ fct_inseq(Treatment), data = .)
TukeyHSD(tmp)
```
```
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = p_live ~ fct_inseq(Treatment), data = .)

$`fct_inseq(Treatment)`
                diff         lwr         upr     p adj
0.6-0     0.02465087 -0.04622363  0.09552536 0.6917918
6-0      -0.14375060 -0.21462510 -0.07287610 0.0008571
1000-0   -0.93557490 -1.00644939 -0.86470040 0.0000000
6-0.6    -0.16840147 -0.23927596 -0.09752697 0.0002871
1000-0.6 -0.96022576 -1.03110026 -0.88935127 0.0000000
1000-6   -0.79182430 -0.86269879 -0.72094980 0.0000000
```

### FGL/p_intermediate
``` r
tmp <- dye_based %>% 
  dplyr::filter(Treatment != "5C", Dye == "Both") %>%
  aov(p_intermediate ~ fct_inseq(Treatment), data = .)
TukeyHSD(tmp)
```

```
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = p_intermediate ~ fct_inseq(Treatment), data = .)

$`fct_inseq(Treatment)`
                diff         lwr         upr     p adj
0.6-0    -0.03644856 -0.10663660  0.03373948 0.4000017
6-0       0.13900712  0.06881908  0.20919516 0.0010061
1000-0   -0.04739920 -0.11758724  0.02278884 0.2132030
6-0.6     0.17545568  0.10526764  0.24564372 0.0002003
1000-0.6 -0.01095064 -0.08113868  0.05923740 0.9569003
1000-6   -0.18640632 -0.25659436 -0.11621828 0.0001297
```

## _C. albicans_
### CFU
``` r
tmp <- aov(p_live ~ Treatment, data = cfu_calc)
TukeyHSD(tmp)
```

```
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = p_live ~ Treatment, data = cfu_calc)

$Treatment
                  diff        lwr         upr     p adj
0.6-0    -0.7279722496 -0.9582160 -0.49772849 0.0000361
6-0      -0.9998179466 -1.2300617 -0.76957419 0.0000033
1000-0   -1.0000000000 -1.2302438 -0.76975624 0.0000033
6-0.6    -0.2718456970 -0.5020895 -0.04160194 0.0223957
1000-0.6 -0.2720277504 -0.5022715 -0.04178399 0.0223185
1000-6   -0.0001820534 -0.2304258  0.23006170 1.0000000
```

### FGL/p_live
``` r
tmp <- dye_based %>% 
  dplyr::filter(Treatment != "5C", Dye == "Both") %>%
  aov(p_live ~ fct_inseq(Treatment), data = .)
TukeyHSD(tmp)
```
```
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = p_live ~ fct_inseq(Treatment), data = .)

$`fct_inseq(Treatment)`
                 diff        lwr        upr     p adj
0.6-0     0.003607057 -0.2737567  0.2809708 0.9999717
6-0      -0.132956975 -0.4103207  0.1444068 0.4621313
1000-0   -0.909685884 -1.1870497 -0.6323221 0.0000274
6-0.6    -0.136564032 -0.4139278  0.1407997 0.4413260
1000-0.6 -0.913292940 -1.1906567 -0.6359292 0.0000266
1000-6   -0.776728908 -1.0540927 -0.4993651 0.0000882
```

### FGL/p_intermediate
``` r
tmp <- dye_based %>% 
  dplyr::filter(Treatment != "5C", Dye == "Both") %>%
  aov(p_intermediate ~ fct_inseq(Treatment), data = .)
TukeyHSD(tmp)
```

```
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = p_intermediate ~ fct_inseq(Treatment), data = .)

$`fct_inseq(Treatment)`
                 diff        lwr       upr     p adj
0.6-0    -0.008727135 -0.2959534 0.2784991 0.9996410
6-0       0.110875435 -0.1763508 0.3981017 0.6233588
1000-0   -0.048823104 -0.3360494 0.2384031 0.9455117
6-0.6     0.119602569 -0.1676237 0.4068288 0.5692055
1000-0.6 -0.040095969 -0.3273222 0.2471303 0.9683638
1000-6   -0.159698538 -0.4469248 0.1275277 0.3478477
```
