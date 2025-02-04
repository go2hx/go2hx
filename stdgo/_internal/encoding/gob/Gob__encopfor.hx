package stdgo._internal.encoding.gob;
function _encOpFor(_rt:stdgo._internal.reflect.Reflect_type_.Type_, _inProgress:stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_encop.T_encOp>>, _building:stdgo.GoMap<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>, Bool>):{ var _0 : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_encop.T_encOp>; var _1 : stdgo.GoInt; } {
        var _ut = stdgo._internal.encoding.gob.Gob__usertype._userType(_rt);
        if ((@:checkr _ut ?? throw "null pointer dereference")._externalEnc != ((0 : stdgo.GoInt))) {
            return stdgo._internal.encoding.gob.Gob__gobencodeopfor._gobEncodeOpFor(_ut);
        };
        {
            var _opPtr = (_inProgress[_rt] ?? (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_encop.T_encOp>));
            if (_opPtr != null) {
                return { _0 : _opPtr, _1 : (@:checkr _ut ?? throw "null pointer dereference")._indir };
            };
        };
        var _typ = ((@:checkr _ut ?? throw "null pointer dereference")._base : stdgo._internal.reflect.Reflect_type_.Type_);
        var _indir = ((@:checkr _ut ?? throw "null pointer dereference")._indir : stdgo.GoInt);
        var _k = (_typ.kind() : stdgo._internal.reflect.Reflect_kind.Kind);
        var _op:stdgo._internal.encoding.gob.Gob_t_encop.T_encOp = (null : stdgo._internal.encoding.gob.Gob_t_encop.T_encOp);
        var _op__pointer__ = stdgo.Go.pointer(_op);
        var _op__pointer__ = stdgo.Go.pointer(_op);
        var _op__pointer__ = stdgo.Go.pointer(_op);
        var _op__pointer__ = stdgo.Go.pointer(_op);
        if (((_k : stdgo.GoInt) < (stdgo._internal.encoding.gob.Gob__encoptable._encOpTable.length) : Bool)) {
            _op = stdgo._internal.encoding.gob.Gob__encoptable._encOpTable[(_k : stdgo.GoInt)];
        };
        if (_op == null) {
            _inProgress[_rt] = _op__pointer__;
            {
                var _t = (_typ : stdgo._internal.reflect.Reflect_type_.Type_);
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        {
                            final __value__ = _t.kind();
                            if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                if (_t.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                    _op = stdgo._internal.encoding.gob.Gob__encuint8array._encUint8Array;
                                    break;
                                };
                                var __tmp__ = stdgo._internal.encoding.gob.Gob__encopfor._encOpFor(_t.elem(), _inProgress, _building), _elemOp:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_encop.T_encOp> = __tmp__._0, _elemIndir:stdgo.GoInt = __tmp__._1;
                                var _helper = (stdgo._internal.encoding.gob.Gob__encslicehelper._encSliceHelper[_t.elem().kind()] ?? (null : stdgo._internal.encoding.gob.Gob_t_enchelper.T_encHelper) : stdgo._internal.encoding.gob.Gob_t_enchelper.T_encHelper);
                                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _slice:stdgo._internal.reflect.Reflect_value.Value):Void {
                                    if ((!(@:checkr _state ?? throw "null pointer dereference")._sendZero && (_slice.len() == (0 : stdgo.GoInt)) : Bool)) {
                                        return;
                                    };
                                    @:check2r _state._update(_i);
                                    @:check2r (@:checkr _state ?? throw "null pointer dereference")._enc._encodeArray((@:checkr _state ?? throw "null pointer dereference")._b, _slice?.__copy__(), _elemOp.value, _elemIndir, _slice.len(), _helper);
                                };
                                break;
                            } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                var __tmp__ = stdgo._internal.encoding.gob.Gob__encopfor._encOpFor(_t.elem(), _inProgress, _building), _elemOp:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_encop.T_encOp> = __tmp__._0, _elemIndir:stdgo.GoInt = __tmp__._1;
                                var _helper = (stdgo._internal.encoding.gob.Gob__encarrayhelper._encArrayHelper[_t.elem().kind()] ?? (null : stdgo._internal.encoding.gob.Gob_t_enchelper.T_encHelper) : stdgo._internal.encoding.gob.Gob_t_enchelper.T_encHelper);
                                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _array:stdgo._internal.reflect.Reflect_value.Value):Void {
                                    @:check2r _state._update(_i);
                                    @:check2r (@:checkr _state ?? throw "null pointer dereference")._enc._encodeArray((@:checkr _state ?? throw "null pointer dereference")._b, _array?.__copy__(), _elemOp.value, _elemIndir, _array.len(), _helper);
                                };
                                break;
                            } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                var __tmp__ = stdgo._internal.encoding.gob.Gob__encopfor._encOpFor(_t.key(), _inProgress, _building), _keyOp:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_encop.T_encOp> = __tmp__._0, _keyIndir:stdgo.GoInt = __tmp__._1;
                                var __tmp__ = stdgo._internal.encoding.gob.Gob__encopfor._encOpFor(_t.elem(), _inProgress, _building), _elemOp:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_encop.T_encOp> = __tmp__._0, _elemIndir:stdgo.GoInt = __tmp__._1;
                                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _mv:stdgo._internal.reflect.Reflect_value.Value):Void {
                                    if ((!(@:checkr _state ?? throw "null pointer dereference")._sendZero && _mv.isNil() : Bool)) {
                                        return;
                                    };
                                    @:check2r _state._update(_i);
                                    @:check2r (@:checkr _state ?? throw "null pointer dereference")._enc._encodeMap((@:checkr _state ?? throw "null pointer dereference")._b, _mv?.__copy__(), _keyOp.value, _elemOp.value, _keyIndir, _elemIndir);
                                };
                                break;
                            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                stdgo._internal.encoding.gob.Gob__getencengine._getEncEngine(stdgo._internal.encoding.gob.Gob__usertype._userType(_typ), _building);
                                var _info = stdgo._internal.encoding.gob.Gob__mustgettypeinfo._mustGetTypeInfo(_typ);
                                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _sv:stdgo._internal.reflect.Reflect_value.Value):Void {
                                    @:check2r _state._update(_i);
                                    var _enc = @:check2 (@:checkr _info ?? throw "null pointer dereference")._encoder.load();
                                    @:check2r (@:checkr _state ?? throw "null pointer dereference")._enc._encodeStruct((@:checkr _state ?? throw "null pointer dereference")._b, _enc, _sv?.__copy__());
                                };
                                break;
                            } else if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _iv:stdgo._internal.reflect.Reflect_value.Value):Void {
                                    if ((!(@:checkr _state ?? throw "null pointer dereference")._sendZero && ((!_iv.isValid() || _iv.isNil() : Bool)) : Bool)) {
                                        return;
                                    };
                                    @:check2r _state._update(_i);
                                    @:check2r (@:checkr _state ?? throw "null pointer dereference")._enc._encodeInterface((@:checkr _state ?? throw "null pointer dereference")._b, _iv?.__copy__());
                                };
                                break;
                            };
                        };
                        break;
                    };
                };
            };
        };
        if (_op == null) {
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("can\'t happen: encode type %s" : stdgo.GoString), stdgo.Go.toInterface(_rt));
        };
        return { _0 : _op__pointer__, _1 : _indir };
    }
