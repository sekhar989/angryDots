# Technical Indicators :chart_with_downwards_trend::chart_with_upwards_trend::computer:

[toc]

### MACD (Moving Average Convergence Divergence)

A Lagging momentum indicator with multiple false positives (especially during sideways market), should be used in conjunction with other indicators. 
Consists of 2 indicators:

1. Momentum indicator $\rightarrow$ Diff. b/w 2 MA of asset price, e.g. 26 MA - 12 MA
2. Signal $\rightarrow$ 9 MA  of the asset price

- MACD line cutting the Signal Line **from below** indicates **bullish trend 🐂 📈**
- MACD line cutting the Signal Line **from above** indicates **bearish trend 🐻 📉**

### ATR (Average True Range) & Bollinger Band

Both are complimentary volatility based indicators.

- **ATR**  $\rightarrow$ Rate (Wildness) of price change (Volatility)
  - Focuses on total price movement
    - High - Low
    - High - Prev_Close
    - Low - Prev_Close
- **Bollinger** $\rightarrow$ Indicates intensity of volatility, based on inter-band distance
  - High Inter-band distance indicates higher volatility
  - Lower Inter-band distance indicates lower volatility

### RSI (Relative Strength Index)

Momentum oscillator indicating if an asset is overbought or oversold. Assets can remain in either of the territories for a longer time. Measures speed and change of price movements.

- Value Range [0 - 100]

  - ==Above 70 $\rightarrow$ Overbought==
  - ==Below 30 $\rightarrow$ Oversold==

- For the MA (Moving Average Calculation, higher weightage is given to the most recent values.

  $ma_x = (ma_{x_{t - 1}} * (n - 1) + x_t) / n$

**<u>*Calculation:*</u>**
$$
\begin{align}

Gain  & = \max[(close_{curr} - close_{prev}), 0] \\
Loss & = \max[(close_{prev} - close_{curr}), 0] \\
Avg. Gain & = ma(Gain, n) \\
Avg. Loss  &= ma(Loss, n) \\
Rel_Strength  &= Avg.Gain / Avg.Loss \\
RSI & = 100 - (100/1 + RS) \\ & \text{Generally, n = 14}

\end{align}
$$

```python
def RSI(<price>, n):
    '''
    	n = lookback period
    '''
```

### Stochastic Oscillator

- <u>***Idea:***</u> Momentum must reduce before price reversal, works well during trending market.
  Signifies if the current price is closer to the highest price over the lookback period ($n$).
- **<u>*Range:*</u>** 
  - 0 - 100
  - Above 80 $\rightarrow$ ==Overbought==
  - Below 20 $\rightarrow$ ==Oversold==

```python
def slope(<price>, n):
    '''
    	n = look back period    
    '''
```

- **<u>*Calculation:*</u>**
  - ​	Lookback period $\rightarrow n$
  - $\big[ (close - lowest_{low})/ (highest_{high} - lowest_{low}) \big]* 100$

```python
def stochastic(<price>, a=20, b=3):
    '''
    	a = lookback period
    	b = moving avg. window for %D
    '''
    'c-l' = 'close' - 'low'.rolling(a).min()					# Close - Lowest_Low
    'h-l' = 'high'.rolling(a).max() - 'low'.rolling(a).min()	# Highest_High - Lowest_low
    '%K' = 100 * ('c-l'/'h-l')
    '%D' = '%K'.ewm(span=b).mean() 		# Exponential Moving Avg. of %D
```

### ADX (Average Directional Index)

Measures strength of the trend, irrespective of it's direction. 
ma ⇒ moving average, is calculated by giving higher weightage to the most recent value.
$ma_x = (ma_{x_{t - 1}} * (n - 1) + x_t) / n$

- Requires the calculation of both ==**positive and negative Directional Movements.**==

- Measures ==**only** the strength of a trend==

- Value range

  - 0 - 25 $\rightarrow$ No Trend (Weak Trend)
  - 25 - 50 $\rightarrow$ Strong
  - 50 - 75 $\rightarrow$ Very Strong
  - 75 - 100 $\rightarrow$ Extremely Strong

- **<u>*Calculation*</u>**
  $$
  \begin{align}
  TR & = \max[(high - low), abs(high - close_prev), abs(low - close_{prev})] \\
  
  DM_+ &= \max\big[(high - high_{prev}), 0\big] \text{,  if } (high - high_{prev}) > (low_{prev} - low)\\
  
  DM_- &= \max\big[(low_{prev} - low), 0\big] \text{, if } (low_{prev} - low) > (high - high_{prev}) \\
  
  Avg.TR &= ma(TR, n) \\
  Avg. DM_+ &= ma(DI+, n) \\
  Avg. DM_- &= ma(DI-, n) \\
  
  DI_+ &= 100*(Avg.DM_+ / Avg.TR) \\
  DI_- &= 100*(Avg.DM_- / Avg.TR) \\
  
  DI_{Sum} &= DI_+ + DI_- \\
  DI_{Diff} &= abs(DI_+ - DI_-) \\
  DX &= 100 * (DI_{Diff} / DI_{Sum}) \\
  ADX &= ma(DX, n)
  \end{align}
  $$

```python
def ADX(<price>, a, b):
    '''
    	a = 
    	b = 
    '''
```

### OBV (On Balance Volume)

Momentum indicator, based on the idea that volume precedes price movement.

- Change in trading volume $\implies$ change in future asset prices
- A leading market indicator, but prone to false-positves. Used in conjunction with other indicators.

**<u>*Calculation:*</u>**
$$
OBV = OBV_{prev} + \begin{cases}
	volume, & \text{if } close > close_{prev} \\
	0,	& \text{if } close = close_{prev} \\
	-volume, & \text{if } close < close_{prev} \\
\end{cases}
$$



### Slope

Gives us an idea of the direction of the asset by fitting a linear model (straight line) on $n$-consecutive points.

```python
def slope(<price>, n):
    '''
    '''
```

### Renko

Renko Chart is a price movement chart, that filters out noise and helps us to get a proper understanding of the trend.
The chart is plotted against time axis, but unlike normal time-series standardised time intervals are not taken into consideration.
Movements are calculated against fixed brick size, that are formed at $45^{\circ}$ angles to each other. Generally used only on closing price.
Further [Ref.](https://towardsdatascience.com/renko-brick-size-optimization-34d64400f60e)

## Appendix

- Momentum $\rightarrow$ Rate of Price change or the speed at which the price is changing
