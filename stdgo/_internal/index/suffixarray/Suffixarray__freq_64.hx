package stdgo._internal.index.suffixarray;
function _freq_64(_text:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):stdgo.Slice<stdgo.GoInt64> {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L238"
        if (((_freq != null) && (_freq[(0 : stdgo.GoInt)] >= (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L239"
            return _freq;
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L241"
        if (_freq == null) {
            _freq = _bucket;
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L245"
        for (_i => _ in _freq) {
            _freq[(_i : stdgo.GoInt)] = (0i64 : stdgo.GoInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L248"
        for (__0 => _c in _text) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L249"
            _freq[(_c : stdgo.GoInt)]++;
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L251"
        return _freq;
    }
