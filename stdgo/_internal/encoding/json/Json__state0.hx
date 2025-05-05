package stdgo._internal.encoding.json;
function _state0(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L430"
        if (_c == ((46 : stdgo.GoUInt8))) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__statedot._stateDot;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L432"
            return (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L434"
        if (((_c == (101 : stdgo.GoUInt8)) || (_c == (69 : stdgo.GoUInt8)) : Bool)) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__statee._stateE;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L436"
            return (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L438"
        return stdgo._internal.encoding.json.Json__stateendvalue._stateEndValue(_s, _c);
    }
