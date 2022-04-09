local mod = { 'cmd', 'alt', 'ctrl' }
local shiftMod = { 'cmd', 'alt', 'ctrl', 'shift' }
local obj = {}

obj.__index = obj
obj.name = 'WinSwitch'
obj.version = '0.2.0'
obj.author = 'Maxim Soukharev'
obj.license = 'MIT - https://opensource.org/licenses/MIT'

local memo = {}

local keys = {
    { key = '1' },
    { key = '2' },
    { key = '3' },
    { key = '4' },
    { key = '5' },
    { key = '6' },
    { key = '7' },
    { key = '8' },
    { key = '9' },
    { key = '0' },
    { key = '-' },
    { key = '=' },
}

hs.fnutils.each(keys, function(option)
    hs.hotkey.bind(shiftMod, option.key, function()
        local window = hs.window.focusedWindow()
        memo[option.key] = window;
    end)
    hs.hotkey.bind(mod, option.key, function()
        local window = memo[option.key]
        if window then
            window:focus()
        end
    end)
end)

return obj
