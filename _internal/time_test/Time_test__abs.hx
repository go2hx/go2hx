package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function _abs(_t:stdgo._internal.time.Time_Time.Time):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; } {
        var _sec = (0 : stdgo.GoInt64), _nsec = (0 : stdgo.GoInt64);
        var _unix = (_t.unix() : stdgo.GoInt64);
        var _nano = (_t.nanosecond() : stdgo.GoInt);
        return { _0 : (_unix + (62135596800i64 : stdgo.GoInt64) : stdgo.GoInt64), _1 : (_nano : stdgo.GoInt64) };
    }
