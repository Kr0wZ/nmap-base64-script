description = [[ Decode base64 encoded string ]]
author = "KrowZ"
categories = {"default", "safe"}

local _base64 = require "base64"
local _string = require "string"
local _stdnse = require "stdnse"

function prerule()
	return true
end

--MAIN
function action(host, port)
	local _argument = _stdnse.get_script_args("string") -- --script-args 'string=XXXXXXXXXXXXX'
	local _base64_decoded = _base64.dec(_argument)
	return _stdnse.format_output(true, _string.format("Decoded base64 string: %s", _base64_decoded))
end
