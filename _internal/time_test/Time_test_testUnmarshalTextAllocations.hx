package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testUnmarshalTextAllocations(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _in = (("2020-08-22T11:27:43.123456789Z" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((100 : stdgo.GoInt), function():Void {
                var _t:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
                _t.unmarshalText(_in);
            }) : stdgo.GoFloat64);
            if (_allocs != (0 : stdgo.GoFloat64)) {
                _t.errorf(("got %v allocs, want 0 allocs" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
            };
        };
    }
