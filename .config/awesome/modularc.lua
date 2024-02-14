-- Load LuaRocks
pcall(require, "luarocks.loader")

-- Allow Awesome to automatically focus a client upon changing tags or loading.
require("awful.autofocus")

-- Notification library
local naughty = require("naughty")

-- Enable hotkeys help widget for VIM and other apps
-- when client with a matching name is opened:
require("awful.hotkeys_popup.keys")

-- ------------------------------------   ERROR HANDLING   ----------

-- Check if awesome encountered an error during startup and fell back to
-- another config (This code will only ever execute for the fallback config)
if awesome.startup_errors then
    naughty.notify({ preset = naughty.config.presets.critical,
                     title = "Oops, there were errors during startup!",
                     text = awesome.startup_errors })
end

-- Handle runtime errors after startup
do
    local in_error = false
    awesome.connect_signal("debug::error", function (err)
        -- Make sure we don't go into an endless error loop
        if in_error then return end
        in_error = true

        naughty.notify({ preset = naughty.config.presets.critical,
                         title = "Oops, an error happened!",
                         text = tostring(err) })
        in_error = false
    end)
end

-- -----------------------------------------  LOAD BINDINGS  --------

-- Keys
local binding = {
    globalkeys = require("keys.global"),
    clientkeys = require("keys.client"),
    modkeys = require("keys.modifiers"),
    mousekeys = require("keys.mouse")
}

-- Append the global mouse bindings
awful.mouse.append_global_mousebindings(binding.mousekeys)

-- Rules
require("main.rules")

-- Autostart apps
awful.spawn.with_shell("picom")
awful.spawn.with_shell("feh --recursive --bg-fill --randomize ~/Pictures/wallpapers/")
