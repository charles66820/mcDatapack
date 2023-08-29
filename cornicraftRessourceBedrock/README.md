# Magicorp

## Utile

## Links

* doc: <https://bedrock.dev/docs/stable/Molang>
* <https://learn.microsoft.com/en-us/minecraft/creator/reference/content/molangreference/examples/molangconcepts/queryfunctions>

* `/storage/self/primary/Android/data/com.mojang.minecraftpe/files/games/com.mojang/logs/ContentLog__Tuesday__2023_August_29__02_21_49_1.txt`

### Commands

### Debug animations

```json
"animations": {
  "0": "animation.erebus_portal.ground",
  "1": "animation.erebus_portal.gui",
  "2": "animation.erebus_portal.head",
  "3": "animation.erebus_portal.fixed",
  "4": "animation.erebus_portal.firstperson_righthand",
  "5": "animation.erebus_portal.firstperson_lefthand",
  "6": "animation.erebus_portal.thirdperson_righthand",
  "7": "animation.erebus_portal.thirdperson_lefthand",
  "8": "animation.item.first_person"
},
"scripts": {
 "animate": [
    {
      "0": "!c.is_first_person && c.item_slot == 'main_hand' && query.is_item_name_any('slot.hotbar', 0, 'minecraft:cooked_porkchop')"
    },
    {
      "1": "!c.is_first_person && c.item_slot == 'main_hand' && query.is_item_name_any('slot.hotbar', 1, 'minecraft:cooked_porkchop')"
    },
    {
      "2": "!c.is_first_person && c.item_slot == 'main_hand' && query.is_item_name_any('slot.hotbar', 2, 'minecraft:cooked_porkchop')"
    },
    {
      "3": "!c.is_first_person && c.item_slot == 'main_hand' && query.is_item_name_any('slot.hotbar', 3, 'minecraft:cooked_porkchop')"
    },
    {
      "4": "!c.is_first_person && c.item_slot == 'main_hand' && query.is_item_name_any('slot.hotbar', 4, 'minecraft:cooked_porkchop')"
    },
    {
      "5": "!c.is_first_person && c.item_slot == 'main_hand' && query.is_item_name_any('slot.hotbar', 5, 'minecraft:cooked_porkchop')"
    },
    {
      "6": "!c.is_first_person && c.item_slot == 'main_hand' && query.is_item_name_any('slot.hotbar', 6, 'minecraft:cooked_porkchop')"
    },
    {
      "7": "!c.is_first_person && c.item_slot == 'main_hand' && query.is_item_name_any('slot.hotbar', 7, 'minecraft:cooked_porkchop')"
    },
    {
      "8": "!c.is_first_person && c.item_slot == 'main_hand' && query.is_item_name_any('slot.hotbar', 8, 'minecraft:cooked_porkchop')"
    }
  ]
},
```
