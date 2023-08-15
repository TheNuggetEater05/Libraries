getgenv().esp_drawings = {}

local drawing_new = Drawing.new or ""

local lib = {}

local funcs = {} do
  function funcs:draw_new(type, add_to_table, props)
    local properties = props or {}
    local drawing = drawing_new(type)
    for index, property in pairs(properties) do
      drawing[index] = property;
    end
  end
end

return lib;
