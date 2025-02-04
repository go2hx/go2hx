package stdgo._internal.encoding.gob;
function _decInt32(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        var _v = (@:check2r _state._decodeInt() : stdgo.GoInt64);
        if (((_v < (-2147483648i64 : stdgo.GoInt64) : Bool) || ((2147483647i64 : stdgo.GoInt64) < _v : Bool) : Bool)) {
            stdgo._internal.encoding.gob.Gob__error_._error_((@:checkr _i ?? throw "null pointer dereference")._ovfl);
        };
        _value.setInt(_v);
    }
