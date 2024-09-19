package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testTimeJSON(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _tt in _internal.time_test.Time_test__jsonTests._jsonTests) {
            var _jsonTime:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
            {
                var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._time))), _jsonBytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("%v json.Marshal error = %v, want nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._time)), stdgo.Go.toInterface(_err));
                } else if ((_jsonBytes : stdgo.GoString) != (_tt._json)) {
                    _t.errorf(("%v JSON = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._time)), stdgo.Go.toInterface((_jsonBytes : stdgo.GoString)), stdgo.Go.toInterface(_tt._json));
                } else {
                    _err = stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_jsonBytes, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_jsonTime) : stdgo.Ref<stdgo._internal.time.Time_Time.Time>))));
                    if (_err != null) {
                        _t.errorf(("%v json.Unmarshal error = %v, want nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._time)), stdgo.Go.toInterface(_err));
                    } else if (!_internal.time_test.Time_test__equalTimeAndZone._equalTimeAndZone(_jsonTime?.__copy__(), _tt._time?.__copy__())) {
                        _t.errorf(("Unmarshaled time = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_jsonTime)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._time)));
                    };
                };
            };
        };
    }
