p_three_pc = 1.03 * nif_0['open']
m_three_pc = 0.97 * nif_0['open']
p_three_pc
for i in range(0, 200, 100): print(i)
bk_nif = options[options['tradingsymbol'].str.contains('BANKNIFTY', regex=False)]
bk_nif = bk_nif[bk_nif['expiry'] == (datetime.today()).date()]
str(roundup_ceil(p_three_pc.values[0]))+'CE'
[str(roundup_ceil(p_three_pc.values[0] + i))+'CE' for i in range(0, 200, 100)]
p_c = [str(roundup_ceil(p_three_pc.values[0] + i))+'CE' for i in range(0, 200, 100)]
bk_nif[bk_nif['tradingsymbol'].str.contains(p_c)]
[bk_nif['tradingsymbol'].str.contains(i) for i in p_c]
bk_nif[bk_nif['tradingsymbol'].str.contains(i) for i in p_c]
[bk_nif['tradingsymbol'].str.contains('|'.join(p_c))]
bk_nif[bk_nif['tradingsymbol'].str.contains('|'.join(p_c))]
p_c = [str(roundup_ceil(p_three_pc.values[0] + i))+'CE' for i in range(0, 200, 100)]
call_opt = bk_nif[bk_nif['tradingsymbol'].str.contains('|'.join(p_c))]

n_c = [str(roundup_ceil(p_three_pc.values[0] - i))+'PE' for i in range(0, 200, 100)]
put_opt = bk_nif[bk_nif['tradingsymbol'].str.contains('|'.join(n_c))]
positions = call_opt['instrument_token'].to_list() + put_opt['instrument_token'].to_list()
positions
strategy = thursday(positions)
print(strategy.positions)
bk_nif[bk_nif['instrument_token'].isin([9004290, 9004802, 13603074, 9004546])]
bk_nif.columns
bk_nif[bk_nif['instrument_token'].isin([9004290, 9004802, 13603074, 9004546])]['tradingsymbol']
nif_0.tail()
1.03 * 24063.5
.97 * 24063.5
kite.historical_data(260105, start, end, 'day', continuous=False)
bk_nif[bk_nif['instrument_token'].isin([9004290, 9004802, 13603074, 9004546])][['tradingsymbol', 'instrument_token']]

## ---(Fri Oct 30 10:11:09 2020)---
import pandas as pd
import datetime as dt
from datetime import datetime, timedelta

import numpy as np
import scipy.signal
from scipy.signal import argrelextrema
import matplotlib.pyplot as plt
import os
from tqdm import tqdm
import warnings
warnings.filterwarnings("ignore")

from kiteconnect import KiteConnect
from kiteconnect import KiteTicker

## Importing t-cap modules
import sys, os
sys.path.append(os.path.abspath(os.path.join('..')))

from utils.utils import get_request_token, gap_reverse_metrics
from strategies.thursday_strategy import thursday

import math
def roundup_floor(x):
    return int(math.floor(x / 100.0)) * 100

def roundup_ceil(x):
    return int(math.floor(x / 100.0)) * 100

apiKey="nsidzj2b45zmusml"
apiSecret = "7ziwy8gps1mooe9kp5uz11p4cpn9lw2t"
requestToken = get_request_token()

kite = KiteConnect(api_key=apiKey)
data = kite.generate_session(request_token=requestToken, api_secret=apiSecret)
kite.set_access_token(data["access_token"])
accessToken = data['access_token']
kws = KiteTicker(apiKey, accessToken)

instruments = kite.instruments()
instruments = pd.DataFrame(instruments)


options = instruments[instruments['segment'] == 'NFO-OPT']

start = datetime(2020, 10, 25, 9, 15)
end = datetime(2020, 10, 29, 15, 30)

## ---(Thu Nov 26 23:32:33 2020)---
runfile('/home/archie/Documents/tcap/IBrk/ibrk_test.py', wdir='/home/archie/Documents/tcap/IBrk')

## ---(Sun Jan  3 13:32:04 2021)---
runfile('/home/archie/Documents/tcap/IBrk/ib_demo_app.py', wdir='/home/archie/Documents/tcap/IBrk')
debugfile('/home/archie/Documents/tcap/IBrk/ib_demo_app.py', wdir='/home/archie/Documents/tcap/IBrk')
ib.req_data
runfile('/home/archie/Documents/tcap/IBrk/ib_demo_app.py', wdir='/home/archie/Documents/tcap/IBrk')
debugfile('/home/archie/Documents/tcap/IBrk/ib_demo_app.py', wdir='/home/archie/Documents/tcap/IBrk')
runfile('/home/archie/Documents/tcap/IBrk/ib_demo_app.py', wdir='/home/archie/Documents/tcap/IBrk')

## ---(Tue Jan 19 16:50:57 2021)---
runfile('/home/archie/Documents/tcap/IBrk/ib_demo_app.py', wdir='/home/archie/Documents/tcap/IBrk')
clear
runfile('/home/archie/Documents/tcap/IBrk/ib_demo_app.py', wdir='/home/archie/Documents/tcap/IBrk')

## ---(Tue Jan 19 18:01:25 2021)---
runfile('/home/archie/Documents/tcap/IBrk/ib_demo_app.py', wdir='/home/archie/Documents/tcap/IBrk')
debugfile('/home/archie/Documents/tcap/IBrk/ib_demo_app.py', wdir='/home/archie/Documents/tcap/IBrk')