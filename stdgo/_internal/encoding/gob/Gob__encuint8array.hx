package stdgo._internal.encoding.gob;
function _encUint8Array(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
        var _b = _v.bytes();
        if ((((_b.length) > (0 : stdgo.GoInt) : Bool) || (@:checkr _state ?? throw "null pointer dereference")._sendZero : Bool)) {
            @:check2r _state._update(_i);
            @:check2r _state._encodeUint((_b.length : stdgo.GoUInt64));
            @:check2r (@:checkr _state ?? throw "null pointer dereference")._b.write(_b);
        };
    }
