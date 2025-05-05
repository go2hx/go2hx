package stdgo._internal.flag;
function uint64Var(_p:stdgo.Pointer<stdgo.GoUInt64>, _name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):Void {
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L859"
        stdgo._internal.flag.Flag_commandline.commandLine.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newuint64value._newUint64Value(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
