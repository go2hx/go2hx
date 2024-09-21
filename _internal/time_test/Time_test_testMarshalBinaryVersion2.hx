package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testMarshalBinaryVersion2(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.time.Time_parse.parse(("2006-01-02T15:04:05Z07:00" : stdgo.GoString), ("1880-01-01T00:00:00Z" : stdgo.GoString)), _t0:stdgo._internal.time.Time_Time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("Failed to parse time, error = %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.time.Time_loadLocation.loadLocation(("US/Eastern" : stdgo.GoString)), _loc:stdgo.Ref<stdgo._internal.time.Time_Location.Location> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("Failed to load location, error = %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _t1 = (_t0.in_(_loc)?.__copy__() : stdgo._internal.time.Time_Time.Time);
        var __tmp__ = _t1.marshalBinary(), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("Failed to Marshal, error = %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _t2 = (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time);
        _err = _t2.unmarshalBinary(_b);
        if (_err != null) {
            _t.errorf(("Failed to Unmarshal, error = %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if (!((_t0.equal(_t1?.__copy__()) && _t1.equal(_t2?.__copy__()) : Bool))) {
            if (!_t0.equal(_t1?.__copy__())) {
                _t.errorf(("The result t1: %+v after Marshal is not matched original t0: %+v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t0)));
            };
            if (!_t1.equal(_t2?.__copy__())) {
                _t.errorf(("The result t2: %+v after Unmarshal is not matched original t1: %+v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)));
            };
        };
    }
