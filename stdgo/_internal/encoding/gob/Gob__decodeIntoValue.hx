package stdgo._internal.encoding.gob;
function _decodeIntoValue(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>, _op:stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp, _isPtr:Bool, _value:stdgo._internal.reflect.Reflect_Value.Value, _instr:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decInstr.T_decInstr>):stdgo._internal.reflect.Reflect_Value.Value {
        var _v = (_value?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
        if (_isPtr) {
            _v = stdgo._internal.encoding.gob.Gob__decAlloc._decAlloc(_value?.__copy__())?.__copy__();
        };
        _op(_instr, _state, _v?.__copy__());
        return _value?.__copy__();
    }
