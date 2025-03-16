::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJHSF90o5Jh4UYAGDLmWzCLJc2Pr05e+Etg1QFMMzcYnn7qGJIfMszkTwdKkA33RTlswwHwlbQj6kaQB5nEBrlCmtE4rJ61/5HxDZqEIzFAU=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCuDJHSF90o5Jh4UYAGDLmWzCLJc2Pr05e+Etg1QFMMzcYnn7qGJIfMszkTwdKkA33RTlswwJhpUfxygbwF0mXxNsXaEOoestgHgR0qI6EwxFSVQhnfRwi4jZbM=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
REM Memeriksa apakah Python sudah terinstal dengan mencoba menjalankan perintah 'where python'
where python >nul 2>&1
if errorlevel 1 (
    REM Jika Python tidak ditemukan, jalankan installer Python dan tunggu hingga proses instalasi selesai
    echo Python tidak ditemukan. Menjalankan installer...
    REM Perintah 'start /wait' memastikan script menunggu hingga installer selesai
    start /wait python-3.12.3-amd64.exe /quiet InstallAllUsers=1 PrependPath=1
    REM Setelah installer selesai, periksa kembali apakah Python sudah terinstal
    where python >nul 2>&1
    if errorlevel 1 (
        echo Instalasi Python gagal. Pastikan installer berjalan dengan benar.
        pause
        exit /b 1
    )
) else (
    echo Python sudah terinstal.
)

REM Memeriksa apakah folder 'pythonvenv' sudah ada
if exist pythonvenv (
    REM Jika folder sudah ada, langsung aktifkan virtual environment
    call pythonvenv\Scripts\activate.bat
) else (
    REM Jika folder belum ada, buat virtual environment baru dengan nama 'pythonvenv'
    python -m venv pythonvenv
    REM Aktifkan virtual environment 'pythonvenv'
    call pythonvenv\Scripts\activate.bat
)

REM Instal paket-paket yang diperlukan dari file requirements.txt
pip install -r requirements.txt

REM Menjalankan Jupyter Notebook dan membuka file 'Task.ipynb'
python -m notebook Task.ipynb

REM Menahan jendela command prompt agar tidak tertutup secara otomatis
pause