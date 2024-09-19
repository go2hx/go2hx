package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testTimeGob(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        for (__2 => _tt in _internal.time_test.Time_test__gobTests._gobTests) {
            var _gobtt:stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
            {
                var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tt) : stdgo.Ref<stdgo._internal.time.Time_Time.Time>)))) : stdgo.Error);
                if (_err != null) {
                    _t.errorf(("%v gob Encode error = %q, want nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt)), stdgo.Go.toInterface(_err));
                } else {
                    var _err = (_dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_gobtt) : stdgo.Ref<stdgo._internal.time.Time_Time.Time>)))) : stdgo.Error);
                    if (_err != null) {
                        _t.errorf(("%v gob Decode error = %q, want nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt)), stdgo.Go.toInterface(_err));
                    } else if (!_internal.time_test.Time_test__equalTimeAndZone._equalTimeAndZone(_gobtt?.__copy__(), _tt?.__copy__())) {
                        _t.errorf(("Decoded time = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_gobtt)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tt)));
                    };
                };
            };
            _b.reset();
        };
    }
