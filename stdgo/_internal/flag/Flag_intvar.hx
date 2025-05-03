package stdgo._internal.flag;
function intVar(_p:stdgo.Pointer<stdgo.GoInt>, _name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):Void {
        //"file:///home/runner/.go/go1.21.3/src/flag/flag.go#L781"
        stdgo._internal.flag.Flag_commandline.commandLine.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newintvalue._newIntValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
