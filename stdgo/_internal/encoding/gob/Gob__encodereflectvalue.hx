package stdgo._internal.encoding.gob;
function _encodeReflectValue(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _v:stdgo._internal.reflect.Reflect_value.Value, _op:stdgo._internal.encoding.gob.Gob_t_encop.T_encOp, _indir:stdgo.GoInt):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L357"
        {
            var _i = (0 : stdgo.GoInt);
            while (((_i < _indir : Bool) && _v.isValid() : Bool)) {
                _v = stdgo._internal.reflect.Reflect_indirect.indirect(_v.__copy__()).__copy__();
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L360"
        if (!_v.isValid()) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L361"
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("encodeReflectValue: nil element" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L363"
        _op(null, _state, _v?.__copy__());
    }
