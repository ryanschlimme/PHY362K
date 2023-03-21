m = 9.11e-31
w = 1e-9 # 1 nm width
V0 = 8 # 8eV potential
eV_convert = 1.602e-19 # joules per eV
h_bar = 1.055e-34

u2 = m * w^2 * V0 * eV_convert / (2 * h_bar^2)

v = c(7.110, 6.699, 5.964, 4.787, 2.798)

for (i in v) {
  E = 2 * h_bar^2 * i^2 / (m * w^2 * eV_convert)
  print(E)
  i = i + 1
}
