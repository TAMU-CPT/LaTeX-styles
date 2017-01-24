#!/usr/bin/env python
import sys
import csv
from process_latex import sanitize_latex

template = """\\newacronym{%s}{%s}{%s}
"""

data = []
with open(sys.argv[1], 'r') as handle:
    reader = csv.reader(handle, delimiter='\t')
    # Skip the header?
    next(reader, None)

    for row in reader:
        name = row[0]
        defn = sanitize_latex(row[1])
        if defn.strip() == '??':
            defn = 'TODO: Dr. Young'
        data.append((name, name, defn))

for entry in sorted(data, key=lambda x: x[0]):
    sys.stdout.write(template % entry)
