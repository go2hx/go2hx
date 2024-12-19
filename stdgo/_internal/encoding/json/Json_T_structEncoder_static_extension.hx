package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _next_6535888:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_6536052:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6536057_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_6536035:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_6535952:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_6535922:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_6535888 = (123 : stdgo.GoUInt8);
                    _gotoNext = 6535906i32;
                } else if (__value__ == (6535906i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 6536448i32;
                    } else {
                        _gotoNext = 6536452i32;
                    };
                } else if (__value__ == (6535948i32)) {
                    _f_6535952 = (stdgo.Go.setRef(_se._fields._list[(_i_6535922 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_6536035 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_6535952._index.length)) {
                        _gotoNext = 6536205i32;
                    } else {
                        _gotoNext = 6536211i32;
                    };
                } else if (__value__ == (6536071i32)) {
                    _i_6536052 = _f_6535952._index[(_i_6536057_0 : stdgo.GoInt)];
                    if (_fv_6536035.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 6536108i32;
                    } else {
                        _gotoNext = 6536187i32;
                    };
                } else if (__value__ == (6536108i32)) {
                    if (_fv_6536035.isNil()) {
                        _gotoNext = 6536128i32;
                    } else {
                        _gotoNext = 6536164i32;
                    };
                } else if (__value__ == (6536128i32)) {
                    _i_6535922++;
                    _gotoNext = 6536449i32;
                } else if (__value__ == (6536164i32)) {
                    _fv_6536035 = _fv_6536035.elem()?.__copy__();
                    _gotoNext = 6536187i32;
                } else if (__value__ == (6536187i32)) {
                    _fv_6536035 = _fv_6536035.field(_i_6536052)?.__copy__();
                    _i_6536057_0++;
                    _gotoNext = 6536206i32;
                } else if (__value__ == (6536205i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_6535952._index[(0i32 : stdgo.GoInt)];
                        _i_6536057_0 = __tmp__0;
                        _i_6536052 = __tmp__1;
                    };
                    _gotoNext = 6536206i32;
                } else if (__value__ == (6536206i32)) {
                    if (_i_6536057_0 < (_f_6535952._index.length)) {
                        _gotoNext = 6536071i32;
                    } else {
                        _gotoNext = 6536211i32;
                    };
                } else if (__value__ == (6536211i32)) {
                    if ((_f_6535952._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_6536035?.__copy__()) : Bool)) {
                        _gotoNext = 6536246i32;
                    } else {
                        _gotoNext = 6536266i32;
                    };
                } else if (__value__ == (6536246i32)) {
                    _i_6535922++;
                    _gotoNext = 6536449i32;
                } else if (__value__ == (6536266i32)) {
                    _e.writeByte(_next_6535888);
                    _next_6535888 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 6536318i32;
                    } else {
                        _gotoNext = 6536361i32;
                    };
                } else if (__value__ == (6536318i32)) {
                    _e.writeString(_f_6535952._nameEscHTML?.__copy__());
                    _gotoNext = 6536400i32;
                } else if (__value__ == (6536361i32)) {
                    _gotoNext = 6536361i32;
                    _e.writeString(_f_6535952._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 6536400i32;
                } else if (__value__ == (6536400i32)) {
                    _opts._quoted = _f_6535952._quoted;
                    _f_6535952._encoder(_e, _fv_6536035?.__copy__(), _opts?.__copy__());
                    _i_6535922++;
                    _gotoNext = 6536449i32;
                } else if (__value__ == (6536448i32)) {
                    _i_6535922 = 0i32;
                    _gotoNext = 6536449i32;
                } else if (__value__ == (6536449i32)) {
                    if (_i_6535922 < (_se._fields._list.length)) {
                        _gotoNext = 6535948i32;
                    } else {
                        _gotoNext = 6536452i32;
                    };
                } else if (__value__ == (6536452i32)) {
                    if (_next_6535888 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 6536467i32;
                    } else {
                        _gotoNext = 6536499i32;
                    };
                } else if (__value__ == (6536467i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 6536523i32;
                } else if (__value__ == (6536499i32)) {
                    _gotoNext = 6536499i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 6536523i32;
                } else if (__value__ == (6536523i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
