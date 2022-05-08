#!/usr/bin/bash

# Download file dan menyimpan dalam folder
wget -P ./data https://github.com/labusiam/dataset/raw/main/weather_data.xlsx

# Convert setiap sheet
in2csv weather_data.xlsx --sheet "weather_2014" > weather_2014.csv
in2csv weather_data.xlsx --sheet "weather_2015" > weather_2015.csv

# Menggabungkan data weather 2014 dan 2015
csvstack weather_2014.csv weather_2015.csv > weather.csv

# Hapus file 
rm ./data/weather_data.csv

# Melakukan sampling
cat weather.csv | sample -r 0.3 weather.csv > sample_weather.csv



