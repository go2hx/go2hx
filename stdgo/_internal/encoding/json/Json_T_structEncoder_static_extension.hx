package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5390637_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5390615:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5390532:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5390502:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5390468:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5390632:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5390468 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5390486i32;
                } else if (__value__ == (5390486i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5391028i32;
                    } else {
                        _gotoNext = 5391032i32;
                    };
                } else if (__value__ == (5390528i32)) {
                    _f_5390532 = (stdgo.Go.setRef(_se._fields._list[(_i_5390502 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5390615 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5390532._index.length)) {
                        _gotoNext = 5390785i32;
                    } else {
                        _gotoNext = 5390791i32;
                    };
                } else if (__value__ == (5390651i32)) {
                    _i_5390632 = _f_5390532._index[(_i_5390637_0 : stdgo.GoInt)];
                    if (_fv_5390615.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5390688i32;
                    } else {
                        _gotoNext = 5390767i32;
                    };
                } else if (__value__ == (5390688i32)) {
                    if (_fv_5390615.isNil()) {
                        _gotoNext = 5390708i32;
                    } else {
                        _gotoNext = 5390744i32;
                    };
                } else if (__value__ == (5390708i32)) {
                    _i_5390502++;
                    _gotoNext = 5391029i32;
                } else if (__value__ == (5390744i32)) {
                    _fv_5390615 = _fv_5390615.elem()?.__copy__();
                    _gotoNext = 5390767i32;
                } else if (__value__ == (5390767i32)) {
                    _fv_5390615 = _fv_5390615.field(_i_5390632)?.__copy__();
                    _i_5390637_0++;
                    _gotoNext = 5390786i32;
                } else if (__value__ == (5390785i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5390532._index[(0i32 : stdgo.GoInt)];
                        _i_5390637_0 = __tmp__0;
                        _i_5390632 = __tmp__1;
                    };
                    _gotoNext = 5390786i32;
                } else if (__value__ == (5390786i32)) {
                    if (_i_5390637_0 < (_f_5390532._index.length)) {
                        _gotoNext = 5390651i32;
                    } else {
                        _gotoNext = 5390791i32;
                    };
                } else if (__value__ == (5390791i32)) {
                    if ((_f_5390532._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5390615?.__copy__()) : Bool)) {
                        _gotoNext = 5390826i32;
                    } else {
                        _gotoNext = 5390846i32;
                    };
                } else if (__value__ == (5390826i32)) {
                    _i_5390502++;
                    _gotoNext = 5391029i32;
                } else if (__value__ == (5390846i32)) {
                    _e.writeByte(_next_5390468);
                    _next_5390468 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5390898i32;
                    } else {
                        _gotoNext = 5390941i32;
                    };
                } else if (__value__ == (5390898i32)) {
                    _e.writeString(_f_5390532._nameEscHTML?.__copy__());
                    _gotoNext = 5390980i32;
                } else if (__value__ == (5390941i32)) {
                    _gotoNext = 5390941i32;
                    _e.writeString(_f_5390532._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5390980i32;
                } else if (__value__ == (5390980i32)) {
                    _opts._quoted = _f_5390532._quoted;
                    _f_5390532._encoder(_e, _fv_5390615?.__copy__(), _opts?.__copy__());
                    _i_5390502++;
                    _gotoNext = 5391029i32;
                } else if (__value__ == (5391028i32)) {
                    _i_5390502 = 0i32;
                    _gotoNext = 5391029i32;
                } else if (__value__ == (5391029i32)) {
                    if (_i_5390502 < (_se._fields._list.length)) {
                        _gotoNext = 5390528i32;
                    } else {
                        _gotoNext = 5391032i32;
                    };
                } else if (__value__ == (5391032i32)) {
                    if (_next_5390468 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5391047i32;
                    } else {
                        _gotoNext = 5391079i32;
                    };
                } else if (__value__ == (5391047i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5391103i32;
                } else if (__value__ == (5391079i32)) {
                    _gotoNext = 5391079i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5391103i32;
                } else if (__value__ == (5391103i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
