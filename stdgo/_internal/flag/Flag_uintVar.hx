package stdgo._internal.flag;
function uintVar(_p:stdgo.Pointer<stdgo.GoUInt>, _name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):Void {
        @:check2r stdgo._internal.flag.Flag_commandLine.commandLine.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newUintValue._newUintValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
