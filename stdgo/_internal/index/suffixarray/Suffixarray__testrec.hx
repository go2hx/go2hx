package stdgo._internal.index.suffixarray;
function _testRec(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _x:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoInt, _max:stdgo.GoInt, _numFail:stdgo.Pointer<stdgo.GoInt>, _build:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoInt>):Void {
        if ((_i < (_x.length) : Bool)) {
            {
                _x[(_i : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                while ((_x[(_i : stdgo.GoInt)] <= (_max : stdgo.GoUInt8) : Bool)) {
                    stdgo._internal.index.suffixarray.Suffixarray__testrec._testRec(_t, _x, (_i + (1 : stdgo.GoInt) : stdgo.GoInt), _max, _numFail, _build);
                    _x[(_i : stdgo.GoInt)]++;
                };
            };
            return;
        };
        if (!stdgo._internal.index.suffixarray.Suffixarray__testsa._testSA(_t, _x, _build)) {
            _numFail.value++;
            if ((_numFail.value >= (10 : stdgo.GoInt) : Bool)) {
                @:check2r _t.errorf(("stopping after %d failures" : stdgo.GoString), stdgo.Go.toInterface(_numFail.value));
                @:check2r _t.failNow();
            };
        };
    }
