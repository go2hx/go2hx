package stdgo._internal.encoding.gob;
function _encComplex(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
        var _c = (_v.complex() : stdgo.GoComplex128);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L229"
        if (((_c != ((0f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 0f64))) || (@:checkr _state ?? throw "null pointer dereference")._sendZero : Bool)) {
            var _rpart = (stdgo._internal.encoding.gob.Gob__floatbits._floatBits((_c : stdgo.GoComplex128).real) : stdgo.GoUInt64);
            var _ipart = (stdgo._internal.encoding.gob.Gob__floatbits._floatBits((_c : stdgo.GoComplex128).imag) : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L232"
            _state._update(_i);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L233"
            _state._encodeUint(_rpart);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L234"
            _state._encodeUint(_ipart);
        };
    }
