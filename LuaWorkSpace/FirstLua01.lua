--[[     Lua 基础     --]]

-- print("Hello  World");

-- Lua 变量

--命名规则：
--1、由数字、字母、下划线组成，首字母必须是字母、下划线
--2、不能是关键字
--3、区分大小写

-- num = 10
-- print(num)

-- 变量赋值规则：
--如果赋值表达式左边的变量个数 > 右边值的个数，多余的
-- 变量用nil补充
--如果赋值表达式左边的变量个数 < 右边值的个数， 多余的
-- 值被省略

--[[
local: 关键字， 代表局部（变量， 方法， 表， ...）
local num2 = 100
print(num2)
--]]

--Lua 注释方式：
--单行注释： --
--多行注释： --[[--]]

-- Lua 数据类型
-- 8个：nil, bool, number, string, function, table
-- userdata, thread

--[[  nil  --]]
--表示空；主要用来初始化变量或者表
-- num3 = nil
-- print(num3)

--[[  bool  --]]
-- 有两个值: true 或 false
-- 只有nil 或者 false 为假，其他均为真，包括 0
-- bFlag = true
-- print(bFlag)
-- bFlag = false
-- print(bFlag)

--[[  number  --]]
-- 表示数字， 包括：整数、浮点数
-- num4 = 10.01
-- print(num4)
-- print(type(num4)) --type():  用来获取当前变量的数据类型

--tostring():将数字转换成字符串 
-- print(tostring(num4).."dsfkdsjafks")

--[[  string  --]]
-- 字符串类型
-- str1 = "This is my first Lua project!"
-- print(str1)

--字符串转换成数字：
--1、必须保证字符串中除数字以外，不能有其他字符
--2、tonumber(): 字符串转换方法
-- str2 = "10001231"
-- print(tonumber(str2))

--字符串连接运算符：.. 
--注意：如果使用字符串连接运算符将数字转换成字符串时，第一个操作数
--是数字，必须在数字后面打一个空格，以防系统编译识别错误

--显示类型转换与隐式类型转换
--显示类型转换：tonumber(), tostring()

-- 隐式类型转换
-- print("10" + 1)
-- print(10 .."sdafjksjfks")

--[[    function    --]]
--表示Lua中的函数或者方法
--注意：
--Lua中的函数，必须先声明，再调用
--Lua中的函数可以有多个返回值，

--返回值的接收以及参数的传递，遵循
--变量的赋值规则

function Test( num1, num2, num3)
	-- body
	-- print("First  function")

	-- print(num1 + num2)

	-- print(num1, num2, num3)

	return num1 + num2, num1 - num3, num1 * num3
end

-- result1, result2, result3 = Test(12, 12, 13)
-- print(result1, result2, result3)

--[[    table   --]]
--table:类似于一个容器（数组， 字典， 列表...），
--成员可以包括：number数字，字符串，键值对，函数...

--注意：
--Lua中表的索引从1开始，依次递增1

--nil，在表中是一个特殊元素，尽可能
--保证表中不包含nil元素

--定义
Animal = {} --表示一个空表

--初始化

--第一种方式: 先定义，后初始化
Animal[1] = "Tiger"
Animal[2] = "Lion"
Animal[3] = "Fox"
Animal[4] = "Monkey"
Animal["Name"] = "KK"
Animal.name = "JJ"

-- print(Animal[3])
-- print(Animal["Name"])
-- print(Animal.name)


--第二种方式: 定义的同时，进行初始化
-- Animal = {"Tiger", "Lion", age = 12, name = "KK",
--  "Fox", "Monkey"}
-- print(Animal[4])
-- print(Animal["age"])
-- print(Animal.name)

