package stdgo._internal.encoding.gob;
function _decUint8Slice(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decinstr.T_decInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>, _value:stdgo._internal.reflect.Reflect_value.Value):Void {
        var __tmp__ = @:check2r _state._getLength(), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("bad %s slice length: %d" : stdgo.GoString), stdgo.Go.toInterface(_value.type()), stdgo.Go.toInterface(_n));
        };
        if ((_value.cap() < _n : Bool)) {
            var _safe = (stdgo._internal.internal.saferio.Saferio_slicecap.sliceCap(stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoUInt8>)), (_n : stdgo.GoUInt64)) : stdgo.GoInt);
            if ((_safe < (0 : stdgo.GoInt) : Bool)) {
                stdgo._internal.encoding.gob.Gob__errorf._errorf(("%s slice too big: %d elements" : stdgo.GoString), stdgo.Go.toInterface(_value.type()), stdgo.Go.toInterface(_n));
            };
            _value.set(stdgo._internal.reflect.Reflect_makeslice.makeSlice(_value.type(), _safe, _safe)?.__copy__());
            var _ln = (_safe : stdgo.GoInt);
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                if ((_i >= _ln : Bool)) {
                    _value.grow((1 : stdgo.GoInt));
                };
                _ln = _value.cap();
                if ((_ln > _n : Bool)) {
                    _ln = _n;
                };
                _value.setLen(_ln);
                var _sub = (_value.slice(_i, _ln)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                {
                    var __tmp__ = @:check2r (@:checkr _state ?? throw "null pointer dereference")._b.read(_sub.bytes()), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        stdgo._internal.encoding.gob.Gob__errorf._errorf(("error decoding []byte at %d: %s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_i));
                    };
                };
                _i = _ln;
            };
        } else {
            _value.setLen(_n);
            {
                var __tmp__ = @:check2r (@:checkr _state ?? throw "null pointer dereference")._b.read(_value.bytes()), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    stdgo._internal.encoding.gob.Gob__errorf._errorf(("error decoding []byte: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
