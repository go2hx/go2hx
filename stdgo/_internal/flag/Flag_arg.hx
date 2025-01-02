package stdgo._internal.flag;
function arg(_i:stdgo.GoInt):stdgo.GoString {
        return @:check2r stdgo._internal.flag.Flag_commandLine.commandLine.arg(_i)?.__copy__();
    }
