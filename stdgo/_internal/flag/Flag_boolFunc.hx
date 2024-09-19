package stdgo._internal.flag;
function boolFunc(_name:stdgo.GoString, _usage:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):Void {
        stdgo._internal.flag.Flag_commandLine.commandLine.boolFunc(_name?.__copy__(), _usage?.__copy__(), _fn);
    }
