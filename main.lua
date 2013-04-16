local clock = os.clock

conf = dofile(arg[1] or 'default.cfg')

local function sleep(n)
   local t0 = clock()
   while clock() - t0 <= n do end
end

while true do
   os.execute(conf.exec)
   sleep(conf.interval)
end