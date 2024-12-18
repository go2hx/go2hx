package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _f_5440414:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5440384:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5440350:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5440514:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5440519_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5440497:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5440350 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5440368i32;
                } else if (__value__ == (5440368i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5440910i32;
                    } else {
                        _gotoNext = 5440914i32;
                    };
                } else if (__value__ == (5440410i32)) {
                    _f_5440414 = (stdgo.Go.setRef(_se._fields._list[(_i_5440384 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5440497 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5440414._index.length)) {
                        _gotoNext = 5440667i32;
                    } else {
                        _gotoNext = 5440673i32;
                    };
                } else if (__value__ == (5440533i32)) {
                    _i_5440514 = _f_5440414._index[(_i_5440519_0 : stdgo.GoInt)];
                    if (_fv_5440497.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5440570i32;
                    } else {
                        _gotoNext = 5440649i32;
                    };
                } else if (__value__ == (5440570i32)) {
                    if (_fv_5440497.isNil()) {
                        _gotoNext = 5440590i32;
                    } else {
                        _gotoNext = 5440626i32;
                    };
                } else if (__value__ == (5440590i32)) {
                    _i_5440384++;
                    _gotoNext = 5440911i32;
                } else if (__value__ == (5440626i32)) {
                    _fv_5440497 = _fv_5440497.elem()?.__copy__();
                    _gotoNext = 5440649i32;
                } else if (__value__ == (5440649i32)) {
                    _fv_5440497 = _fv_5440497.field(_i_5440514)?.__copy__();
                    _i_5440519_0++;
                    _gotoNext = 5440668i32;
                } else if (__value__ == (5440667i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5440414._index[(0i32 : stdgo.GoInt)];
                        _i_5440519_0 = __tmp__0;
                        _i_5440514 = __tmp__1;
                    };
                    _gotoNext = 5440668i32;
                } else if (__value__ == (5440668i32)) {
                    if (_i_5440519_0 < (_f_5440414._index.length)) {
                        _gotoNext = 5440533i32;
                    } else {
                        _gotoNext = 5440673i32;
                    };
                } else if (__value__ == (5440673i32)) {
                    if ((_f_5440414._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5440497?.__copy__()) : Bool)) {
                        _gotoNext = 5440708i32;
                    } else {
                        _gotoNext = 5440728i32;
                    };
                } else if (__value__ == (5440708i32)) {
                    _i_5440384++;
                    _gotoNext = 5440911i32;
                } else if (__value__ == (5440728i32)) {
                    _e.writeByte(_next_5440350);
                    _next_5440350 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5440780i32;
                    } else {
                        _gotoNext = 5440823i32;
                    };
                } else if (__value__ == (5440780i32)) {
                    _e.writeString(_f_5440414._nameEscHTML?.__copy__());
                    _gotoNext = 5440862i32;
                } else if (__value__ == (5440823i32)) {
                    _gotoNext = 5440823i32;
                    _e.writeString(_f_5440414._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5440862i32;
                } else if (__value__ == (5440862i32)) {
                    _opts._quoted = _f_5440414._quoted;
                    _f_5440414._encoder(_e, _fv_5440497?.__copy__(), _opts?.__copy__());
                    _i_5440384++;
                    _gotoNext = 5440911i32;
                } else if (__value__ == (5440910i32)) {
                    _i_5440384 = 0i32;
                    _gotoNext = 5440911i32;
                } else if (__value__ == (5440911i32)) {
                    if (_i_5440384 < (_se._fields._list.length)) {
                        _gotoNext = 5440410i32;
                    } else {
                        _gotoNext = 5440914i32;
                    };
                } else if (__value__ == (5440914i32)) {
                    if (_next_5440350 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5440929i32;
                    } else {
                        _gotoNext = 5440961i32;
                    };
                } else if (__value__ == (5440929i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5440985i32;
                } else if (__value__ == (5440961i32)) {
                    _gotoNext = 5440961i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5440985i32;
                } else if (__value__ == (5440985i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
