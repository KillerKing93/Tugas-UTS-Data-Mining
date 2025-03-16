# TUGAS UTS DATA MINING

---

# Suicide Ideation Detection from Tweets

Jupyter notebook ini ("Task.ipynb") menunjukkan pendekatan pembelajaran mesin (machine learning) untuk mendeteksi ide bunuh diri dari tweet. Notebook ini mencakup langkah-langkah seperti pemuatan data, pra-pemrosesan, pelatihan model, dan evaluasi menggunakan matriks kebingungan (confusion matrix).

## Dataset

- **Sumber Data**: File "Suicide_Ideation_Dataset.csv" digunakan sebagai dataset, yang berisi tweet yang diberi label "not suicide post" atau "potential suicide post".
- **Langkah Pra-pemrosesan**:
  - Menghapus baris dengan nilai kosong (missing values).
  - Mengonversi teks menjadi huruf kecil (lowercase).
  - Menghapus mention (kata yang diawali dengan '@').
  - Memfilter tweet yang mengandung '&quot;'.
  - Membersihkan teks dengan menghapus karakter non-alfabet, angka, mengurangi pengulangan karakter berlebih, dan menghapus URL menggunakan fungsi `Temizle`.

## Instalasi

Untuk menjalankan notebook ini, instal pustaka Python berikut:

```bash
pip install numpy pandas nltk seaborn matplotlib scikit-learn xgboost
```

Selain itu, unduh data NLTK yang diperlukan:

```python
import nltk
nltk.download('stopwords')
nltk.download('punkt')
nltk.download('punkt_tab')
```

Atau, gunakan 'Jalankan Program Penambangan Data.exe' untuk melakukan instalasi pythonvenv dan Jupyter Notebook secara otomatis

## Penggunaan

1. Letakkan file dataset "Suicide_Ideation_Dataset.csv" di direktori yang sama dengan notebook "Task.ipynb".
2. Buka "Task.ipynb" menggunakan Jupyter Notebook atau JupyterLab.
3. Jalankan sel-sel secara berurutan.
4. Notebook akan:
   - Memuat dan memproses data, menampilkan beberapa baris pertama dari DataFrame yang telah dibersihkan.
   - Melatih model pembelajaran mesin.
   - Mengevaluasi model dengan memplot matriks kebingungan untuk data pelatihan dan pengujian.

## Model

Notebook ini melatih dan mengevaluasi model pembelajaran mesin, termasuk namun tidak terbatas pada:

- **Decision Tree Classifier**
- **Random Forest Classifier**
- **XGBoost Classifier**

Catatan: Detail spesifik tentang model yang digunakan mungkin ada di dalam notebook, tetapi berdasarkan impor pustaka, ketiga model ini kemungkinan besar diimplementasikan.

## Hasil

Notebook ini menghasilkan visualisasi kinerja model melalui matriks kebingungan (confusion matrix) untuk dataset pelatihan dan pengujian, yang ditampilkan dalam dua subplot menggunakan matplotlib.

---
