package stdgo._internal.encoding.pem;
function _removeSpacesAndTabs(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if (!stdgo._internal.bytes.Bytes_containsany.containsAny(_data, (" \t" : stdgo.GoString))) {
            return _data;
        };
        var _result = (new stdgo.Slice<stdgo.GoUInt8>((_data.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _n = (0 : stdgo.GoInt);
        for (__0 => _b in _data) {
            if (((_b == (32 : stdgo.GoUInt8)) || (_b == (9 : stdgo.GoUInt8)) : Bool)) {
                continue;
            };
            _result[(_n : stdgo.GoInt)] = _b;
            _n++;
        };
        return (_result.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
    }
