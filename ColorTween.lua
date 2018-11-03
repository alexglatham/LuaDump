local SPEED = .01
local COLOR = Color3.new(0, 0, 0)

function Tween(NEW, CURRENT)
	for i = 0, 1, SPEED do
		COLOR = Color3.new(((CURRENT.r*(1-i))+(NEW.r*i)),((CURRENT.g*(1-i))+(NEW.g*i)),((CURRENT.b*(1-i))+(NEW.b*i)))
		wait()
	end
	COLOR = NEW
end

while (true) do
	wait(.3)
	local NEW_COLOR = Color3.new(math.random(),math.random(),math.random())
	Tween(NEW_COLOR, COLOR)
end
