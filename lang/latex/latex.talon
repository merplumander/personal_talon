# general latex
{user.latex-prefix} bold:
    "\\textbf{}"
    key(left)
{user.latex-prefix} begin: 
    "\\begin{}"
    key(left)
{user.latex-prefix} end:
    "\\end{}"
    key(left)
{user.latex-prefix} fraction:
    "\\frac{{}}{{}}"
    key(left left left)
{user.latex-prefix} sum:
    "\\sum_{}"
    key(left)
{user.latex-prefix} integral:
    "\\int_{}"
    key(left)
{user.latex-prefix} section: 
    "\\section{}"
    key(left)
{user.latex-prefix} skip:
    "\\bigskip\n"
{user.latex-prefix} itemize:
    "\\begin{{itemize}}"
    key(enter:2)
    "\\end{{itemize}}"
    key(up)
{user.latex-prefix} enumerate:
    "\\begin{{enumerate}}"
    key(enter:2)
    "\\end{{enumerate}}"
    key(up)
{user.latex-prefix} item: "\\item "
{user.latex-prefix} frame:
     insert("\\begin{{frame}}{{}}\n\n\\end{{frame}}\n")
     key("up left left left")


# small Greek letters
{user.small-greek-prefix} air: insert("\\alpha")
{user.small-greek-prefix} bat: insert("\\beta")
{user.small-greek-prefix} drum: insert("\\delta")
{user.small-greek-prefix} each: insert("\\epsilon")
{user.small-greek-prefix} look: insert("\\lambda")
{user.small-greek-prefix} made: insert("\\mu")
{user.small-greek-prefix} sun: insert("\\sigma")

prime: "'"