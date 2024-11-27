from flask import Flask, render_template, request, redirect, url_for
import pandas as pd
import requests
import datetime

app = Flask(__name__)

POWERBI_API_URL = 'https://api.powerbi.com/beta/2023ead0-1aa4-4505-85ef-5235ede65441/datasets/b6d26984-e72a-4bca-a396-10c3dcaa4d27/rows?experience=power-bi&clientSideAuth=0&key=sAkLzDQ5LRHa6qU%2FmfVsCcW0S1GTgPwp6wUvBHRFCPzSSyzfRexrhmlB3V88m8p651SLQMYnItuisJw8Yn%2BR1A%3D%3D'

def calculate_total_price(qty, unit_price):
    return qty * unit_price

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/submit', methods=['POST'])
def submit():
    user_id = request.form['userId']
    item = request.form['item']
    qty = int(request.form['qty'])
    unit_price = float(request.form['unit_price'])
    total_price = calculate_total_price(qty, unit_price)
    date = datetime.datetime.today().strftime("%Y-%m-%d")
    time = datetime.datetime.now().isoformat()

    data_raw = [[user_id, item, qty, unit_price, total_price, date, time]]

    HEADER = ["userId", "Item", "Qty", "Unit Price", "Total Price", "Date", "Time"]

    data_df = pd.DataFrame(data_raw, columns=HEADER)
    data_json = bytes(data_df.to_json(orient='records'), encoding='utf-8')
    print("JSON dataset", data_json)

    # Post the data on the Power BI API
    req = requests.post(POWERBI_API_URL, data_json)
    print("Data posted in Power BI API")

    return redirect(url_for('index'))

if __name__ == '__main__':
    app.run(debug=True)
