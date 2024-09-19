package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testTzsetOffset(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _test in (new stdgo.Slice<_internal.time_test.Time_test_T__struct_35.T__struct_35>(9, 9, ...[({ _in : stdgo.Go.str()?.__copy__(), _off : (0 : stdgo.GoInt), _out : stdgo.Go.str()?.__copy__(), _ok : false } : _internal.time_test.Time_test_T__struct_35.T__struct_35), ({ _in : ("X" : stdgo.GoString), _off : (0 : stdgo.GoInt), _out : stdgo.Go.str()?.__copy__(), _ok : false } : _internal.time_test.Time_test_T__struct_35.T__struct_35), ({ _in : ("+" : stdgo.GoString), _off : (0 : stdgo.GoInt), _out : stdgo.Go.str()?.__copy__(), _ok : false } : _internal.time_test.Time_test_T__struct_35.T__struct_35), ({ _in : ("+08" : stdgo.GoString), _off : (28800 : stdgo.GoInt), _out : stdgo.Go.str()?.__copy__(), _ok : true } : _internal.time_test.Time_test_T__struct_35.T__struct_35), ({ _in : ("-01:02:03" : stdgo.GoString), _off : (-3723 : stdgo.GoInt), _out : stdgo.Go.str()?.__copy__(), _ok : true } : _internal.time_test.Time_test_T__struct_35.T__struct_35), ({ _in : ("01" : stdgo.GoString), _off : (3600 : stdgo.GoInt), _out : stdgo.Go.str()?.__copy__(), _ok : true } : _internal.time_test.Time_test_T__struct_35.T__struct_35), ({ _in : ("100" : stdgo.GoString), _off : (360000 : stdgo.GoInt), _out : stdgo.Go.str()?.__copy__(), _ok : true } : _internal.time_test.Time_test_T__struct_35.T__struct_35), ({ _in : ("1000" : stdgo.GoString), _off : (0 : stdgo.GoInt), _out : stdgo.Go.str()?.__copy__(), _ok : false } : _internal.time_test.Time_test_T__struct_35.T__struct_35), ({ _in : ("8PDT" : stdgo.GoString), _off : (28800 : stdgo.GoInt), _out : ("PDT" : stdgo.GoString), _ok : true } : _internal.time_test.Time_test_T__struct_35.T__struct_35)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _off : (0 : stdgo.GoInt), _out : ("" : stdgo.GoString), _ok : false } : _internal.time_test.Time_test_T__struct_35.T__struct_35)])) : stdgo.Slice<_internal.time_test.Time_test_T__struct_35.T__struct_35>)) {
            var __tmp__ = stdgo._internal.time.Time_tzsetOffset.tzsetOffset(_test._in?.__copy__()), _off:stdgo.GoInt = __tmp__._0, _out:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (((_off != (_test._off) || _out != (_test._out) : Bool) || (_ok != _test._ok) : Bool)) {
                _t.errorf(("tzsetName(%q) = %d, %q, %t, want %d, %q, %t" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_off), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_test._off), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._ok));
            };
        };
    }
