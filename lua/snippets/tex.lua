local luaSnip = require("snippets.definitions")
local ls = require("luasnip")
local f = ls.function_node

local function fn(
  args,     -- text from i(2) in this example i.e. { { "456" } }
  parent,   -- parent snippet or parent node
  user_args -- user_args from opts.user_args 
)
   return args[1][1]
end

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "environment",
      name = "Create an Environment",
      dscr = "Create an Environment"
    },
    {
      luaSnip.text({"\\begin{"}), luaSnip.insert(1), luaSnip.text({"}", ""}),
      luaSnip.insert(0),
      luaSnip.text({"", "\\end{"}), f(fn, {1}), luaSnip.text({"}"})
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "multicolumn",
      name = "multicolumn",
      dscr = "double columns"
    },
    {
        luaSnip.text({"\\begin{multicols}{2}", ""}),
       luaSnip.insert(0),
      luaSnip.text({"", "\\end{multicols}"})
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "columns",
      name = "Columns",
      dscr = "double columns"
    },
    {
        luaSnip.text({"\\begin{columns}[t, onlytextwidth]", ""}),  luaSnip.text({"\\column{0.5\\textwidth}", ""}),
       luaSnip.insert(0),
      luaSnip.text({"", "\\column{0.5\\textwidth}"}),
      luaSnip.text({"", "\\end{columns}"})
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "example",
      name = "example",
      dscr = "example creation"
    },
    {
      luaSnip.text({"\\begin{example}", ""}),
      luaSnip.insert(0),
      luaSnip.text({"", "\\end{example}"})
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "definition",
      name = "definition",
      dscr = "definition creation"
    },
    {
      luaSnip.text({"\\begin{definition}", ""}),
      luaSnip.insert(0),
      luaSnip.text({"", "\\end{definition}"})
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "itemize",
      name = "itemize",
      dscr = "itemize creation"
    },
    {
      luaSnip.text({"\\begin{itemize}", ""}),
      luaSnip.text({"\t\\item "}), luaSnip.insert(0),
      luaSnip.text({"", "\\end{itemize}"})
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "description",
      name = "description",
      dscr = "description creation"
    },
    {
      luaSnip.text({"\\begin{description}", ""}),
      luaSnip.text({"\t\\item "}), luaSnip.insert(0),
      luaSnip.text({"", "\\end{description}"})
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "tabular",
      name = "tabularx",
      dscr = "tabularx creation"
    },
    {
        luaSnip.text({"\\begin{table}[h]", ""}),
        luaSnip.text({"\\begin{tabularx}{\\linewidth}{"}), luaSnip.insert(1, "| c | c | X |"), luaSnip.text({"}", ""}),
      luaSnip.text({"\t"}), luaSnip.insert(0, "a & b & c\\\\"), luaSnip.text({"", ""}),
      luaSnip.text({"\\end{tabularx}", ""}),
        luaSnip.text({"\\caption{"}), luaSnip.insert(2), luaSnip.text({"}", ""}),
        luaSnip.text({"\\end{table}"}),
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "frame",
      name = "frame",
      dscr = "frame creation"
    },
    {
      luaSnip.text({"\\begin{frame}", ""}),
      luaSnip.text({"\t\\frametitle{"}), luaSnip.insert(0), luaSnip.text({"}", ""}),
      luaSnip.text({"", "\\end{frame}"})
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "def",
      name = "Define",
      dscr = "Define a Variable"
    },
    {
      luaSnip.text({"\\def \\"}), luaSnip.insert(1, "variableName"), luaSnip.text({"{"}), luaSnip.insert(0), luaSnip.text({"}"})
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "ft",
      name = "frametitle",
      dscr = "frametitle creation"
    },
    {
      luaSnip.text({"\\frametitle{"}), luaSnip.insert(0), luaSnip.text({"}"})
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "fst",
      name = "framesubtitle",
      dscr = "framesubtitle creation"
    },
    {
      luaSnip.text({"\\framesubtitle{"}), luaSnip.insert(0), luaSnip.text({"}"})
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "enumerate",
      name = "enumerate",
      dscr = "enumerate creation"
    },
    {
      luaSnip.text({"\\begin{enumerate}", ""}),
      luaSnip.text({"\t\\item "}), luaSnip.insert(0),
      luaSnip.text({"", "\\end{enumerate}"})
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "item",
      name = "item",
      dscr = "item creation"
    },
    {
      luaSnip.text({"\\item"}), luaSnip.insert(0)
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "rightarrow",
      name = "rightarrow",
      dscr = "rightarrow creation"
    },
    {
      luaSnip.text({"$\\rightarrow$ "}), luaSnip.insert(0)
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "acrfull",
      name = "acronym_full",
      dscr = "Full acronym"
    },
    {
      luaSnip.text({"\\acrfull{"}), luaSnip.insert(0), luaSnip.text({"}"})
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "acrshort",
      name = "acronym_short",
      dscr = "Short acronym"
    },
    {
      luaSnip.text({"\\acrshort{"}), luaSnip.insert(0), luaSnip.text({"}"})
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "gls",
      name = "Glossaries",
      dscr = "Glossary entry"
    },
    {
      luaSnip.text({"\\Gls{"}), luaSnip.insert(0), luaSnip.text({"}"})
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "ref",
      name = "reference",
      dscr = "Create a reference"
    },
    {
      luaSnip.text({"\\ref{"}), luaSnip.insert(0), luaSnip.text({"}"})
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "label",
      name = "label",
      dscr = "Create a label"
    },
    {
      luaSnip.text({"\\label{"}), luaSnip.insert(0), luaSnip.text({"}"})
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "citep",
      name = "Cite",
      dscr = "Create a cite"
    },
    {
      luaSnip.text({"\\citep{"}), luaSnip.insert(0), luaSnip.text({"}"})
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "color",
      name = "Textcolor",
      dscr = "Create a textcolor"
    },
    {
      luaSnip.text({ "\\textcolor{" }), luaSnip.insert(1, "red"), luaSnip.text({ "}{" }), luaSnip.insert(0), luaSnip.text({"}"})
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "mcolor",
      name = "math color",
      dscr = "Create a math color"
    },
    {
      luaSnip.text({ "\\mathbin{\\textcolor{" }), luaSnip.insert(1, "red"), luaSnip.text({ "}{" }), luaSnip.insert(0), luaSnip.text({ "}}" })
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "vspace",
      name = "vspace",
      dscr = "Create a vspace"
    },
    {
        luaSnip.text({"\\vspace*{20pt}"}), luaSnip.insert(0)
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "hspace",
      name = "hspace",
      dscr = "Create a hspace"
    },
    {
        luaSnip.text({"\\hspace*{20pt} "}), luaSnip.insert(0)
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "lstlisting",
      name = "listing",
      dscr = "Create a listing"
    },
    {
      luaSnip.text({"\\lstinputlisting[language="}), luaSnip.insert(1, "Java"), luaSnip.text({", caption={"}), luaSnip.insert(2), luaSnip.text({"}]{./code/" }), luaSnip.insert(0), luaSnip.text({"}"})
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "bf",
      name = "Bold",
      dscr = "make bold"
    },
    {
        luaSnip.text({ "\\textbf{" }), luaSnip.insert(0), luaSnip.text({ "}" })
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "bs",
      name = "Boldsymbol",
      dscr = "make boldsymbol"
    },
    {
        luaSnip.text({ "\\boldsymbol{" }), luaSnip.insert(0), luaSnip.text({ "}" })
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "newline",
      name = "newline",
      dscr = "make newline"
    },
    {
        luaSnip.text({ "\\newline" , ""}), luaSnip.insert(0)
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "mbb",
      name = "Mathbb",
      dscr = "make mathbb"
    },
    {
        luaSnip.text({ "\\mathbb{" }), luaSnip.insert(0), luaSnip.text({ "}" })
    })
  }
})
luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "it",
      name = "Italic",
      dscr = "make italic"
    },
    {
        luaSnip.text({ "\\textit{" }), luaSnip.insert(0), luaSnip.text({ "}" })
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "cgraphics",
      name = "Center Graphics",
      dscr = "Center Graphics"
    },
    {
      luaSnip.text({"\\begin{figure}", ""}),
      luaSnip.text({"\\begin{center}", ""}),
        luaSnip.text({"\t\\includegraphics[width=\\linewidth]{./img/"}), luaSnip.insert(1), luaSnip.text({"}", ""}),
        luaSnip.text({"\t\\caption{"}), luaSnip.insert(2), luaSnip.text({"}", ""}),
      luaSnip.text({"\\end{center}", ""}),
      luaSnip.text({"\\end{figure}", ""}),
      luaSnip.insert(0)
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "mindmap",
      name = "Tikz Mindmap",
      dscr = "Create a Tikz Mindmap"
    },
    {

      luaSnip.text({"\\usepackage{float,lscape}", ""}),
      luaSnip.text({"\\usepackage{tikz}", ""}),
      luaSnip.text({"\\usetikzlibrary{mindmap}", ""}),
        luaSnip.text({"\\begin{landscape}", ""}),
        luaSnip.text({"\\begin{tikzpicture}[mindmap, grow cyclic, every node/.style=concept, concept color=white!40, 	level 1/.append style={level distance=5cm,sibling angle=90},	level 2/.append style={level distance=3cm,sibling angle=45}]", ""}),
        luaSnip.text({"\\node [root concept] {"}), luaSnip.insert(0, "Main Topic"), luaSnip.text({"", ""}),
      luaSnip.text({";", ""}),
      luaSnip.text({"\\end{tikzpicture}", ""}),
      luaSnip.text({"\\end{landscape}", ""}),
    })
  }
})

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "child",
      name = "Create a Mindmap Child",
      dscr = "Create a Mindmap Child"
    },
    {
        luaSnip.text({"child[concept color=orange!40]{ node {"}), luaSnip.insert(0), luaSnip.text({"}"})
    })
  }
})
