# Minecraft Treasure Hunt Datapack

Based on a Safe Survival minigame event that took place everyweek on the previous map. Sadly has not been re-implemented since.

### Showcase
[![treasurehunt](https://img.youtube.com/vi/V_hVDsGSm_M/0.jpg)](https://www.youtube.com/watch?v=V_hVDsGSm_M)

[https://www.youtube.com/watch?v=V_hVDsGSm_M](https://www.youtube.com/watch?v=V_hVDsGSm_M)

### Todo

- Start & end messages
- Track player scores
  - Should be possible via player_generates_container_loot trigger?
- Display player scores
- Safety checks around location editor
  - Don't allow when game is active
  - Don't allow game start when location editor is active
  - Don't allow open/close multiple times in a row
  - Dont' allow close before open etc
- Safety around changing values when something has gone wrong
- Only tick game every 20 ticks, no need for this to be every tick
- Test & implement at larger scale/area
  - In particular with any entities (mostly the egg markers when in location editor mode)
- Extend chest rewards

