package stdgo._internal.encoding.gob;
function _decUint16(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        var _v = (@:check2r _state._decodeUint() : stdgo.GoUInt64);
        if (((65535i64 : stdgo.GoUInt64) < _v : Bool)) {
            stdgo._internal.encoding.gob.Gob__error_._error_((@:checkr _i ?? throw "null pointer dereference")._ovfl);
        };
        _value.setUint(_v);
    }
