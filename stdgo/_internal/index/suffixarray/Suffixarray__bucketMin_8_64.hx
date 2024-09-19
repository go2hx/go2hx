package stdgo._internal.index.suffixarray;
function _bucketMin_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void {
        _freq = stdgo._internal.index.suffixarray.Suffixarray__freq_8_64._freq_8_64(_text, _freq, _bucket);
        _freq = (_freq.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>);
        _bucket = (_bucket.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>);
        var _total = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
        for (_i => _n in _freq) {
            _bucket[(_i : stdgo.GoInt)] = _total;
            _total = (_total + (_n) : stdgo.GoInt64);
        };
    }
