package stdgo._internal.encoding.json;
function _stateInString(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L338"
        if (_c == ((34 : stdgo.GoUInt8))) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateendvalue._stateEndValue;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L340"
            return (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L342"
        if (_c == ((92 : stdgo.GoUInt8))) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateinstringesc._stateInStringEsc;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L344"
            return (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L346"
        if ((_c < (32 : stdgo.GoUInt8) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L347"
            return _s._error(_c, ("in string literal" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L349"
        return (0 : stdgo.GoInt);
    }
