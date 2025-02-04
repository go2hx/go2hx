package stdgo._internal.encoding.json;
function _checkValid(_data:stdgo.Slice<stdgo.GoUInt8>, _scan:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>):stdgo.Error {
        @:check2r _scan._reset();
        for (__4 => _c in _data) {
            (@:checkr _scan ?? throw "null pointer dereference")._bytes++;
            if ((@:checkr _scan ?? throw "null pointer dereference")._step(_scan, _c) == ((11 : stdgo.GoInt))) {
                return (@:checkr _scan ?? throw "null pointer dereference")._err;
            };
        };
        if (@:check2r _scan._eof() == ((11 : stdgo.GoInt))) {
            return (@:checkr _scan ?? throw "null pointer dereference")._err;
        };
        return (null : stdgo.Error);
    }
