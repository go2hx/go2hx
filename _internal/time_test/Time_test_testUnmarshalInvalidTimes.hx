package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testUnmarshalInvalidTimes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = (new stdgo.Slice<_internal.time_test.Time_test_T__struct_18.T__struct_18>(7, 7, ...[({ _in : ("{}" : stdgo.GoString), _want : ("Time.UnmarshalJSON: input is not a JSON string" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_18.T__struct_18), ({ _in : ("[]" : stdgo.GoString), _want : ("Time.UnmarshalJSON: input is not a JSON string" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_18.T__struct_18), ({ _in : ("\"2000-01-01T1:12:34Z\"" : stdgo.GoString), _want : ("<nil>" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_18.T__struct_18), ({ _in : ("\"2000-01-01T00:00:00,000Z\"" : stdgo.GoString), _want : ("<nil>" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_18.T__struct_18), ({ _in : ("\"2000-01-01T00:00:00+24:00\"" : stdgo.GoString), _want : ("<nil>" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_18.T__struct_18), ({ _in : ("\"2000-01-01T00:00:00+00:60\"" : stdgo.GoString), _want : ("<nil>" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_18.T__struct_18), ({ _in : ("\"2000-01-01T00:00:00+123:45\"" : stdgo.GoString), _want : ("parsing time \"2000-01-01T00:00:00+123:45\" as \"2006-01-02T15:04:05Z07:00\": cannot parse \"+123:45\" as \"Z07:00\"" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_18.T__struct_18)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _want : ("" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_18.T__struct_18)])) : stdgo.Slice<_internal.time_test.Time_test_T__struct_18.T__struct_18>);
        for (__2 => _tt in _tests) {
            var _ts:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
            var _want = (_tt._want?.__copy__() : stdgo.GoString);
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((_tt._in : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_ts) : stdgo.Ref<stdgo._internal.time.Time_Time.Time>)))) : stdgo.Error);
            if (stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_err)) != (_want)) {
                _t.errorf(("Time.UnmarshalJSON(%s) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
            };
            if ((stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_tt._in?.__copy__(), ("\"" : stdgo.GoString)) && stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_tt._in?.__copy__(), ("\"" : stdgo.GoString)) : Bool)) {
                _err = _ts.unmarshalText((stdgo._internal.strings.Strings_trim.trim(_tt._in?.__copy__(), ("\"" : stdgo.GoString)) : stdgo.Slice<stdgo.GoUInt8>));
                if (stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_err)) != (_want)) {
                    _t.errorf(("Time.UnmarshalText(%s) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
                };
            };
        };
    }
