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

--mushclient
objSeedTime = os.time({year=2021, month=10, day=31, hour=23, min=00, isdst=false})
strNowTime = os.date("%Y%m%d%H%M",os.time())
strSeedTime = os.date("%Y%m%d%H%M",objSeedTime)
strSeedTimeD = os.date("%Y%m%d%H%M",objSeedTime-300)
strSeedTimeU = os.date("%Y%m%d%H%M",objSeedTime+300)

print(strSeedTime)
print(strSeedTimeD)
print(strNowTime)
print(strSeedTimeU)

if tonumber(strNowTime) >= tonumber(strSeedTimeD) and tonumber(strNowTime) <= tonumber(strSeedTimeU) then
   print("it's seed time")
   SetVariable ("VSEED_LOOP", "1")
   EnableTriggerGroup ("START", false)
   EnableTriggerGroup ("SEED", true)
   EnableTimer("Force", false)
   Execute("stop;exa")
   Execute("goseed")
else
   SetVariable ("VSEED_LOOP", "0")
   EnableTriggerGroup ("START", true)
   EnableTriggerGroup ("SEED", false)
   Execute("stop;exa;smile chief;exert dragon_soul")
end
