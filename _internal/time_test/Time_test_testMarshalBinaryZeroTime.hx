package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testMarshalBinaryZeroTime(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _t0 = (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time);
        var __tmp__ = _t0.marshalBinary(), _enc:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _t1 = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
        {
            var _err = (_t1.unmarshalBinary(_enc) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        if (stdgo.Go.toInterface(_t1) != stdgo.Go.toInterface(_t0)) {
            _t.errorf(("t0=%#v\nt1=%#v\nwant identical structures" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t0)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)));
        };
    }
