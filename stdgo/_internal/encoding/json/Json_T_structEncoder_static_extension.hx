package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _next_5529175:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5529339:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5529344_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5529322:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5529239:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5529209:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5529175 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5529193i32;
                } else if (__value__ == (5529193i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5529735i32;
                    } else {
                        _gotoNext = 5529739i32;
                    };
                } else if (__value__ == (5529235i32)) {
                    _f_5529239 = (stdgo.Go.setRef(_se._fields._list[(_i_5529209 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5529322 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5529239._index.length)) {
                        _gotoNext = 5529492i32;
                    } else {
                        _gotoNext = 5529498i32;
                    };
                } else if (__value__ == (5529358i32)) {
                    _i_5529339 = _f_5529239._index[(_i_5529344_0 : stdgo.GoInt)];
                    if (_fv_5529322.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5529395i32;
                    } else {
                        _gotoNext = 5529474i32;
                    };
                } else if (__value__ == (5529395i32)) {
                    if (_fv_5529322.isNil()) {
                        _gotoNext = 5529415i32;
                    } else {
                        _gotoNext = 5529451i32;
                    };
                } else if (__value__ == (5529415i32)) {
                    _i_5529209++;
                    _gotoNext = 5529736i32;
                } else if (__value__ == (5529451i32)) {
                    _fv_5529322 = _fv_5529322.elem()?.__copy__();
                    _gotoNext = 5529474i32;
                } else if (__value__ == (5529474i32)) {
                    _fv_5529322 = _fv_5529322.field(_i_5529339)?.__copy__();
                    _i_5529344_0++;
                    _gotoNext = 5529493i32;
                } else if (__value__ == (5529492i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5529239._index[(0i32 : stdgo.GoInt)];
                        _i_5529344_0 = __tmp__0;
                        _i_5529339 = __tmp__1;
                    };
                    _gotoNext = 5529493i32;
                } else if (__value__ == (5529493i32)) {
                    if (_i_5529344_0 < (_f_5529239._index.length)) {
                        _gotoNext = 5529358i32;
                    } else {
                        _gotoNext = 5529498i32;
                    };
                } else if (__value__ == (5529498i32)) {
                    if ((_f_5529239._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5529322?.__copy__()) : Bool)) {
                        _gotoNext = 5529533i32;
                    } else {
                        _gotoNext = 5529553i32;
                    };
                } else if (__value__ == (5529533i32)) {
                    _i_5529209++;
                    _gotoNext = 5529736i32;
                } else if (__value__ == (5529553i32)) {
                    _e.writeByte(_next_5529175);
                    _next_5529175 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5529605i32;
                    } else {
                        _gotoNext = 5529648i32;
                    };
                } else if (__value__ == (5529605i32)) {
                    _e.writeString(_f_5529239._nameEscHTML?.__copy__());
                    _gotoNext = 5529687i32;
                } else if (__value__ == (5529648i32)) {
                    _e.writeString(_f_5529239._nameNonEsc?.__copy__());
                    _gotoNext = 5529687i32;
                } else if (__value__ == (5529687i32)) {
                    _opts._quoted = _f_5529239._quoted;
                    _f_5529239._encoder(_e, _fv_5529322?.__copy__(), _opts?.__copy__());
                    _i_5529209++;
                    _gotoNext = 5529736i32;
                } else if (__value__ == (5529735i32)) {
                    _i_5529209 = 0i32;
                    _gotoNext = 5529736i32;
                } else if (__value__ == (5529736i32)) {
                    if (_i_5529209 < (_se._fields._list.length)) {
                        _gotoNext = 5529235i32;
                    } else {
                        _gotoNext = 5529739i32;
                    };
                } else if (__value__ == (5529739i32)) {
                    if (_next_5529175 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5529754i32;
                    } else {
                        _gotoNext = 5529786i32;
                    };
                } else if (__value__ == (5529754i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5529810i32;
                } else if (__value__ == (5529786i32)) {
                    _e.writeByte((125 : stdgo.GoUInt8));
                    _gotoNext = 5529810i32;
                } else if (__value__ == (5529810i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
