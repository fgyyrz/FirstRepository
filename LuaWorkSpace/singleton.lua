Singleton = {}
function Singleton:new( o )
	o = o or {}
	setmetatable(o,self)
	self.__index = self
	return o
end
function Singleton:Instance(  )
 	if self.instance == nil then
 		self.instance = self:new()
 	end
	return self.instance
end
function Singleton:releaseInstance( ... )
	if self.instance then
		self.instance = nil
	end
end
s1 = Singleton:Instance()
s2 = Singleton:Instance()

if	s1 == s2 then
	print("same")
end

























