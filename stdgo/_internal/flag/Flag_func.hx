package stdgo._internal.flag;
function func(_name:stdgo.GoString, _usage:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):Void {
        @:check2r stdgo._internal.flag.Flag_commandline.commandLine.func(_name?.__copy__(), _usage?.__copy__(), _fn);
    }
