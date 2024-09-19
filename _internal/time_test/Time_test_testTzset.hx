package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testTzset(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _test in (new stdgo.Slice<_internal.time_test.Time_test_T__struct_33.T__struct_33>(9, 9, ...[({ _inStr : stdgo.Go.str()?.__copy__(), _inEnd : (0i64 : stdgo.GoInt64), _inSec : (0i64 : stdgo.GoInt64), _name : stdgo.Go.str()?.__copy__(), _off : (0 : stdgo.GoInt), _start : (0i64 : stdgo.GoInt64), _end : (0i64 : stdgo.GoInt64), _isDST : false, _ok : false } : _internal.time_test.Time_test_T__struct_33.T__struct_33), ({ _inStr : ("PST8PDT,M3.2.0,M11.1.0" : stdgo.GoString), _inEnd : (0i64 : stdgo.GoInt64), _inSec : (2159200800i64 : stdgo.GoInt64), _name : ("PDT" : stdgo.GoString), _off : (-25200 : stdgo.GoInt), _start : (2152173600i64 : stdgo.GoInt64), _end : (2172733200i64 : stdgo.GoInt64), _isDST : true, _ok : true } : _internal.time_test.Time_test_T__struct_33.T__struct_33), ({ _inStr : ("PST8PDT,M3.2.0,M11.1.0" : stdgo.GoString), _inEnd : (0i64 : stdgo.GoInt64), _inSec : (2152173599i64 : stdgo.GoInt64), _name : ("PST" : stdgo.GoString), _off : (-28800 : stdgo.GoInt), _start : (2145916800i64 : stdgo.GoInt64), _end : (2152173600i64 : stdgo.GoInt64), _isDST : false, _ok : true } : _internal.time_test.Time_test_T__struct_33.T__struct_33), ({ _inStr : ("PST8PDT,M3.2.0,M11.1.0" : stdgo.GoString), _inEnd : (0i64 : stdgo.GoInt64), _inSec : (2152173600i64 : stdgo.GoInt64), _name : ("PDT" : stdgo.GoString), _off : (-25200 : stdgo.GoInt), _start : (2152173600i64 : stdgo.GoInt64), _end : (2172733200i64 : stdgo.GoInt64), _isDST : true, _ok : true } : _internal.time_test.Time_test_T__struct_33.T__struct_33), ({ _inStr : ("PST8PDT,M3.2.0,M11.1.0" : stdgo.GoString), _inEnd : (0i64 : stdgo.GoInt64), _inSec : (2152173601i64 : stdgo.GoInt64), _name : ("PDT" : stdgo.GoString), _off : (-25200 : stdgo.GoInt), _start : (2152173600i64 : stdgo.GoInt64), _end : (2172733200i64 : stdgo.GoInt64), _isDST : true, _ok : true } : _internal.time_test.Time_test_T__struct_33.T__struct_33), ({ _inStr : ("PST8PDT,M3.2.0,M11.1.0" : stdgo.GoString), _inEnd : (0i64 : stdgo.GoInt64), _inSec : (2172733199i64 : stdgo.GoInt64), _name : ("PDT" : stdgo.GoString), _off : (-25200 : stdgo.GoInt), _start : (2152173600i64 : stdgo.GoInt64), _end : (2172733200i64 : stdgo.GoInt64), _isDST : true, _ok : true } : _internal.time_test.Time_test_T__struct_33.T__struct_33), ({ _inStr : ("PST8PDT,M3.2.0,M11.1.0" : stdgo.GoString), _inEnd : (0i64 : stdgo.GoInt64), _inSec : (2172733200i64 : stdgo.GoInt64), _name : ("PST" : stdgo.GoString), _off : (-28800 : stdgo.GoInt), _start : (2172733200i64 : stdgo.GoInt64), _end : (2177452800i64 : stdgo.GoInt64), _isDST : false, _ok : true } : _internal.time_test.Time_test_T__struct_33.T__struct_33), ({ _inStr : ("PST8PDT,M3.2.0,M11.1.0" : stdgo.GoString), _inEnd : (0i64 : stdgo.GoInt64), _inSec : (2172733201i64 : stdgo.GoInt64), _name : ("PST" : stdgo.GoString), _off : (-28800 : stdgo.GoInt), _start : (2172733200i64 : stdgo.GoInt64), _end : (2177452800i64 : stdgo.GoInt64), _isDST : false, _ok : true } : _internal.time_test.Time_test_T__struct_33.T__struct_33), ({ _inStr : ("KST-9" : stdgo.GoString), _inEnd : (592333200i64 : stdgo.GoInt64), _inSec : (1677246697i64 : stdgo.GoInt64), _name : ("KST" : stdgo.GoString), _off : (32400 : stdgo.GoInt), _start : (592333200i64 : stdgo.GoInt64), _end : (9223372036854775807i64 : stdgo.GoInt64), _isDST : false, _ok : true } : _internal.time_test.Time_test_T__struct_33.T__struct_33)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _inStr : ("" : stdgo.GoString), _inEnd : (0 : stdgo.GoInt64), _inSec : (0 : stdgo.GoInt64), _name : ("" : stdgo.GoString), _off : (0 : stdgo.GoInt), _start : (0 : stdgo.GoInt64), _end : (0 : stdgo.GoInt64), _isDST : false, _ok : false } : _internal.time_test.Time_test_T__struct_33.T__struct_33)])) : stdgo.Slice<_internal.time_test.Time_test_T__struct_33.T__struct_33>)) {
            var __tmp__ = stdgo._internal.time.Time_tzset.tzset(_test._inStr?.__copy__(), _test._inEnd, _test._inSec), _name:stdgo.GoString = __tmp__._0, _off:stdgo.GoInt = __tmp__._1, _start:stdgo.GoInt64 = __tmp__._2, _end:stdgo.GoInt64 = __tmp__._3, _isDST:Bool = __tmp__._4, _ok:Bool = __tmp__._5;
            if ((((((_name != (_test._name) || _off != (_test._off) : Bool) || _start != (_test._start) : Bool) || _end != (_test._end) : Bool) || _isDST != (_test._isDST) : Bool) || (_ok != _test._ok) : Bool)) {
                _t.errorf(("tzset(%q, %d, %d) = %q, %d, %d, %d, %t, %t, want %q, %d, %d, %d, %t, %t" : stdgo.GoString),
stdgo.Go.toInterface(_test._inStr),
stdgo.Go.toInterface(_test._inEnd),
stdgo.Go.toInterface(_test._inSec),
stdgo.Go.toInterface(_name),
stdgo.Go.toInterface(_off),
stdgo.Go.toInterface(_start),
stdgo.Go.toInterface(_end),
stdgo.Go.toInterface(_isDST),
stdgo.Go.toInterface(_ok),
stdgo.Go.toInterface(_test._name),
stdgo.Go.toInterface(_test._off),
stdgo.Go.toInterface(_test._start),
stdgo.Go.toInterface(_test._end),
stdgo.Go.toInterface(_test._isDST),
stdgo.Go.toInterface(_test._ok));
            };
        };
    }
