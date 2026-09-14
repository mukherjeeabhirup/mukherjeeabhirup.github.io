# Updating the CV

The source of truth for the linked CV is [`assets/latex/abhirup_mukherjee_cv.tex`](../assets/latex/abhirup_mukherjee_cv.tex).
Its compiled PDF is [`assets/pdf/abhirup_mukherjee_cv.pdf`](../assets/pdf/abhirup_mukherjee_cv.pdf).

From the repository root, run:

```bash
./bin/build_cv.sh
```

The script uses Tectonic when available, otherwise two passes of `pdflatex`. To select a Tectonic executable outside `PATH`:

```bash
TECTONIC=/path/to/tectonic ./bin/build_cv.sh
```

A working compiler and the LaTeX packages used by the source are required. Tectonic may download missing packages into its cache.
Compiler outputs are created in a temporary directory and cleaned up on exit. The linked PDF is replaced only after a successful build.
Review the PDF visually, then include both the edited source and rebuilt PDF when publishing.

The layout follows the supplied Alexi Gladstone CV reference: 11pt body text, compact headings, 0.4-inch margins, a single contact row,
and aligned skills columns. Paragraphs use ragged-right alignment to avoid stretched word spacing. Let content paginate naturally;
do not insert manual page breaks to group sections. The current content fits three pages.

The CV navigation tab and social icon link directly to the PDF. The old `/cv/` URL redirects to it and retains a download link.
`_data/cv.yml` and the inherited RenderCV workflow no longer drive this linked CV; changing them does not update this PDF.
