##### Problem 1 #####

# Finite Square Well Exact Solution
m = 9.11e-31 # mass of electron
w = 1e-9 # 1 nm width
V0 = 8 # 8 eV potential
eV_convert = 1.602e-19 # joules per eV
h_bar = 1.055e-34 # reduced Planck's constant

u2 = m * w^2 * V0 * eV_convert / (2 * h_bar^2) # defining function

v = c(1.379, 2.752, 4.109,5.435, 6.680) # intersection points
for (i in v) { # calculating energies based on intersections
  E = 2 * h_bar^2 * i^2 / (m * w^2 * eV_convert)
  print(round(E, 2))
 i = i + 1
} 

# WKB Approx
E_wkb = h_bar^2 * pi^2 / (w^2 * 2 * m) / eV_convert # WKB energies / n^2

n = c(1, 2, 3, 4, 5) # First 5 energy estimates
for(i in n) {
  print(i^2*E_wkb)
  i = i + 1
}
# 5th energy E = 9.41 eV > 8 eV, therefore NOT a bound state energy