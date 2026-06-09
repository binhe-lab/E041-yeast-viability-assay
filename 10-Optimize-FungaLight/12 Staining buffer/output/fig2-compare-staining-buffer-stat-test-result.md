We perform pairwise comparisons for both %dead like and %unstained

## Percent dead-like
Use Tukey HSD test to compare all pairs of conditionsn for %dead-like
```{r}
tmp <- gated_stats |>
  dplyr::filter(treatment == "0")
test <- aov(p_dead_like ~ buffer, data = tmp)
TukeyHSD(test)
```

```
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = p_dead_like ~ buffer, data = tmp)

$buffer
                       diff        lwr         upr     p adj
PBS-ddH2O       -0.31958392 -0.4696541 -0.16951377 0.0006151
Saline-ddH2O    -0.52940674 -0.6794769 -0.37933659 0.0000159
SD media-ddH2O  -0.57032703 -0.7203972 -0.42025688 0.0000091
Saline-PBS      -0.20982282 -0.3598930 -0.05975267 0.0088963
SD media-PBS    -0.25074311 -0.4008133 -0.10067296 0.0030395
SD media-Saline -0.04092028 -0.1909904  0.10914987 0.8185312
```

## Percent unstained
Use Tukey HSD test to compare all pairs of conditionsn for % unstained
```{r}
tmp <- gated_stats |>
  dplyr::filter(treatment == "0")
test <- aov(p_unstained ~ buffer, data = tmp)
TukeyHSD(test)
```

```
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = p_unstained ~ buffer, data = tmp)

$buffer
                       diff         lwr        upr     p adj
PBS-ddH2O        0.09623032 -0.04680483 0.23926547 0.2155341
Saline-ddH2O     0.03330565 -0.10972951 0.17634080 0.8760391
SD media-ddH2O   0.38550289  0.24246774 0.52853805 0.0001166
Saline-PBS      -0.06292467 -0.20595982 0.08011048 0.5281537
SD media-PBS     0.28927257  0.14623742 0.43230773 0.0008740
SD media-Saline  0.35219725  0.20916210 0.49523240 0.0002230
```

