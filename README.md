# 🎶 Interactive FIR/IIR Filter Design  

An interactive MATLAB project to design and compare **FIR** and **IIR** filters on a noisy sinusoidal signal.  
This project demonstrates how different filter types behave in terms of stability, efficiency, and frequency response.  

---

## 📌 Features  
- Generates a **noisy sinusoidal signal** (50 Hz sine wave + random noise).  
- User can **choose filter type**:  
  - FIR Filter  
  - IIR Filter  
- Accepts **user inputs** for filter order and cutoff frequency.  
- Performs filtering and displays:  
  1. Noisy signal  
  2. Filtered output  
  3. Frequency response of the filter  
- Compares FIR vs IIR behavior:  
  - FIR → Linear phase, stable, higher order needed  
  - IIR → Efficient, lower order, nonlinear phase  

---

## 🛠️ Tech Stack  
- **Language**: MATLAB  
- **Concepts Used**:  
  - Digital Signal Processing (DSP)  
  - FIR & IIR filter design  
  - Frequency response analysis  
  - Signal visualization (plots)  

---

## 📂 Project Structure  
```text
interactive_fir_iir_filterdesign/
│── filter_design.m   # Main MATLAB script
│── README.md         # Documentation
