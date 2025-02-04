package stdgo._internal.encoding.gob;
function _decodeIntoValue(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _op:stdgo._internal.encoding.gob.Gob_t_decop.T_decOp, _isPtr:Bool, _value:stdgo._internal.reflect.Reflect_value.Value, _instr:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>):stdgo._internal.reflect.Reflect_value.Value {
        var _v = (_value?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        if (_isPtr) {
            _v = stdgo._internal.encoding.gob.Gob__decalloc._decAlloc(_value?.__copy__())?.__copy__();
        };
        _op(_instr, _state, _v?.__copy__());
        return _value?.__copy__();
    }
