# seq-corpus

TestStand sequence files and the LabVIEW code they call, vendored from public repositories, with their licenses,
for measuring the [labwright](https://github.com/Bud-ro/labwright) TestStand reader.

Each upstream repository lives under `sources/<owner>__<repo>/` with its own
tree layout preserved, so relative links between sequences and the code modules they call resolve
as they did upstream. Next to the tree:

- `LICENSE.md`, the upstream license file copied verbatim;
- `manifest.json`, the repository URL, the vendored commit, the license's SPDX
  identifier, the fetch date, every file kept (path, size, sha256, and whether it
  was kept for its extension, as a reference from another kept file, or as part
  of the tree), files left out for size, and references that point outside the
  repository (`<vilib>` paths and absolute paths).

`sources.json` lists every vendored source; `candidates.json` lists public
repositories that were surveyed but not vendored, with the reason (no license
file, a non-commercial or non-redistributable license, or NI product content),
so they can be revisited with permission. `corpus.json` names the file
extensions the corpus collects; everything else in a tree is kept as a
dependency candidate except installers, archives, office documents and video.

Files are redistributed under their upstream licenses only; this repository
adds no license of its own. Only sources with an explicit license file are
vendored. Mirrors of NI-shipped product content (`vi.lib`, `instr.lib`) and
sources under NI's sample-code terms are not.

## Using it

The repository is plain git. To check out a few sources without the rest:

```
git clone --filter=blob:none --sparse https://github.com/Bud-ro/seq-corpus
cd seq-corpus
git sparse-checkout set sources/425J__LayoutLoader
```

labwright pins a commit of this repository in `corpus/repos.json` and fetches
the sources it tests against with `dart run tool/fetch_corpus.dart`; new sources
are added with `dart run tool/vendor_corpus.dart <this directory> owner/repo@sha`.

`rosetta/` holds pairs of the same sequence saved in TestStand's binary and XML
encodings, each pinned by sha256 in `rosetta/manifest.json` to the repository,
commit and path it came from.
