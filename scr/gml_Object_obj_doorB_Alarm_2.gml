global.entrance = 2
instance_create(0, 0, obj_persistentfader)
if (room == room_school_literature)
    room_goto(room_school_hall)
else
    room_goto(room_previous(room))
