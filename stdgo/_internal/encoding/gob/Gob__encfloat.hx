package stdgo._internal.encoding.gob;
function _encFloat(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
        var _f = (_v.float_() : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L218"
        if (((_f != (0 : stdgo.GoFloat64)) || (@:checkr _state ?? throw "null pointer dereference")._sendZero : Bool)) {
            var _bits = (stdgo._internal.encoding.gob.Gob__floatbits._floatBits(_f) : stdgo.GoUInt64);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L220"
            _state._update(_i);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L221"
            _state._encodeUint(_bits);
        };
    }
