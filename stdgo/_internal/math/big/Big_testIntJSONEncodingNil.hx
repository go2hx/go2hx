package stdgo._internal.math.big;
function testIntJSONEncodingNil(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var __tmp__ = _x.marshalJSON(), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("marshaling of nil failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _got = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _want = ("null" : stdgo.GoString);
        if (_got != (_want)) {
            _t.fatalf(("marshaling of nil failed: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
