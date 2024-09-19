package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testNotGobEncodableTime(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _tt in _internal.time_test.Time_test__notEncodableTimes._notEncodableTimes) {
            var __tmp__ = _tt._time.gobEncode(), __3:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) || (_err.error() != _tt._want) : Bool)) {
                _t.errorf(("%v GobEncode error = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._time)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._want));
            };
            {
                var __tmp__ = _tt._time.marshalBinary();
                _err = __tmp__._1;
            };
            if (((_err == null) || (_err.error() != _tt._want) : Bool)) {
                _t.errorf(("%v MarshalBinary error = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt._time)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._want));
            };
        };
    }
