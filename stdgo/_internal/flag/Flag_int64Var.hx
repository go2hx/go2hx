package stdgo._internal.flag;
function int64Var(_p:stdgo.Pointer<stdgo.GoInt64>, _name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):Void {
        stdgo._internal.flag.Flag_commandLine.commandLine.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newInt64Value._newInt64Value(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }