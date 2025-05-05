package stdgo._internal.math.big;
function testIntJSONEncodingNil(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var __tmp__ = _x.marshalJSON(), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L103"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L104"
            _t.fatalf(("marshaling of nil failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var _got = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _want = (("null" : stdgo.GoString) : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L108"
        if (_got != (_want)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L109"
            _t.fatalf(("marshaling of nil failed: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
