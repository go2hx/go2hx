package stdgo._internal.flag;
function stringVar(_p:stdgo.Pointer<stdgo.GoString>, _name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):Void {
        stdgo._internal.flag.Flag_commandLine.commandLine.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newStringValue._newStringValue(_value?.__copy__(), _p)), _name?.__copy__(), _usage?.__copy__());
    }
