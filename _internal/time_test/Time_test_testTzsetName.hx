package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testTzsetName(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _test in (new stdgo.Slice<_internal.time_test.Time_test_T__struct_34.T__struct_34>(6, 6, ...[({ _in : stdgo.Go.str()?.__copy__(), _name : stdgo.Go.str()?.__copy__(), _out : stdgo.Go.str()?.__copy__(), _ok : false } : _internal.time_test.Time_test_T__struct_34.T__struct_34), ({ _in : ("X" : stdgo.GoString), _name : stdgo.Go.str()?.__copy__(), _out : stdgo.Go.str()?.__copy__(), _ok : false } : _internal.time_test.Time_test_T__struct_34.T__struct_34), ({ _in : ("PST" : stdgo.GoString), _name : ("PST" : stdgo.GoString), _out : stdgo.Go.str()?.__copy__(), _ok : true } : _internal.time_test.Time_test_T__struct_34.T__struct_34), ({ _in : ("PST8PDT" : stdgo.GoString), _name : ("PST" : stdgo.GoString), _out : ("8PDT" : stdgo.GoString), _ok : true } : _internal.time_test.Time_test_T__struct_34.T__struct_34), ({ _in : ("PST-08" : stdgo.GoString), _name : ("PST" : stdgo.GoString), _out : ("-08" : stdgo.GoString), _ok : true } : _internal.time_test.Time_test_T__struct_34.T__struct_34), ({ _in : ("<A+B>+08" : stdgo.GoString), _name : ("A+B" : stdgo.GoString), _out : ("+08" : stdgo.GoString), _ok : true } : _internal.time_test.Time_test_T__struct_34.T__struct_34)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _name : ("" : stdgo.GoString), _out : ("" : stdgo.GoString), _ok : false } : _internal.time_test.Time_test_T__struct_34.T__struct_34)])) : stdgo.Slice<_internal.time_test.Time_test_T__struct_34.T__struct_34>)) {
            var __tmp__ = stdgo._internal.time.Time_tzsetName.tzsetName(_test._in?.__copy__()), _name:stdgo.GoString = __tmp__._0, _out:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (((_name != (_test._name) || _out != (_test._out) : Bool) || (_ok != _test._ok) : Bool)) {
                _t.errorf(("tzsetName(%q) = %q, %q, %t, want %q, %q, %t" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_test._out), stdgo.Go.toInterface(_test._ok));
            };
        };
    }
