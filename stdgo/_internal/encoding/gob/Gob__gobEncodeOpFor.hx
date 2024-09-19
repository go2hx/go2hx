package stdgo._internal.encoding.gob;
function _gobEncodeOpFor(_ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>):{ var _0 : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encOp.T_encOp>; var _1 : stdgo.GoInt; } {
        var _rt = (_ut._user : stdgo._internal.reflect.Reflect_Type_.Type_);
        if (_ut._encIndir == ((-1 : stdgo.GoInt8))) {
            _rt = stdgo._internal.reflect.Reflect_pointerTo.pointerTo(_rt);
        } else if ((_ut._encIndir > (0 : stdgo.GoInt8) : Bool)) {
            {
                var _i = ((0 : stdgo.GoInt8) : stdgo.GoInt8);
                stdgo.Go.cfor((_i < _ut._encIndir : Bool), _i++, {
                    _rt = _rt.elem();
                });
            };
        };
        var _op:stdgo._internal.encoding.gob.Gob_T_encOp.T_encOp = (null : stdgo._internal.encoding.gob.Gob_T_encOp.T_encOp);
        _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encInstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encoderState.T_encoderState>, _v:stdgo._internal.reflect.Reflect_Value.Value):Void {
            if (_ut._encIndir == ((-1 : stdgo.GoInt8))) {
                if (!_v.canAddr()) {
                    stdgo._internal.encoding.gob.Gob__errorf._errorf(("unaddressable value of type %s" : stdgo.GoString), stdgo.Go.toInterface(_rt));
                };
                _v = _v.addr()?.__copy__();
            };
            if ((!_state._sendZero && _v.isZero() : Bool)) {
                return;
            };
            _state._update(_i);
            _state._enc._encodeGobEncoder(_state._b, _ut, _v?.__copy__());
        };
        return { _0 : (stdgo.Go.setRef(_op) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encOp.T_encOp>), _1 : (_ut._encIndir : stdgo.GoInt) };
    }
