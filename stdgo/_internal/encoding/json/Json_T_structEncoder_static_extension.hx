package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_6068463:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6068468_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_6068446:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_6068363:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_6068333:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_6068299:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_6068299 = (123 : stdgo.GoUInt8);
                    _gotoNext = 6068317i32;
                } else if (__value__ == (6068317i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 6068859i32;
                    } else {
                        _gotoNext = 6068863i32;
                    };
                } else if (__value__ == (6068359i32)) {
                    _f_6068363 = (stdgo.Go.setRef(_se._fields._list[(_i_6068333 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_6068446 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_6068363._index.length)) {
                        _gotoNext = 6068616i32;
                    } else {
                        _gotoNext = 6068622i32;
                    };
                } else if (__value__ == (6068482i32)) {
                    _i_6068463 = _f_6068363._index[(_i_6068468_0 : stdgo.GoInt)];
                    if (_fv_6068446.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 6068519i32;
                    } else {
                        _gotoNext = 6068598i32;
                    };
                } else if (__value__ == (6068519i32)) {
                    if (_fv_6068446.isNil()) {
                        _gotoNext = 6068539i32;
                    } else {
                        _gotoNext = 6068575i32;
                    };
                } else if (__value__ == (6068539i32)) {
                    _i_6068333++;
                    _gotoNext = 6068860i32;
                } else if (__value__ == (6068575i32)) {
                    _fv_6068446 = _fv_6068446.elem()?.__copy__();
                    _gotoNext = 6068598i32;
                } else if (__value__ == (6068598i32)) {
                    _fv_6068446 = _fv_6068446.field(_i_6068463)?.__copy__();
                    _i_6068468_0++;
                    _gotoNext = 6068617i32;
                } else if (__value__ == (6068616i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_6068363._index[(0i32 : stdgo.GoInt)];
                        _i_6068468_0 = __tmp__0;
                        _i_6068463 = __tmp__1;
                    };
                    _gotoNext = 6068617i32;
                } else if (__value__ == (6068617i32)) {
                    if (_i_6068468_0 < (_f_6068363._index.length)) {
                        _gotoNext = 6068482i32;
                    } else {
                        _gotoNext = 6068622i32;
                    };
                } else if (__value__ == (6068622i32)) {
                    if ((_f_6068363._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_6068446?.__copy__()) : Bool)) {
                        _gotoNext = 6068657i32;
                    } else {
                        _gotoNext = 6068677i32;
                    };
                } else if (__value__ == (6068657i32)) {
                    _i_6068333++;
                    _gotoNext = 6068860i32;
                } else if (__value__ == (6068677i32)) {
                    _e.writeByte(_next_6068299);
                    _next_6068299 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 6068729i32;
                    } else {
                        _gotoNext = 6068772i32;
                    };
                } else if (__value__ == (6068729i32)) {
                    _e.writeString(_f_6068363._nameEscHTML?.__copy__());
                    _gotoNext = 6068811i32;
                } else if (__value__ == (6068772i32)) {
                    _gotoNext = 6068772i32;
                    _e.writeString(_f_6068363._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 6068811i32;
                } else if (__value__ == (6068811i32)) {
                    _opts._quoted = _f_6068363._quoted;
                    _f_6068363._encoder(_e, _fv_6068446?.__copy__(), _opts?.__copy__());
                    _i_6068333++;
                    _gotoNext = 6068860i32;
                } else if (__value__ == (6068859i32)) {
                    _i_6068333 = 0i32;
                    _gotoNext = 6068860i32;
                } else if (__value__ == (6068860i32)) {
                    if (_i_6068333 < (_se._fields._list.length)) {
                        _gotoNext = 6068359i32;
                    } else {
                        _gotoNext = 6068863i32;
                    };
                } else if (__value__ == (6068863i32)) {
                    if (_next_6068299 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 6068878i32;
                    } else {
                        _gotoNext = 6068910i32;
                    };
                } else if (__value__ == (6068878i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 6068934i32;
                } else if (__value__ == (6068910i32)) {
                    _gotoNext = 6068910i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 6068934i32;
                } else if (__value__ == (6068934i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
