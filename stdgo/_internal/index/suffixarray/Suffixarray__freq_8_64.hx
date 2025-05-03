package stdgo._internal.index.suffixarray;
function _freq_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):stdgo.Slice<stdgo.GoInt64> {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L203"
        if (((_freq != null) && (_freq[(0 : stdgo.GoInt)] >= (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L204"
            return _freq;
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L206"
        if (_freq == null) {
            _freq = _bucket;
        };
        _freq = (_freq.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L211"
        for (_i => _ in _freq) {
            _freq[(_i : stdgo.GoInt)] = (0i64 : stdgo.GoInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L214"
        for (__0 => _c in _text) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L215"
            _freq[(_c : stdgo.GoInt)]++;
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L217"
        return _freq;
    }
