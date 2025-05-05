package stdgo._internal.encoding.gob;
function _decUint8(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        var _v = (_state._decodeUint() : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L253"
        if (((255i64 : stdgo.GoUInt64) < _v : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L254"
            stdgo._internal.encoding.gob.Gob__error_._error_((@:checkr _i ?? throw "null pointer dereference")._ovfl);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/decode.go#L256"
        _value.setUint(_v);
    }
