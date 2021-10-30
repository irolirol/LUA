--Get Now Time and add time
--now=os.date("%Y%m%d%H%M")
now=os.time()
print(os.date("%Y%m%d%H%M",now))
print(os.date("%Y%m%d%H%M",now+120))

strSeedtime = "202110301100"
print (strSeedtime)

local returnTime = os.time({year=2021, month=10, day=31, hour=10, min=00, isdst=false})
print (returnTime)	

print(os.date("%Y%m%d%H%M",returnTime))
print(os.date("%Y%m%d%H%M",returnTime+120))
