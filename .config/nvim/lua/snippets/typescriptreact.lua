local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local jsx_tsx_snippets = {

  -- Contenedor base
  s("div", {
    t({ "<div className=\"" }), i(1), t({ "\">", "  " }),
    i(0),
    t({ "", "</div>" }),
  }),

  s("span", {
    t({ "<span className=\"" }), i(1), t({ "\">" }),
    i(0),
    t({ "</span>" }),
  }),

  -- Encabezados
  s("h1", {
    t({ "<h1 className=\"" }), i(1), t({ "\">" }),
    i(0),
    t({ "</h1>" }),
  }),

  s("h2", {
    t({ "<h2 className=\"" }), i(1), t({ "\">" }),
    i(0),
    t({ "</h2>" }),
  }),

  -- Texto
  s("p", {
    t({ "<p className=\"" }), i(1), t({ "\">" }),
    i(0),
    t({ "</p>" }),
  }),

  -- Link con props dinámicos
  s("a", {
    t({ "<a href={" }), i(1, "url"), t({ "} className=\"" }),
    i(2),
    t({ "\">" }),
    i(0),
    t({ "</a>" }),
  }),

  -- Imagen React-friendly
  s("img", {
    t({ "<img src={" }), i(1, "src"), t({ "} alt=\"" }),
    i(2, "alt"),
    t({ "\" />" }),
  }),

  -- Input controlado
  s("input", {
    t({ "<input", "  type=\"" }), i(1, "text"), t({ "\"", "  value={" }),
    i(2, "value"),
    t({ "}", "  onChange={" }),
    i(3, "handleChange"),
    t({ "}", "/>" }),
  }),

  -- Botón con evento
  s("btn", {
    t({ "<button onClick={" }), i(1, "handleClick"), t({ "} className=\"" }),
    i(2),
    t({ "\">" }),
    i(0, "Click"),
    t({ "</button>" }),
  }),

  -- Lista dinámica
  s("map", {
    t({ "{", "" }),
    t({ "  " }), i(1, "items"), t({ ".map((item) => (", "" }),
    t({ "    <div key={item.id}>" }),
    i(0, "{item.name}"),
    t({ "</div>", "  ))", "}" }),
  }),

  -- Condicional
  s("if", {
    t({ "{", "" }),
    t({ "  " }), i(1, "condition"), t({ " && (", "" }),
    t({ "    " }), i(0),
    t({ "", "  )", "}" }),
  }),

  -- Fragment
  s("frag", {
    t({ "<>", "" }),
    i(0),
    t({ "", "</>" }),
  }),

  -- Componente funcional (🔥 clave)
  s("rfc", {
    t({ "function " }), i(1, "Component"), t({ "() {", "  return (", "    " }),
    t({ "<div>" }),
    i(0),
    t({ "</div>" }),
    t({ "", "  );", "}", "", "export default " }), i(1),
  }),

  -- Arrow function component
  s("rafce", {
    t({ "const " }), i(1, "Component"), t({ " = () => {", "  return (", "    " }),
    t({ "<div>" }),
    i(0),
    t({ "</div>" }),
    t({ "", "  );", "};", "", "export default " }), i(1),
  }),

  -- useState
  s("us", {
    t({ "const [" }), i(1, "state"), t({ ", set" }),
    i(2, "State"),
    t({ "] = useState(" }), i(3, "initialValue"), t({ ");" }),
  }),

  -- useEffect
  s("ue", {
    t({ "useEffect(() => {", "  " }),
    i(0),
    t({ "", "}, []);" }),
  }),
}

ls.add_snippets("typescriptreact", jsx_tsx_snippets)
ls.add_snippets("javascriptreact", jsx_tsx_snippets)
