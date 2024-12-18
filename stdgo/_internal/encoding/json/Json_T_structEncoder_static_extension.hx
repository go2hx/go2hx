package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5440355:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5440360_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5440338:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5440255:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5440225:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5440191:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5440191 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5440209i32;
                } else if (__value__ == (5440209i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5440751i32;
                    } else {
                        _gotoNext = 5440755i32;
                    };
                } else if (__value__ == (5440251i32)) {
                    _f_5440255 = (stdgo.Go.setRef(_se._fields._list[(_i_5440225 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5440338 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5440255._index.length)) {
                        _gotoNext = 5440508i32;
                    } else {
                        _gotoNext = 5440514i32;
                    };
                } else if (__value__ == (5440374i32)) {
                    _i_5440355 = _f_5440255._index[(_i_5440360_0 : stdgo.GoInt)];
                    if (_fv_5440338.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5440411i32;
                    } else {
                        _gotoNext = 5440490i32;
                    };
                } else if (__value__ == (5440411i32)) {
                    if (_fv_5440338.isNil()) {
                        _gotoNext = 5440431i32;
                    } else {
                        _gotoNext = 5440467i32;
                    };
                } else if (__value__ == (5440431i32)) {
                    _i_5440225++;
                    _gotoNext = 5440752i32;
                } else if (__value__ == (5440467i32)) {
                    _fv_5440338 = _fv_5440338.elem()?.__copy__();
                    _gotoNext = 5440490i32;
                } else if (__value__ == (5440490i32)) {
                    _fv_5440338 = _fv_5440338.field(_i_5440355)?.__copy__();
                    _i_5440360_0++;
                    _gotoNext = 5440509i32;
                } else if (__value__ == (5440508i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5440255._index[(0i32 : stdgo.GoInt)];
                        _i_5440360_0 = __tmp__0;
                        _i_5440355 = __tmp__1;
                    };
                    _gotoNext = 5440509i32;
                } else if (__value__ == (5440509i32)) {
                    if (_i_5440360_0 < (_f_5440255._index.length)) {
                        _gotoNext = 5440374i32;
                    } else {
                        _gotoNext = 5440514i32;
                    };
                } else if (__value__ == (5440514i32)) {
                    if ((_f_5440255._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5440338?.__copy__()) : Bool)) {
                        _gotoNext = 5440549i32;
                    } else {
                        _gotoNext = 5440569i32;
                    };
                } else if (__value__ == (5440549i32)) {
                    _i_5440225++;
                    _gotoNext = 5440752i32;
                } else if (__value__ == (5440569i32)) {
                    _e.writeByte(_next_5440191);
                    _next_5440191 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5440621i32;
                    } else {
                        _gotoNext = 5440664i32;
                    };
                } else if (__value__ == (5440621i32)) {
                    _e.writeString(_f_5440255._nameEscHTML?.__copy__());
                    _gotoNext = 5440703i32;
                } else if (__value__ == (5440664i32)) {
                    _gotoNext = 5440664i32;
                    _e.writeString(_f_5440255._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5440703i32;
                } else if (__value__ == (5440703i32)) {
                    _opts._quoted = _f_5440255._quoted;
                    _f_5440255._encoder(_e, _fv_5440338?.__copy__(), _opts?.__copy__());
                    _i_5440225++;
                    _gotoNext = 5440752i32;
                } else if (__value__ == (5440751i32)) {
                    _i_5440225 = 0i32;
                    _gotoNext = 5440752i32;
                } else if (__value__ == (5440752i32)) {
                    if (_i_5440225 < (_se._fields._list.length)) {
                        _gotoNext = 5440251i32;
                    } else {
                        _gotoNext = 5440755i32;
                    };
                } else if (__value__ == (5440755i32)) {
                    if (_next_5440191 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5440770i32;
                    } else {
                        _gotoNext = 5440802i32;
                    };
                } else if (__value__ == (5440770i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5440826i32;
                } else if (__value__ == (5440802i32)) {
                    _gotoNext = 5440802i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5440826i32;
                } else if (__value__ == (5440826i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
