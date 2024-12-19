package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _fv_5308333:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5308250:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5308220:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5308186:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5308350:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5308355_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5308186 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5308204i32;
                } else if (__value__ == (5308204i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5308746i32;
                    } else {
                        _gotoNext = 5308750i32;
                    };
                } else if (__value__ == (5308246i32)) {
                    _f_5308250 = (stdgo.Go.setRef(_se._fields._list[(_i_5308220 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5308333 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5308250._index.length)) {
                        _gotoNext = 5308503i32;
                    } else {
                        _gotoNext = 5308509i32;
                    };
                } else if (__value__ == (5308369i32)) {
                    _i_5308350 = _f_5308250._index[(_i_5308355_0 : stdgo.GoInt)];
                    if (_fv_5308333.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5308406i32;
                    } else {
                        _gotoNext = 5308485i32;
                    };
                } else if (__value__ == (5308406i32)) {
                    if (_fv_5308333.isNil()) {
                        _gotoNext = 5308426i32;
                    } else {
                        _gotoNext = 5308462i32;
                    };
                } else if (__value__ == (5308426i32)) {
                    _i_5308220++;
                    _gotoNext = 5308747i32;
                } else if (__value__ == (5308462i32)) {
                    _fv_5308333 = _fv_5308333.elem()?.__copy__();
                    _gotoNext = 5308485i32;
                } else if (__value__ == (5308485i32)) {
                    _fv_5308333 = _fv_5308333.field(_i_5308350)?.__copy__();
                    _i_5308355_0++;
                    _gotoNext = 5308504i32;
                } else if (__value__ == (5308503i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5308250._index[(0i32 : stdgo.GoInt)];
                        _i_5308355_0 = __tmp__0;
                        _i_5308350 = __tmp__1;
                    };
                    _gotoNext = 5308504i32;
                } else if (__value__ == (5308504i32)) {
                    if (_i_5308355_0 < (_f_5308250._index.length)) {
                        _gotoNext = 5308369i32;
                    } else {
                        _gotoNext = 5308509i32;
                    };
                } else if (__value__ == (5308509i32)) {
                    if ((_f_5308250._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5308333?.__copy__()) : Bool)) {
                        _gotoNext = 5308544i32;
                    } else {
                        _gotoNext = 5308564i32;
                    };
                } else if (__value__ == (5308544i32)) {
                    _i_5308220++;
                    _gotoNext = 5308747i32;
                } else if (__value__ == (5308564i32)) {
                    _e.writeByte(_next_5308186);
                    _next_5308186 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5308616i32;
                    } else {
                        _gotoNext = 5308659i32;
                    };
                } else if (__value__ == (5308616i32)) {
                    _e.writeString(_f_5308250._nameEscHTML?.__copy__());
                    _gotoNext = 5308698i32;
                } else if (__value__ == (5308659i32)) {
                    _gotoNext = 5308659i32;
                    _e.writeString(_f_5308250._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5308698i32;
                } else if (__value__ == (5308698i32)) {
                    _opts._quoted = _f_5308250._quoted;
                    _f_5308250._encoder(_e, _fv_5308333?.__copy__(), _opts?.__copy__());
                    _i_5308220++;
                    _gotoNext = 5308747i32;
                } else if (__value__ == (5308746i32)) {
                    _i_5308220 = 0i32;
                    _gotoNext = 5308747i32;
                } else if (__value__ == (5308747i32)) {
                    if (_i_5308220 < (_se._fields._list.length)) {
                        _gotoNext = 5308246i32;
                    } else {
                        _gotoNext = 5308750i32;
                    };
                } else if (__value__ == (5308750i32)) {
                    if (_next_5308186 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5308765i32;
                    } else {
                        _gotoNext = 5308797i32;
                    };
                } else if (__value__ == (5308765i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5308821i32;
                } else if (__value__ == (5308797i32)) {
                    _gotoNext = 5308797i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5308821i32;
                } else if (__value__ == (5308821i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
