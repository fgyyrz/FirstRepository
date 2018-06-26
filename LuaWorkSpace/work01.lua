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
-- print(Fibosequence(5))



-- 猴子吃桃
-- 有一只猴子，摘了很多桃子，他每天吃掉一些，剩下的桃子比之前的一半少一个，他第十天还剩一个，请问他一共摘了多少桃子？
function eatPeach(n)--递归
	-- body
	if n == 10 then
		return 1
		else
			return 2 * eatPeach(n+1)+2
		end
end
-- print(eatPeach(1))

local total = 1
for i=1,9 do
  total = 2 * (total + 1)
  print(total)
end

-- 冒泡排序
function bubble_sort(arr)  
    -- body  
    local tmp = 0  
  
    for i=1,#arr-1 do  
        for j=1,#arr-i do  
            if arr[j] > arr[j+1] then  
                tmp = arr[j]  
                arr[j] = arr[j+1]  
                arr[j+1] = tmp  
            end  
        end  
    end  
end  
  
function main( ... )  
    -- body  
    local arr = {1,20,-1,30,23,21,-108,55,26,55,-2}  
    bubble_sort(arr)  
  
    for i,v in ipairs(arr) do  
        print(i,v)  
    end  
end  
  
-- main()  

-- 计算table中元素个数
tab3 = {mon = "Jan",1,thu = "Fri" ,4,"sa",nil,"sdf"}
count = 0
for i,v in pairs(tab3) do
  count =count + 1
  print(count,"  ",v)
end
print(count)


-- 猴子选大王

-- monkeyKing()

function chooseKing(n)
  -- body
  local monkey = {}
  for i=1,n do
    monkey[i] = i
  end

  for i=n,1,-1 do
    for k=1,3 do
      temp = monkey[1]
      for j=1,i-1 do
        monkey[j] = monkey[j + 1]
      end
      monkey[i] = temp
    end
  end
  return monkey[1]
end

king = chooseKing(17)
print(king)