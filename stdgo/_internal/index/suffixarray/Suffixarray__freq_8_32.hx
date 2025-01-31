package stdgo._internal.index.suffixarray;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.regexp.Regexp;
function _freq_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):stdgo.Slice<stdgo.GoInt32> {
        if (((_freq != null) && (_freq[(0 : stdgo.GoInt)] >= (0 : stdgo.GoInt32) : Bool) : Bool)) {
            return _freq;
        };
        if (_freq == null) {
            _freq = _bucket;
        };
        _freq = (_freq.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        for (_i => _ in _freq) {
            _freq[(_i : stdgo.GoInt)] = (0 : stdgo.GoInt32);
        };
        for (__0 => _c in _text) {
            _freq[(_c : stdgo.GoInt)]++;
        };
        return _freq;
    }
