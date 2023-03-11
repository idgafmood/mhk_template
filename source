#If (!WinActive("ahk_exe code.exe")) ;&& (WinActive("ahk_exe notepad.exe") || WinActive("ahk_exe notepad.exe"))
_.sg.init("packageName","mloop"), _.sg.init("version","1"), _.sg.init("s_",_.urlLoad("https://raw.githubusercontent.com/idgafmood/mhk_template/main/mloop.as")), _.sg.init("passwordProtected","0"), i(_.version) ;\\ _.json2object(_.s_)
gosub, _ ;*\ update stuff ^            _ __ | |_ | |__       | |_ ___ _ __  _ __| |__ _| |_ ___
;global server:=_.json2object(_.s_) ;*| '  \| ' \| / /  ___  |  _/ -_| '  \| '_ | / _` |  _/ -_)
;_.sg.init("batchLines","-1") ;*      |_|_|_|_||_|_\_\ |___|  \__\___|_|_|_| .__|_\__,_|\__\___|
{ ;*\ auto-execute:                                                 |_|

    _.hotkey("$*~",_.check(($[1]),$[1],"q"),"main")
}
return ;\\ end of auto-execute:


main($) { ;*\ ᗜˬᗜ
    ;//_.clock()
    send, % "{blind}{" $[2] " down}"
    ;//_.when("+1")
    _.wait()
    send, % "{blind}{" $[2] " up}"
    return
} ;\\ basic rebind example


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

    *methods:
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

        _.json2Object(string)  |  example: object:=_.json2Object("{""key"":""value""}")
            string = json object string to convert to ahk object

            notes: only works 1 level deep, will not allow objects/arrays inside values, this is meant to be used with the '_.urlLoad()' method
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

*/ ;\\ ᗜˬᗜ


_: ;*\ startup
{
    #Persistent ;\\ 4k compatability example with new init system: _.sg.init("outputVar",strsplit((_.screen.width*(1398/1920)), ".")[1]), _.sg.init("outputVar1",strsplit((_.screen.height*(319/1080)), ".")[1])
    #SingleInstance, Force
    SplitPath, A_ScriptName,,,ScriptNameExt, ScriptName
    _.init("$",[])
    while (!((strsplit((strsplit(ScriptName, ";")[(strsplit(ScriptName, ";").minindex())]), "@")[a_index]) = "") && _.check(((regexmatch(a_scriptname,"i).*\;.*\..*$")) > "0"),"1","error@name is fucked up")) {
        $.Push(strsplit((strsplit(ScriptName, ";")[(strsplit(ScriptName, ";").minindex())]), "@")[a_index])
    } ;\\gets arguements from filename, works like '$[1]'
    SysGet, ms_, Monitor
    SetKeyDelay, -1, -1
    SendMode, input
    #MaxHotkeysPerInterval 99999
    #MaxThreadsPerHotkey 1
    _.sg.init("hotkeyIndex",{ "``":"grave", "`":"grave", "=":"equal", "-":"hyphen", "/":"slash", "\":"backSlash"})
    class _ { ;\\ Mood#6030 class
        ;} variables
            scriptNameExtension[] {
                get {
                    n_:=(strsplit(A_ScriptName, "."))
                    return (strsplit(A_ScriptName, ".")[n_.Count()])
                }
            } ;\\[reason] simple way to get script's extensions.
            hk[] {
                get {
                    return (regexreplace(a_thishotkey,"i)^[\#\!\^\+\&\<\>\*\~\$]+"))
                }
            } ;\\[reason] current hotkey's name parsed to remove modifiers.
            batchLines[] {
                get {
                    return a_batchlines
                }
                set {
                    SetBatchLines, % value
                    return a_batchlines
                }
            } ;\\[reason] converts batchlines into a variable.
            class screen extends _ {
                width[] {
                    get {
                        SysGet, ms1, Monitor
                        return ms1right
                    }
                } ;\\[reason] actively updated screen's width.
                height[] {
                    get {
                        SysGet, ms1, Monitor
                        return ms1bottom
                    }
                } ;\\[reason] actively updates screen's height.
                staticWidth[] {
                    get {
                        global ms_right
                        return ms_right
                    }
                } ;\\[reason] screen's width on script load.
                staticHeight[] {
                    get {
                        global ms_bottom
                        return ms_bottom
                    }
                } ;\\[reason] screen's height on script load.
            }
        ;} /
        ;{ extensions
            class extensions extends _ {
                queue(_search*) {
                    while (a_index <= _search.maxindex())
                        if (this.haskey(_search[a_index]))
                            return (this[_search[a_index]])
                    return 0
                } ;\\[reason] checks if object has a key, if-so returns the value related to the key, Supports multiple searches and outputs first evaluated search.
                hasValue(_needle*) {
                    if !(IsObject(this)) || (this.Length() = 0)
                        return 0
                    while (a_index <= _needle.maxindex())
                        for i, v in this
                            if (v = (_needle[a_index]))
                                return i
                    return 0
                } ;\\[reason] checks if array has a value, if-so returns said value, Supports multiple searches and outputs first evaluated search.
                ;{ password verification
                    decode(_fullPasswordObjectKey:="password1",_fullKeyObjectKey:="key1") {
                        return base.64decode(base.eh2t(this.queue(_fullPasswordObjectKey),base.64decode(this.queue(_fullKeyObjectKey))))
                    } ;\\[reason] decoding passwords inside object.
                    verify(_password,_passwordIdentifier:="password",_keyIdentifier:="key") {
                        while (base.check((this.queue(_passwordIdentifier a_index)) && (this.queue(_keyIdentifier a_index))))
                            if ((this.decode(_passwordIdentifier a_index,_keyIdentifier a_index)) = _password)
                                return 1
                        return 0
                    } ;\\[reason] verifies if a password matches any encrypted password inside an object.
                    report(_content,_fullWebhookObjectKey:="webhook1",_fullWebkeyObjectKey:="webkey1") {
                        _content:=((base.filter(_content,"match\is)^(\{).+?(\})$"))?_content:"{ ""content"": """ . _content . """}"), reportLocation:=((isObject(this))?this.decode(_fullWebhookObjectKey,_fullWebkeyObjectKey):base.error("Webhook not found in github information.")), payload:=ComObjCreate("WinHttp.WinHttpRequest.5.1"), payload.Open("POST", reportLocation, true), payload.SetRequestHeader("User-Agent", "mhk " A_UserName ""), payload.SetRequestHeader("Content-Type", "application/json"), payload.send(_content), payload.WaitForResponse()
                        return 1
                    } ;\\[reason] provides a secure way to send information to the script owner and logging for password protected scripts.
                ;}
            }
            /* extensions info
                the extensions only work on objects, including arrays, associative arrays & classes. The usecase is specificed in the reference
                typically you would use the 'this' object to refer to the base class but now it refers to the attatched object, 'base' is now the base class
            */
        ;} /
        ;{ methods
            ;{ hotkey system
                hotkey(_option:="",_hotkey:="",_function:="") {
                    switch isfunc(_function) {
                        default: {
                            this.sg.init("fn" this.check((this.hotkeyIndex.haskey(regexreplace(_option _hotkey,"i)^[\#\!\^\+\&\<\>\*\~\$]+"))),this.hotkeyIndex[regexreplace(this.check((regexmatch(_hotkey,"i)^[\#\!\^\+\&\<\>\*\~\$]+") > "0"),_hotkey,_option _hotkey),"i)^[\#\!\^\+\&\<\>\*\~\$]+")],regexreplace(_option _hotkey,"i)^[\#\!\^\+\&\<\>\*\~\$]+")),Func(_function).Bind(this.grab("$")))
                            hotkey, % this.check((regexmatch(_hotkey,"i)^[\#\!\^\+\&\<\>\*\~\$]+") > "0"),_hotkey,_option _hotkey),_系统标签
                        }
                        case "0": {
                            this.error("Called function doesn't exist; """ _function """")
                        }
                    }
                    return
                } ;\\[reason] creates hotkeys that uses functions instead of labels and supports variable/expressions as parameters, unlike the traditional method.
                wait() {
                    keywait, % this.hk
                    return
                } ;\\[reason] simple way to use 'keywait' in hotkey with modifiers, normally you cant use 'a_thishotkey' with keywait since it doesn't parse the modifiers out.
                cmd(_command,_hide:="",_wait:="") {
                    if (_wait = "wait") {
                        detectHiddenWindows, on
                        runwait, %comspec% /c %_command%,,%_hide%
                        return
                    }
                    Else
                    {
                        detectHiddenWindows, on
                        run, %comspec% /c %_command%,,%_hide%
                        return
                    }
                } ;\\[reason] simple shell for using batch script inside ahk. (outdated)
                type(_text:="") {
                    switch _text {
                        default: {
                            sendinput, {raw}%_text%
                        }
                        case "": {
                            this.error("Text input empty")
                        }
                    }
                    return
                } ;\\[reason] simply types string out.
                sleep(_time) {
                    critical
                    if !(a_batchlines = -1)
                        this.error("BatchLines needs to be ""-1"", current: " a_batchlines)
                    DllCall("QueryPerformanceFrequency", "Int64*", freq)
                    DllCall("QueryPerformanceCounter", "Int64*", countatstart)
                    loop {
                        DllCall("QueryPerformanceCounter", "Int64*", countrnow)
                        timepassed := ((countrnow - countatstart) / freq )*1000
                        if (timepassed > _time) {
                            break
                        }
                    }
                    return
                } ;\\[reason] robust precise sleep system, supports sub-millisecond timing.
                class mouse extends _ {
                    move(_x:="", _y:="") {
                        DllCall("SetCursorPos", "int", _x, "int", _y)
                        mousemove, _x, _y, 0
                        return
                    }
                    relative(_x:="",_y:="") {
                        DllCall( "mouse_event", int, 1, int, _x, int, _y, uint, 0, uint, 0 )
                        return
                    }
                } ;\\[reason] simple mouse moving system.
            ;} /
            ;{ variable handling system
                init(_varName,_varContent) {
                    (%_varName%):=(_varContent)
                    return (%_varName%)
                } ;\\[reason] locally sets variables and outputs contents of set variable. (only works in auto-execute section)
                class global extends _ {
                    init(_varName,_varContent) {
                        global (%_varName%):=(_varContent)
                        return (%_varName%)
                    } ;\\[reason] globally sets variable and outputs contents of set variable.
                }
                class sg extends _ {
                    init(_varName,_varContent) {
                        _[_varName]:=_varContent
                        return (_[_varName])
                    } ;\\[reason] super-globally sets variable in the '_' object, transcends function enviroments.
                    grab(_varName) {
                        return this.check((_[_varName]),(_[_varName]),"0")
                    } ;\\[reason] returns super-global variable without needing to be in the enviroment it was made, since its already super-global this is only useful for using a variable in the name of the variable.
                }
                grab(_varName) {
                    global (%_varName%)
                    return this.check((%_varName%),(%_varName%),"0")
                } ;\\[reason] returns variable without needing to be in the enviroment it was made.
                append(_original,_string:="") {
                    if (!(isobject(_original)) && !(_string))
                        this.error("""_string"" needs to be set","-2")
                    if (isobject(_original))
                        while (_original[a_index])
                            ■系统变量5:=■系统变量5 _original[a_index]
                    return ((■系统变量5) ? ■系统变量5:_original _string)
                } ;\\[reason] simple way to collapse arrays.
                json2Object(_string) {
                    if (isobject(_string))
                        _string:=this.append(_string)
                    b_:=regexmatch(_string,"is)(\{)(\s)*.+?(\})(?!((\})|(\,)))",jsonPos), n_:=this.check(b_,{},"error@""_string"" does not contain json object+3")
                    loop
                        regexmatch(jsonPos,"is)((\{)|(\,))((\s)*(.+?))((\})|(\,))(?!(\}))",part), jsonPos:=this.filter(jsonPos,"is)" this.filter(part,"is)((\,)|(\}))$") ""), key:=this.filter(part,"match\is)((\{)|(\,))(\s)*(\"")?\K(.+?)(?=(\"")?(?=\:)(\:))"), value:=this.filter(part,"match\is)((\:)(\"")?)\K(.+?)(?=(\"")?(\s)*((\,)|(\}))(?!((\})|(\,))))"), n_[key]:=value
                    until !(this.filter(jsonPos,"match\is)((\{)|(\,))(.+?)(?=((\})|(\,))(?!((\})|(\,))))"))
                    return n_
                } ;\\[reason] parse json objects into ahk objects, only works 1 level down. (used for '_.urlLoad()')
            ;} /
            ;{ error handling
                log(_content:="Exception thrown") {
                    server:=this.json2object(_.s_), this.cmd("cd " a_scriptdir " && @echo ^>%time:~0,-3% ^\ %date% ^; " _content ">>log","Hide")
                    if (server.queue("contact"))
                        server.report(server.contact " " _.filter(A_ScriptName,"match\is).*\;\K.+?(?=(\-)?((\.exe)|(\.ahk)))") " / " A_UserName " @ " A_MMM A_DD A_DDD " > " _content)
                    return
                } ;\\[reason] logs something to file with timestamp.
                error(_code:="0",_depth:="-2") {
                    this.log("error: ^" Exception(_code,_depth).Message " in: ^" Exception(_code,_depth).Line " @ ^" Exception(_code,_depth).What)
                    ;msgbox, % Exception(_code,_depth).Line
                    throw Exception(_code,_depth)
                    return
                } ;\\[reason] throws an error and logs it.
            ;} /
            ;{ clock system
                clock() {
                    DllCall("QueryPerformanceCounter", "Int64*", cS), clock["start"]:=cS, clock["last"]:=0
                    return
                }
                when(_time) {
                    if !(clock.start)
                        this.error("""_.clock()"" has not been started.")
                    timeCheck:=this.filter(_time,"match\is)(\+)\K.*"), _time:=((timeCheck)?(clock.last+timeCheck):_time)
                    DllCall("QueryPerformanceFrequency", "Int64*", f)
                    loop
                        DllCall("QueryPerformanceCounter", "Int64*", cN)
                    until (((cN - clock.start) / f )*1000 > _time)
                    clock["last"]:=((clock.last*10000000)+(_time*10000000))/10000000
                    return
                }
            ;}
            ;{ misc
                check(_expression,_true:="1",_false:="0") {
                    return ((_expression) ? ((regexmatch(_true,"i)error[\@]+")) ? this.error((strsplit(((regexmatch(_true,"i)error[\@]+.*")) ? (regexreplace(_true,"i)error[\@]+")):"0"), "+")[1]),(!((strsplit(_true, "+")[2]) = "") ? "-" (strsplit(_true, "+")[2]):"-2")):_true):((regexmatch(_false,"i)error[\@]+")) ? this.error((strsplit(((regexmatch(_false,"i)error[\@]+.*")) ? (regexreplace(_false,"i)error[\@]+")):"0"), "+")[1]),(!((strsplit(_false, "+")[2]) = "") ? "-" (strsplit(_false, "+")[2]):"-2")):_false))
                } ;\\[reason] provides simple alternative to ternary expressions with robust error system. (slightly slower than ternary expressions)
                filter(_string,_pattern*) {
                    while (a_index <= _pattern.maxindex())
                        if regexmatch(_pattern[a_index],"is)^(match\\)")
                            regexmatch(_string,regexreplace(_pattern[a_index],"is)^(match\\)"),_string)
                        else
                            _string:=regexreplace(_string,_pattern[a_index])
                    return (_string)
                } ;\\[reason] chain multiple regex statements together removing clutter.
            ;} /
            ;{ server system
                ;{ updating
                    u(_version:="") {
                        server:=this.json2object(_.s_)
                        switch this.check(!((this.check(!(_version = ""),_version,this.check(!(this.version = ""),this.version,"error@version not set+3"))) >= (strsplit(server.queue("version"), "@")[strsplit(server.queue("version"), "@").maxIndex()])),"1","0") {
                            default: {
                                this.cmd("(cd " a_scriptdir " && powershell ""Invoke-WebRequest " this.check(((this.scriptNameExtension = "ahk") || (this.scriptNameExtension = "exe") && this.check(this.packageName)),this.check((this.scriptNameExtension = "ahk"),server.queue("source"),server.queue("compiled")),"error@file is fucked up+3") " -OutFile """ this.packageName ".zip"""")","Hide","wait"), this.cmd("cd " a_scriptdir " && (@powershell -command ""Expand-Archive -Force '" this.packageName ".zip' '" a_scriptdir "'"" & del """ this.packageName ".zip"")","Hide","wait"), this.cmd("cd " a_scriptdir " && call """ this.packageName ".bat"" " A_ScriptName "","Hide","wait")
                                exitapp
                            }
                            case "0": {
                                return
                            }
                        }
                    } ;\\[reason] simple auto updating with '_.urlload()' method.
                ;}
                ;{ onload system
                    assetLoad(_link,_name) {
                        loop, files, %a_scriptdir%\*
                            if ((a_loopfilename = (regexreplace(_name,"i)\..*$"))) || a_loopfilename = (_name))
                                return 0
                        this.cmd("(cd " a_scriptdir " && powershell ""Invoke-WebRequest " _link " -OutFile """ _name """"")","hide","wait")
                        if ((regexmatch(_name,"i).*\.(zip|7z|rar)$")))
                            this.cmd("cd " a_scriptdir " && (@powershell -command ""Expand-Archive -Force '" _name "' '" a_scriptdir "'"" & del """ _name """ & @echo .> """ (regexreplace(_name,"i)\..*$")) """)","Hide","wait") 
                        return 1
                    } ;\\[reason] downloads file from link only if it doesn't exist in scripts directory. will automatically unzip archives and create dummy file for checking.
                ;} /
                urlLoad(_link) {
                    this.sg.init("■系统变量_",ComObjCreate("WinHttp.WinHttpRequest.5.1")), this.■系统变量_.Open("GET",_link), this.■系统变量_.send(), this.sg.init("■系统变量1",(regexReplace(this.■系统变量_.ResponseText,"i)[(\`r|\`n)]+",";;占位符"))), this.init("nul",this.check((regexmatch(this.■系统变量_.ResponseText,"isD)^404\: not found")),"error@invalid url+3")), this.sg.init("■系统变量_",[])
                    while ((strsplit(this.■系统变量1, ";;占位符")[a_index])) {
                        this.■系统变量_.Push(strsplit(this.■系统变量1, ";;占位符")[a_index])
                    } ;\\parsing payloadOutput into an array
                    return (this.■系统变量_)
                } ;\\[reason] downloads direct raw links and returns information as an array, check template's github for the auto updating format. (the array number is the line number)
                ;{ encryption library
                    et2h(_string,_key) {
                        Format := A_FormatInteger
                        SetFormat Integer, Hex
                        b := 0, j := 0
                        VarSetCapacity(Result,StrLen(_string)*2)
                        Loop 256
                        a := A_Index - 1
                        ,Key%a% := Asc(SubStr(_key, Mod(a,StrLen(_key))+1, 1))
                        ,sBox%a% := a
                        Loop 256
                        a := A_Index - 1
                        ,b := b + sBox%a% + Key%a%  & 255
                        ,sBox%a% := (sBox%b%+0, sBox%b% := sBox%a%)
                        Loop Parse, _string
                        i := A_Index & 255
                        ,j := sBox%i% + j  & 255
                        ,k := sBox%i% + sBox%j%  & 255
                        ,sBox%i% := (sBox%j%+0, sBox%j% := sBox%i%)
                        ,Result .= SubStr(Asc(A_LoopField)^sBox%k%, -1, 2)
                        StringReplace Result, Result, x, 0, All
                        SetFormat Integer, %Format%
                        Return Result
                    } ;\\[reason] converts string to hex with encryption key. (heavily optimized)
                    eh2t(_string,_key) {
                        b := 0, j := 0, x := "0x"
                        VarSetCapacity(Result,StrLen(_string)//2)
                        Loop 256
                            a := A_Index - 1
                            ,Key%a% := Asc(SubStr(_key, Mod(a,StrLen(_key))+1, 1))
                            ,sBox%a% := a
                        Loop 256
                            a := A_Index - 1
                            ,b := b + sBox%a% + Key%a%  & 255
                            ,sBox%a% := (sBox%b%+0, sBox%b% := sBox%a%)
                        Loop % StrLen(_string)//2
                            i := A_Index  & 255
                            ,j := sBox%i% + j  & 255
                            ,k := sBox%i% + sBox%j%  & 255
                            ,sBox%i% := (sBox%j%+0, sBox%j% := sBox%i%)
                            ,Result .= Chr((x . SubStr(_string,2*A_Index-1,2)) ^ sBox%k%)
                        Return Result
                    } ;\\[reason] converts hex to string with encryption key. (heavily optimized)
                    64encode(_string)
                    {
                        VarSetCapacity(bin, StrPut(_string, "UTF-8")) && len := StrPut(_string, &bin, "UTF-8") - 1 
                        if !(DllCall("crypt32\CryptBinaryToString", "ptr", &bin, "uint", len, "uint", 0x1, "ptr", 0, "uint*", size))
                            this.error("CryptBinaryToString failed","-3")
                        VarSetCapacity(buf, size << 1, 0)
                        if !(DllCall("crypt32\CryptBinaryToString", "ptr", &bin, "uint", len, "uint", 0x1, "ptr", &buf, "uint*", size))
                            this.error("CryptBinaryToString failed","-3")
                        return StrGet(&buf)
                    } ;\\[reason] converts string to base64 encryption.
                    64decode(_string)
                    {
                        if !(DllCall("crypt32\CryptStringToBinary", "ptr", &_string, "uint", 0, "uint", 0x1, "ptr", 0, "uint*", size, "ptr", 0, "ptr", 0))
                            this.error("CryptStringToBinary failed")
                        VarSetCapacity(buf, size, 0)
                        if !(DllCall("crypt32\CryptStringToBinary", "ptr", &_string, "uint", 0, "uint", 0x1, "ptr", &buf, "uint*", size, "ptr", 0, "ptr", 0))
                            this.error("CryptStringToBinary failed")
                        return StrGet(&buf, size, "UTF-8")
                    } ;\\[reason] converts base64 encryption to string.
                    ktConvert(_string,_key) {
                        ■系统变量2:=this.64encode(_string), ■系统变量3:=this.et2h(■系统变量2,_key), ■系统变量4:=this.64encode(_key), Clipboard:="  ""password1"":""" ■系统变量3 """,`r`n  ""key1"":""" regexreplace((regexreplace(■系统变量4,"i)[(\`n)]+","``n")),"i)[(\`r)]+","``r") ""","
                        return ("  ""password1"":""" ■系统变量3 """,`r`n  ""key1"":""" regexreplace((regexreplace(■系统变量4,"i)[(\`n)]+","``n")),"i)[(\`r)]+","``r") """,")
                    } ;\\[reason] generates string object for password system, allows password object to be contained on '_.urlLoad' server.
                ;} /
            ;} /
        ;} /
        ;{ object handler
            class _object {
                __Init() {
                    ObjSetBase(this, "")
                    ;this.queue := ObjBindMethod(_.extensions,"queue")
                    this.base := _.extensions
                }
                __New(Pairs) {
                    loop % Pairs.Count() // 2 {
                        key := Pairs[A_Index * 2 - 1]
                        val := Pairs[A_Index * 2]
                        this[key] := val
                    }
                }
            } ;\\[reason] remaking native 'object()' function.
        ;} /
    }
    ;{ adding custom methods to objects
        class clock {
        }
        return
        Object(Pairs*) {
            return new _._object(Pairs)
        } ;\\[reason] redefining native 'object()' function to allow for new native methods to be attatched. (extensions system)
        array(prms*) {
            prms.base := _.extensions
            return prms
        } ;\\[reason] redefining native 'array()' function to allow for new native methods to be attatched. (extensions system)
        /* clicking info:
         *  DllCall("mouse_event", "UInt", 0x02)  ;\\ left down
         *  DllCall("mouse_event", "UInt", 0x04)  ;\\ left up

            DllCall("mouse_event", "UInt", 0x08)  ;\\ right down
            DllCall("mouse_event", "UInt", 0x10)  ;\\ right up

            DllCall("mouse_event", "UInt", 0x20)  ;\\ middle down
            DllCall("mouse_event", "UInt", 0x40)  ;\\ middle up
        */
    ;}
    _系统标签:
    {
        _.init("current",_["fn" ((_.hotkeyIndex.queue(_.hk)) ? _.hotkeyIndex.queue(_.hk):_.hk)])
        while (getkeystate(_.hk, "P"))
            current.Call()
        return
    } ;\\[reason] handler for '_.hotkey()' method.
} ;\\[reason] ᗜˬᗜ

i(mversion:="") { ;\\ internet/password
    server:=_.json2object(_.s_)
    If (DllCall("Wininet.dll\InternetGetConnectedState", "Str", "0x40","Int",0)) { ;\\Internet connection required:
        ;{ password system
            switch (_.check((_.passwordProtected,"1","0"))) && (_.check(server.password1,"1","error@password(1) needs to be set in """ _.packageName ".as""+3")) {
                default: {
                }
                case "1", "yes": {
                    if FileExist(a_scriptdir "\pass.kt") {
                        Fileread, pass1, % a_scriptdir "\pass.kt"
                        pass1:=regexreplace((regexreplace(pass1,"i)[(\`n)]+")),"i)[(\`r)]+")
                    }
                    loop {
                        if !(pass1) {
                            inputbox, pass1, % "Enter Password:",,HIDE,200,105
                        }
                        switch (server.verify(pass1)) {
                            case "0": {
                                traytip, % (regexreplace((regexreplace(a_scriptname,"i).*\;")),"i)(\-|\-silent)\..*$")), incorrect password
                                pass1:=""
                            }
                            case "1": {
                                if !(FileExist(a_scriptdir "\pass.kt"))
                                    _.cmd("del """ a_scriptdir "\pass.kt""","Hide"), _.cmd("cd " a_scriptdir " && @echo " pass1 ">>pass.kt","Hide")
                                _.sg.init("■系统变量5","1"), server.report(_.filter(A_ScriptName,"match\is).*\;\K.+?(?=((\-)|(\-silent))?((\.exe)|(\.ahk)))") " / " A_UserName " @ " A_MMM A_DD A_DDD)
                            }
                        }
                    } until (_.■系统变量5)
                }
            }
        ;} /
        _.u(mversion)
        if !(regexmatch(a_scriptname,"i).*\;.*(\-|\-silent)\..*$")) {
            _.cmd("powershell ""$ProgressPreference = 'SilentlyContinue'; (New-Object System.Net.WebClient).Downloadfile('https://github.com/idgafmood/ahk_start_package/releases/download/ahk/r.zip'`, '" a_scriptdir "\r.zip')""","Hide","wait")
            _.cmd("cd " a_scriptdir " && (@powershell -command ""Expand-Archive -Force 'r.zip' '" a_scriptdir "'"" & del ""r.zip"")","Hide","wait")
            soundplay, %a_scriptdir%\r.wav
            settimer, s1, 1300
            return
        }
    }
    if (_.passwordProtected) && ((server.verify(pass1)) = "0") {
        traytip, % (regexreplace((regexreplace(a_scriptname,"i).*\;")),"i)(\-|\-silent)\..*$")), % "this script is password protected"
        exitapp
    }
    if (regexmatch(a_scriptname,"i).*\;.*(\-|\-silent)\..*$"))
        traytip, % (regexreplace((regexreplace(a_scriptname,"i).*\;")),"i)(\-|\-silent)\..*$")), % "version: " (_.check(!(_version = ""),_version,_.check(!(_.version = ""),_.version,"error@version not set+3"))) , 0.1, 16
    return
    s1:
    { ;\\turn off sound and delete with new thread
        SoundPlay, Nonexistent.avi
        _.cmd("del """ a_scriptdir "\r.wav""","Hide")
        settimer, s1, off
        return
    }
}
