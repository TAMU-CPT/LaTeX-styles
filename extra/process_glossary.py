#!/usr/bin/env python
import sys
import csv
from process_latex import sanitize_latex


template = """\\newglossaryentry{%s}{
	name={%s},
	description={%s}
}
"""

data = []
with open(sys.argv[1], 'r') as handle:
    reader = csv.reader(handle, delimiter='\t')
    # Skip the header?
    next(reader, None)

    for row in reader:
        name = row[0]
        defn = sanitize_latex(row[1])
        texname = row[2]
        if not len(texname.strip()):
            texname = name

        data.append((name, texname, defn))

for entry in sorted(data, key=lambda x: x[0]):
    sys.stdout.write(template % entry)
