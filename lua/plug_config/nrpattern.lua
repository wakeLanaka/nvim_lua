local patterns = require"nrpattern.default"

patterns[{"true", "false"}] = {priority = 4}

require"nrpattern".setup(patterns)
