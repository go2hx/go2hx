package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testInvalidTimeGob(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__2 => _tt in _internal.time_test.Time_test__invalidEncodingTests._invalidEncodingTests) {
            var _ignored:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
            var _err = (_ignored.gobDecode(_tt._bytes) : stdgo.Error);
            if (((_err == null) || (_err.error() != _tt._want) : Bool)) {
                _t.errorf(("time.GobDecode(%#v) error = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._bytes), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._want));
            };
            _err = _ignored.unmarshalBinary(_tt._bytes);
            if (((_err == null) || (_err.error() != _tt._want) : Bool)) {
                _t.errorf(("time.UnmarshalBinary(%#v) error = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._bytes), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._want));
            };
        };
    }
