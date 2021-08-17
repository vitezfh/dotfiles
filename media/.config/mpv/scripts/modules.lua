local mpv_scripts_dir_path = os.getenv("HOME") ..  "/.config/mpv/scripts/"
function load(relative_path) dofile(mpv_scripts_dir_path .. relative_path) end
-- load("subs2srs/subs2srs.lua")
-- load("mpv2anki/mpv2anki.lua")
