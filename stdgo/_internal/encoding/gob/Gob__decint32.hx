package stdgo._internal.encoding.gob;
function _decInt32(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        var _v = (_state._decodeInt() : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L280"
        if (((_v < (-2147483648i64 : stdgo.GoInt64) : Bool) || ((2147483647i64 : stdgo.GoInt64) < _v : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L281"
            stdgo._internal.encoding.gob.Gob__error_._error_((@:checkr _i ?? throw "null pointer dereference")._ovfl);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L283"
        _value.setInt(_v);
    }
