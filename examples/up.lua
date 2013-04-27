local lunit = require "lunitx"

if _VERSION >= 'Lua 5.2' then

    _ENV = lunit.module('up','seeall')

else

    module("up", lunit.testcase, package.seeall)

end

function testsuccess()
    assert_true(true)
end

function testfailure()
    assert_false(true, "expect to fail")
end

function testseeall()
    print("ok")
end
