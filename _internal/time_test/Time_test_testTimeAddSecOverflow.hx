package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testTimeAddSecOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _maxInt64:stdgo.GoInt64 = (9223372036854775807i64 : stdgo.GoInt64);
        var _timeExt = ((_maxInt64 - (62135596800i64 : stdgo.GoInt64) : stdgo.GoInt64) - (50i64 : stdgo.GoInt64) : stdgo.GoInt64);
        var _notMonoTime = (stdgo._internal.time.Time_unix.unix(_timeExt, (0i64 : stdgo.GoInt64))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        {
            var _i = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
            stdgo.Go.cfor((_i < (100i64 : stdgo.GoInt64) : Bool), _i++, {
                var _sec = (_notMonoTime.unix() : stdgo.GoInt64);
                _notMonoTime = _notMonoTime.add(((_i * (1000000000i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration))?.__copy__();
                {
                    var _newSec = (_notMonoTime.unix() : stdgo.GoInt64);
                    if (((_newSec != (_sec + _i : stdgo.GoInt64)) && ((_newSec + (62135596800i64 : stdgo.GoInt64) : stdgo.GoInt64) != _maxInt64) : Bool)) {
                        _t.fatalf(("time ext: %d overflows with positive delta, overflow threshold: %d" : stdgo.GoString), stdgo.Go.toInterface(_newSec), stdgo.Go.toInterface(_maxInt64));
                    };
                };
            });
        };
        _maxInt64 = -_maxInt64;
        _notMonoTime = stdgo._internal.time.Time_notMonoNegativeTime.notMonoNegativeTime?.__copy__();
        {
            var _i = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
            stdgo.Go.cfor((_i > (-100i64 : stdgo.GoInt64) : Bool), _i--, {
                var _sec = (_notMonoTime.unix() : stdgo.GoInt64);
                _notMonoTime = _notMonoTime.add(((_i * (1000000000i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration))?.__copy__();
                {
                    var _newSec = (_notMonoTime.unix() : stdgo.GoInt64);
                    if (((_newSec != (_sec + _i : stdgo.GoInt64)) && ((_newSec + (62135596800i64 : stdgo.GoInt64) : stdgo.GoInt64) != _maxInt64) : Bool)) {
                        _t.fatalf(("time ext: %d overflows with positive delta, overflow threshold: %d" : stdgo.GoString), stdgo.Go.toInterface(_newSec), stdgo.Go.toInterface(_maxInt64));
                    };
                };
            });
        };
    }
