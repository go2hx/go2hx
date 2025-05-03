package stdgo._internal.index.suffixarray;
function _freq_32(_text:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):stdgo.Slice<stdgo.GoInt32> {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L221"
        if (((_freq != null) && (_freq[(0 : stdgo.GoInt)] >= (0 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L222"
            return _freq;
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L224"
        if (_freq == null) {
            _freq = _bucket;
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L228"
        for (_i => _ in _freq) {
            _freq[(_i : stdgo.GoInt)] = (0 : stdgo.GoInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L231"
        for (__0 => _c in _text) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L232"
            _freq[(_c : stdgo.GoInt)]++;
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L234"
        return _freq;
    }
