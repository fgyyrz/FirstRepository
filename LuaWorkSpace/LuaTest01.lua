-- 斐波那契数列
function Fibosequence(n)
  if n == 1 then
  return 0
  elseif n == 2 or n ==3 then --递归终止条件
  return 1
  else 
  return Fibosequence(n-2)+Fibosequence(n-1)
  end
end
for i = 1, 10 do
-- print(Fibosequence(i))
end


-- 猴子吃桃
local total = 1
for i=1,10 do
	total = 2 * (total + 1)
	print(total)
end


--  猴子选大王
function ChooseKing(n)
	local monkey = {}
	for i=1,n do
		monkey[i] = i
	end

	for i=n,1,-1 do
		for k=1,3 do
			temp = monkey[1]
			for j=1,i-1 do
				monkey[j] = monkey[j+1]
			end
			monkey[i] = temp
		end
	end
	return monkey[1]
end

king = ChooseKing(17)
-- print(king)


 -- 冒泡排序
intarr = {19,82,37,56,75,24,43,62,71}
function Bubble(intarray,n)
	for i=1,n do
		for j=1,n-i do
			if intarray[j] > intarray[j+1] then
				intarray[j],intarray[j+1] = 
				intarray[j+1],intarray[j]
			end
		end
	end
end
Bubble(intarr,#(intarr))
for i=1,#(intarr) do
	-- print(intarr[i])
end


 -- 计算table中元素个数
arr = {1,nil,"asda", nil,["asd"] = 1}
function CountNum(arr)
	local count = 0;
	for k,v in pairs(arr) do
		count = count + 1;
	end
	return count
end
count = CountNum(arr)
-- print(count);
