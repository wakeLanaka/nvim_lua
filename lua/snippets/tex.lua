local luaSnip = require("snippets.definitions")

luaSnip.add_snippets(nil, {
  tex = {
    luaSnip.snip({
      trig = "block",
      name = "block",
      dscr = "block creation"
    },
    {
        luaSnip.text({"\\begin{block}{"}), luaSnip.insert(1), luaSnip.text({"}", ""}),
       luaSnip.insert(0),
      luaSnip.text({"", "\\end{block}"})
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
        luaSnip.text({"\\begin{table}", ""}),
        luaSnip.text({"\\begin{tabularx}{\\textwidth}{"}), luaSnip.insert(1), luaSnip.text({"}", ""}),
      luaSnip.text({"\t"}), luaSnip.insert(0), luaSnip.text({"", ""}),
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
      luaSnip.text({"\t"}), luaSnip.insert(0),
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
      luaSnip.text({"\\def \\"}), luaSnip.insert(1, "variableName"), luaSnip.text({"{"}), luaSnip.insert(0)
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
      luaSnip.text({"\\frametitle{"}), luaSnip.insert(0)
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
      luaSnip.text({"\\framesubtitle{"}), luaSnip.insert(0)
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
      luaSnip.text({"\\acrfull{"}), luaSnip.insert(0)
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
      luaSnip.text({"\\acrshort{"}), luaSnip.insert(0)
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
      luaSnip.text({"\\Gls{"}), luaSnip.insert(0)
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
      luaSnip.text({"\\ref{"}), luaSnip.insert(0)
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
      luaSnip.text({"\\label{"}), luaSnip.insert(0)
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
      luaSnip.text({"\\citep{"}), luaSnip.insert(1), luaSnip.text({"}"}), luaSnip.insert(0)
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
      luaSnip.text({ "\\textcolor{" }), luaSnip.insert(1), luaSnip.text({ "}{" }), luaSnip.insert(2),
      luaSnip.text("} "), luaSnip.insert(0)
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
        luaSnip.text({"\\lstinputlisting[language="}), luaSnip.insert(1), luaSnip.text({ ", caption={" }), luaSnip.insert(2), luaSnip.text({"}]{code/"}), luaSnip.insert(0)
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
        luaSnip.text({ "\\textbf{" }), luaSnip.insert(0)
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
        luaSnip.text({ "\\textit{" }), luaSnip.insert(0)
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
