# ---
# title: flow gate specification standards
# author: Bin He
# date: 2025-02-06
# ---

# note: this file is used by all FungaLight project gating
#       assumes flowCore is already loaded in the environment

# outlier gate
outlier.gate <- rectangleGate(filterId = "-outlier", "FSC.H" = c(1.2e5, 1e6), "SSC.H" = c(1e2, 1e6))
# single cell gate
polygon <- matrix(c(1e5, 1e5, 1e6, 1e6, 
                    60, 105, 135,60), ncol = 2)
colnames(polygon) <- c("FSC.H", "FSC.W")
singlet.gate <- polygonGate(filterId = "singlet", .gate = polygon)
# live cell gate
polygon <- matrix(c(0, 10^4, 10^4, 0, # BL1.H, green
                    10^2.2, 10^2.2, 0, 0),# BL3.H, red
                  ncol = 2)
colnames(polygon) <- c("BL1.H", "BL3.H")
live.gate <- polygonGate(filterId = "live", .gate = polygon)
# intermediate gate
polygon <- matrix(c(10^3, 10^5.5, 10^5.5,   # BL1.H, green
                    10^2.2, 10^2.2, 10^4.5),# BL3.H, red
                  ncol = 2)
colnames(polygon) <- c("BL1.H", "BL3.H")
inter.gate <- polygonGate(filterId = "inter", .gate = polygon)

# -----------------------------
# S. cerevisiae specific gates
# -----------------------------
# live cell gate
polygon <- matrix(c(0, 10^4, 10^4, 0, # BL1.H, green
                    10^2.3, 10^2.3, 0, 0),# BL3.H, red
                  ncol = 2)
colnames(polygon) <- c("BL1.H", "BL3.H")
live.gate.sc <- polygonGate(filterId = "live", .gate = polygon)

# intermediate gate
polygon <- matrix(c(10^3, 10^5.5, 10^5.5,   # BL1.H, green
                    10^2.3, 10^2.3, 10^4.5),# BL3.H, red
                  ncol = 2)
colnames(polygon) <- c("BL1.H", "BL3.H")
inter.gate.sc <- polygonGate(filterId = "inter", .gate = polygon)

# ---------------------------
# C. albicans specific gates
# ---------------------------
# live cell gate
polygon <- matrix(c(0, 10^4.2, 10^4.2, 0, # BL1.H, green
                    10^2.7, 10^2.7, 0, 0),# BL3.H, red
                  ncol = 2)
colnames(polygon) <- c("BL1.H", "BL3.H")
live.gate.ca <- polygonGate(filterId = "live", .gate = polygon)

# intermediate gate
polygon <- matrix(c(10^3, 10^5.5, 10^5.5,   # BL1.H, green
                    10^2.7, 10^2.7, 10^4.5),# BL3.H, red
                  ncol = 2)
colnames(polygon) <- c("BL1.H", "BL3.H")
inter.gate.ca <- polygonGate(filterId = "inter", .gate = polygon)

# clean up
rm(polygon)