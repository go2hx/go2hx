package stdgo._internal.flag;
function float64(_name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoFloat64> {
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L925"
        return stdgo._internal.flag.Flag_commandline.commandLine.float64(_name?.__copy__(), _value, _usage?.__copy__());
    }
