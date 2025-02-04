package stdgo._internal.encoding.gob;
function _gobEncodeOpFor(_ut:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_usertypeinfo.T_userTypeInfo>):{ var _0 : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_encop.T_encOp>; var _1 : stdgo.GoInt; } {
        var _rt = ((@:checkr _ut ?? throw "null pointer dereference")._user : stdgo._internal.reflect.Reflect_type_.Type_);
        if ((@:checkr _ut ?? throw "null pointer dereference")._encIndir == ((-1 : stdgo.GoInt8))) {
            _rt = stdgo._internal.reflect.Reflect_pointerto.pointerTo(_rt);
        } else if (((@:checkr _ut ?? throw "null pointer dereference")._encIndir > (0 : stdgo.GoInt8) : Bool)) {
            {
                var _i = ((0 : stdgo.GoInt8) : stdgo.GoInt8);
                while ((_i < (@:checkr _ut ?? throw "null pointer dereference")._encIndir : Bool)) {
                    _rt = _rt.elem();
                    _i++;
                };
            };
        };
        var _op:stdgo._internal.encoding.gob.Gob_t_encop.T_encOp = (null : stdgo._internal.encoding.gob.Gob_t_encop.T_encOp);
        var _op__pointer__ = stdgo.Go.pointer(_op);
        var _op__pointer__ = stdgo.Go.pointer(_op);
        var _op__pointer__ = stdgo.Go.pointer(_op);
        var _op__pointer__ = stdgo.Go.pointer(_op);
        _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
            if ((@:checkr _ut ?? throw "null pointer dereference")._encIndir == ((-1 : stdgo.GoInt8))) {
                if (!_v.canAddr()) {
                    stdgo._internal.encoding.gob.Gob__errorf._errorf(("unaddressable value of type %s" : stdgo.GoString), stdgo.Go.toInterface(_rt));
                };
                _v = _v.addr()?.__copy__();
            };
            if ((!(@:checkr _state ?? throw "null pointer dereference")._sendZero && _v.isZero() : Bool)) {
                return;
            };
            @:check2r _state._update(_i);
            @:check2r (@:checkr _state ?? throw "null pointer dereference")._enc._encodeGobEncoder((@:checkr _state ?? throw "null pointer dereference")._b, _ut, _v?.__copy__());
        };
        return { _0 : _op__pointer__, _1 : ((@:checkr _ut ?? throw "null pointer dereference")._encIndir : stdgo.GoInt) };
    }