--#：用来计算表的长度
--注意：如果表中含有键值对元素或者nil元素，计算结果
--不准确
-- print(#Animal) 

--遍历表的方式：
--ipairs：只能遍历表中所有下标为整数的元素，遇到
--nil直接退出遍历

--pairs：能够遍历表中所有的元素，包括nil（常用）

-- for i,v in ipairs(Animal) do
-- 	print(i,v)
-- end

-- for k,v in pairs(Animal) do
-- 	print(k,v)
-- end

-- Lua中的运算符
--1、算术运算符
-- + 、- 、 * 、/ 、^、%

--2、关系运算符
--> < == ~=(不等于) >= <= 

--3、逻辑运算符
-- and(与) or(或) not(非)

-- and: 如果操作数1为真，则返回操作数2的值，
--如果操作数1为假，直接返回操作数1的值

--or:如果操作数1为真，直接返回操作数1的值，
--如果操作数1为假， 则返回操作数2的值

--not:取反，返回值为true 或者 false

num1 = false;
num2 = 34;

-- print(num1 and num2)

-- print(num1 or num2)

-- print(not num1)

--补充： 三目运算符（条件运算符）
-- result = (a > b)?a:b
-- (a and b) or c

-- Lua 语句
--赋值语句
 -- num = 10

--条件语句
num5 = 20
-- if num5 > 20 then
-- 	--todo
-- 	print("Greater")
-- end

-- if num5 > 20 then
-- 	--todo
-- 	print("Greater")
-- else
-- 	--todo
-- 	print("Less")
-- end


-- if num5 > 20 then
-- 	--todo
-- 	print("Greater")
-- elseif num5 < 20 then
-- 	--todo
-- 	print("Less")
-- else
-- 	--todo
-- 	print("Equal")
-- end

--循环语句
-- for

-- for i=1,10,2 do
-- 	print(i)
-- end

-- while
-- n = 0
-- while n < 10 do
-- 	--todo
-- 	print(n)

-- 	n = n + 1
-- end

-- repeat..until
-- count = 0
-- repeat
-- 	--todo
-- 	count = count + 2
-- 	print(count)
-- until count == 20

--[[     Lua 深入程序设计     --]]

-- 非局部变量：相对于一个函数是量全局变量，
-- 相对于另外一个函数是局部变

-- 闭合函数：包含非局部变量的函数 

-- 注意：
-- 闭合函数中的非局部变量不是临时产生的，而是与闭合函数
-- 同时存在的，变量的值在每次调用时不会被重置

function Test(  )
	-- body
	local num = 0

	return function (  )
		-- body
		num = num + 1
		return num
	end
end

-- local func = Test()
-- print(func())
-- print(func())
-- print(func())


-- 非全局函数：存储在局部变量中的函数

-- 好处： 允许函数先调用，后声明

-- 声明方式：
-- 第一种
local Test1;
Test1 = function (  )
	-- body
	print("Test1  Test1")
end

-- Test1()

-- 第二种
local function Test2(  )
	-- body
	print("Test2  Test2")
end

-- Test2()

local eat = nil
local drink = nil

eat = function (  )
	-- body
	print("I'm eating")

	drink()
end

drink = function (  )
	-- body
	print("I want to drink")
end

-- eat()

-- 尾调用：一个函数是另外一个函数的最后执行语句
-- 常用于实现状态机

-- 编译与执行

-- 捕捉错误信息、抛出异常

-- error("Error message") -- 抛出异常

-- pcall: 捕捉错误信息
function Test(  )
	-- body
	print(a[1])
end

-- local status, errorInfo = pcall(Test)

-- print(status, errorInfo)

-- if status then
-- 	--todo
-- 	print("Normal")
-- else
-- 	--todo
-- 	print(errorInfo)
-- end



-- 编译与执行的三种方式

--loadfile():只编译，不执行
-- loadfile("Hello.lua")

--dofile():既编译，也执行，并且可以重复执行
-- dofile("./Hello.lua")
-- dofile("./Hello.lua")
-- dofile("./Hello.lua")

--require():既编译，也执行，且只执行一次
-- require("Hello")
-- require("Hello")
-- require("Hello")

-- 协同程序
-- 特点：同一时间只能执行一个协同程序

-- 状态：正常（normal）、挂起（suspended）、
-- 运行（running）、死亡（death）

-- 如果协同程序没有执行结束
-- resume函数的第二个参数是yield函数的返回值
-- yield函数的参数是resume的第二个返回值

-- 如果协同程序执行结束
-- resume函数的第二个返回值是协同程序主函数的
-- 返回值

--使用协同程序步骤：
--1、创建协同程序
--2、开启协同程序
--3、设置协同挂起状态（yield）

--[[
--创建协同程序
local co = coroutine.create(function (  )
	-- body
	local yieldresult = coroutine.yield("yield")
	print(yieldresult)

	print("Coroutine")
end)

--开启协同程序
local status, errorInfo = coroutine.resume(co, "resume")
print(status, errorInfo)

print(coroutine.status(co))

coroutine.resume(co)

print(coroutine.status(co))
--]]

local co = coroutine.create(function (  )
	-- body
	for i=1,3 do
		print("Coroutine:  "..i)

		print("yieldParam:  "..
			coroutine.yield("yield:   "..i))
	end

	return "Complete"
end)

-- for i=1, 4 do
-- 	local status, errorInfo = 
-- 	coroutine.resume(co, "resume:  "..i)

-- 	print(status, errorInfo)

-- 	print(coroutine.status(co))
-- end

--[[         Lua面向对象         --]]

-- 元表与元方法

-- 元表：普通的Lua表，指定了某些原始值在特定操作下的
-- 行为

-- 元方法：元表中的键称为事件，值称为方法

-- 算术元方法
-- __add: +
-- __sub: -
-- __mul: *
-- __div: /
-- __unm: ~
-- __mod: 模

-- 关系元方法
-- __eq
-- __lt
-- __le

-- 元方法操作执行规则：
-- 1、如果第一个表的元表有相应的元方法，则遵循第一个表的元方法操作

-- 2、如果第一个表没有相应的元表或者元方法，第二个表有相应的元表和元方法，则遵循第二个表的元方法操作

-- 3、如果两者都没有相应的元表或者元方法，则报错

--[[
t1 = {}
t2 = {}

mt = {
	__add = function (  )
		-- body
		print("Add  Add ")
	end
}

mt2 = {

}

-- 设置元表
setmetatable(t1, mt2)

-- 获取元表
-- print(getmetatable(t1))

setmetatable(t2, mt)

-- print(t1 + t2)

--]]
--【【           __index / __newindex       --】】

-- __index: 主要用于查询操作，当查询表中不存在的
-- 字段时，允许程序员自定义一些操作

-- 注意： __index的值可以是函数（function）
-- 也可以是表（table）

-- 如果__index的值是一个函数，当访问表中不存在的
-- 字段时，会调用__index所对应的函数

-- 如果__index的值是一个表，当访问表中不存在的
-- 字段事，则会去__index所对应的表中查询相应的字段
-- 并返回字段所对应的值

--[[
local Person = {name = "KK"}

local pmt = {
	-- __index = function ( table, key )
	-- 	-- body
	-- 	print("Invalid key: "..key)
	-- end

	-- __index = {age = 12, money = 100000}
}
--]]
-- setmetatable(Person, pmt)
-- print(Person.age)

-- __newindex：主要用于更新操作，当访问不存在的字段时，
-- 允许程序员自定义一些操作

-- 注意： __newindex的值可以是函数（function）
-- 也可以是表（table）

-- 如果__newindex的值是函数，在访问当前表中不存在的
-- 字段时，则会调用__newindex所对应的函数，执行自定义
-- 操作

-- 如果__newindex的值是表，在访问当前表中不存在的字段
-- 时，则会更新__newindex所对应的表中的字段信息

--[[
local Animal = {}
local Property = {name = "Lion", weight = 200}

local amt = {
	-- __newindex = function ( table, key, value )
	-- 	-- body
	-- 	print("key:   "..key .. "    Value: ".. value)
	-- end

	__newindex = Property
}

-- setmetatable(Animal, amt)

-- Animal.name = "Monkey"

-- print(Animal.name)

-- Animal.age = 12

-- print(Property.age)

--]]
-- 全局环境(_G)
-- for k,v in pairs(_G) do
-- 	print(k,v)
-- end

gName = "GNAME"
-- print(gName)
-- print(_G["gName"])
-- print(_G.gName)

-- 面向对象
--[.] 与 [:]
-- 在访问表中的函数时，使用[.]访问时，必须在声明和调用
-- 时都是用[.]，并且需要显示的传入函数调用者（表本身）

-- 在访问表中的函数时，使用[:]访问时，必须在声明和调用
-- 时都是用[:]，不需要显示的传入函数调用者（表本身），
-- 系统自动传入调用者本身（隐式传递）

-- local Position = {
-- 	x = 0,
-- 	y = 0,
-- }

-- function Position.setPosition( posX, posY )
-- 	-- body
-- 	Position.x = posX;
-- 	Position.y = posY;
-- end

-- function Position.setPosition(self, posX, posY )
-- 	-- body
-- 	self.x = posX;
-- 	self.y = posY;
-- end

-- Position.setPosition(Position, 12, 12)
-- print(Position.x, Position.y)

--[企业开发常用此种方式]
-- function Position:setPosition( posX, posY )
-- 	-- body
-- 	self.x = posX;
-- 	self.y = posY;
-- end

-- Position:setPosition(12, 13)
-- print(Position.x, Position.y)

-- 封装： 闭合函数（闭包函数）
-- 继承： 
--[[   Lua继承思想  --]]
		-- 使用Function + table的方式实现类
		-- 使用Function创建类中的方法
		-- 使用table描述类的成员所拥有的属性
		-- 使用setmetatable函数以及__index元方法实现继承
		-- 使用__newindex实现代码更新
		-- Lua中可以实现函数的重写，即覆盖，但不能实现重载
		-- （原因是在Lua中会调用最新定义的方法，
					-- Lua中参数会按照顺序进行赋值，多余的参数会被忽略，
					-- 不足的参数将会使用nil进行填充）

--[[
Person = {
	name = nil,
	age = 0,
	sex = nil,
}

function Person:new( o )
	-- body
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	return o
end

function Person:setName( strName )
	-- body
	self.name = strName
end

local child = Person:new({age = 12})
-- child.name = "LLLLL"
-- print(child.name)

function child:name( strName, numAge )
	-- body
	self.name = setName
	self.age = numAge
end

function child:getName(  )
	-- body
	return self.name
end

child:setName("LLL", 12)
-- print(child.name, child.age)
-- print(child:getName())

--]]

-- 多继承
-- 需求： 类A， 类B，类C， 实现C继承A， B
--[[
local BaseA = {
	name = "A"
}

function BaseA:new( o )
	-- body
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	return o
end

function BaseA:setName( strName )
	-- body
	self.name = strName
end

local BaseB = {
}

function BaseB:new( o )
	-- body
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	return o
end

function BaseB:getName(  )
	-- body
	return self.name
end

function Search(key, ParentTable )
	-- body
	for k,v in pairs(ParentTable) do
		-- print(k,v)
		local result = v[key]
		if result then
			--todo
			return result
		end
	end
end

-- ParentTable = {BaseA, BaseB}
-- print(Search("name", ParentTable))

function CreateClass( ... )
	-- body
	local C = {}
	local ParentTable = {...}

	function C:new( o )
		-- body
		o = o or {}
		setmetatable(o, self)
		self.__index = function ( table, key )
			-- body
			return Search(key, ParentTable)
		end
		return o
	end

	return C 
end

--实现多继承
local C = CreateClass(BaseA, BaseB)

--创建实例对象
local instanceC = C:new()

--调用父类中的方法
-- instanceC:setName("CCCC")
-- print(instanceC:getName())

--]]

-- 多态
local Animal = {
	name = "",
	age = 0,
	sex = "",
}

function Animal:new( o )
	-- body
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	return o
end

function Animal:getAge(  )
	-- body
	return 10
end

function Animal:powAge(  )
	-- body
	return math.pow(self:getAge() , 2)
end

local Lion = {}
setmetatable(Lion, Animal)
-- Lion.__index = Lion

function Lion:new( o )
	-- body
	o = Animal:new()
	setmetatable(o, self)
	self.__index = self
	return o
end

function Lion:getAge(  )
	-- body
	return 12
end

local lion = Lion:new()

-- print(lion:getAge())

print(lion:powAge())










