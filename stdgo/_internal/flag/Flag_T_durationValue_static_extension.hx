package stdgo._internal.flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.sort.Sort;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
@:keep @:allow(stdgo._internal.flag.Flag.T_durationValue_asInterface) class T_durationValue_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function string( _d:stdgo.Pointer<stdgo._internal.flag.Flag_T_durationValue.T_durationValue>):stdgo.GoString {
        return (new stdgo.Pointer<stdgo._internal.time.Time_Duration.Duration>(() -> (_d.value : stdgo._internal.time.Time_Duration.Duration), v -> (_d.value = (v : stdgo._internal.flag.Flag_T_durationValue.T_durationValue) : stdgo._internal.time.Time_Duration.Duration)).value.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:pointer
    @:tdfield
    static public function get( _d:stdgo.Pointer<stdgo._internal.flag.Flag_T_durationValue.T_durationValue>):stdgo.AnyInterface {
        return stdgo.Go.toInterface(stdgo.Go.asInterface((_d.value : stdgo._internal.time.Time_Duration.Duration)));
    }
    @:keep
    @:pointer
    @:tdfield
    static public function set( _d:stdgo.Pointer<stdgo._internal.flag.Flag_T_durationValue.T_durationValue>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo._internal.time.Time_parseDuration.parseDuration(_s?.__copy__()), _v:stdgo._internal.time.Time_Duration.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _err = stdgo._internal.flag.Flag__errParse._errParse;
        };
        _d.value = (_v : stdgo._internal.flag.Flag_T_durationValue.T_durationValue);
        return _err;
    }
}
