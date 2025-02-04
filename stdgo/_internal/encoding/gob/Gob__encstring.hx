package stdgo._internal.encoding.gob;
function _encString(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
        var _s = ((_v.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if ((((_s.length) > (0 : stdgo.GoInt) : Bool) || (@:checkr _state ?? throw "null pointer dereference")._sendZero : Bool)) {
            @:check2r _state._update(_i);
            @:check2r _state._encodeUint((_s.length : stdgo.GoUInt64));
            @:check2r (@:checkr _state ?? throw "null pointer dereference")._b.writeString(_s?.__copy__());
        };
    }
