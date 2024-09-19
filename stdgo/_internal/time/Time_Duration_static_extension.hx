package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.time.Time.Duration_asInterface) class Duration_static_extension {
    @:keep
    static public function abs( _d:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        @:recv var _d:stdgo._internal.time.Time_Duration.Duration = _d;
        if ((_d >= (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            return _d;
        } else if (_d == ((-9223372036854775808i64 : stdgo._internal.time.Time_Duration.Duration))) {
            return (9223372036854775807i64 : stdgo._internal.time.Time_Duration.Duration);
        } else {
            return -_d;
        };
    }
    @:keep
    static public function round( _d:stdgo._internal.time.Time_Duration.Duration, _m:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        @:recv var _d:stdgo._internal.time.Time_Duration.Duration = _d;
        if ((_m <= (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            return _d;
        };
        var _r = (_d % _m : stdgo._internal.time.Time_Duration.Duration);
        if ((_d < (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            _r = -_r;
            if (stdgo._internal.time.Time__lessThanHalf._lessThanHalf(_r, _m)) {
                return (_d + _r : stdgo._internal.time.Time_Duration.Duration);
            };
            {
                var _d1 = ((_d - _m : stdgo._internal.time.Time_Duration.Duration) + _r : stdgo._internal.time.Time_Duration.Duration);
                if ((_d1 < _d : Bool)) {
                    return _d1;
                };
            };
            return (-9223372036854775808i64 : stdgo._internal.time.Time_Duration.Duration);
        };
        if (stdgo._internal.time.Time__lessThanHalf._lessThanHalf(_r, _m)) {
            return (_d - _r : stdgo._internal.time.Time_Duration.Duration);
        };
        {
            var _d1 = ((_d + _m : stdgo._internal.time.Time_Duration.Duration) - _r : stdgo._internal.time.Time_Duration.Duration);
            if ((_d1 > _d : Bool)) {
                return _d1;
            };
        };
        return (9223372036854775807i64 : stdgo._internal.time.Time_Duration.Duration);
    }
    @:keep
    static public function truncate( _d:stdgo._internal.time.Time_Duration.Duration, _m:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        @:recv var _d:stdgo._internal.time.Time_Duration.Duration = _d;
        if ((_m <= (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            return _d;
        };
        return (_d - (_d % _m : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
    }
    @:keep
    static public function hours( _d:stdgo._internal.time.Time_Duration.Duration):stdgo.GoFloat64 {
        @:recv var _d:stdgo._internal.time.Time_Duration.Duration = _d;
        var _hour = (_d / (3600000000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
        var _nsec = (_d % (3600000000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
        return ((_hour : stdgo.GoFloat64) + ((_nsec : stdgo.GoFloat64) / (3.6e+12 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64);
    }
    @:keep
    static public function minutes( _d:stdgo._internal.time.Time_Duration.Duration):stdgo.GoFloat64 {
        @:recv var _d:stdgo._internal.time.Time_Duration.Duration = _d;
        var _min = (_d / (60000000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
        var _nsec = (_d % (60000000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
        return ((_min : stdgo.GoFloat64) + ((_nsec : stdgo.GoFloat64) / (6e+10 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64);
    }
    @:keep
    static public function seconds( _d:stdgo._internal.time.Time_Duration.Duration):stdgo.GoFloat64 {
        @:recv var _d:stdgo._internal.time.Time_Duration.Duration = _d;
        var _sec = (_d / (1000000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
        var _nsec = (_d % (1000000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
        return ((_sec : stdgo.GoFloat64) + ((_nsec : stdgo.GoFloat64) / (1e+09 : stdgo.GoFloat64) : stdgo.GoFloat64) : stdgo.GoFloat64);
    }
    @:keep
    static public function milliseconds( _d:stdgo._internal.time.Time_Duration.Duration):stdgo.GoInt64 {
        @:recv var _d:stdgo._internal.time.Time_Duration.Duration = _d;
        return ((_d : stdgo.GoInt64) / (1000000i64 : stdgo.GoInt64) : stdgo.GoInt64);
    }
    @:keep
    static public function microseconds( _d:stdgo._internal.time.Time_Duration.Duration):stdgo.GoInt64 {
        @:recv var _d:stdgo._internal.time.Time_Duration.Duration = _d;
        return ((_d : stdgo.GoInt64) / (1000i64 : stdgo.GoInt64) : stdgo.GoInt64);
    }
    @:keep
    static public function nanoseconds( _d:stdgo._internal.time.Time_Duration.Duration):stdgo.GoInt64 {
        @:recv var _d:stdgo._internal.time.Time_Duration.Duration = _d;
        return (_d : stdgo.GoInt64);
    }
    @:keep
    static public function string( _d:stdgo._internal.time.Time_Duration.Duration):stdgo.GoString {
        @:recv var _d:stdgo._internal.time.Time_Duration.Duration = _d;
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUInt8)]);
        var _w = (_buf.length : stdgo.GoInt);
        var _u = (_d : stdgo.GoUInt64);
        var _neg = (_d < (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool);
        if (_neg) {
            _u = -_u;
        };
        if ((_u < ((1000000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoUInt64) : Bool)) {
            var _prec:stdgo.GoInt = (0 : stdgo.GoInt);
            _w--;
            _buf[(_w : stdgo.GoInt)] = (115 : stdgo.GoUInt8);
            _w--;
            if (_u == ((0i64 : stdgo.GoUInt64))) {
                return ("0s" : stdgo.GoString);
            } else if ((_u < ((1000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoUInt64) : Bool)) {
                _prec = (0 : stdgo.GoInt);
                _buf[(_w : stdgo.GoInt)] = (110 : stdgo.GoUInt8);
            } else if ((_u < ((1000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoUInt64) : Bool)) {
                _prec = (3 : stdgo.GoInt);
                _w--;
                stdgo.Go.copySlice((_buf.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>), ("µ" : stdgo.GoString));
            } else {
                _prec = (6 : stdgo.GoInt);
                _buf[(_w : stdgo.GoInt)] = (109 : stdgo.GoUInt8);
            };
            {
                var __tmp__ = stdgo._internal.time.Time__fmtFrac._fmtFrac((_buf.__slice__(0, _w) : stdgo.Slice<stdgo.GoUInt8>), _u, _prec);
                _w = __tmp__._0;
                _u = __tmp__._1;
            };
            _w = stdgo._internal.time.Time__fmtInt._fmtInt((_buf.__slice__(0, _w) : stdgo.Slice<stdgo.GoUInt8>), _u);
        } else {
            _w--;
            _buf[(_w : stdgo.GoInt)] = (115 : stdgo.GoUInt8);
            {
                var __tmp__ = stdgo._internal.time.Time__fmtFrac._fmtFrac((_buf.__slice__(0, _w) : stdgo.Slice<stdgo.GoUInt8>), _u, (9 : stdgo.GoInt));
                _w = __tmp__._0;
                _u = __tmp__._1;
            };
            _w = stdgo._internal.time.Time__fmtInt._fmtInt((_buf.__slice__(0, _w) : stdgo.Slice<stdgo.GoUInt8>), (_u % (60i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
            _u = (_u / ((60i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            if ((_u > (0i64 : stdgo.GoUInt64) : Bool)) {
                _w--;
                _buf[(_w : stdgo.GoInt)] = (109 : stdgo.GoUInt8);
                _w = stdgo._internal.time.Time__fmtInt._fmtInt((_buf.__slice__(0, _w) : stdgo.Slice<stdgo.GoUInt8>), (_u % (60i64 : stdgo.GoUInt64) : stdgo.GoUInt64));
                _u = (_u / ((60i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                if ((_u > (0i64 : stdgo.GoUInt64) : Bool)) {
                    _w--;
                    _buf[(_w : stdgo.GoInt)] = (104 : stdgo.GoUInt8);
                    _w = stdgo._internal.time.Time__fmtInt._fmtInt((_buf.__slice__(0, _w) : stdgo.Slice<stdgo.GoUInt8>), _u);
                };
            };
        };
        if (_neg) {
            _w--;
            _buf[(_w : stdgo.GoInt)] = (45 : stdgo.GoUInt8);
        };
        return ((_buf.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
}
