if (global.language == "en")
    global.language = "ja"
else
    global.language = "en"
ossafe_ini_open("config.ini")
ini_write_string("General", "lang", global.language)
ossafe_ini_close()
