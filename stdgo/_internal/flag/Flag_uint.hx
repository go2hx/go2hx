package stdgo._internal.flag;
function uint(_name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt> {
        return @:check2r stdgo._internal.flag.Flag_commandline.commandLine.uint(_name?.__copy__(), _value, _usage?.__copy__());
    }
