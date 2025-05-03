package stdgo._internal.encoding.gob;
function _encOpFor(_rt:stdgo._internal.reflect.Reflect_type_.Type_, _inProgress:stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_encop.T_encOp>>, _building:stdgo.GoMap<stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_typeinfo.T_typeInfo>, Bool>):{ var _0 : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_encop.T_encOp>; var _1 : stdgo.GoInt; } {
        var _ut = stdgo._internal.encoding.gob.Gob__usertype._userType(_rt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L484"
        if ((@:checkr _ut ?? throw "null pointer dereference")._externalEnc != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L485"
            return stdgo._internal.encoding.gob.Gob__gobencodeopfor._gobEncodeOpFor(_ut);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L489"
        {
            var _opPtr = (_inProgress[_rt] ?? (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_encop.T_encOp>));
            if (_opPtr != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L490"
                return { _0 : _opPtr, _1 : (@:checkr _ut ?? throw "null pointer dereference")._indir };
            };
        };
        var _typ = ((@:checkr _ut ?? throw "null pointer dereference")._base : stdgo._internal.reflect.Reflect_type_.Type_);
        var _indir = ((@:checkr _ut ?? throw "null pointer dereference")._indir : stdgo.GoInt);
        var _k = (_typ.kind() : stdgo._internal.reflect.Reflect_kind.Kind);
        var _op:stdgo._internal.encoding.gob.Gob_t_encop.T_encOp = (null : stdgo._internal.encoding.gob.Gob_t_encop.T_encOp), _op__pointer__ = stdgo.Go.pointer(_op);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L496"
        if (((_k : stdgo.GoInt) < (stdgo._internal.encoding.gob.Gob__encoptable._encOpTable.length) : Bool)) {
            _op = stdgo._internal.encoding.gob.Gob__encoptable._encOpTable[(_k : stdgo.GoInt)];
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L499"
        if (_op == null) {
            _inProgress[_rt] = _op__pointer__;
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L502"
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
                                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L504"
                                if (_t.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                    _op = stdgo._internal.encoding.gob.Gob__encuint8array._encUint8Array;
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L506"
                                    break;
                                };
                                var __tmp__ = stdgo._internal.encoding.gob.Gob__encopfor._encOpFor(_t.elem(), _inProgress, _building), _elemOp:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_encop.T_encOp> = __tmp__._0, _elemIndir:stdgo.GoInt = __tmp__._1;
                                var _helper = (stdgo._internal.encoding.gob.Gob__encslicehelper._encSliceHelper[_t.elem().kind()] ?? (null : stdgo._internal.encoding.gob.Gob_t_enchelper.T_encHelper) : stdgo._internal.encoding.gob.Gob_t_enchelper.T_encHelper);
                                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _slice:stdgo._internal.reflect.Reflect_value.Value):Void {
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L512"
                                    if ((!(@:checkr _state ?? throw "null pointer dereference")._sendZero && (_slice.len() == (0 : stdgo.GoInt)) : Bool)) {
                                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L513"
                                        return;
                                    };
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L515"
                                    _state._update(_i);
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L516"
                                    (@:checkr _state ?? throw "null pointer dereference")._enc._encodeArray((@:checkr _state ?? throw "null pointer dereference")._b, _slice?.__copy__(), _elemOp.value, _elemIndir, _slice.len(), _helper);
                                };
                                break;
                            } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                var __tmp__ = stdgo._internal.encoding.gob.Gob__encopfor._encOpFor(_t.elem(), _inProgress, _building), _elemOp:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_encop.T_encOp> = __tmp__._0, _elemIndir:stdgo.GoInt = __tmp__._1;
                                var _helper = (stdgo._internal.encoding.gob.Gob__encarrayhelper._encArrayHelper[_t.elem().kind()] ?? (null : stdgo._internal.encoding.gob.Gob_t_enchelper.T_encHelper) : stdgo._internal.encoding.gob.Gob_t_enchelper.T_encHelper);
                                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _array:stdgo._internal.reflect.Reflect_value.Value):Void {
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L523"
                                    _state._update(_i);
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L524"
                                    (@:checkr _state ?? throw "null pointer dereference")._enc._encodeArray((@:checkr _state ?? throw "null pointer dereference")._b, _array?.__copy__(), _elemOp.value, _elemIndir, _array.len(), _helper);
                                };
                                break;
                            } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                var __tmp__ = stdgo._internal.encoding.gob.Gob__encopfor._encOpFor(_t.key(), _inProgress, _building), _keyOp:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_encop.T_encOp> = __tmp__._0, _keyIndir:stdgo.GoInt = __tmp__._1;
                                var __tmp__ = stdgo._internal.encoding.gob.Gob__encopfor._encOpFor(_t.elem(), _inProgress, _building), _elemOp:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_t_encop.T_encOp> = __tmp__._0, _elemIndir:stdgo.GoInt = __tmp__._1;
                                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _mv:stdgo._internal.reflect.Reflect_value.Value):Void {
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L532"
                                    if ((!(@:checkr _state ?? throw "null pointer dereference")._sendZero && _mv.isNil() : Bool)) {
                                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L533"
                                        return;
                                    };
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L535"
                                    _state._update(_i);
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L536"
                                    (@:checkr _state ?? throw "null pointer dereference")._enc._encodeMap((@:checkr _state ?? throw "null pointer dereference")._b, _mv?.__copy__(), _keyOp.value, _elemOp.value, _keyIndir, _elemIndir);
                                };
                                break;
                            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L540"
                                stdgo._internal.encoding.gob.Gob__getencengine._getEncEngine(stdgo._internal.encoding.gob.Gob__usertype._userType(_typ), _building);
                                var _info = stdgo._internal.encoding.gob.Gob__mustgettypeinfo._mustGetTypeInfo(_typ);
                                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _sv:stdgo._internal.reflect.Reflect_value.Value):Void {
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L543"
                                    _state._update(_i);
                                    var _enc = (@:checkr _info ?? throw "null pointer dereference")._encoder.load();
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L546"
                                    (@:checkr _state ?? throw "null pointer dereference")._enc._encodeStruct((@:checkr _state ?? throw "null pointer dereference")._b, _enc, _sv?.__copy__());
                                };
                                break;
                            } else if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                _op = function(_i:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encinstr.T_encInstr>, _state:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_encoderstate.T_encoderState>, _iv:stdgo._internal.reflect.Reflect_value.Value):Void {
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L550"
                                    if ((!(@:checkr _state ?? throw "null pointer dereference")._sendZero && ((!_iv.isValid() || _iv.isNil() : Bool)) : Bool)) {
                                        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L551"
                                        return;
                                    };
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L553"
                                    _state._update(_i);
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L554"
                                    (@:checkr _state ?? throw "null pointer dereference")._enc._encodeInterface((@:checkr _state ?? throw "null pointer dereference")._b, _iv?.__copy__());
                                };
                                break;
                            };
                        };
                        break;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L558"
        if (_op == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L559"
            stdgo._internal.encoding.gob.Gob__errorf._errorf(("can\'t happen: encode type %s" : stdgo.GoString), stdgo.Go.toInterface(_rt));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encode.go#L561"
        return { _0 : _op__pointer__, _1 : _indir };
    }
