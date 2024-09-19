package stdgo._internal.encoding.gob;
function _encComplex(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _v:stdgo._internal.reflect.Reflect_Value.Value):Void {
        var _c = (_v.complex() : stdgo.GoComplex128);
        if (((_c != ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))) || _state._sendZero : Bool)) {
            var _rpart = (stdgo._internal.encoding.gob.Gob__floatBits._floatBits(_c.real) : stdgo.GoUInt64);
            var _ipart = (stdgo._internal.encoding.gob.Gob__floatBits._floatBits(_c.imag) : stdgo.GoUInt64);
            _state._update(_i);
            _state._encodeUint(_rpart);
            _state._encodeUint(_ipart);
        };
    }
