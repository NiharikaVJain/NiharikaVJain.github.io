# Running `writingCode.r`

This repository contains a small R script `writingCode.r` which demonstrates writing outputs to `r_outputs/`.

Locally
-------
Make sure R is installed on your machine. Then from the repository root:

```bash
Rscript writingCode.r
```

Outputs will be written to `r_outputs/`:
- `sample_data.csv` — example CSV
- `plot.png` — example plot
- `writingCode_output.txt` — optional if you redirect stdout

GitHub Actions
--------------
A workflow `.github/workflows/run-r-script.yml` is included and will run the script on push to `master` and upload `r_outputs/` as an artifact.

Notes
-----
If the script requires additional R packages in future, add an installation step to the workflow, for example:

```yaml
- name: Install packages
  run: |
    R -e "install.packages(c('ggplot2'), repos='https://cloud.r-project.org')"
```
