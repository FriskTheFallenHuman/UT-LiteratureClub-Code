global.entrance = 1
instance_create(0, 0, obj_persistentfader)
if (room != room_castle_prebarrier)
    room_goto(room_next(room))
if (room == room_school_hall)
    room_goto(room_school_literature)
if (room == room_ruins12)
    room_goto(room_ruins12B)
else if (global.flag[7] == 1)
    room_goto(room_castle_trueexit)
else
    room_goto_next()
