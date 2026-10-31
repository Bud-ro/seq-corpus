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
- `candidates.json` lists public repos (on GitHub unless a `host` says otherwise) that could not be vendored due to missing licenses,
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

This repo is about 370 MB in the working tree. To take only a few sources, you can
use the sparse checkout feature:

```
git clone --filter=blob:none --sparse https://github.com/Bud-ro/seq-corpus
cd seq-corpus
git sparse-checkout set sources/425J__LayoutLoader
```

## Checks

Every file a `manifest.json` lists carries the id of the git blob that holds it, so the
repository checks itself against its own tree: `dart tool/check.dart` reads `git ls-tree`
and the manifests, and reports a listed file the tree lacks or holds as another blob, a
tracked file no manifest lists, and any field, count or ordering that is off in
`sources.json`, `corpus.json`, `candidates.json`, `rosetta/manifest.json` or a source's
`manifest.json`. It needs git and a Dart SDK, reads no file contents, and fetches nothing;
the `check` workflow runs it on every push from a blobless clone.

## Index

The `index` workflow builds a SQLite index of the whole repository on every push to
`master` and publishes it as the release `index-<commit>` (`index.sqlite.xz`): one row
per VI, control, snippet, library, class and project file, with the file's name and
saving version, the `primResID`s and block-diagram and front-panel class codes its heaps
hold (each with how many objects carry it and the name labwright's catalogues give it),
its sub-VI and owning-library names, or a library file's members. `tool/index`, a small Dart tool that depends on labwright's parser at the commit its
`pubspec.yaml` pins, builds it; nothing derived from the files is committed here.

`dart run tool/vendor_corpus.dart` in labwright adds a source, writes its manifest with
the blob ids, and commits it with upstream `.gitattributes` rules switched off; its
`--repair` mode restores files an upstream `.gitignore` or `.gitattributes` kept out of a
commit or changed on the way in.
