package _internal.os.exec_test;
import stdgo._internal.os.exec.Exec;
@:keep @:allow(_internal.os.exec_test.Exec_test.T_tickReader_asInterface) class T_tickReader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<_internal.os.exec_test.Exec_test_T_tickReader.T_tickReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.os.exec_test.Exec_test_T_tickReader.T_tickReader> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_r._s.length) == ((0 : stdgo.GoInt))) {
            {
                var _d = (_r._interval - stdgo._internal.time.Time_since.since(_r._lastTick?.__copy__()) : stdgo._internal.time.Time_Duration.Duration);
                if ((_d > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                    stdgo._internal.time.Time_sleep.sleep(_d);
                };
            };
            _r._lastTick = stdgo._internal.time.Time_now.now()?.__copy__();
            _r._s = _r._lastTick.format(("2006-01-02T15:04:05.999999999Z07:00\n" : stdgo.GoString))?.__copy__();
        };
        _n = stdgo.Go.copySlice(_p, _r._s);
        _r._s = (_r._s.__slice__(_n) : stdgo.GoString)?.__copy__();
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
}
