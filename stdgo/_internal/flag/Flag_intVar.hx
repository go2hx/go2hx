package stdgo._internal.flag;
function intVar(_p:stdgo.Pointer<stdgo.GoInt>, _name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):Void {
        stdgo._internal.flag.Flag_commandLine.commandLine.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newIntValue._newIntValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }