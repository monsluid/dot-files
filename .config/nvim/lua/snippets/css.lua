local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local css_snippets = {
  s("mq", {
    t("@media (min-width: "),
    i(1, "768px"),
    t({ ") {", "\t" }),
    i(0),
    t({ "", "}" }),
  }),
}

ls.add_snippets("css", css_snippets)
