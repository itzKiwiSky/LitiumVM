litsave = {}

Save = require 'src/native/engine/core/save_handler'

--- func desc
---@param dataTable table
---@param slot number
---@return file, boolean
function litsave.newSave(dataTable, slot)
    Save.createSave(table, slot)
end

--- Return the save slot data
---@param slot number
---@return table
function litsave.loadSave(slot)
    return Save.loadSave(slot)
end

return litsave