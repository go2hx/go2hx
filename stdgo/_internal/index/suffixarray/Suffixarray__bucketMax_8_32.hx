package stdgo._internal.index.suffixarray;
function _bucketMax_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void {
        _freq = stdgo._internal.index.suffixarray.Suffixarray__freq_8_32._freq_8_32(_text, _freq, _bucket);
        _freq = (_freq.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        _bucket = (_bucket.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        var _total = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
        for (_i => _n in _freq) {
            _total = (_total + (_n) : stdgo.GoInt32);
            _bucket[(_i : stdgo.GoInt)] = _total;
        };
    }
