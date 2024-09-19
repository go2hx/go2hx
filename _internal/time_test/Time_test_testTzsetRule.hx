package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testTzsetRule(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _test in (new stdgo.Slice<_internal.time_test.Time_test_T__struct_36.T__struct_36>(9, 9, ...[({ _in : stdgo.Go.str()?.__copy__(), _r : (new stdgo._internal.time.Time_Rule.Rule() : stdgo._internal.time.Time_Rule.Rule), _out : stdgo.Go.str()?.__copy__(), _ok : false } : _internal.time_test.Time_test_T__struct_36.T__struct_36), ({ _in : ("X" : stdgo.GoString), _r : (new stdgo._internal.time.Time_Rule.Rule() : stdgo._internal.time.Time_Rule.Rule), _out : stdgo.Go.str()?.__copy__(), _ok : false } : _internal.time_test.Time_test_T__struct_36.T__struct_36), ({ _in : ("J10" : stdgo.GoString), _r : ({ kind : (0 : stdgo._internal.time.Time_RuleKind.RuleKind), day : (10 : stdgo.GoInt), time : (7200 : stdgo.GoInt) } : stdgo._internal.time.Time_Rule.Rule), _out : stdgo.Go.str()?.__copy__(), _ok : true } : _internal.time_test.Time_test_T__struct_36.T__struct_36), ({ _in : ("20" : stdgo.GoString), _r : ({ kind : (1 : stdgo._internal.time.Time_RuleKind.RuleKind), day : (20 : stdgo.GoInt), time : (7200 : stdgo.GoInt) } : stdgo._internal.time.Time_Rule.Rule), _out : stdgo.Go.str()?.__copy__(), _ok : true } : _internal.time_test.Time_test_T__struct_36.T__struct_36), ({ _in : ("M1.2.3" : stdgo.GoString), _r : ({ kind : (2 : stdgo._internal.time.Time_RuleKind.RuleKind), mon : (1 : stdgo.GoInt), week : (2 : stdgo.GoInt), day : (3 : stdgo.GoInt), time : (7200 : stdgo.GoInt) } : stdgo._internal.time.Time_Rule.Rule), _out : stdgo.Go.str()?.__copy__(), _ok : true } : _internal.time_test.Time_test_T__struct_36.T__struct_36), ({ _in : ("30/03:00:00" : stdgo.GoString), _r : ({ kind : (1 : stdgo._internal.time.Time_RuleKind.RuleKind), day : (30 : stdgo.GoInt), time : (10800 : stdgo.GoInt) } : stdgo._internal.time.Time_Rule.Rule), _out : stdgo.Go.str()?.__copy__(), _ok : true } : _internal.time_test.Time_test_T__struct_36.T__struct_36), ({ _in : ("M4.5.6/03:00:00" : stdgo.GoString), _r : ({ kind : (2 : stdgo._internal.time.Time_RuleKind.RuleKind), mon : (4 : stdgo.GoInt), week : (5 : stdgo.GoInt), day : (6 : stdgo.GoInt), time : (10800 : stdgo.GoInt) } : stdgo._internal.time.Time_Rule.Rule), _out : stdgo.Go.str()?.__copy__(), _ok : true } : _internal.time_test.Time_test_T__struct_36.T__struct_36), ({ _in : ("M4.5.7/03:00:00" : stdgo.GoString), _r : (new stdgo._internal.time.Time_Rule.Rule() : stdgo._internal.time.Time_Rule.Rule), _out : stdgo.Go.str()?.__copy__(), _ok : false } : _internal.time_test.Time_test_T__struct_36.T__struct_36), ({ _in : ("M4.5.6/-04" : stdgo.GoString), _r : ({ kind : (2 : stdgo._internal.time.Time_RuleKind.RuleKind), mon : (4 : stdgo.GoInt), week : (5 : stdgo.GoInt), day : (6 : stdgo.GoInt), time : (-14400 : stdgo.GoInt) } : stdgo._internal.time.Time_Rule.Rule), _out : stdgo.Go.str()?.__copy__(), _ok : true } : _internal.time_test.Time_test_T__struct_36.T__struct_36)].concat([for (i in 9 ... (9 > 9 ? 9 : 9 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _r : ({} : stdgo._internal.time.Time_Rule.Rule), _out : ("" : stdgo.GoString), _ok : false } : _internal.time_test.Time_test_T__struct_36.T__struct_36)])) : stdgo.Slice<_internal.time_test.Time_test_T__struct_36.T__struct_36>)) {
            var __tmp__ = stdgo._internal.time.Time_tzsetRule.tzsetRule(_test._in?.__copy__()), _r:stdgo._internal.time.Time_Rule.Rule = __tmp__._0, _out:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (((stdgo.Go.toInterface(_r) != stdgo.Go.toInterface(_test._r) || _out != (_test._out) : Bool) || (_ok != _test._ok) : Bool)) {
                _t.errorf(("tzsetName(%q) = %#v, %q, %t, want %#v, %q, %t" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_test._r), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._ok));
            };
        };
    }