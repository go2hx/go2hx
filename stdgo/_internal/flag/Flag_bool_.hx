package stdgo._internal.flag;
function bool_(_name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):stdgo.Pointer<Bool> {
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L769"
        return stdgo._internal.flag.Flag_commandline.commandLine.bool_(_name?.__copy__(), _value, _usage?.__copy__());
    }
