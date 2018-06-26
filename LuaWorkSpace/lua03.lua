--[[lua面向对象]]--	  

-- lua 元表与方法
-- 元表：普通的Lua表，指定了某些原始值在特定操作下的行为
-- setmetatable:设置元表
-- getmetatable：获取元表

-- eg:
-- local tab = {}
-- local tab_mt = {}
-- local ret = setmetatable(tab,tab_mt)
-- print(ret)
-- print(tab)
-- print(tab_mt)

-- local ret_mt = getmetatable(tab)
-- print(ret_mt)


-- 元方法：元表中的键称为事件，值称为方法
-- 算数元方法
-- __add
-- local mt = {
-- 	__add = function ( ... )
-- 		print("add")
-- 	end
-- }

-- local t1 = {}
-- local t2 = {}

-- setmetatable(t1,mt)

-- local x = t1 + t2

-- 规则
-- 如果两个表具有两个不同的元表
-- 如果第一个表有元表或者元方法，遵循第一个，否则遵循第二个，如果都没有则会抛出异常

-- 关系元方法

-- 特殊元方法

-- __index:查询
-- 在访问不存在的字段时，进行自定义的操作

-- 两种赋值方式：函数，表
-- 函数
-- local mt = {
-- 	__index = function ( table,key )
-- 		print("不存在")
-- 	end
-- }

-- local tab = {}
-- setmetatable(tab,mt)

-- print(tab.name)
-- 表：
-- local mt = {
-- 	__index = {name = "jj",age = 12}
-- 	end
-- }
-- local tab = {}

-- 特性
-- 如果__index赋值为函数，在访问不存在字段的时候，将会回调该函数
-- 如果__index赋值为表，在访问不存在字段的时候，将会向__index所对应的表中查询字段，并返回子弹对应的值

-- __newindex:更新
-- 在访问不存在的字段时，允许进行自定义的操作
-- eg：
-- local mt = {
-- 	__newindex = function ( table,key,value )
-- 		print(table,key,value)
-- 	end
-- }

-- local tab = {name = "kk"}
-- setmetatable(tab,mt)
-- tab.name = "jj"
-- print(tab.name)

-- local newtab = {name = "HH",age = 12,sex = "f"}

-- local mt = {
-- 	__newindex = newtab
-- }

-- local tab = {}
-- setmetatable(tab,mt)

-- 特性
-- 对应的是函数，不存在字段，会回调该函数
-- 表，不存在字段，更新__newindex中的函数



-- lua模块

-- local game = require("game")
-- game.play()

-- require("Game")
-- print(game.age)



require("game")
-- print(age)
-- play()



person = {
	name = nil,
	age = 0
}


function person.setName( self, strName )
	-- body
	self.name = strName
end

function person:setAge( numAge )
	-- body
	self.age = numAge
end

person.setName(person,"sdfs")
-- print(person.name)

person:setAge(12)
-- print(person.age)



-- 使用.运算符进行函数访问时，需要显示传递self参数
-- 使用:运算符进行函数访问时，不需要显示传递self参数系统进行隐式传递



-- 封装 

-- 继承

Animal = {name = nil,age = 0}

function Animal:new( tab )-- 构造函数
	local tab = tab or {}

	setmetatable(tab,self)
	self.__index = self

	return tab
end

function Animal:setName( strName )
	self.name = strName
end

Lion = Animal:new()
function Lion:setAge( numAge )
	self.age = numAge
end

-- function Lion:setName(  )
-- 	print("override")
-- end

Lion:setName("sdfs")
Lion:setAge(12)

-- print(Lion.name, Lion.age)


function class( classname,super )
	local superType = type(super)
	local cls = {}

	if super then
		cls = {}
		setmetatable(cls,{__index = super})
		cls.superType = super
	else
		cls = {ctor = function (  )	end}
	end

	cls.__cname = classname
	cls.ctype = 2
	cls.__index = cls

	function cls.new( ... )
		local instance = setmetatable({},cls)
		instance.class = cls
		instance:ctor(...)
		return instance
	end
	return cls
end


