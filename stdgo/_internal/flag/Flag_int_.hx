package stdgo._internal.flag;
function int_(_name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoInt> {
        return stdgo._internal.flag.Flag_commandLine.commandLine.int_(_name?.__copy__(), _value, _usage?.__copy__());
    }