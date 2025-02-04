package stdgo._internal.encoding.gob;
function _encBool(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
        var _b = (_v.bool_() : Bool);
        if ((_b || (@:checkr _state ?? throw "null pointer dereference")._sendZero : Bool)) {
            @:check2r _state._update(_i);
            if (_b) {
                @:check2r _state._encodeUint((1i64 : stdgo.GoUInt64));
            } else {
                @:check2r _state._encodeUint((0i64 : stdgo.GoUInt64));
            };
        };
    }
