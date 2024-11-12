package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _next_5406730:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5406894:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5406899_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5406877:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5406794:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5406764:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5406730 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5406748i32;
                } else if (__value__ == (5406748i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5407290i32;
                    } else {
                        _gotoNext = 5407294i32;
                    };
                } else if (__value__ == (5406790i32)) {
                    _f_5406794 = (stdgo.Go.setRef(_se._fields._list[(_i_5406764 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5406877 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5406794._index.length)) {
                        _gotoNext = 5407047i32;
                    } else {
                        _gotoNext = 5407053i32;
                    };
                } else if (__value__ == (5406913i32)) {
                    _i_5406894 = _f_5406794._index[(_i_5406899_0 : stdgo.GoInt)];
                    if (_fv_5406877.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5406950i32;
                    } else {
                        _gotoNext = 5407029i32;
                    };
                } else if (__value__ == (5406950i32)) {
                    if (_fv_5406877.isNil()) {
                        _gotoNext = 5406970i32;
                    } else {
                        _gotoNext = 5407006i32;
                    };
                } else if (__value__ == (5406970i32)) {
                    _i_5406764++;
                    _gotoNext = 5407291i32;
                } else if (__value__ == (5407006i32)) {
                    _fv_5406877 = _fv_5406877.elem()?.__copy__();
                    _gotoNext = 5407029i32;
                } else if (__value__ == (5407029i32)) {
                    _fv_5406877 = _fv_5406877.field(_i_5406894)?.__copy__();
                    _i_5406899_0++;
                    _gotoNext = 5407048i32;
                } else if (__value__ == (5407047i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5406794._index[(0i32 : stdgo.GoInt)];
                        _i_5406899_0 = __tmp__0;
                        _i_5406894 = __tmp__1;
                    };
                    _gotoNext = 5407048i32;
                } else if (__value__ == (5407048i32)) {
                    if (_i_5406899_0 < (_f_5406794._index.length)) {
                        _gotoNext = 5406913i32;
                    } else {
                        _gotoNext = 5407053i32;
                    };
                } else if (__value__ == (5407053i32)) {
                    if ((_f_5406794._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5406877?.__copy__()) : Bool)) {
                        _gotoNext = 5407088i32;
                    } else {
                        _gotoNext = 5407108i32;
                    };
                } else if (__value__ == (5407088i32)) {
                    _i_5406764++;
                    _gotoNext = 5407291i32;
                } else if (__value__ == (5407108i32)) {
                    _e.writeByte(_next_5406730);
                    _next_5406730 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5407160i32;
                    } else {
                        _gotoNext = 5407203i32;
                    };
                } else if (__value__ == (5407160i32)) {
                    _e.writeString(_f_5406794._nameEscHTML?.__copy__());
                    _gotoNext = 5407242i32;
                } else if (__value__ == (5407203i32)) {
                    _gotoNext = 5407203i32;
                    _e.writeString(_f_5406794._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5407242i32;
                } else if (__value__ == (5407242i32)) {
                    _opts._quoted = _f_5406794._quoted;
                    _f_5406794._encoder(_e, _fv_5406877?.__copy__(), _opts?.__copy__());
                    _i_5406764++;
                    _gotoNext = 5407291i32;
                } else if (__value__ == (5407290i32)) {
                    _i_5406764 = 0i32;
                    _gotoNext = 5407291i32;
                } else if (__value__ == (5407291i32)) {
                    if (_i_5406764 < (_se._fields._list.length)) {
                        _gotoNext = 5406790i32;
                    } else {
                        _gotoNext = 5407294i32;
                    };
                } else if (__value__ == (5407294i32)) {
                    if (_next_5406730 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5407309i32;
                    } else {
                        _gotoNext = 5407341i32;
                    };
                } else if (__value__ == (5407309i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5407365i32;
                } else if (__value__ == (5407341i32)) {
                    _gotoNext = 5407341i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5407365i32;
                } else if (__value__ == (5407365i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
