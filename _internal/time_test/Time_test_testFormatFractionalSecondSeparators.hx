package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testFormatFractionalSecondSeparators(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = (new stdgo.Slice<_internal.time_test.Time_test_T__struct_5.T__struct_5>(4, 4, ...[({ _s : ("15:04:05.000" : stdgo.GoString), _want : ("21:00:57.012" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_5.T__struct_5), ({ _s : ("15:04:05.999" : stdgo.GoString), _want : ("21:00:57.012" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_5.T__struct_5), ({ _s : ("15:04:05,000" : stdgo.GoString), _want : ("21:00:57,012" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_5.T__struct_5), ({ _s : ("15:04:05,999" : stdgo.GoString), _want : ("21:00:57,012" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_5.T__struct_5)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _s : ("" : stdgo.GoString), _want : ("" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_5.T__struct_5)])) : stdgo.Slice<_internal.time_test.Time_test_T__struct_5.T__struct_5>);
        var _time = (stdgo._internal.time.Time_unix.unix((0i64 : stdgo.GoInt64), (1233810057012345600i64 : stdgo.GoInt64))?.__copy__() : stdgo._internal.time.Time_Time.Time);
        for (__2 => _tt in _tests) {
            {
                var _q = (_time.format(_tt._s?.__copy__())?.__copy__() : stdgo.GoString);
                if (_q != (_tt._want)) {
                    _t.errorf(("Format(%q) = got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_q), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
