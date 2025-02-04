package stdgo._internal.flag;
function boolVar(_p:stdgo.Pointer<Bool>, _name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):Void {
        @:check2r stdgo._internal.flag.Flag_commandline.commandLine.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newboolvalue._newBoolValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
