package stdgo._internal.index.suffixarray;
function _benchmarkNew(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _random:Bool):Void {
        @:check2r _b.reportAllocs();
        @:check2r _b.stopTimer();
        var _data = stdgo._internal.index.suffixarray.Suffixarray__benchdata._benchdata;
        if (_random) {
            _data = stdgo._internal.index.suffixarray.Suffixarray__benchrand._benchrand;
            if (_data[(0 : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                for (_i => _ in _data) {
                    _data[(_i : stdgo.GoInt)] = (stdgo._internal.math.rand.Rand_intn.intn((256 : stdgo.GoInt)) : stdgo.GoUInt8);
                };
            };
        };
        @:check2r _b.startTimer();
        @:check2r _b.setBytes((_data.length : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                stdgo._internal.index.suffixarray.Suffixarray_new_.new_(_data);
                _i++;
            };
        };
    }
