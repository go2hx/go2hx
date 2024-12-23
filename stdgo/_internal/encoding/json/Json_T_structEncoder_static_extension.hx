package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5336062:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5336067_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5336045:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5335962:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5335932:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5335898:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5335898 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5335916i32;
                } else if (__value__ == (5335916i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5336458i32;
                    } else {
                        _gotoNext = 5336462i32;
                    };
                } else if (__value__ == (5335958i32)) {
                    _f_5335962 = (stdgo.Go.setRef(_se._fields._list[(_i_5335932 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5336045 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5335962._index.length)) {
                        _gotoNext = 5336215i32;
                    } else {
                        _gotoNext = 5336221i32;
                    };
                } else if (__value__ == (5336081i32)) {
                    _i_5336062 = _f_5335962._index[(_i_5336067_0 : stdgo.GoInt)];
                    if (_fv_5336045.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5336118i32;
                    } else {
                        _gotoNext = 5336197i32;
                    };
                } else if (__value__ == (5336118i32)) {
                    if (_fv_5336045.isNil()) {
                        _gotoNext = 5336138i32;
                    } else {
                        _gotoNext = 5336174i32;
                    };
                } else if (__value__ == (5336138i32)) {
                    _i_5335932++;
                    _gotoNext = 5336459i32;
                } else if (__value__ == (5336174i32)) {
                    _fv_5336045 = _fv_5336045.elem()?.__copy__();
                    _gotoNext = 5336197i32;
                } else if (__value__ == (5336197i32)) {
                    _fv_5336045 = _fv_5336045.field(_i_5336062)?.__copy__();
                    _i_5336067_0++;
                    _gotoNext = 5336216i32;
                } else if (__value__ == (5336215i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5335962._index[(0i32 : stdgo.GoInt)];
                        _i_5336067_0 = __tmp__0;
                        _i_5336062 = __tmp__1;
                    };
                    _gotoNext = 5336216i32;
                } else if (__value__ == (5336216i32)) {
                    if (_i_5336067_0 < (_f_5335962._index.length)) {
                        _gotoNext = 5336081i32;
                    } else {
                        _gotoNext = 5336221i32;
                    };
                } else if (__value__ == (5336221i32)) {
                    if ((_f_5335962._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5336045?.__copy__()) : Bool)) {
                        _gotoNext = 5336256i32;
                    } else {
                        _gotoNext = 5336276i32;
                    };
                } else if (__value__ == (5336256i32)) {
                    _i_5335932++;
                    _gotoNext = 5336459i32;
                } else if (__value__ == (5336276i32)) {
                    _e.writeByte(_next_5335898);
                    _next_5335898 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5336328i32;
                    } else {
                        _gotoNext = 5336371i32;
                    };
                } else if (__value__ == (5336328i32)) {
                    _e.writeString(_f_5335962._nameEscHTML?.__copy__());
                    _gotoNext = 5336410i32;
                } else if (__value__ == (5336371i32)) {
                    _gotoNext = 5336371i32;
                    _e.writeString(_f_5335962._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5336410i32;
                } else if (__value__ == (5336410i32)) {
                    _opts._quoted = _f_5335962._quoted;
                    _f_5335962._encoder(_e, _fv_5336045?.__copy__(), _opts?.__copy__());
                    _i_5335932++;
                    _gotoNext = 5336459i32;
                } else if (__value__ == (5336458i32)) {
                    _i_5335932 = 0i32;
                    _gotoNext = 5336459i32;
                } else if (__value__ == (5336459i32)) {
                    if (_i_5335932 < (_se._fields._list.length)) {
                        _gotoNext = 5335958i32;
                    } else {
                        _gotoNext = 5336462i32;
                    };
                } else if (__value__ == (5336462i32)) {
                    if (_next_5335898 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5336477i32;
                    } else {
                        _gotoNext = 5336509i32;
                    };
                } else if (__value__ == (5336477i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5336533i32;
                } else if (__value__ == (5336509i32)) {
                    _gotoNext = 5336509i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5336533i32;
                } else if (__value__ == (5336533i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
