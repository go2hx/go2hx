package stdgo._internal.encoding.json;
function _stateDot(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L444"
        if ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__statedot0._stateDot0;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L446"
            return (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L448"
        return _s._error(_c, ("after decimal point in numeric literal" : stdgo.GoString));
    }
