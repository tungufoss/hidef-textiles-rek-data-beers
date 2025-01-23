# HiDef Textiles: Reviving Tradition with Innovation

This repository contains resources and materials from the **HiDef Textiles** project, focused on
modernizing textile production by integrating traditional Icelandic knitting techniques with
cutting-edge digital tools. The project was presented at **Reykjavík DataBeers** on **January 25,
2025**.

For the latest updates on software and tools, visit
the [HiDef Textiles GitHub organization](https://github.com/HiDefTextiles/).

## Repository Structure

The repository is organized as follows:

- **`HI-LaTeX/`**: Contains the LaTeX theme and class files used to create the presentation slides.
- **`LICENSE`**: The license file for this repository, shared under the Creative Commons
  Attribution-ShareAlike (CC-BY-SA) license.
- **`README.md`**: This document.
- **`include/`**: Contains supporting images, diagrams, and figures used in the presentation.
- **`databeers-hidef.tex`**: The main LaTeX file for the presentation slides.
- **`databeers-hidef.pdf`**: The compiled PDF of the presentation.
- **`map/`**: Includes geospatial visualizations and maps related to project locations and
  collaborators.

## Usage

To clone the repository, use the following command:

```bash
git clone git@github.com:tungufoss/hidef-textiles-rek-data-beers.git
```

### Compiling the Presentation

To compile the presentation, use `latexmk` with `xelatex` to support SVG images. Run the following
command in your terminal:

```bash
latexmk -xelatex databeers-hidef.tex
```

You need to have _LaTeX_ installed on your system to compile the presentation. If you don't have
LaTeX installed, you can use online LaTeX editors like [Overleaf](https://www.overleaf.com/) to
compile the presentation.
Moreover, you need to have `inkscape` and `pdf2svg` installed on your system to convert SVG images
to PDF. You can install them using the following commands:

```bash
sudo apt-get install inkscape
sudo apt-get install pdf2svg
```

### Exploring the Repository

1. **Presentation**:
    - Open `main.pdf` to view the compiled slides presented at Reykjavík DataBeers.
    - Modify `main.tex` if you wish to create a customized version of the slides.

2. **Images and Diagrams**:
    - Browse the `include/` directory for visuals, including knitting machine diagrams, generative
      pattern outputs, and project-related figures.

3. **Geospatial Data**:
    - Check the `map/` folder for maps and visualizations highlighting project locations and
      collaborator contributions.

## Presentation Highlights

### **HiDef Textiles: Reviving Tradition with Innovation**

- Presented by **Dr. Helga Ingimundardóttir**
- Seminar: Reykjavík DataBeers
- Date: January 25, 2025

The presentation covered key deliverables from the 2024 summer project, including:

- Generative knitting patterns inspired by Icelandic *Sjónabók* motifs.
- Integration of modern hardware and software into vintage knitting machines.
- Collaborative contributions from local and international experts.

## License

This repository and its contents are shared under the Creative Commons Attribution-ShareAlike (
CC-BY-SA) license. For details, refer to the [LICENSE](LICENSE) file.

## Contact

For inquiries or collaboration opportunities, contact:

- **Dr. Helga Ingimundardóttir**
- **Email**: [helgaingim@hi.is](mailto:helgaingim@hi.is)
- **GitHub**: [HiDef Textiles](https://github.com/HiDefTextiles/)
