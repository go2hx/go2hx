package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testQuote(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = (new stdgo.Slice<_internal.time_test.Time_test_T__struct_5.T__struct_5>(7, 7, ...[({ _s : ("\"" : stdgo.GoString), _want : ("\"\\\"\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_5.T__struct_5), ({ _s : ("abc\"xyz\"" : stdgo.GoString), _want : ("\"abc\\\"xyz\\\"\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_5.T__struct_5), ({ _s : stdgo.Go.str()?.__copy__(), _want : ("\"\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_5.T__struct_5), ({ _s : ("abc" : stdgo.GoString), _want : ("\"abc\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_5.T__struct_5), ({ _s : ("☺" : stdgo.GoString), _want : ("\"\\xe2\\x98\\xba\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_5.T__struct_5), ({ _s : ("☺ hello ☺ hello" : stdgo.GoString), _want : ("\"\\xe2\\x98\\xba hello \\xe2\\x98\\xba hello\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_5.T__struct_5), ({ _s : stdgo.Go.str(4)?.__copy__(), _want : ("\"\\x04\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_5.T__struct_5)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({ _s : ("" : stdgo.GoString), _want : ("" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_5.T__struct_5)])) : stdgo.Slice<_internal.time_test.Time_test_T__struct_5.T__struct_5>);
        for (__2 => _tt in _tests) {
            {
                var _q = (stdgo._internal.time.Time_quote.quote(_tt._s?.__copy__())?.__copy__() : stdgo.GoString);
                if (_q != (_tt._want)) {
                    _t.errorf(("Quote(%q) = got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._s), stdgo.Go.toInterface(_q), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
