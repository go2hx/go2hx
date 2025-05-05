package stdgo._internal.flag;
function int_(_name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoInt> {
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L795"
        return stdgo._internal.flag.Flag_commandline.commandLine.int_(_name?.__copy__(), _value, _usage?.__copy__());
    }
