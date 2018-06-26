--[[		Lua基础进阶		--]]

-- 深入Lua程序设计

-- 1、闭合函数
-- 包含非局部变量的函数
-- 非局部变量：相对于一个函数是局部变量，相对于另一个函数是全局变量

-- eg：
function NotGlobalMethod(  )
	local x = 1

	return function (  )
		x = x + 1
		return x
	end
end

local func = NotGlobalMethod()
-- print(func())print(func())print(func())

-- 对于闭合函数而言,属于它的非局部变量,并不是在调用它的时候临时产生的
-- 			而 是和它一 起存在的。所以每次调用闭合函数,非局部变量的值都不会被重置。


-- 2、非全局函数
-- 存储在局部变量中的函数
-- 允许先调用后执行

local function test() end

local test
test = function () end

local eat = nil
local drink = nil

eat = function (  )
	print("eating")
	drink()
end
drink = function (  )
	print("drinking")
end
-- eat()


-- 3、尾调用
-- 一个函数的调用是另一个函数的最后一段执行程序
-- 可以判断函数结束时机，一般用于状态机


-- 迭代器
-- 迭代器就是一种可以遍历一种集合中所有元素的机制。
-- 			每调用一次函数,即返回集合中的下一个元素
function dieDaiQi( t )
	local i = 0
	return function (  )
		i = i + 1 
		return t[i]
	end
end
local t = {"fdsd", "445"};
-- local iter = dieDaiQi(t);
-- while true do
--       local value = iter();
--       if value == nil then 
--       	break
--     end
--       print(value);
-- end
for value in dieDaiQi(t) do
       -- print(value);
    end

-- 编译执行与错误
-- error("00")

-- table = {}
-- if pcall(table[1]) then
-- 	print("r")
-- else
-- 	table[1] = 1
-- 	print("w")
-- 	print(table[1])
-- end

-- function Test( ... )
-- 	print(a[1])
-- end
-- local status, errorInfo = pcall(Test)
-- print(status,errorInfo)


-- 编译与执行

-- loadfile("Hello.lua")--只编译不执行，传递文件名+后缀
-- dofile("./Hello.lua")dofile("./Hello.lua")--既编译也执行，可以重复执行

-- local table = dofile("./Hello.lua")
-- print(tab.name)

-- require ("Hello")
-- 协同程序

local co = coroutine.create(function (  )
	local yieldRet = coroutine.yield("yieldParam")
	print(yieldRet)

	print("create a coroutine.create(f)")

end)

local status,errorInfo = coroutine.resume(co,"resumeParam1")
print(status,errorInfo)
print(coroutine.status(co))

coroutine.resume(co,"resumeParam2")
print(status,errorInfo)
print(coroutine.status(co))














