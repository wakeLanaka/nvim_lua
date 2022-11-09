local patterns = require"nrpattern.default"

patterns[{"true", "false"}] = {priority = 5}
patterns[{"True", "False"}] = {priority = 5}

require"nrpattern".setup(patterns)
