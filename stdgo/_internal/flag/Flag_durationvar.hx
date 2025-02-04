package stdgo._internal.flag;
function durationVar(_p:stdgo.Pointer<stdgo._internal.time.Time_duration.Duration>, _name:stdgo.GoString, _value:stdgo._internal.time.Time_duration.Duration, _usage:stdgo.GoString):Void {
        @:check2r stdgo._internal.flag.Flag_commandline.commandLine.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newdurationvalue._newDurationValue(_value, _p)), _name?.__copy__(), _usage?.__copy__());
    }
