


-- game = {}

-- function game.play( ... )
-- 	print("play game")
-- end

-- function game.stop( ... )
-- 	print("game stop")
-- end

-- local function play( ... )
-- 	print("play")
-- end
 
--  game.play = play

-- return game

-- module("Game",package.seeall)

-- function play( )
-- 	print("wefwefs")
-- end

-- age = 12
local  moduleName = "game"
 M = {}

_G[moduleName] = M
setmetatable(M,{__index = _G})
package.loaded[moduleName] = M

age = 122

function play( ... )
	print("Game play")
end





