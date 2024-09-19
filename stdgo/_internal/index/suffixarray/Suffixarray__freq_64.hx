package stdgo._internal.index.suffixarray;
function _freq_64(_text:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):stdgo.Slice<stdgo.GoInt64> {
        if (((_freq != null) && (_freq[(0 : stdgo.GoInt)] >= (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
            return _freq;
        };
        if (_freq == null) {
            _freq = _bucket;
        };
        for (_i => _ in _freq) {
            _freq[(_i : stdgo.GoInt)] = (0i64 : stdgo.GoInt64);
        };
        for (__0 => _c in _text) {
            _freq[(_c : stdgo.GoInt)]++;
        };
        return _freq;
    }
