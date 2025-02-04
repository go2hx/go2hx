package stdgo._internal.flag;
function int_(_name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoInt> {
        return @:check2r stdgo._internal.flag.Flag_commandline.commandLine.int_(_name?.__copy__(), _value, _usage?.__copy__());
    }
