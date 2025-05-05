package stdgo._internal.encoding.json;
function _stateNeg(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L407"
        if (_c == ((48 : stdgo.GoUInt8))) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__state0._state0;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L409"
            return (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L411"
        if ((((49 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__state1._state1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L413"
            return (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L415"
        return _s._error(_c, ("in numeric literal" : stdgo.GoString));
    }
