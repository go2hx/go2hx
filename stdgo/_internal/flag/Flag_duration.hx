package stdgo._internal.flag;
function duration(_name:stdgo.GoString, _value:stdgo._internal.time.Time_duration.Duration, _usage:stdgo.GoString):stdgo.Pointer<stdgo._internal.time.Time_duration.Duration> {
        return @:check2r stdgo._internal.flag.Flag_commandline.commandLine.duration(_name?.__copy__(), _value, _usage?.__copy__());
    }
