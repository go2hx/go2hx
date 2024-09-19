package _internal.flag_test;
import stdgo._internal.flag.Flag;
@:keep @:allow(_internal.flag_test.Flag_test.T_interval_asInterface) class T_interval_static_extension {
    @:keep
    static public function set( _i:stdgo.Ref<_internal.flag_test.Flag_test_T_interval.T_interval>, _value:stdgo.GoString):stdgo.Error {
        @:recv var _i:stdgo.Ref<_internal.flag_test.Flag_test_T_interval.T_interval> = _i;
        if ((((_i : _internal.flag_test.Flag_test_T_interval.T_interval).length) > (0 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("interval flag already set" : stdgo.GoString));
        };
        for (__0 => _dt in stdgo._internal.strings.Strings_split.split(_value?.__copy__(), ("," : stdgo.GoString))) {
            var __tmp__ = stdgo._internal.time.Time_parseDuration.parseDuration(_dt?.__copy__()), _duration:stdgo._internal.time.Time_Duration.Duration = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
            (_i : _internal.flag_test.Flag_test_T_interval.T_interval).__setData__(((_i : _internal.flag_test.Flag_test_T_interval.T_interval).__append__(_duration)));
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function string( _i:stdgo.Ref<_internal.flag_test.Flag_test_T_interval.T_interval>):stdgo.GoString {
        @:recv var _i:stdgo.Ref<_internal.flag_test.Flag_test_T_interval.T_interval> = _i;
        return stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(stdgo.Go.asInterface((_i : _internal.flag_test.Flag_test_T_interval.T_interval))))?.__copy__();
    }
}
