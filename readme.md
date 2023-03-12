<p align=center>
<h1 align="center">
<a href="https://discord.gg/AXqp3ctcSb"><img src="https://cdn.discordapp.com/attachments/1075496191913099344/1075496192164773888/sakuya.gif" width="80"></a>
</h1>
<br>
</p>

```ahk
/* reference
    ! if your in vsc click the arrow to the left of '/*' to collapse this section !

    *default variables:
        _.scriptNameExtension = the scripts extension

        _.screen.width = the specific screen's width every time the variable is called
            _.screen.staticWidth = the screen's width when script was loaded

        _.screen.height = the specific screen's height every time the variable is called
            _.screen.staticHeight = the screen's height when script was loaded

        _.hk = the current hotkey with the modifiers cut out

        _.batchlines = the current batchLines setting, manually changing this variable will change the batchLines settings, example: '_.sg.init("batchLines","-1")'

        $[#] = a certain parameter from the script's fileName, Example: 'someVar:=$[1]'
    /

    *extensions:
        object.queue(search*)  |  example: assArray.queue("password")
            search* = what key to look for inside the associative array

            notes: looks if a key is inside object and returns the related value, if the key doesn't exist just outputs "0"
        /

        array.hasValue(needle)  |  example: variable:=$.hasValue("q")
            needle = the value to search for in the array

            notes: returns index of array where 'needle' is found
        /

        object.decode(fullPasswordObjectKey,fullKeyObjectKey)  |  example variable:=index1.decode()
            fullPasswordObjectKey = the object key for the encrypted password, default: "password1"

            fullKeyObjectKey = the object key for the encrypted key, default: "key1"

            notes: returns decrytped password, this is meant to be used with the '_.ktConvert()' method
        /

        object.verify(password,passwordIdentifier,keyIdentifier)  |  example: variable:=index1.verify("examplePassword")
            password = the password to check with each available object key decoded

            passwordIdentifier =  the object key name for the password without the number on the end, default: "password"

            passwordIdentifier =  the object key name for the encryption key without the number on the end, default: "password"

            notes: returns 1 if the password is in the object, this is meant to be used with the '_.ktConvert' method
        /

        object.report(content,fullWebhookObjectKey,FullWebkeyObjectKey)  |  example: server.report("basic info")
            content = message you want to send to discord channel via webhook

            fullWebhookObjectKey = the object key for the encrypted webhook url, default: "webhook1"

            fullWebkeyObjectKey = the object key for the encrypted key, default: "webkey1"

            notes: directly sends information to a discord channel with discord webhooks, this is meant to be used with the '_.ktConvert()' method
        /
    /

    *_:
        _.hotkey(modifiers,hotkey,function)  |  example: _.hotkey("$+","r","main")
            modifiers = any modifier combination you would usually use in hotkeys, https://www.autohotkey.com/docs/v1/Hotkeys.htm

            hotkey = any hotkey you would usually use in hotkeys, https://www.autohotkey.com/docs/v1/KeyList.htm

            function = function name you want to run on keypress, see above in template for reference
        /

        _.wait()  |  example: _.wait()
            notes: waits for current hotkey to be lifted to continue, see above in template for reference
        /

        _.cmd(command,hide,wait)  |  example: _.cmd("@echo information && pause","hide","wait")
            command = command to run inside windows terminal (batch)

            hide = decide to hide the terminal, omit to just keep it open

            wait = decide to wait for terminal to finish process to continue with script, omit to continue script execution when terminal is open
        /

        _.type(text)  |  example: _.type("some very informative text")
            text = text to be typed out all at once
        /

        _.init(name,content)  |  example: _.init("variableName","text inside variable")
            name = name of variable you want to initialize

            content = the content of the variable you want to initialize
        /

        _.global.init(name,content)  |  example: _.init("variableName","text inside variable")
            name = name of variable you want to initialize globally

            content = the content of the variable you want to initialize globally
        /

        _.sg.init(name,content)  |  example: _.sg.init("variableName","text inside variable")
            name = name of variable you want to initialize super-globally

            content = the content of the variable you want to initialize super-globally

            notes: to use the super global variables you have to access them with '_.variableName'
        /

        _.mouse.move(x,y)  |  example: _.mouse.move("1000","1000")
            x = x coordinate of screen you would like to move the mouse

            y = y coordinate of screen you would like to move the mouse
        /

        _.mouse.relative(x,y)  |  example: _.mouse.relative("100","200")
            x = x value of how many pixels you want to move the mouse relative to the current mouse position (can be negative)

            y = y value of how many pixels you want to move the mouse relative to the current mouse position (can be negative)
        /

        _.grab(name)  |  example: _.grab("variableName")
            name = name of variable to grab temporarily

            notes: returns the content of the variable, so best used in an expression
        /

        _.sg.grab(name)  |  example: _.sg.grab("variableName")
            name = name of super-global variable to grab temporarily

            notes: this is very niche, the only real use case is having the name of the variable be an expression or other variables
        /

        _.sleep(time)  |  example: _.sleep("2")
            time = amount of time to specificly sleep

            notes: the reason this method exists because the 'sleep' command will only average 15.6 ms of precision, Read more at: https://www.autohotkey.com/docs/v1/lib/Sleep.htm#Remarks
        /

        _.check(expression,true,false)  |  example: _.check((var1) && (var2 = "something"))
            expression = returns true or false based on how the expression evaluates

            true = the value returned by method if evaluated true, default: "1"

            false = the value returned by method if evaluated false, default: "0"
        /

        _.assetLoad(link,fileName)  |  example: _.assetLoad("https://github.com/idgafmood/mhk_template/releases/download/%2B/mloop_ahk.zip","mloop_ahk.zip")
            link = direct link to file you want to download

            fileName = name of file with extension to save it as, example: "name.png"
        /

        _.urlLoad(link)  |  example: array:=_.urlLoad("https://raw.githubusercontent.com/idgafmood/mhk_template/main/mloop.kt")
            link = direct link of what to download, typically a raw link

            notes: this method returns an array object so it is used to set a variable like the example
        /

        _.ktConvert(string,key)  |  example: _.ktConvert("genericPassword","24980672")
            string = the password to be encrypted

            key = the encryption key

            notes: sends object to clipboard, this is meant to be used with the '_.urlLoad()' method
        /

        _.append(original,string)  |  example: variable1:=_.append(variable2,"new text")
            original = string to append text to, can be an array

            string = string to add to original

            notes: if 'original' is an array it will collapse it and ignores 'string'
        /

        _.filter(string,pattern*)  |  example: variable:=_.filter("some wacky string.","match\is)(wacky)","is)([(a)]+)?")
            string = string to apply regex statements to

            pattern* = regex statement to apply to 'string', supports infinite parameters and the output of the previous statement is used

            notes: you can use 'match\' infront of the statement to do a regex match, example: _.filter(string,"match\i)(filter)?")
        /

        _.clock()  |  example: _.clock()
            notes: this starts the clock for the '_.when()' method
        /

        _.when(time)  |  example: _.when(1000)
            time = the specific time to continue execution, if value starts with '+' will add up all previous values and itself to determine the wait time, example: _.when("+10.5")

            notes: more reliable but complicated alternative to the '_.sleep()' method, this is required to be used with the '_.clock()' method
        /
    /

    *_.json:
        _.json.load(string)  |  example: server:=_.json.load("{""key"":""value""}")
            string = json object to convert to ahk object
        /

        _.json.dump(object)  |  example: variable:=_.json.dump(server)
            object = ahk object to convert to json object
        /
    /
*/ ;\\ ᗜˬᗜ
```
.
