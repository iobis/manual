-- Wrap each table in a horizontally scrollable div (HTML output only)
function Table(tbl)
  return pandoc.Div({tbl}, pandoc.Attr("", {}, {style = "overflow-x: auto;"}))
end
