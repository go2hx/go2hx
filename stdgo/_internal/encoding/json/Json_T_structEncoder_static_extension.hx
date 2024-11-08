package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5503648:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5503653_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5503631:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5503548:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5503518:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5503484:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5503484 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5503502i32;
                } else if (__value__ == (5503502i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5504044i32;
                    } else {
                        _gotoNext = 5504048i32;
                    };
                } else if (__value__ == (5503544i32)) {
                    _f_5503548 = (stdgo.Go.setRef(_se._fields._list[(_i_5503518 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5503631 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5503548._index.length)) {
                        _gotoNext = 5503801i32;
                    } else {
                        _gotoNext = 5503807i32;
                    };
                } else if (__value__ == (5503667i32)) {
                    _i_5503648 = _f_5503548._index[(_i_5503653_0 : stdgo.GoInt)];
                    if (_fv_5503631.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5503704i32;
                    } else {
                        _gotoNext = 5503783i32;
                    };
                } else if (__value__ == (5503704i32)) {
                    if (_fv_5503631.isNil()) {
                        _gotoNext = 5503724i32;
                    } else {
                        _gotoNext = 5503760i32;
                    };
                } else if (__value__ == (5503724i32)) {
                    _i_5503518++;
                    _gotoNext = 5504045i32;
                } else if (__value__ == (5503760i32)) {
                    _fv_5503631 = _fv_5503631.elem()?.__copy__();
                    _gotoNext = 5503783i32;
                } else if (__value__ == (5503783i32)) {
                    _fv_5503631 = _fv_5503631.field(_i_5503648)?.__copy__();
                    _i_5503653_0++;
                    _gotoNext = 5503802i32;
                } else if (__value__ == (5503801i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5503548._index[(0i32 : stdgo.GoInt)];
                        _i_5503653_0 = __tmp__0;
                        _i_5503648 = __tmp__1;
                    };
                    _gotoNext = 5503802i32;
                } else if (__value__ == (5503802i32)) {
                    if (_i_5503653_0 < (_f_5503548._index.length)) {
                        _gotoNext = 5503667i32;
                    } else {
                        _gotoNext = 5503807i32;
                    };
                } else if (__value__ == (5503807i32)) {
                    if ((_f_5503548._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5503631?.__copy__()) : Bool)) {
                        _gotoNext = 5503842i32;
                    } else {
                        _gotoNext = 5503862i32;
                    };
                } else if (__value__ == (5503842i32)) {
                    _i_5503518++;
                    _gotoNext = 5504045i32;
                } else if (__value__ == (5503862i32)) {
                    _e.writeByte(_next_5503484);
                    _next_5503484 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5503914i32;
                    } else {
                        _gotoNext = 5503957i32;
                    };
                } else if (__value__ == (5503914i32)) {
                    _e.writeString(_f_5503548._nameEscHTML?.__copy__());
                    _gotoNext = 5503996i32;
                } else if (__value__ == (5503957i32)) {
                    _gotoNext = 5503957i32;
                    _e.writeString(_f_5503548._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5503996i32;
                } else if (__value__ == (5503996i32)) {
                    _opts._quoted = _f_5503548._quoted;
                    _f_5503548._encoder(_e, _fv_5503631?.__copy__(), _opts?.__copy__());
                    _i_5503518++;
                    _gotoNext = 5504045i32;
                } else if (__value__ == (5504044i32)) {
                    _i_5503518 = 0i32;
                    _gotoNext = 5504045i32;
                } else if (__value__ == (5504045i32)) {
                    if (_i_5503518 < (_se._fields._list.length)) {
                        _gotoNext = 5503544i32;
                    } else {
                        _gotoNext = 5504048i32;
                    };
                } else if (__value__ == (5504048i32)) {
                    if (_next_5503484 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5504063i32;
                    } else {
                        _gotoNext = 5504095i32;
                    };
                } else if (__value__ == (5504063i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5504119i32;
                } else if (__value__ == (5504095i32)) {
                    _gotoNext = 5504095i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5504119i32;
                } else if (__value__ == (5504119i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
