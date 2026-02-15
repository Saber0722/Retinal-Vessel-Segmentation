# 🩺 Retinal Blood Vessel Segmentation

Multi-dataset retinal vessel segmentation project using:

* DRIVE
* CHASEDB1
* HRF

---

📥 Dataset Sources

The datasets used in this project were downloaded from the official sources:

🔹 DRIVE Dataset
https://drive.grand-challenge.org/

🔹 CHASEDB1 Dataset
https://blogs.kingston.ac.uk/retinal/chasedb1/

🔹 HRF Dataset
https://www5.cs.fau.de/research/data/fundus-images/

These datasets are publicly available for research purposes.

---

# 📁 Project Structure

```
Retinal_Blood_Vessel_Segmentation/
│
├── data/
│   ├── merged/          # Standardized merged dataset (generated)
│   │   ├── images/
│   │   └── masks/
│   │
│   ├── patches/         # Extracted training patches (generated)
│   │   ├── images/
│   │   └── masks/
│   │
│   └── raw/             # Raw extracted datasets (please unzip here)
│       ├── chase_db1/
│       ├── drive/
│       └── hrf/
│
├── raw_data_files/      # Zipped datasets (tracked with Git LFS)
│   ├── chase_db.zip
│   ├── datasets.zip
│   └── hrf.zip
│
├── src/
│   ├── standardize_datasets.ipynb
│   └── patching_datasets.ipynb
│
├── setup_data_dirs.sh   # Run this to generate data directory structure
├── requirements.txt
├── pyproject.toml
└── README.md
```

---

# 🚀 Setup Instructions

## 1️⃣ Clone the Repository

```bash
git clone <repo-url>
cd Retinal_Blood_Vessel_Segmentation
```

If using Git LFS:

```bash
git lfs pull
```

---

## 2️⃣ Create Data Directory Structure

1. Make the script executable

```bash
chmod +x setup_data_dirs.sh
```
2. Generate data directory structure

```bash
./setup_data_dirs.sh
```

This creates:

```
data/
 ├── merged/
 ├── patches/
 └── raw/
```

---

## 3️⃣ Unzip Raw Datasets

Unzip the files inside `raw_data_files/` into `data/raw/` as follows:

### 🔹 CHASEDB1

```bash
unzip raw_data_files/chase_db.zip -d data/raw/chase_db1
```

Final location:

```
data/raw/chase_db1/
```

---

### 🔹 DRIVE

```bash
unzip raw_data_files/datasets.zip -d data/raw/drive
```

Final location:

```
data/raw/drive/
```

---

### 🔹 HRF

```bash
unzip raw_data_files/hrf.zip -d data/raw/hrf
```

Final location:

```
data/raw/hrf/
```

---

# 🧠 Notebook Execution Order

Run notebooks in the following order:

---

## Step 1 — Standardize & Merge Datasets

Open and run all cells:

```
src/standardize_datasets.ipynb
```

This will:

* Merge DRIVE, CHASEDB1, HRF
* Resize to 512×512
* Convert masks to binary
* Save output to:

```
data/merged/
 ├── images/
 └── masks/
```

---

## Step 2 — Patch Extraction

Open and run all cells:

```
src/patching_datasets.ipynb
```

This will:

* Extract 256×256 patches
* Save to:

```
data/patches/
 ├── images/
 └── masks/
```

Expected patch count:
~1000+ samples

---

# 📌 Important Notes

* `data/merged/` and `data/patches/` are generated folders.
* Do NOT manually modify them.
* Re-run notebooks if regeneration is required.

---

# 📦 Dependencies

Install required packages:

```bash
pip install -r requirements.txt
```

or if using `uv`:

```bash
uv pip install -r requirements.txt
```

---

# 🎯 Final Output Pipeline

```
Raw Data → Standardization → Merged Dataset → Patch Extraction → Model Training
```

---

# Model Training

- Please use the data generated and saved under `data/patches/` for training.

- You can add augmentations if more data is needed.
---
