package stdgo._internal.flag;
function uint64(_name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt64> {
        return @:check2r stdgo._internal.flag.Flag_commandline.commandLine.uint64(_name?.__copy__(), _value, _usage?.__copy__());
    }
