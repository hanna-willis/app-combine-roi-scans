<h1 align="center">combine-scans-rois</h1>

<p align="center">
  Copies a set of ROIs together with a preprocessed DWI and a T1-weighted image into one folder for visual checking.
</p>

<p align="center">
  <a href="https://github.com/brainlife/abcd-spec"><img src="https://img.shields.io/badge/ABCD_Spec-v1.1-green.svg" alt="ABCD Spec v1.1"></a>
  <a href="https://doi.org/10.25663/brainlife.app.681"><img src="https://img.shields.io/badge/Brainlife-brainlife.app.681-blue.svg" alt="Run on brainlife.io"></a>
</p>

## At a glance

<!-- brainlife-app:begin (generated from the App manifest; edit the manifest, not this block) -->

> **Copies a set of ROIs together with a preprocessed DWI and a T1-weighted image into one folder for visual checking.**

A small utility (adapted from svincibo/app-combineROI) that copies every ROI file, the DWI and the T1w image into output/rois so they can be viewed together. It does no image processing or resampling.

| | |
|---|---|
| **Inputs** | `neuro/rois` · `neuro/dwi` · `neuro/anat/t1w` |
| **Outputs** | `raw` |
| **Resources** | 1 CPUs |
| **Run it** | [doi.org/10.25663/brainlife.app.681](https://doi.org/10.25663/brainlife.app.681) |

#### Inputs

| Input | Datatype | Required | Description |
|---|---|---|---|
| `rois` | `neuro/rois` | yes | ROI volumes to include. |
| `dwi` | `neuro/dwi` (preprocessed) | yes | Preprocessed DWI to include. |
| `anat` | `neuro/anat/t1w` (preprocessed) | yes | Preprocessed T1-weighted image to include. |

#### Outputs

| Output | Datatype | Description |
|---|---|---|
| `output` | `raw` | Folder containing the ROIs, the DWI and the T1w image for visual checking. |

<!-- brainlife-app:end -->

## Running the App

### On brainlife.io

Open the App at [doi.org/10.25663/brainlife.app.681](https://doi.org/10.25663/brainlife.app.681), choose `neuro/rois`, `neuro/dwi`, `neuro/anat/t1w` from your project and press **Execute**. The results are saved to your project as `raw`.

### Locally

You need [`jq`](https://jqlang.github.io/jq/).

1. Clone this repository.
2. Create `config.json` with the paths to your inputs and the parameters:

   ```json
   {
       "rois": "/path/to/rois/rois",
       "dwi": "/path/to/dwi/dwi",
       "bvecs": "/path/to/dwi/bvecs",
       "bvals": "/path/to/dwi/bvals",
       "sbref": "/path/to/dwi/sbref",
       "sbref_json": "/path/to/dwi/sbref_json",
       "t1": "/path/to/anat/t1"
   }
   ```

3. Run `./main`.

## app-combine-roi-scans

This app will combine multiple ROI datatypes, diffusion scans and t1 scans into one ROI file. 
This app is adapted from svincibo/app-combineROI.

## Citing

If you use this App, please cite it, the software it builds on and brainlife.io:

- combine-scans-rois. brainlife.io App. [doi:10.25663/brainlife.app.681](https://doi.org/10.25663/brainlife.app.681)
- Hayashi S, Caron BA, Heinsfeld AS, et al. brainlife.io: a decentralized and open-source cloud platform to support neuroscience research. *Nature Methods* 21:809–813 (2024). [doi:10.1038/s41592-024-02237-2](https://doi.org/10.1038/s41592-024-02237-2)
- Avesani P, McPherson B, Hayashi S, et al. The open diffusion data derivatives, brain data upcycling via integrated publishing of derivatives and reproducible open cloud services. *Scientific Data* 6:69 (2019). [doi:10.1038/s41597-019-0073-y](https://doi.org/10.1038/s41597-019-0073-y)

## Authors

- Hanna Willis
