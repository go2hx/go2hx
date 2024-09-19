package stdgo._internal.flag;
function durationVar(_p:stdgo.Pointer<stdgo._internal.time.Time_Duration.Duration>, _name:stdgo.GoString, _value:stdgo._internal.time.Time_Duration.Duration, _usage:stdgo.GoString):Void {
        stdgo._internal.flag.Flag_commandLine.commandLine.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newDurationValue._newDurationValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
