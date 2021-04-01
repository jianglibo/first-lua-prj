-- thing_module.lua

local json = require ("dkjson")

local tbl = {
  animals = { "dog", "cat", "aardvark" },
  instruments = { "violin", "trombone", "theremin" },
  bugs = json.null,
  trees = nil
}

local str = json.encode (tbl, { indent = true })

print (str)

function cc() 
    return 1,2;
end

local str = [[
{
  "numbers": [ 2, 3, -20.23e+2, -4 ],
  "currency": "\u20AC"
}
]]

local obj, pos, err = json.decode (str, 1, nil)
if err then
  print ("Error:", err)
else
  print ("currency", obj.currency)
  for i = 1,#obj.numbers do
    print (i, obj.numbers[i])
  end
end
