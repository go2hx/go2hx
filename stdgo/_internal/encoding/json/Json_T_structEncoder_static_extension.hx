package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5510132_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5510110:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5510027:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5509997:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5509963:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5510127:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5509963 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5509981i32;
                } else if (__value__ == (5509981i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5510523i32;
                    } else {
                        _gotoNext = 5510527i32;
                    };
                } else if (__value__ == (5510023i32)) {
                    _f_5510027 = (stdgo.Go.setRef(_se._fields._list[(_i_5509997 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5510110 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5510027._index.length)) {
                        _gotoNext = 5510280i32;
                    } else {
                        _gotoNext = 5510286i32;
                    };
                } else if (__value__ == (5510146i32)) {
                    _i_5510127 = _f_5510027._index[(_i_5510132_0 : stdgo.GoInt)];
                    if (_fv_5510110.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5510183i32;
                    } else {
                        _gotoNext = 5510262i32;
                    };
                } else if (__value__ == (5510183i32)) {
                    if (_fv_5510110.isNil()) {
                        _gotoNext = 5510203i32;
                    } else {
                        _gotoNext = 5510239i32;
                    };
                } else if (__value__ == (5510203i32)) {
                    _i_5509997++;
                    _gotoNext = 5510524i32;
                } else if (__value__ == (5510239i32)) {
                    _fv_5510110 = _fv_5510110.elem()?.__copy__();
                    _gotoNext = 5510262i32;
                } else if (__value__ == (5510262i32)) {
                    _fv_5510110 = _fv_5510110.field(_i_5510127)?.__copy__();
                    _i_5510132_0++;
                    _gotoNext = 5510281i32;
                } else if (__value__ == (5510280i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5510027._index[(0i32 : stdgo.GoInt)];
                        _i_5510132_0 = __tmp__0;
                        _i_5510127 = __tmp__1;
                    };
                    _gotoNext = 5510281i32;
                } else if (__value__ == (5510281i32)) {
                    if (_i_5510132_0 < (_f_5510027._index.length)) {
                        _gotoNext = 5510146i32;
                    } else {
                        _gotoNext = 5510286i32;
                    };
                } else if (__value__ == (5510286i32)) {
                    if ((_f_5510027._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5510110?.__copy__()) : Bool)) {
                        _gotoNext = 5510321i32;
                    } else {
                        _gotoNext = 5510341i32;
                    };
                } else if (__value__ == (5510321i32)) {
                    _i_5509997++;
                    _gotoNext = 5510524i32;
                } else if (__value__ == (5510341i32)) {
                    _e.writeByte(_next_5509963);
                    _next_5509963 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5510393i32;
                    } else {
                        _gotoNext = 5510436i32;
                    };
                } else if (__value__ == (5510393i32)) {
                    _e.writeString(_f_5510027._nameEscHTML?.__copy__());
                    _gotoNext = 5510475i32;
                } else if (__value__ == (5510436i32)) {
                    _gotoNext = 5510436i32;
                    _e.writeString(_f_5510027._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5510475i32;
                } else if (__value__ == (5510475i32)) {
                    _opts._quoted = _f_5510027._quoted;
                    _f_5510027._encoder(_e, _fv_5510110?.__copy__(), _opts?.__copy__());
                    _i_5509997++;
                    _gotoNext = 5510524i32;
                } else if (__value__ == (5510523i32)) {
                    _i_5509997 = 0i32;
                    _gotoNext = 5510524i32;
                } else if (__value__ == (5510524i32)) {
                    if (_i_5509997 < (_se._fields._list.length)) {
                        _gotoNext = 5510023i32;
                    } else {
                        _gotoNext = 5510527i32;
                    };
                } else if (__value__ == (5510527i32)) {
                    if (_next_5509963 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5510542i32;
                    } else {
                        _gotoNext = 5510574i32;
                    };
                } else if (__value__ == (5510542i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5510598i32;
                } else if (__value__ == (5510574i32)) {
                    _gotoNext = 5510574i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5510598i32;
                } else if (__value__ == (5510598i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
