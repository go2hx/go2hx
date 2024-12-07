package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5434099:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5434104_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5434082:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5433999:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5433969:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5433935:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5433935 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5433953i32;
                } else if (__value__ == (5433953i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5434495i32;
                    } else {
                        _gotoNext = 5434499i32;
                    };
                } else if (__value__ == (5433995i32)) {
                    _f_5433999 = (stdgo.Go.setRef(_se._fields._list[(_i_5433969 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5434082 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5433999._index.length)) {
                        _gotoNext = 5434252i32;
                    } else {
                        _gotoNext = 5434258i32;
                    };
                } else if (__value__ == (5434118i32)) {
                    _i_5434099 = _f_5433999._index[(_i_5434104_0 : stdgo.GoInt)];
                    if (_fv_5434082.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5434155i32;
                    } else {
                        _gotoNext = 5434234i32;
                    };
                } else if (__value__ == (5434155i32)) {
                    if (_fv_5434082.isNil()) {
                        _gotoNext = 5434175i32;
                    } else {
                        _gotoNext = 5434211i32;
                    };
                } else if (__value__ == (5434175i32)) {
                    _i_5433969++;
                    _gotoNext = 5434496i32;
                } else if (__value__ == (5434211i32)) {
                    _fv_5434082 = _fv_5434082.elem()?.__copy__();
                    _gotoNext = 5434234i32;
                } else if (__value__ == (5434234i32)) {
                    _fv_5434082 = _fv_5434082.field(_i_5434099)?.__copy__();
                    _i_5434104_0++;
                    _gotoNext = 5434253i32;
                } else if (__value__ == (5434252i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5433999._index[(0i32 : stdgo.GoInt)];
                        _i_5434104_0 = __tmp__0;
                        _i_5434099 = __tmp__1;
                    };
                    _gotoNext = 5434253i32;
                } else if (__value__ == (5434253i32)) {
                    if (_i_5434104_0 < (_f_5433999._index.length)) {
                        _gotoNext = 5434118i32;
                    } else {
                        _gotoNext = 5434258i32;
                    };
                } else if (__value__ == (5434258i32)) {
                    if ((_f_5433999._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5434082?.__copy__()) : Bool)) {
                        _gotoNext = 5434293i32;
                    } else {
                        _gotoNext = 5434313i32;
                    };
                } else if (__value__ == (5434293i32)) {
                    _i_5433969++;
                    _gotoNext = 5434496i32;
                } else if (__value__ == (5434313i32)) {
                    _e.writeByte(_next_5433935);
                    _next_5433935 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5434365i32;
                    } else {
                        _gotoNext = 5434408i32;
                    };
                } else if (__value__ == (5434365i32)) {
                    _e.writeString(_f_5433999._nameEscHTML?.__copy__());
                    _gotoNext = 5434447i32;
                } else if (__value__ == (5434408i32)) {
                    _gotoNext = 5434408i32;
                    _e.writeString(_f_5433999._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5434447i32;
                } else if (__value__ == (5434447i32)) {
                    _opts._quoted = _f_5433999._quoted;
                    _f_5433999._encoder(_e, _fv_5434082?.__copy__(), _opts?.__copy__());
                    _i_5433969++;
                    _gotoNext = 5434496i32;
                } else if (__value__ == (5434495i32)) {
                    _i_5433969 = 0i32;
                    _gotoNext = 5434496i32;
                } else if (__value__ == (5434496i32)) {
                    if (_i_5433969 < (_se._fields._list.length)) {
                        _gotoNext = 5433995i32;
                    } else {
                        _gotoNext = 5434499i32;
                    };
                } else if (__value__ == (5434499i32)) {
                    if (_next_5433935 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5434514i32;
                    } else {
                        _gotoNext = 5434546i32;
                    };
                } else if (__value__ == (5434514i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5434570i32;
                } else if (__value__ == (5434546i32)) {
                    _gotoNext = 5434546i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5434570i32;
                } else if (__value__ == (5434570i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
