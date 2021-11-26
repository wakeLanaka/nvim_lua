local palette = {
	base = '#191724',
	surface = '#1f1d2e',
	overlay = '#26233a',
	inactive = '#555169',
	subtle = '#6e6a86',
	text = '#e0def4',
	love = '#eb6f92',
	gold = '#f6c177',
	rose = '#ebbcba',
	pine = '#31748f',
	foam = '#9ccfd8',
	iris = '#c4a7e7',
	highlight = '#2a2837',
	highlight_inactive = '#211f2d',
	highlight_overlay = '#3a384a',
	none = 'NONE',
}

if
	vim.g.rose_pine_variant == 'dawn'
	or vim.g.rose_pine_variant == 'rose-pine-dawn'
then
	palette = {
		base = '#faf4ed',
		surface = '#fffaf3',
		overlay = '#f2e9de',
		inactive = '#9893a5',
		subtle = '#6e6a86',
		text = '#575279',
		love = '#b4637a',
		gold = '#ea9d34',
		rose = '#d7827e',
		pine = '#286983',
		foam = '#56949f',
		iris = '#907aa9',
		highlight = '#eee9e6',
		highlight_inactive = '#f2ede9',
		highlight_overlay = '#e4dfde',
	}
elseif
	vim.g.rose_pine_variant == 'moon'
	or vim.g.rose_pine_variant == 'rose-pine-moon'
then
	palette = {
		base = '#24283b',
		surface = base,
		overlay = '#393552',
		inactive = '#44475A',
		subtle = '#817c9c',
		text = '#e0def4',
		love = '#eb6f92',
		gold = '#f6c177',
		rose = '#ea9a97',
		pine = '#3e8fb0',
		foam = '#9ccfd8',
		iris = '#c4a7e7',
		highlight = '#312f44',
		highlight_inactive = '#44475A',
		highlight_overlay = '#44475A',
    search_overlay = '#B0DAD8',
    visual_overlay = '#D5C0EE'
	}
end

return palette
