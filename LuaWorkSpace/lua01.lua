--[[     Lua基础   --]]
--lua环境配置


--基础语法
--Lua标识符
--1.由字母数字下划线组成，首字母必须是字母或者下划线
--2.区分大小写
--3.不能是lua的保留字或者是关键字

--lua注释符：
-- :－－：单行注释；
-- :－－［［－－］］：多行注释

--Lua变量
--全局变量(默认定义的变量为全局)
--:num=1
--局部变量(local:定义局部变量)
--local x=1

--lua数据类型（8种）
--:nil/number/string/boolean/userdate/function/table/thread
--nil:空值
--number:整数、浮点...
--string:字符串类型（8字节）
-- string.format()
--:字符串连接运算符：..
--注意：字符串和数字进行连接时需要在数字后加空格
-- print("Hello".."World")
-- print("Hello"..1)
-- print(1 .."Hello")
-- print("12"+ 21)
-- print(tonumber("12")+ 21) 字符串转换为数字
-- print(tostring(123).."Hello") 数字转换为字符串
--boolean:false，true:false/nil为假，其他全为真
-- function（函数定义关键字）
--注意：所有的方法先声明后调用
--声明
-- function FistMethod( ... )
-- 	-- body
-- 	print("Hello World")
-- end
--调用
-- FistMethod()

-- table（lua中的表）


-- luab表达式
--赋值表达式:从左到右依次赋值，无为空，多则省
-- num,num1=1
-- print(num,num1)


--运算符
--算数运算符：＋、－、＊、／
--关系运算符：>、<、==、~=、<=、>=
--运算结果：false／true

--逻辑运算符：and（与）、or（或）、not（非）
-- and（与）
-- print(1 and 2)
--操作数1，2，1为真，返回2，结果为2（真）
--操作数1，2，1为假，返回1，结果为1（假）
-- or（或）
-- print(nil or 2)
--操作数1，2，1为真，返回1，结果为1（真）
--操作数1，2，1为假，返回2，结果为2（真）
-- not（非）
-- print(not 1)

--Lua语句：
--赋值语句
--控制语句
--循环语句
-- for i=1,10 do
-- 	print(i)
-- end

-- count = 1
-- while count <= 20 do
--  --todo
--  count = count + 2
--  print(count)
-- end

-- count = 11
-- repeat
-- 	--todo
-- 	count = count + 1
-- 	print(count)
-- 	until count >10
--lua Table
--用于模拟容器（数组，列表，map，vector，dictionary），
			--也用于结构体，枚举，模拟类，模拟面向对象思想

--定义以及初始化
tab = {}--空表
--索引初始化，从一开始
tab[1] = "Mon"
tab[2] = "Thues"
tab[3] = "Wed"
--模拟容器
--定义同时初始化
tab1 = {"Mon","Thues","Wed"}

tab2 = {mon = "Jan",thu = "Fri" }
-- print(tab2["mon"])
-- print(tab2.mon)

tab3 = {mon = "Jan",1,thu = "Fri" ,4,"sa",nil,"sdf"}

-- for k,v in ipairs(tab3) do
-- 	print(k,v)
-- end

-- for i,v in pairs(tab3) do
-- 	print(i,v)
-- end

--#：计算表的长度，如果有键值对或者nil不准确
-- print(#tab3)




