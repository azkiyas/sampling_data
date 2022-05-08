### sampling_data
Repository Tugas 4 Shell Tooling

1. Mendownload sebuah file excel dari link berikut dan menyimpannya di dalam folder
data

``` bash
wget -P loc_folder "alamat url"
```

2. Di dalam folder data convert setiap sheet pada file weather_data.xlsx menjadi:
   --Sheet weather_2014 menjadi file weather_2014.csv
   --Sheet weather_2015 menjadi file weather_2015.csv

``` bash
in2csv nama_file --sheet "nama_sheet" > nama_file_baru
```

3. Menggabungkan Data weather 2014 dan 2015 menjadi 1 csv kemudian beri nama
weather.csv.

``` bash
csvstack nama_file1 nama_file2 > nama_file_baru
```

Selain itu hapus file weather_data.xlsx

``` bash 
rm nama_file
```

4. Melakukan sampling pada file weather.csv dengan rate 0.3 kemudian simpan kedalam file
sample_weather.csv

``` bash 
cat nama_file | sample -r rate > nama_file_baru 
```

