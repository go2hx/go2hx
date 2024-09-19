package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testMarshalInvalidTimes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests = (new stdgo.Slice<_internal.time_test.Time_test_T__struct_16.T__struct_16>(5, 5, ...[({ _time : stdgo._internal.time.Time_date.date((10000 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc)?.__copy__(), _want : ("Time.MarshalJSON: year outside of range [0,9999]" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_16.T__struct_16), ({ _time : stdgo._internal.time.Time_date.date((-998 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc).add((-1000000000i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__(), _want : ("Time.MarshalJSON: year outside of range [0,9999]" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_16.T__struct_16), ({ _time : stdgo._internal.time.Time_date.date((0 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_utc.utc).add((-1i64 : stdgo._internal.time.Time_Duration.Duration))?.__copy__(), _want : ("Time.MarshalJSON: year outside of range [0,9999]" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_16.T__struct_16), ({ _time : stdgo._internal.time.Time_date.date((2020 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_fixedZone.fixedZone(stdgo.Go.str()?.__copy__(), (86400 : stdgo.GoInt)))?.__copy__(), _want : ("Time.MarshalJSON: timezone hour outside of range [0,23]" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_16.T__struct_16), ({ _time : stdgo._internal.time.Time_date.date((2020 : stdgo.GoInt), (1 : stdgo._internal.time.Time_Month.Month), (1 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt), stdgo._internal.time.Time_fixedZone.fixedZone(stdgo.Go.str()?.__copy__(), (442800 : stdgo.GoInt)))?.__copy__(), _want : ("Time.MarshalJSON: timezone hour outside of range [0,23]" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_16.T__struct_16)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _time : ({} : stdgo._internal.time.Time_Time.Time), _want : ("" : stdgo.GoString) } : _internal.time_test.Time_test_T__struct_16.T__struct_16)])) : stdgo.Slice<_internal.time_test.Time_test_T__struct_16.T__struct_16>);
        for (__2 => _tt in _tests) {
            var _want = (_tt._want?.__copy__() : stdgo.GoString);
            var __tmp__ = _tt._time.marshalJSON(), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_b != null) {
                _t.errorf(("(%v).MarshalText() = %q, want nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._time)), stdgo.Go.toInterface(_b));
            } else if (((_err == null) || (_err.error() != _want) : Bool)) {
                _t.errorf(("(%v).MarshalJSON() error = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._time)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
            };
            _want = stdgo._internal.strings.Strings_replaceAll.replaceAll(_tt._want?.__copy__(), ("JSON" : stdgo.GoString), ("Text" : stdgo.GoString))?.__copy__();
            {
                var __tmp__ = _tt._time.marshalText();
                _b = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_b != null) {
                _t.errorf(("(%v).MarshalText() = %q, want nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._time)), stdgo.Go.toInterface(_b));
            } else if (((_err == null) || (_err.error() != _want) : Bool)) {
                _t.errorf(("(%v).MarshalText() error = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._time)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
            };
        };
    }
