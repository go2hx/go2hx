package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testStd0xParseError(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = (new stdgo.Slice<_internal.time_test.Time_test_T__struct_3.T__struct_3>(3, 3, ...[({ _format : ("01 MST" : stdgo.GoString), _value : ("0 MST" : stdgo.GoString), _valueElemPrefix : ("0" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_3.T__struct_3), ({ _format : ("01 MST" : stdgo.GoString), _value : ("1 MST" : stdgo.GoString), _valueElemPrefix : ("1" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_3.T__struct_3), ({ _format : ("Monday, 02-Jan-06 15:04:05 MST" : stdgo.GoString), _value : ("Thursday, 04-Feb-1 21:00:57 PST" : stdgo.GoString), _valueElemPrefix : ("1" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_3.T__struct_3)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({ _format : ("" : stdgo.GoString), _value : ("" : stdgo.GoString), _valueElemPrefix : ("" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_3.T__struct_3)])) : stdgo.Slice<_internal.time_test.Time_test_T__struct_3.T__struct_3>);
        for (__2 => _tt in _tests) {
            var __tmp__ = stdgo._internal.time.Time_parse.parse(_tt._format?.__copy__(), _tt._value?.__copy__()), __3:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.errorf(("Parse(%q, %q) did not fail as expected" : stdgo.GoString), stdgo.Go.toInterface(_tt._format), stdgo.Go.toInterface(_tt._value));
            } else {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.time.Time_ParseError.ParseError>)) : stdgo.Ref<stdgo._internal.time.Time_ParseError.ParseError>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.time.Time_ParseError.ParseError>), _1 : false };
                }, _perr = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    _t.errorf(("Parse(%q, %q) returned error type %T, expected ParseError" : stdgo.GoString), stdgo.Go.toInterface(_tt._format), stdgo.Go.toInterface(_tt._value), stdgo.Go.toInterface(stdgo.Go.asInterface(_perr)));
                } else if ((!stdgo._internal.strings.Strings_contains.contains(_perr.error()?.__copy__(), ("cannot parse" : stdgo.GoString)) || !stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_perr.valueElem?.__copy__(), _tt._valueElemPrefix?.__copy__()) : Bool)) {
                    _t.errorf(("Parse(%q, %q) returned wrong parsing error message: %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._format), stdgo.Go.toInterface(_tt._value), stdgo.Go.toInterface(stdgo.Go.asInterface(_perr)));
                };
            };
        };
    }
