package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _f_5647708:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5647678:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5647644:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5647808:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5647813_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5647791:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5647644 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5647662i32;
                } else if (__value__ == (5647662i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5648204i32;
                    } else {
                        _gotoNext = 5648208i32;
                    };
                } else if (__value__ == (5647704i32)) {
                    _f_5647708 = (stdgo.Go.setRef(_se._fields._list[(_i_5647678 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5647791 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5647708._index.length)) {
                        _gotoNext = 5647961i32;
                    } else {
                        _gotoNext = 5647967i32;
                    };
                } else if (__value__ == (5647827i32)) {
                    _i_5647808 = _f_5647708._index[(_i_5647813_0 : stdgo.GoInt)];
                    if (_fv_5647791.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5647864i32;
                    } else {
                        _gotoNext = 5647943i32;
                    };
                } else if (__value__ == (5647864i32)) {
                    if (_fv_5647791.isNil()) {
                        _gotoNext = 5647884i32;
                    } else {
                        _gotoNext = 5647920i32;
                    };
                } else if (__value__ == (5647884i32)) {
                    _i_5647678++;
                    _gotoNext = 5648205i32;
                } else if (__value__ == (5647920i32)) {
                    _fv_5647791 = _fv_5647791.elem()?.__copy__();
                    _gotoNext = 5647943i32;
                } else if (__value__ == (5647943i32)) {
                    _fv_5647791 = _fv_5647791.field(_i_5647808)?.__copy__();
                    _i_5647813_0++;
                    _gotoNext = 5647962i32;
                } else if (__value__ == (5647961i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5647708._index[(0i32 : stdgo.GoInt)];
                        _i_5647813_0 = __tmp__0;
                        _i_5647808 = __tmp__1;
                    };
                    _gotoNext = 5647962i32;
                } else if (__value__ == (5647962i32)) {
                    if (_i_5647813_0 < (_f_5647708._index.length)) {
                        _gotoNext = 5647827i32;
                    } else {
                        _gotoNext = 5647967i32;
                    };
                } else if (__value__ == (5647967i32)) {
                    if ((_f_5647708._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5647791?.__copy__()) : Bool)) {
                        _gotoNext = 5648002i32;
                    } else {
                        _gotoNext = 5648022i32;
                    };
                } else if (__value__ == (5648002i32)) {
                    _i_5647678++;
                    _gotoNext = 5648205i32;
                } else if (__value__ == (5648022i32)) {
                    _e.writeByte(_next_5647644);
                    _next_5647644 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5648074i32;
                    } else {
                        _gotoNext = 5648117i32;
                    };
                } else if (__value__ == (5648074i32)) {
                    _e.writeString(_f_5647708._nameEscHTML?.__copy__());
                    _gotoNext = 5648156i32;
                } else if (__value__ == (5648117i32)) {
                    _e.writeString(_f_5647708._nameNonEsc?.__copy__());
                    _gotoNext = 5648156i32;
                } else if (__value__ == (5648156i32)) {
                    _opts._quoted = _f_5647708._quoted;
                    _f_5647708._encoder(_e, _fv_5647791?.__copy__(), _opts?.__copy__());
                    _i_5647678++;
                    _gotoNext = 5648205i32;
                } else if (__value__ == (5648204i32)) {
                    _i_5647678 = 0i32;
                    _gotoNext = 5648205i32;
                } else if (__value__ == (5648205i32)) {
                    if (_i_5647678 < (_se._fields._list.length)) {
                        _gotoNext = 5647704i32;
                    } else {
                        _gotoNext = 5648208i32;
                    };
                } else if (__value__ == (5648208i32)) {
                    if (_next_5647644 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5648223i32;
                    } else {
                        _gotoNext = 5648255i32;
                    };
                } else if (__value__ == (5648223i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5648279i32;
                } else if (__value__ == (5648255i32)) {
                    _e.writeByte((125 : stdgo.GoUInt8));
                    _gotoNext = 5648279i32;
                } else if (__value__ == (5648279i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
