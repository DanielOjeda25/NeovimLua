require("bufferline").setup{
  options = {
		--Abre archivos en una nueva pestaña
    always_show_bufferline = true,
    view = "multiwindow",
		separator_style = "round",
    hover = {
       enabled = true,
        delay = 200,
        reveal = {'close'}
    },
    diagnostics_indicator = function(count, level)
    local icon = level:match("error") and " " or ""
    return " " .. icon .. count
    end
	},
}
--

