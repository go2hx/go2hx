package stdgo._internal.flag;
function bool_(_name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):stdgo.Pointer<Bool> {
        return @:check2r stdgo._internal.flag.Flag_commandline.commandLine.bool_(_name?.__copy__(), _value, _usage?.__copy__());
    }
