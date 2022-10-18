-- use this file to map the AP item ids to your items
-- first value is the code of the target item and the second is the item type (currently only "toggle", "progressive" and "consumable" but feel free to expand for your needs!)
-- here are the SM items as an example: https://github.com/Cyb3RGER/sm_ap_tracker/blob/main/scripts/autotracking/item_mapping.lua
ITEM_MAPPING = {
    [58675309] = {"card", "consumable"},
    [78675309] = {"floppy", "consumable"},
    [108675309] = {"gun", "consumable"},
    [98675309] = {"opas", "consumable"},
    [68675309] = {"redcard", "toggle"},
    [28675309] = {"jj", "toggle"},
    [08675309] = {"apple", "toggle"},
    [18675309] = {"champ", "toggle"}
}