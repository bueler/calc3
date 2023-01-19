# calc3/assets/2MQ/S23/

Three minute questions (2MQ) are a way to start class and get attendance.

To build a 2MQ, create an input-able LaTeXed question in a file like `19jan.tex` and then build `template.pdf` from the command line:

    $ DM="19 Jan" FILE=19jan.tex pdflatex template.tex

Through use of LaTeX tools the `DM` (date and month) and `FILE` environment variables will be used when compiling [`template.tex`](template.tex).  In particular, `FILE` will be inputed.

Then print `template.pdf`, make copies, and use the paper cutter to cut into quarters.
