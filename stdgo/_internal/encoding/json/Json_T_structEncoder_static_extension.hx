package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _f_5457414:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5457384:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5457350:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5457514:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5457519_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5457497:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5457350 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5457368i32;
                } else if (__value__ == (5457368i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5457910i32;
                    } else {
                        _gotoNext = 5457914i32;
                    };
                } else if (__value__ == (5457410i32)) {
                    _f_5457414 = (stdgo.Go.setRef(_se._fields._list[(_i_5457384 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5457497 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5457414._index.length)) {
                        _gotoNext = 5457667i32;
                    } else {
                        _gotoNext = 5457673i32;
                    };
                } else if (__value__ == (5457533i32)) {
                    _i_5457514 = _f_5457414._index[(_i_5457519_0 : stdgo.GoInt)];
                    if (_fv_5457497.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5457570i32;
                    } else {
                        _gotoNext = 5457649i32;
                    };
                } else if (__value__ == (5457570i32)) {
                    if (_fv_5457497.isNil()) {
                        _gotoNext = 5457590i32;
                    } else {
                        _gotoNext = 5457626i32;
                    };
                } else if (__value__ == (5457590i32)) {
                    _i_5457384++;
                    _gotoNext = 5457911i32;
                } else if (__value__ == (5457626i32)) {
                    _fv_5457497 = _fv_5457497.elem()?.__copy__();
                    _gotoNext = 5457649i32;
                } else if (__value__ == (5457649i32)) {
                    _fv_5457497 = _fv_5457497.field(_i_5457514)?.__copy__();
                    _i_5457519_0++;
                    _gotoNext = 5457668i32;
                } else if (__value__ == (5457667i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5457414._index[(0i32 : stdgo.GoInt)];
                        _i_5457519_0 = __tmp__0;
                        _i_5457514 = __tmp__1;
                    };
                    _gotoNext = 5457668i32;
                } else if (__value__ == (5457668i32)) {
                    if (_i_5457519_0 < (_f_5457414._index.length)) {
                        _gotoNext = 5457533i32;
                    } else {
                        _gotoNext = 5457673i32;
                    };
                } else if (__value__ == (5457673i32)) {
                    if ((_f_5457414._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5457497?.__copy__()) : Bool)) {
                        _gotoNext = 5457708i32;
                    } else {
                        _gotoNext = 5457728i32;
                    };
                } else if (__value__ == (5457708i32)) {
                    _i_5457384++;
                    _gotoNext = 5457911i32;
                } else if (__value__ == (5457728i32)) {
                    _e.writeByte(_next_5457350);
                    _next_5457350 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5457780i32;
                    } else {
                        _gotoNext = 5457823i32;
                    };
                } else if (__value__ == (5457780i32)) {
                    _e.writeString(_f_5457414._nameEscHTML?.__copy__());
                    _gotoNext = 5457862i32;
                } else if (__value__ == (5457823i32)) {
                    _gotoNext = 5457823i32;
                    _e.writeString(_f_5457414._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5457862i32;
                } else if (__value__ == (5457862i32)) {
                    _opts._quoted = _f_5457414._quoted;
                    _f_5457414._encoder(_e, _fv_5457497?.__copy__(), _opts?.__copy__());
                    _i_5457384++;
                    _gotoNext = 5457911i32;
                } else if (__value__ == (5457910i32)) {
                    _i_5457384 = 0i32;
                    _gotoNext = 5457911i32;
                } else if (__value__ == (5457911i32)) {
                    if (_i_5457384 < (_se._fields._list.length)) {
                        _gotoNext = 5457410i32;
                    } else {
                        _gotoNext = 5457914i32;
                    };
                } else if (__value__ == (5457914i32)) {
                    if (_next_5457350 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5457929i32;
                    } else {
                        _gotoNext = 5457961i32;
                    };
                } else if (__value__ == (5457929i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5457985i32;
                } else if (__value__ == (5457961i32)) {
                    _gotoNext = 5457961i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5457985i32;
                } else if (__value__ == (5457985i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
