package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5520908:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5520913_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5520891:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5520808:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5520778:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5520744:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5520744 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5520762i32;
                } else if (__value__ == (5520762i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5521304i32;
                    } else {
                        _gotoNext = 5521308i32;
                    };
                } else if (__value__ == (5520804i32)) {
                    _f_5520808 = (stdgo.Go.setRef(_se._fields._list[(_i_5520778 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5520891 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5520808._index.length)) {
                        _gotoNext = 5521061i32;
                    } else {
                        _gotoNext = 5521067i32;
                    };
                } else if (__value__ == (5520927i32)) {
                    _i_5520908 = _f_5520808._index[(_i_5520913_0 : stdgo.GoInt)];
                    if (_fv_5520891.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5520964i32;
                    } else {
                        _gotoNext = 5521043i32;
                    };
                } else if (__value__ == (5520964i32)) {
                    if (_fv_5520891.isNil()) {
                        _gotoNext = 5520984i32;
                    } else {
                        _gotoNext = 5521020i32;
                    };
                } else if (__value__ == (5520984i32)) {
                    _i_5520778++;
                    _gotoNext = 5521305i32;
                } else if (__value__ == (5521020i32)) {
                    _fv_5520891 = _fv_5520891.elem()?.__copy__();
                    _gotoNext = 5521043i32;
                } else if (__value__ == (5521043i32)) {
                    _fv_5520891 = _fv_5520891.field(_i_5520908)?.__copy__();
                    _i_5520913_0++;
                    _gotoNext = 5521062i32;
                } else if (__value__ == (5521061i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5520808._index[(0i32 : stdgo.GoInt)];
                        _i_5520913_0 = __tmp__0;
                        _i_5520908 = __tmp__1;
                    };
                    _gotoNext = 5521062i32;
                } else if (__value__ == (5521062i32)) {
                    if (_i_5520913_0 < (_f_5520808._index.length)) {
                        _gotoNext = 5520927i32;
                    } else {
                        _gotoNext = 5521067i32;
                    };
                } else if (__value__ == (5521067i32)) {
                    if ((_f_5520808._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5520891?.__copy__()) : Bool)) {
                        _gotoNext = 5521102i32;
                    } else {
                        _gotoNext = 5521122i32;
                    };
                } else if (__value__ == (5521102i32)) {
                    _i_5520778++;
                    _gotoNext = 5521305i32;
                } else if (__value__ == (5521122i32)) {
                    _e.writeByte(_next_5520744);
                    _next_5520744 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5521174i32;
                    } else {
                        _gotoNext = 5521217i32;
                    };
                } else if (__value__ == (5521174i32)) {
                    _e.writeString(_f_5520808._nameEscHTML?.__copy__());
                    _gotoNext = 5521256i32;
                } else if (__value__ == (5521217i32)) {
                    _gotoNext = 5521217i32;
                    _e.writeString(_f_5520808._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5521256i32;
                } else if (__value__ == (5521256i32)) {
                    _opts._quoted = _f_5520808._quoted;
                    _f_5520808._encoder(_e, _fv_5520891?.__copy__(), _opts?.__copy__());
                    _i_5520778++;
                    _gotoNext = 5521305i32;
                } else if (__value__ == (5521304i32)) {
                    _i_5520778 = 0i32;
                    _gotoNext = 5521305i32;
                } else if (__value__ == (5521305i32)) {
                    if (_i_5520778 < (_se._fields._list.length)) {
                        _gotoNext = 5520804i32;
                    } else {
                        _gotoNext = 5521308i32;
                    };
                } else if (__value__ == (5521308i32)) {
                    if (_next_5520744 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5521323i32;
                    } else {
                        _gotoNext = 5521355i32;
                    };
                } else if (__value__ == (5521323i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5521379i32;
                } else if (__value__ == (5521355i32)) {
                    _gotoNext = 5521355i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5521379i32;
                } else if (__value__ == (5521379i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
