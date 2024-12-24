package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5412741:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5412746_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5412724:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5412641:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5412611:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5412577:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5412577 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5412595i32;
                } else if (__value__ == (5412595i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5413137i32;
                    } else {
                        _gotoNext = 5413141i32;
                    };
                } else if (__value__ == (5412637i32)) {
                    _f_5412641 = (stdgo.Go.setRef(_se._fields._list[(_i_5412611 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5412724 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5412641._index.length)) {
                        _gotoNext = 5412894i32;
                    } else {
                        _gotoNext = 5412900i32;
                    };
                } else if (__value__ == (5412760i32)) {
                    _i_5412741 = _f_5412641._index[(_i_5412746_0 : stdgo.GoInt)];
                    if (_fv_5412724.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5412797i32;
                    } else {
                        _gotoNext = 5412876i32;
                    };
                } else if (__value__ == (5412797i32)) {
                    if (_fv_5412724.isNil()) {
                        _gotoNext = 5412817i32;
                    } else {
                        _gotoNext = 5412853i32;
                    };
                } else if (__value__ == (5412817i32)) {
                    _i_5412611++;
                    _gotoNext = 5413138i32;
                } else if (__value__ == (5412853i32)) {
                    _fv_5412724 = _fv_5412724.elem()?.__copy__();
                    _gotoNext = 5412876i32;
                } else if (__value__ == (5412876i32)) {
                    _fv_5412724 = _fv_5412724.field(_i_5412741)?.__copy__();
                    _i_5412746_0++;
                    _gotoNext = 5412895i32;
                } else if (__value__ == (5412894i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5412641._index[(0i32 : stdgo.GoInt)];
                        _i_5412746_0 = __tmp__0;
                        _i_5412741 = __tmp__1;
                    };
                    _gotoNext = 5412895i32;
                } else if (__value__ == (5412895i32)) {
                    if (_i_5412746_0 < (_f_5412641._index.length)) {
                        _gotoNext = 5412760i32;
                    } else {
                        _gotoNext = 5412900i32;
                    };
                } else if (__value__ == (5412900i32)) {
                    if ((_f_5412641._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5412724?.__copy__()) : Bool)) {
                        _gotoNext = 5412935i32;
                    } else {
                        _gotoNext = 5412955i32;
                    };
                } else if (__value__ == (5412935i32)) {
                    _i_5412611++;
                    _gotoNext = 5413138i32;
                } else if (__value__ == (5412955i32)) {
                    _e.writeByte(_next_5412577);
                    _next_5412577 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5413007i32;
                    } else {
                        _gotoNext = 5413050i32;
                    };
                } else if (__value__ == (5413007i32)) {
                    _e.writeString(_f_5412641._nameEscHTML?.__copy__());
                    _gotoNext = 5413089i32;
                } else if (__value__ == (5413050i32)) {
                    _gotoNext = 5413050i32;
                    _e.writeString(_f_5412641._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5413089i32;
                } else if (__value__ == (5413089i32)) {
                    _opts._quoted = _f_5412641._quoted;
                    _f_5412641._encoder(_e, _fv_5412724?.__copy__(), _opts?.__copy__());
                    _i_5412611++;
                    _gotoNext = 5413138i32;
                } else if (__value__ == (5413137i32)) {
                    _i_5412611 = 0i32;
                    _gotoNext = 5413138i32;
                } else if (__value__ == (5413138i32)) {
                    if (_i_5412611 < (_se._fields._list.length)) {
                        _gotoNext = 5412637i32;
                    } else {
                        _gotoNext = 5413141i32;
                    };
                } else if (__value__ == (5413141i32)) {
                    if (_next_5412577 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5413156i32;
                    } else {
                        _gotoNext = 5413188i32;
                    };
                } else if (__value__ == (5413156i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5413212i32;
                } else if (__value__ == (5413188i32)) {
                    _gotoNext = 5413188i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5413212i32;
                } else if (__value__ == (5413212i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
