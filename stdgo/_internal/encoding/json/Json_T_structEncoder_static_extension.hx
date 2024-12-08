package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _next_5432845:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5433009:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5433014_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5432992:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5432909:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5432879:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5432845 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5432863i32;
                } else if (__value__ == (5432863i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5433405i32;
                    } else {
                        _gotoNext = 5433409i32;
                    };
                } else if (__value__ == (5432905i32)) {
                    _f_5432909 = (stdgo.Go.setRef(_se._fields._list[(_i_5432879 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5432992 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5432909._index.length)) {
                        _gotoNext = 5433162i32;
                    } else {
                        _gotoNext = 5433168i32;
                    };
                } else if (__value__ == (5433028i32)) {
                    _i_5433009 = _f_5432909._index[(_i_5433014_0 : stdgo.GoInt)];
                    if (_fv_5432992.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5433065i32;
                    } else {
                        _gotoNext = 5433144i32;
                    };
                } else if (__value__ == (5433065i32)) {
                    if (_fv_5432992.isNil()) {
                        _gotoNext = 5433085i32;
                    } else {
                        _gotoNext = 5433121i32;
                    };
                } else if (__value__ == (5433085i32)) {
                    _i_5432879++;
                    _gotoNext = 5433406i32;
                } else if (__value__ == (5433121i32)) {
                    _fv_5432992 = _fv_5432992.elem()?.__copy__();
                    _gotoNext = 5433144i32;
                } else if (__value__ == (5433144i32)) {
                    _fv_5432992 = _fv_5432992.field(_i_5433009)?.__copy__();
                    _i_5433014_0++;
                    _gotoNext = 5433163i32;
                } else if (__value__ == (5433162i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5432909._index[(0i32 : stdgo.GoInt)];
                        _i_5433014_0 = __tmp__0;
                        _i_5433009 = __tmp__1;
                    };
                    _gotoNext = 5433163i32;
                } else if (__value__ == (5433163i32)) {
                    if (_i_5433014_0 < (_f_5432909._index.length)) {
                        _gotoNext = 5433028i32;
                    } else {
                        _gotoNext = 5433168i32;
                    };
                } else if (__value__ == (5433168i32)) {
                    if ((_f_5432909._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5432992?.__copy__()) : Bool)) {
                        _gotoNext = 5433203i32;
                    } else {
                        _gotoNext = 5433223i32;
                    };
                } else if (__value__ == (5433203i32)) {
                    _i_5432879++;
                    _gotoNext = 5433406i32;
                } else if (__value__ == (5433223i32)) {
                    _e.writeByte(_next_5432845);
                    _next_5432845 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5433275i32;
                    } else {
                        _gotoNext = 5433318i32;
                    };
                } else if (__value__ == (5433275i32)) {
                    _e.writeString(_f_5432909._nameEscHTML?.__copy__());
                    _gotoNext = 5433357i32;
                } else if (__value__ == (5433318i32)) {
                    _gotoNext = 5433318i32;
                    _e.writeString(_f_5432909._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5433357i32;
                } else if (__value__ == (5433357i32)) {
                    _opts._quoted = _f_5432909._quoted;
                    _f_5432909._encoder(_e, _fv_5432992?.__copy__(), _opts?.__copy__());
                    _i_5432879++;
                    _gotoNext = 5433406i32;
                } else if (__value__ == (5433405i32)) {
                    _i_5432879 = 0i32;
                    _gotoNext = 5433406i32;
                } else if (__value__ == (5433406i32)) {
                    if (_i_5432879 < (_se._fields._list.length)) {
                        _gotoNext = 5432905i32;
                    } else {
                        _gotoNext = 5433409i32;
                    };
                } else if (__value__ == (5433409i32)) {
                    if (_next_5432845 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5433424i32;
                    } else {
                        _gotoNext = 5433456i32;
                    };
                } else if (__value__ == (5433424i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5433480i32;
                } else if (__value__ == (5433456i32)) {
                    _gotoNext = 5433456i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5433480i32;
                } else if (__value__ == (5433480i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
