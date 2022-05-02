global.entrance = 4
instance_create(0, 0, obj_persistentfader)
if (room == room_school_hall)
    room_goto(room_school_literature)
else
    room_goto(room_next(room_next(room)))
