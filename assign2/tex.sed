s/\\/\\verb+\\+/g;
s/%/\\%/g;
s/\^/\\^/g;
s/--/-\\hspace{.01cm}-/g;
1s/^/\\documentstyle[11pt]{article}\n\\begin{document}\n\\begin{center} {\\bf\n/;
$s/$/\n\\end{description}\n\\end{document}/;
1s/$/\n} \\end{center}/;
2s/^/\\begin{description}/;
s/^\([A-Z]\{4,\}\)/\\item[\1/;
s/\([A-Z]\{4,\}\)$/\1] \\hfill \\\\/;
s/^\( *[+-].*\)/\1 \\\\/
