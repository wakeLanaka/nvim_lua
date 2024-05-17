local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

local function fn(
  args,     -- text from i(2) in this example i.e. { { "456" } }
  parent,   -- parent snippet or parent node
  user_args -- user_args from opts.user_args 
)
   return args[1][1]
end

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "documentclass",
      name = "Create an article",
      dscr = "Create an article"
    },
    {
      t({"\\documentclass{article}", ""}), i(0),
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "environment",
      name = "Create an Environment",
      dscr = "Create an Environment"
    },
    {
      t({"\\begin{"}), i(1), t({"}", ""}),
      i(0),
      t({"", "\\end{"}), f(fn, {1}), t({"}"})
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "multicolumn",
      name = "multicolumn",
      dscr = "double columns"
    },
    {
        t({"\\begin{multicols}{2}", ""}),
       i(0),
      t({"", "\\end{multicols}"})
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "columns",
      name = "Columns",
      dscr = "double columns"
    },
    {
        t({"\\begin{columns}[t, onlytextwidth]", ""}),  t({"\\column{0.5\\textwidth}", ""}),
       i(0),
      t({"", "\\column{0.5\\textwidth}"}),
      t({"", "\\end{columns}"})
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "example",
      name = "example",
      dscr = "example creation"
    },
    {
      t({"\\begin{example}", ""}),
      i(0),
      t({"", "\\end{example}"})
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "definition",
      name = "definition",
      dscr = "definition creation"
    },
    {
      t({"\\begin{definition}", ""}),
      i(0),
      t({"", "\\end{definition}"})
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "itemize",
      name = "itemize",
      dscr = "itemize creation"
    },
    {
      t({"\\begin{itemize}", ""}),
      t({"\t\\item "}), i(0),
      t({"", "\\end{itemize}"})
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "description",
      name = "description",
      dscr = "description creation"
    },
    {
      t({"\\begin{description}", ""}),
      t({"\t\\item "}), i(0),
      t({"", "\\end{description}"})
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "tabular",
      name = "tabularx",
      dscr = "tabularx creation"
    },
    {
        t({"\\begin{table}[h]", ""}),
        t({"\\begin{tabularx}{\\linewidth}{"}), i(1, "| c | c | X |"), t({"}", ""}),
      t({"\t"}), i(0, "a & b & c\\\\"), t({"", ""}),
      t({"\\end{tabularx}", ""}),
        t({"\\caption{"}), i(2), t({"}", ""}),
        t({"\\end{table}"}),
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "frame",
      name = "frame",
      dscr = "frame creation"
    },
    {
      t({"\\begin{frame}", ""}),
      t({"\t\\frametitle{"}), i(0), t({"}", ""}),
      t({"", "\\end{frame}"})
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "def",
      name = "Define",
      dscr = "Define a Variable"
    },
    {
      t({"\\def \\"}), i(1, "variableName"), t({"{"}), i(0), t({"}"})
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "ft",
      name = "frametitle",
      dscr = "frametitle creation"
    },
    {
      t({"\\frametitle{"}), i(0), t({"}"})
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "fst",
      name = "framesubtitle",
      dscr = "framesubtitle creation"
    },
    {
      t({"\\framesubtitle{"}), i(0), t({"}"})
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "enumerate",
      name = "enumerate",
      dscr = "enumerate creation"
    },
    {
      t({"\\begin{enumerate}", ""}),
      t({"\t\\item "}), i(0),
      t({"", "\\end{enumerate}"})
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "item",
      name = "item",
      dscr = "item creation"
    },
    {
      t({"\\item"}), i(0)
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "rightarrow",
      name = "rightarrow",
      dscr = "rightarrow creation"
    },
    {
      t({"$\\rightarrow$ "}), i(0)
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "acrfull",
      name = "acronym full",
      dscr = "Full acronym"
    },
    {
      t({"\\acrfull{"}), i(0), t({"}"})
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "acrlong",
      name = "acronym long",
      dscr = "Long acronym"
    },
    {
      t({"\\acrlong{"}), i(0), t({"}"})
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "acrshort",
      name = "acronym short",
      dscr = "Short acronym"
    },
    {
      t({"\\acrshort{"}), i(0), t({"}"})
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "gls",
      name = "Glossaries",
      dscr = "Glossary entry"
    },
    {
      t({"\\Gls{"}), i(0), t({"}"})
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "ref",
      name = "reference",
      dscr = "Create a reference"
    },
    {
      t({"\\ref{"}), i(0), t({"}"})
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "label",
      name = "label",
      dscr = "Create a label"
    },
    {
      t({"\\label{"}), i(0), t({"}"})
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "citep",
      name = "Cite",
      dscr = "Create a cite"
    },
    {
      t({"\\citep{"}), i(0), t({"}"})
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "color",
      name = "Textcolor",
      dscr = "Create a textcolor"
    },
    {
      t({ "\\textcolor{" }), i(1, "red"), t({ "}{" }), i(0), t({"}"})
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "mcolor",
      name = "math color",
      dscr = "Create a math color"
    },
    {
      t({ "\\mathbin{\\textcolor{" }), i(1, "red"), t({ "}{" }), i(0), t({ "}}" })
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "vspace",
      name = "vspace",
      dscr = "Create a vspace"
    },
    {
        t({"\\vspace*{20pt}"}), i(0)
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "hspace",
      name = "hspace",
      dscr = "Create a hspace"
    },
    {
        t({"\\hspace*{20pt} "}), i(0)
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "lstlisting",
      name = "listing",
      dscr = "Create a listing"
    },
    {
      t({"\\lstinputlisting[language="}), i(1, "Java"), t({", caption={"}), i(2), t({"}]{./code/" }), i(0), t({"}"})
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "bf",
      name = "Bold",
      dscr = "make bold"
    },
    {
        t({ "\\textbf{" }), i(0), t({ "}" })
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "bs",
      name = "Boldsymbol",
      dscr = "make boldsymbol"
    },
    {
        t({ "\\boldsymbol{" }), i(0), t({ "}" })
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "newline",
      name = "newline",
      dscr = "make newline"
    },
    {
        t({ "\\newline" , ""}), i(0)
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "mbb",
      name = "Mathbb",
      dscr = "make mathbb"
    },
    {
        t({ "\\mathbb{" }), i(0), t({ "}" })
    })
  }
})
ls.add_snippets(nil, {
  tex = {
    s({
      trig = "it",
      name = "Italic",
      dscr = "make italic"
    },
    {
        t({ "\\textit{" }), i(0), t({ "}" })
    })
  }
})
ls.add_snippets(nil, {
  tex = {
    s({
      trig = "itV",
      name = "Italic(Visual)",
      dscr = "make italic"
    },
    {
      f(function(args, snip)
        local res, env = {}, snip.env
          for _, ele in ipairs(env.LS_SELECT_RAW) do table.insert(res, "\\textit{" .. ele .. "}") end
        return res
      end)
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "cgraphics",
      name = "Center Graphics",
      dscr = "Center Graphics"
    },
    {
      t({"\\begin{figure}", ""}),
      t({"\\begin{center}", ""}),
        t({"\t\\includegraphics[width=\\linewidth]{./img/"}), i(1), t({"}", ""}),
        t({"\t\\caption{"}), i(2), t({"}", ""}),
      t({"\\end{center}", ""}),
      t({"\\end{figure}", ""}),
      i(0)
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "mindmap",
      name = "Tikz Mindmap",
      dscr = "Create a Tikz Mindmap"
    },
    {
      t({"\\thispagestyle{empty}", ""}),
      t({"\\usepackage{float,lscape}", ""}),
      t({"\\usepackage{tikz}", ""}),
      t({"\\usetikzlibrary{mindmap, calc}", ""}),
      t({"\\begin{document}", ""}),
        t({"\\begin{landscape}", ""}),
        t({"\\resizebox{0.3\\textwidth}{!}{", "\\begin{tikzpicture}[mindmap, grow cyclic, every node/.style=concept,", "root concept/.append style={concept color=black, fill=white, font=\\bfseries\\LARGE},", "level 1/.append style={level distance=5cm, sibling angle=90},", "level 2/.append style={level distance=3cm, sibling angle=45},", "level 3/.append style={level distance=2cm, sibling angle=40},", "every annotation/.append style={concept color=teal!40, text width={}, font=\\tiny}]", ""}),
        t({"\\node [root concept] (root) {"}), i(0, "Main Topic"), t({"}", ""}),
      t({";", ""}),
      t({"\\end{tikzpicture}}", ""}),
      t({"\\end{landscape}", ""}),
      t({"\\end{document}", ""}),
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "child",
      name = "Create a Mindmap Child",
      dscr = "Create a Mindmap Child"
    },
    {
        t({"child[concept color=purple!20]{ node {"}), i(0), t({"}}"})
    })
  }
})

ls.add_snippets(nil, {
  tex = {
    s({
      trig = "annotation",
      name = "Create a Mindmap annotation",
      dscr = "Create a Mindmap annotation"
    },
    {
        t({"\\node[annotation] at ($(root.south east)$) {"}), i(0), t({"};"})
    })
  }
})
