local _Console = { Utils = {} }

-----------------------------

function _Console:New()
    local Console = {}

    setmetatable(Console, self)
    self.__index = self

    return Console, _Console:Utils()
end

function _Console:Execute(input)
    if not input then return end

    local handle = io.popen(input)
    local result = handle:read("*a")
    handle:close()

    return result
end

function _Console:ScanDirectory(path)
    local dirlist, pfile = {}, io.popen('dir "'..path..'" /b', "r")

    for filename in pfile:lines() do
        dirlist[filename] = path.."\\"..filename
    end

    pfile:close()

    return dirlist
end

function _Console:Utils()
    local Utils = { String = {}, Table = {} }

    function Utils.String.Trim(string)
        return string:gsub("%s+", "")
    end

    function Utils.Table.HasValue(table, value)
        for _,val in pairs(table) do 
            if val == value then return true end
        end
        return false
    end

    setmetatable(Utils, self)
    self.__index = self

    return Utils
end

exports("Console", _Console)

-----------------------------

-- local Console, ConsoleUtils = _Console:New()

-----------------------------