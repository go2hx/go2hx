package stdgo._internal.encoding.gob;
function _ignoreUint8Array(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        var __tmp__ = _state._getLength(), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L431"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L432"
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("slice length too large" : stdgo.GoString));
        };
        var _bn = ((@:checkr _state ?? throw "null pointer dereference")._b.len() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L435"
        if ((_bn < _n : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L436"
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("invalid slice length %d: exceeds input size %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_bn));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L438"
        (@:checkr _state ?? throw "null pointer dereference")._b.drop(_n);
    }
