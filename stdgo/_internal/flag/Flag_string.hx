package stdgo._internal.flag;
function string(_name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoString> {
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L899"
        return stdgo._internal.flag.Flag_commandline.commandLine.string(_name?.__copy__(), _value?.__copy__(), _usage?.__copy__());
    }
