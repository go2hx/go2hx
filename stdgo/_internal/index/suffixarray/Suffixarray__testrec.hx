package stdgo._internal.index.suffixarray;
function _testRec(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _x:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoInt, _max:stdgo.GoInt, _numFail:stdgo.Pointer<stdgo.GoInt>, _build:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoInt>):Void {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L425"
        if ((_i < (_x.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L426"
            {
                _x[(_i : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                while ((_x[(_i : stdgo.GoInt)] <= (_max : stdgo.GoUInt8) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L427"
                    stdgo._internal.index.suffixarray.Suffixarray__testrec._testRec(_t, _x, (_i + (1 : stdgo.GoInt) : stdgo.GoInt), _max, _numFail, _build);
                    _x[(_i : stdgo.GoInt)]++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L429"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L432"
        if (!stdgo._internal.index.suffixarray.Suffixarray__testsa._testSA(_t, _x, _build)) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L433"
            _numFail.value++;
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L434"
            if ((_numFail.value >= (10 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L435"
                _t.errorf(("stopping after %d failures" : stdgo.GoString), stdgo.Go.toInterface(_numFail.value));
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L436"
                _t.failNow();
            };
        };
    }
