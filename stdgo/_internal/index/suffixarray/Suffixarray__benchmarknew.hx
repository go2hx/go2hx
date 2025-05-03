package stdgo._internal.index.suffixarray;
function _benchmarkNew(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _random:Bool):Void {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L478"
        _b.reportAllocs();
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L479"
        _b.stopTimer();
        var _data = stdgo._internal.index.suffixarray.Suffixarray__benchdata._benchdata;
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L481"
        if (_random) {
            _data = stdgo._internal.index.suffixarray.Suffixarray__benchrand._benchrand;
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L483"
            if (_data[(0 : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L484"
                for (_i => _ in _data) {
                    _data[(_i : stdgo.GoInt)] = (stdgo._internal.math.rand.Rand_intn.intn((256 : stdgo.GoInt)) : stdgo.GoUInt8);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L489"
        _b.startTimer();
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L490"
        _b.setBytes((_data.length : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L491"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L492"
                stdgo._internal.index.suffixarray.Suffixarray_new_.new_(_data);
                _i++;
            };
        };
    }
