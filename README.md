# seq-corpus

A collection of `.seq`, `.ini`, `.tsw` and `.tpj` files saved by the
TestStand™ software, with the code modules they call, vendored from public
repositories together with their licenses.

Each upstream repository lives under `sources/<owner>__<repo>/` with its own
tree layout preserved, so relative links between sequences and the code
modules they call resolve as they did upstream.

This repo provides a few additional convenience files:
- `sources/<owner>__<repo>/manifest.json` provides metadata for the original source, including:
  - Repository URL
  - Commit hash
  - SPDX identifier for the license
  - Fetch date
  - The list of files (path, size, sha256, and whether it was kept for its extension,
    as a reference from another kept file, or as part of the tree)
  - Files left out for size, and references that point outside the repository
    (`<vilib>` paths and absolute paths)
- `sources/<owner>__<repo>/vi-package-manifest.json` allows for functional reproducibility of the VI Package Manager
  related files in the repo. This includes packages (`.vip`) and configurations (`.vipc`).
  For each one it records the raw-download URL at the vendored commit, size and sha256,
  every zip member with its size, CRC-32 and sha256, and the text of the `spec` and
  `config.xml` members. The packages are zip files of LabVIEW™ files that are already in
  the repo, so they are not stored themselves.
- `sources.json` lists every vendored source
- `candidates.json` lists public repos that could not be vendored due to missing licenses,
  unsuitable licenses, potential NI product content, etc.
- `corpus.json` names the file extensions the corpus collects.
- `sources/<owner>__<repo>/index.json` lists what each LabVIEW file holds; see [Index](#index).
- `rosetta/` holds pairs of the same sequence saved in both the binary and the XML
  encoding, each pinned by sha256 in `rosetta/manifest.json` to the repository,
  commit and path it came from.

This repo does NOT include installers, archives, VI Package Manager packages, FPGA bitfiles,
build and IDE caches, office documents, video, 3D models and unreferenced files over 1 MB,
except where another kept file refers to such a file by path (a DLL named by a Call Library
Function node, a help document named by a VI), in which case it is kept as that file's
dependency.

## Legal

Files are redistributed under their upstream licenses only. See `manifest.json`
for the original licenses.

The original files in this repo are licensed under the MIT license.

TestStand™ and LabVIEW™ are trademarks of National Instruments. This collection
is not affiliated with, endorsed by, or sponsored by National Instruments; the
names are used only to identify the file formats the files are saved in. See
NI's [trademark and logo guidelines](https://www.ni.com/en/about-ni/legal/trademarks-and-logo-guidelines.html).

## Checking out a Few Sources

This repo is about 300 MB in the working tree. To take only a few sources, you can
use the sparse checkout feature:

```
git clone --filter=blob:none --sparse https://github.com/Bud-ro/seq-corpus
cd seq-corpus
git sparse-checkout set sources/425J__LayoutLoader
```

## Index

Every source carries an `index.json` beside its `manifest.json`: one record per VI,
control, snippet, library, class and project file under it, with the file's name and
saving version, the ids its heaps hold (`primResID`s, block-diagram and front-panel
class codes, each with how many objects carry it), its sub-VI and owning-library
names, or a library file's members. The records store the raw ids, so the index does
not change when a parser learns a name; labwright resolves them through its
catalogues when it searches the corpus.

The indexes and the rest of the metadata are checked on every push by the `check`
workflow, which runs labwright's `tool/check_corpus.dart` over the sources the push
changed (or, run by hand with `all`, over every source):

```
tool/labwright.sh check_corpus          # check every metadata file against the tree
tool/labwright.sh index_corpus          # rebuild the index.json files of the sources checked out
tool/labwright.sh index_corpus --check  # report missing or stale index files
```

`tool/labwright.sh` clones labwright into `.labwright` (ignored) at the `develop`
branch, or uses the checkout `LABWRIGHT_DIR` names. `dart run tool/vendor_corpus.dart`
in labwright writes the index when it vendors a source, and its `--repair` mode
restores files that an upstream `.gitignore` or `.gitattributes` kept out of a commit
or changed on the way in.
