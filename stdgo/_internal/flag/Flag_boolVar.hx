package stdgo._internal.flag;
function boolVar(_p:stdgo.Pointer<Bool>, _name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):Void {
        stdgo._internal.flag.Flag_commandLine.commandLine.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newBoolValue._newBoolValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
