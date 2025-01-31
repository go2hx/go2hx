package stdgo._internal.index.suffixarray;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.regexp.Regexp;
function _bucketMax_32(_text:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void {
        _freq = stdgo._internal.index.suffixarray.Suffixarray__freq_32._freq_32(_text, _freq, _bucket);
        var _total = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
        for (_i => _n in _freq) {
            _total = (_total + (_n) : stdgo.GoInt32);
            _bucket[(_i : stdgo.GoInt)] = _total;
        };
    }
