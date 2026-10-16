# Minecraft Treasure Hunt Datapack

Based on a Safe Survival minigame event that took place every week on the previous map. Sadly has not been re-implemented since, so I've bought it back to life for fun!

### Showcase
[![treasurehunt](https://img.youtube.com/vi/I3ijmbkPEVM/0.jpg)](https://www.youtube.com/watch?v=I3ijmbkPEVM)

[https://www.youtube.com/watch?v=I3ijmbkPEVM](https://www.youtube.com/watch?v=I3ijmbkPEVM)

### How it works

#### Game Loop

`/data get storage treasurehunt:game`
```jsonc
{
  // index of the last element in the locations array
  "max_location_index": 9,

  // index of the last element in the populated_locations array
  "last_index_populated_locations": 3,

  // index of the last element in the available_locations array
  "last_index_available_locations": 5,

  // index of the last location random roll
  // used to select which location to populate with a reward 
  "location_roll": 1,

  // tracks locations that don't have rewards in them currently
  // one of these will be selected as the next location
  "available_locations": [
    {"x": 218, "y": 79, "z": 126, "rot": "north"},
    {"x": 216, "y": 83, "z": 154, "rot": "west"},
    // ...
  ]

  // tracks locations that are populated with treasure currently
  "populated_locations": [
    {"x": 222, "y": 74, "z": 111, "rot": "south"},
    {"x": 194, "y": 87, "z": 157, "rot": "west"},
    // ...
  ]
}
```
As the game loops around, we do a random roll from 0 to `last_index_available_locations`, this allows us to select a location from `available_locations`. We then spawn a treasure chest in that location & move it into `populated_locations`.

`available_locations` is populated from treasurehunt:locations `locations` when the game starts.

Once `last_index_populated_locations` is greater than or equal to `.game_max_concurrent_rewards` then we will despawn the first treasure chest in the `populated_locations` array. This should always be the longest lived treasure chest. When the chest is despawned we move it back into `available_locations` to be re-rolled.

The following config can be adjusted in the treasurehunt.store scoreboard (will currently be reset on reload, will fix):
- .game_end_ticks = how long a game should last in ticks (default: 6000)
- .game_reward_ticks = how often the game should spawn/despawn a treasure chest (default: 100)
- .game_max_concurrent_locations = how many treasure chests should be avaiable at any point in time (default: 4)

### Location Editor

> [!WARNING]
> There is currently a bug if you place the chest in the same location+rotation multiple times in the same editing session.

`/data get storage treasurehunt:locations` 
```jsonc
{
  // array of saved locations
  "locations": [
    {"x": 218, "y": 79, "z": 126, "rot": "north"},
    {"x": 216, "y": 83, "z": 154, "rot": "west"},
    // ...
  ],

  // when location editor is activated a copy of the locations array is created here
  // then whenever a new chest is placed by the location editor it is added here. 
  "locations_editor": [
    {"x": 222, "y": 74, "z": 111, "rot": "south"},
    {"x": 194, "y": 87, "z": 157, "rot": "west"},
    // ...
  ],

  // when editing is completed we loop through each of the locations_editor elements and if there is a chest there in the correct orientation we save it here
  // if there is no chest it is discarded
  // once complete locations will be overwritten by these saved locations
  "locations_saved": [
    {"x": 222, "y": 74, "z": 111, "rot": "south"},
    {"x": 194, "y": 87, "z": 157, "rot": "west"},
    // ...
  ]
}
```

