package stdgo._internal.flag;
function float64Var(_p:stdgo.Pointer<stdgo.GoFloat64>, _name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):Void {
        stdgo._internal.flag.Flag_commandLine.commandLine.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newFloat64Value._newFloat64Value(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
