package stdgo._internal.encoding.json;
function _checkValid(_data:stdgo.Slice<stdgo.GoUInt8>, _scan:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L32"
        _scan._reset();
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L33"
        for (__4 => _c in _data) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L34"
            (@:checkr _scan ?? throw "null pointer dereference")._bytes++;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L35"
            if ((@:checkr _scan ?? throw "null pointer dereference")._step(_scan, _c) == ((11 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L36"
                return (@:checkr _scan ?? throw "null pointer dereference")._err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L39"
        if (_scan._eof() == ((11 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L40"
            return (@:checkr _scan ?? throw "null pointer dereference")._err;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L42"
        return (null : stdgo.Error);
    }
