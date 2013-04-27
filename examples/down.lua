local _assert = assert

local lunit = require "lunitx"

if _VERSION >= 'Lua 5.2' then

    _ENV = lunit.module('down') -- note no ('down','seeall')

else

    module("down", lunit.testcase)

end


function testluaerror()
    (nil)() -- error!
end

function testluasseert()
    _assert(false, "assertion of something") -- real assert!
end

function testseeallismissing()
    print("ok") -- no scope!
end

