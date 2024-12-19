package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_7020814:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_7020819_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_7020797:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_7020714:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_7020684:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_7020650:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_7020650 = (123 : stdgo.GoUInt8);
                    _gotoNext = 7020668i32;
                } else if (__value__ == (7020668i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 7021210i32;
                    } else {
                        _gotoNext = 7021214i32;
                    };
                } else if (__value__ == (7020710i32)) {
                    _f_7020714 = (stdgo.Go.setRef(_se._fields._list[(_i_7020684 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_7020797 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_7020714._index.length)) {
                        _gotoNext = 7020967i32;
                    } else {
                        _gotoNext = 7020973i32;
                    };
                } else if (__value__ == (7020833i32)) {
                    _i_7020814 = _f_7020714._index[(_i_7020819_0 : stdgo.GoInt)];
                    if (_fv_7020797.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 7020870i32;
                    } else {
                        _gotoNext = 7020949i32;
                    };
                } else if (__value__ == (7020870i32)) {
                    if (_fv_7020797.isNil()) {
                        _gotoNext = 7020890i32;
                    } else {
                        _gotoNext = 7020926i32;
                    };
                } else if (__value__ == (7020890i32)) {
                    _i_7020684++;
                    _gotoNext = 7021211i32;
                } else if (__value__ == (7020926i32)) {
                    _fv_7020797 = _fv_7020797.elem()?.__copy__();
                    _gotoNext = 7020949i32;
                } else if (__value__ == (7020949i32)) {
                    _fv_7020797 = _fv_7020797.field(_i_7020814)?.__copy__();
                    _i_7020819_0++;
                    _gotoNext = 7020968i32;
                } else if (__value__ == (7020967i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_7020714._index[(0i32 : stdgo.GoInt)];
                        _i_7020819_0 = __tmp__0;
                        _i_7020814 = __tmp__1;
                    };
                    _gotoNext = 7020968i32;
                } else if (__value__ == (7020968i32)) {
                    if (_i_7020819_0 < (_f_7020714._index.length)) {
                        _gotoNext = 7020833i32;
                    } else {
                        _gotoNext = 7020973i32;
                    };
                } else if (__value__ == (7020973i32)) {
                    if ((_f_7020714._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_7020797?.__copy__()) : Bool)) {
                        _gotoNext = 7021008i32;
                    } else {
                        _gotoNext = 7021028i32;
                    };
                } else if (__value__ == (7021008i32)) {
                    _i_7020684++;
                    _gotoNext = 7021211i32;
                } else if (__value__ == (7021028i32)) {
                    _e.writeByte(_next_7020650);
                    _next_7020650 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 7021080i32;
                    } else {
                        _gotoNext = 7021123i32;
                    };
                } else if (__value__ == (7021080i32)) {
                    _e.writeString(_f_7020714._nameEscHTML?.__copy__());
                    _gotoNext = 7021162i32;
                } else if (__value__ == (7021123i32)) {
                    _gotoNext = 7021123i32;
                    _e.writeString(_f_7020714._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 7021162i32;
                } else if (__value__ == (7021162i32)) {
                    _opts._quoted = _f_7020714._quoted;
                    _f_7020714._encoder(_e, _fv_7020797?.__copy__(), _opts?.__copy__());
                    _i_7020684++;
                    _gotoNext = 7021211i32;
                } else if (__value__ == (7021210i32)) {
                    _i_7020684 = 0i32;
                    _gotoNext = 7021211i32;
                } else if (__value__ == (7021211i32)) {
                    if (_i_7020684 < (_se._fields._list.length)) {
                        _gotoNext = 7020710i32;
                    } else {
                        _gotoNext = 7021214i32;
                    };
                } else if (__value__ == (7021214i32)) {
                    if (_next_7020650 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 7021229i32;
                    } else {
                        _gotoNext = 7021261i32;
                    };
                } else if (__value__ == (7021229i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 7021285i32;
                } else if (__value__ == (7021261i32)) {
                    _gotoNext = 7021261i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 7021285i32;
                } else if (__value__ == (7021285i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
