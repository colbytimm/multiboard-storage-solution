# Organisaur 🦖

Organisaur is a modular storage solution that provides SCAD and STL files to create a remix of the Multiboard system, enabling easy construction of modular storage solutions. Perfect for organizing items with cubbies, boxes, and other printable configurations.

## 🙋 What is Multiboard

[Multiboard](https://www.multiboard.io/) is a free, modular 3D‑printed storage system and parts library for makers and workshops — a LEGO‑like wall of tiles, mounts, and accessories (hundreds of parts) that’s strong, system‑agnostic, and community driven. It provides ready-to-print .STL/.STEP files, multiple mounting options, and a growing catalog of accessories to organize tools and workspace efficiently.

## 🛠️ How to

### Dependencies

- [OpenSCAD](https://openscad.org/)

### Download Tile Multihole Component

1. Download the `Tile Multihole Component` from [link](https://thangs.com/designer/Multiboard/3d-model/Tile%20Components%20-%20STL%20Multiboard%20Remixing%20Files-994663).
2. Add file to `src/models` folder.

### Generate STL files

1. Using OpenSCAD, render and export the STL files for the [Grid](./src/GridGenerator.scad) and [Corner Connectors](./src/CornerGenerator.scad).
2. Print the [Marinesnap with clip](./src/3d-models/Marinesnap%20with%20clip.3mf) to connect Grid corners to Tile Join Holes.
