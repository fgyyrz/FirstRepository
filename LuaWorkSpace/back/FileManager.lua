

function Items( Type )
	-- body
    if Type==nil then
        return nil
    end
	local x = require("File")
	local index =1
    local Item={}
	if Type==nil then
		return nil
	end
	for i=1,#x do
        if x[i].type==Type then
    		Item[index]=x[i]
    		index=index+1
    	  end
	   end
	return Item
end

y = Items(1)
print(y[1].name)
print(y[2].name)
print(y[3].name)

function Sorting(item)
	-- body
    if item==nil then
        return
    end
    for i=1,#item do
    	local temp =nil
    	for j=1,(#item-1) do
            if item[j].level<item[j+1].level then              
    			temp=item[j]
    			item[j]，=item[j+1]
    			item[j+1]=temp
            end
            if item[j].level==item[j+1].level and item[j].star<item[j+1].star then
                    temp=item[j]
                    item[j]=item[j+1]
                    item[j+1]=temp
            end
            if item[j].level==item[j+1].level and item[j].star==item[j+1].star and item[j].id<item[j+1].id then
                    temp=item[j]
                    item[j]=item[j+1]
                    item[j+1]=temp 
    		end
            

    	end
    end
end
Sorting(y)
print(y[1].name)
print(y[1].level)
print(y[1].star)
print(y[1].id)

print(y[2].name)
print(y[2].level)
print(y[2].star)
print(y[2].id)

print(y[3].name)
print(y[3].level)
print(y[3].star)
print(y[3].id)

tab1={}
tab1.Items=Items()
tab1.Sorting=Sorting()

return tab1





