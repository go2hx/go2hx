package stdgo._internal.encoding.json;
function _checkValid(_data:stdgo.Slice<stdgo.GoUInt8>, _scan:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>):stdgo.Error {
        _scan._reset();
        for (__4 => _c in _data) {
            _scan._bytes++;
            if (_scan._step(_scan, _c) == ((11 : stdgo.GoInt))) {
                return _scan._err;
            };
        };
        if (_scan._eof() == ((11 : stdgo.GoInt))) {
            return _scan._err;
        };
        return (null : stdgo.Error);
    }
