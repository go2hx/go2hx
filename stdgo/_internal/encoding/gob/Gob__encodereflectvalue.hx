package stdgo._internal.encoding.gob;
function _encodeReflectValue(_state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _v:stdgo._internal.reflect.Reflect_value.Value, _op:stdgo._internal.encoding.gob.Gob_t_encop.T_encOp, _indir:stdgo.GoInt):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while (((_i < _indir : Bool) && _v.isValid() : Bool)) {
                _v = stdgo._internal.reflect.Reflect_indirect.indirect(_v.__copy__()).__copy__();
                _i++;
            };
        };
        if (!_v.isValid()) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("encodeReflectValue: nil element" : stdgo.GoString));
        };
        _op(null, _state, _v?.__copy__());
    }
