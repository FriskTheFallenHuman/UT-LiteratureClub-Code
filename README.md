# <u>How to operate the pasta code:</u>

This is a basic guide of how-to use this repo.

Enable profile mode in UMT first.

Use `ImportGML.csx` with the latest beta open on the `scr` folder and its subfolders.

For recently made patches first get the MD5 of the `data.win`, and with that MD5 goto `%appdata%/UndertaleModTool/Profiles` and copy the folder matching the MD5 somewhere else.

In WinMerge or any other Diff software compare the Profile Mode Code with the git repo code so things don't get lost.

Once compared and merged, state in the Commit title that the commit is `Profiler Mode Code` Ex: `Profiler Mode: Bepis commit`.


For anything new follow the instructions below:

## <u>New Objects</u>

For new game objects Ex: `gml_Object_obj_bepis` do:

* In the folder `installation` create a txt file with the name of the obj `obj_bepis` and Inside of the the txt file write:

  - Sprite name if applicable 
  
  - Is Persistent?
  
  - Is Visibile?
  
  - Its parent
  
  - And what room it should be in (including position, layer)

## <u>New Scripts</u>

For new game scripts Ex: `gml_Script_scr_bepis` for normal scripts or `gml_GlobalScript_bepis` for GlobalScripts or `gml_RoomCC_room_bepis` for Room creation scripts do:

* In the folder `installation` create a txt file with the name of the obj `scr_bepis` and Inside of the the txt file write:
  
  * How to use it
  
  * Is Global Script?
