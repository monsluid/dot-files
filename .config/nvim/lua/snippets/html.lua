local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local html_snippets = {
  s("im", {
    t({
      "<picture>",
      "\t<source srcset=\"",
    }),
    i(1, "imagen"),
    t({
      ".avif\" type=\"image/avif\">",
      "\t<source srcset=\"",
    }),
    i(2, "imagen"),
    t({
      ".webp\" type=\"image/webp\">",
      "\t<img loading=\"lazy\" src=\"",
    }),
    i(3, "imagen"),
    t({
      ".jpg\" width=\"500\" height=\"300\" alt=\"",
    }),
    i(4, "descripcion"),
    t({
      "\">",
      "</picture>",
    }),
  }),
}

ls.add_snippets("html", html_snippets)

