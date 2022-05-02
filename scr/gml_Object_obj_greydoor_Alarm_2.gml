global.entrance = 19
instance_create(0, 0, obj_persistentfader)
if (room == room_ruins12)
    room_goto(room_school_hall)
else
    room_goto(room_mysteryman)
