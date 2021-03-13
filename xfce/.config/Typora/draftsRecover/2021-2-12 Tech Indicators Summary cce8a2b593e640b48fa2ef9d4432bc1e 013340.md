# Tech Indicators Summary

Tags: Momentum, Technical Indicators, Volatility

### > Stochastic Oscillator

**Recall**

**Notes**

- ...
- ...

`*SUMMARY*`**:**

---

### >

---

### > RSI (Relative Strength Index)

**Recall**

- Value Range [0 - 100]
    - Above 70 ➡️ Overbought
    - `Below` 30 ➡️ Oversold
- For the MA (Moving Average Calculation, higher weightage is given to the most recent values.

    $ma_x = (ma_{x_{t - 1}} * (n - 1) + x_t) / n$

**Notes**

- Momentum Oscillator
- Measures speed and change of price movements

- **Calculation**:

    $Gain = \max[(close_{curr} - close_{prev}), 0] \\
    Loss = \max[(close_{prev} - close_{curr}), 0] \\
    Avg. Gain = ma(Gain, n) \\
    Avg. Loss = ma(Loss, n) \\
    Rel_Strength = Avg.Gain / Avg.Loss \\
    RSI = 100 - (100/1 + RS) \\

    \text{Genrally, n = 14}$

`*SUMMARY*`**: Momentum oscillator indicating if an asset is overbought or oversold. Assets can remain in either of the territories for a longer time.**

---

### > ATR & Bollinger Band

**Recall**

**ATR** ➡️ **Rate (Wildness) of price change (Volatility)**

**Bollinger** ➡️ **Intensity of volatility**

**Notes**

- **ATR** ➡️ Focuses on total price movement
    - High - Low
    - High - Prev_Close
    - Low - Prev_Close
- Bollinger Band ➡️ Volatility indication based on inter-band distance
    - High Inter-band distance indicates higher volatility
    - Lower Inter-band distance indicates lower volatility

`*SUMMARY*`**: Both are complimentary volatility based indicators.**

---

### > MACD (Moving Average Convergence Divergence)

**Recall**

MACD line cutting the Signal Line **from below** indicates bullish trend 🐂 📈

MACD line cutting the Signal Line **from above** indicates bearish trend 🐻 📉

**Notes**

- A momentum indicator of diff. b/w 2 MA of asset price
    - e.g. 26 MA - 12 MA
- Signal —> 9 MA  of the asset price

*`SUMMARY`***: Lagging indicator with multiple false positives (especially during sideways market), should be used in conjunction with other indicators.**

---