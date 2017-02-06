#!/usr/bin/python
#vim: set fileencoding=utf-8 :


def sanitize_latex(data):
    # http://stackoverflow.com/questions/2627135/how-do-i-sanitize-latex-input#2627303
    replacements = [
        # ('\\', '\\textbackslash{}'),
        # ('{', '\\{'),
        # ('}', '\\}'),
        ('$', '\\$'),
        ('&', '\\&'),
        ('#', '\\#'),
        # ('_', '\\_'),
        ('%', '\\%'),
        ('<', '\\textless{}'),
        ('>', '\\textgreater{}'),
        ('|', '\\textbar{}'),
        ('"', '\\textquotedbl{}'),
        ('^', '\\textasciicircum{}'), # (requires the textcomp package)
        ('~', '\\textasciitilde{}'),
        ('°', '$^{\\circ}$'),
        # These are .. mostly correctly used
        # "'": '\\textquotesingle{}',
        # ('`', '\\textasciigrave{}'),
    ]
    for (find, replace) in replacements:
        data = data.replace(find, replace)

    return data
