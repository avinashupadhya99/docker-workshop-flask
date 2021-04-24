from app import app
from flask import Flask, flash, jsonify, request, redirect, url_for, render_template
import os

@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        name = request.form['name']
        return render_template('index.html', name=name)
    else:
        return render_template('index.html', name=os.environ['name'])