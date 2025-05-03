package stdgo._internal.encoding.base32;
function _stripNewlines(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        var _offset = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L515"
        for (__0 => _b in _src) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L516"
            if (((_b == (13 : stdgo.GoUInt8)) || (_b == (10 : stdgo.GoUInt8)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L517"
                continue;
            };
            _dst[(_offset : stdgo.GoInt)] = _b;
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L520"
            _offset++;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L522"
        return _offset;
    }
