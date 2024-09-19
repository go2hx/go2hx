package stdgo._internal.net.http;
function _numLeadingCRorLF(_v:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        var _n = (0 : stdgo.GoInt);
        for (__143 => _b in _v) {
            if (((_b == (13 : stdgo.GoUInt8)) || (_b == (10 : stdgo.GoUInt8)) : Bool)) {
                _n++;
                continue;
            };
            break;
        };
        return _n;
    }
