#!/usr/bin/bash

# Download file dan menyimpan dalam folder
wget -P ./data https://github.com/labusiam/dataset/raw/main/weather_data.xlsx

# Convert setiap sheet
in2csv ./data/weather_data.xlsx --sheet "weather_2014" > data/weather_2014.csv
in2csv ./data/weather_data.xlsx --sheet "weather_2015" > data/weather_2015.csv

# Menggabungkan data weather 2014 dan 2015
csvstack data/weather_2014.csv data/weather_2015.csv > data/weather.csv

# Hapus file 
rm ./data/weather_data.xlsx

# Melakukan sampling
cat ./data/weather.csv | sample -r 0.3 > data/sample_weather.csv



