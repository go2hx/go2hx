package stdgo._internal.index.suffixarray;
function _bucketMax_64(_text:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void {
        _freq = stdgo._internal.index.suffixarray.Suffixarray__freq_64._freq_64(_text, _freq, _bucket);
        var _total = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L306"
        for (_i => _n in _freq) {
            _total = (_total + (_n) : stdgo.GoInt64);
            _bucket[(_i : stdgo.GoInt)] = _total;
        };
    }
