local FileSystem = loadlib("FileSystem")
local ApplicationHandler = loadlib("ApplicationHandler")
local fpath = "C:/Nature2D"

local function Mrequire(path: string?)
	local LEFData = FileSystem.GetFile(path).Data

	local module = ApplicationHandler.ExecuteLEFOutput(LEFData, path)
	return module()
end	

return {
	MouseConstraint = Mrequire(fpath.."/Plugins/MouseConstraint.LEF") --require(script.MouseConstraint),
	Quad = Mrequire(fpath.."/Plugins/Quad.LEF") --require(script.Quad),
	Triangle = Mrequire(fpath.."/Plugins/Triangle.LEF") --require(script.Triangle)
}
