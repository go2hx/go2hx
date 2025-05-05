package stdgo._internal.flag;
function int64(_name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoInt64> {
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L821"
        return stdgo._internal.flag.Flag_commandline.commandLine.int64(_name?.__copy__(), _value, _usage?.__copy__());
    }
