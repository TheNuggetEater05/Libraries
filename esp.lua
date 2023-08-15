getgenv().lib_drawings = {}
getgenv().esp_drawings = {}
getgenv().esp_settings = {
  global_enabled = false,
  global_name_enabled = false,
  global_distance_enabled = false,
  global_box_enabled = false
}
;
local drawing_new = Drawing.new or ""
local camera = game:GetService("Workspace").CurrentCamera;

local lib = {}

local funcs, esp = {}, {} do
  --       funcs:draw_new(string, boolean,    table)
  function funcs:draw_new(type, add_to_table, props)
    local properties = props or {}
    local drawing = drawing_new(type)
    for index, property in pairs(properties) do
      drawing[index] = property;
    end
    table.insert(getgenv().lib_drawings, drawing)
    return drawing, properties
  end
  --       funcs:round(string, float)
  function funcs:round(type, input)
    if type == "up" then
      return math.ceil(tonumber(input));
    elseif type == "down"
        return math.floor(tonumber(input));
    end
    return 0;
  end
  --[[
  ########################################
  esp:new config table defaults
  config = {
    ["useCustomName"] = false,
    ["customName"] = "Name",
    ["color"] = Color3.fromRGB(0, 0, 0),
    ["outline"] = true,
    ["outlineColor"] = Color3.fromRGB(255, 255, 255)
  }
  ########################################
  ]]
  --       esp:new(Instance, table)
  function esp:new(target, config)
    
    local cfg = config or {};
    cfg.useCustomName = config.useCustomName or false;
    cfg.customName = config.customName or "Name";
    cfg.color = config.color or Color3.fromRGB(0, 0, 0);
    cfg.outline = config.outline or true;
    cfg.outlineColor = config.outlineColor or Color3.fromRGB(255, 255, 255);
    table.insert(draw_table., drawing_new("Text", true, {Text = target.Name, Visible = false, Transparency = 1, Color = cfg.color, Size = 12, Outline = cfg.outline, OutlineColor = cfg.outline_color, Font = 1}));
    
    return 0;
  end
  end
end


return lib;
