package stdgo._internal.flag;
function uint64Var(_p:stdgo.Pointer<stdgo.GoUInt64>, _name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):Void {
        @:check2r stdgo._internal.flag.Flag_commandline.commandLine.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newuint64value._newUint64Value(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
