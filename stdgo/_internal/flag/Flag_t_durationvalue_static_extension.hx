package stdgo._internal.flag;
@:keep @:allow(stdgo._internal.flag.Flag.T_durationValue_asInterface) class T_durationValue_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function string( _d:stdgo.Pointer<stdgo._internal.flag.Flag_t_durationvalue.T_durationValue>):stdgo.GoString {
        return (new stdgo.Pointer<stdgo._internal.time.Time_duration.Duration>(() -> (_d.value : stdgo._internal.time.Time_duration.Duration), v -> (_d.value = (v : stdgo._internal.flag.Flag_t_durationvalue.T_durationValue) : stdgo._internal.time.Time_duration.Duration)).value.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:pointer
    @:tdfield
    static public function get( _d:stdgo.Pointer<stdgo._internal.flag.Flag_t_durationvalue.T_durationValue>):stdgo.AnyInterface {
        return stdgo.Go.toInterface(stdgo.Go.asInterface((_d.value : stdgo._internal.time.Time_duration.Duration)));
    }
    @:keep
    @:pointer
    @:tdfield
    static public function set( _d:stdgo.Pointer<stdgo._internal.flag.Flag_t_durationvalue.T_durationValue>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo._internal.time.Time_parseduration.parseDuration(_s?.__copy__()), _v:stdgo._internal.time.Time_duration.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = stdgo._internal.flag.Flag__errparse._errParse;
        };
        _d.value = (_v : stdgo._internal.flag.Flag_t_durationvalue.T_durationValue);
        return _err;
    }
}
