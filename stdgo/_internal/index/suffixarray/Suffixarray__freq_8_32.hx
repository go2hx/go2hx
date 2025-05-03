package stdgo._internal.index.suffixarray;
function _freq_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):stdgo.Slice<stdgo.GoInt32> {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L214"
        if (((_freq != null) && (_freq[(0 : stdgo.GoInt)] >= (0 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L215"
            return _freq;
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L217"
        if (_freq == null) {
            _freq = _bucket;
        };
        _freq = (_freq.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L222"
        for (_i => _ in _freq) {
            _freq[(_i : stdgo.GoInt)] = (0 : stdgo.GoInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L225"
        for (__0 => _c in _text) {
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L226"
            _freq[(_c : stdgo.GoInt)]++;
        };
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais.go#L228"
        return _freq;
    }
