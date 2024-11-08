package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _next_5430632:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5430796:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5430801_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5430779:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5430696:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5430666:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5430632 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5430650i32;
                } else if (__value__ == (5430650i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5431192i32;
                    } else {
                        _gotoNext = 5431196i32;
                    };
                } else if (__value__ == (5430692i32)) {
                    _f_5430696 = (stdgo.Go.setRef(_se._fields._list[(_i_5430666 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5430779 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5430696._index.length)) {
                        _gotoNext = 5430949i32;
                    } else {
                        _gotoNext = 5430955i32;
                    };
                } else if (__value__ == (5430815i32)) {
                    _i_5430796 = _f_5430696._index[(_i_5430801_0 : stdgo.GoInt)];
                    if (_fv_5430779.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5430852i32;
                    } else {
                        _gotoNext = 5430931i32;
                    };
                } else if (__value__ == (5430852i32)) {
                    if (_fv_5430779.isNil()) {
                        _gotoNext = 5430872i32;
                    } else {
                        _gotoNext = 5430908i32;
                    };
                } else if (__value__ == (5430872i32)) {
                    _i_5430666++;
                    _gotoNext = 5431193i32;
                } else if (__value__ == (5430908i32)) {
                    _fv_5430779 = _fv_5430779.elem()?.__copy__();
                    _gotoNext = 5430931i32;
                } else if (__value__ == (5430931i32)) {
                    _fv_5430779 = _fv_5430779.field(_i_5430796)?.__copy__();
                    _i_5430801_0++;
                    _gotoNext = 5430950i32;
                } else if (__value__ == (5430949i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5430696._index[(0i32 : stdgo.GoInt)];
                        _i_5430801_0 = __tmp__0;
                        _i_5430796 = __tmp__1;
                    };
                    _gotoNext = 5430950i32;
                } else if (__value__ == (5430950i32)) {
                    if (_i_5430801_0 < (_f_5430696._index.length)) {
                        _gotoNext = 5430815i32;
                    } else {
                        _gotoNext = 5430955i32;
                    };
                } else if (__value__ == (5430955i32)) {
                    if ((_f_5430696._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5430779?.__copy__()) : Bool)) {
                        _gotoNext = 5430990i32;
                    } else {
                        _gotoNext = 5431010i32;
                    };
                } else if (__value__ == (5430990i32)) {
                    _i_5430666++;
                    _gotoNext = 5431193i32;
                } else if (__value__ == (5431010i32)) {
                    _e.writeByte(_next_5430632);
                    _next_5430632 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5431062i32;
                    } else {
                        _gotoNext = 5431105i32;
                    };
                } else if (__value__ == (5431062i32)) {
                    _e.writeString(_f_5430696._nameEscHTML?.__copy__());
                    _gotoNext = 5431144i32;
                } else if (__value__ == (5431105i32)) {
                    _e.writeString(_f_5430696._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5431144i32;
                } else if (__value__ == (5431144i32)) {
                    _opts._quoted = _f_5430696._quoted;
                    _f_5430696._encoder(_e, _fv_5430779?.__copy__(), _opts?.__copy__());
                    _i_5430666++;
                    _gotoNext = 5431193i32;
                } else if (__value__ == (5431192i32)) {
                    _i_5430666 = 0i32;
                    _gotoNext = 5431193i32;
                } else if (__value__ == (5431193i32)) {
                    if (_i_5430666 < (_se._fields._list.length)) {
                        _gotoNext = 5430692i32;
                    } else {
                        _gotoNext = 5431196i32;
                    };
                } else if (__value__ == (5431196i32)) {
                    if (_next_5430632 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5431211i32;
                    } else {
                        _gotoNext = 5431243i32;
                    };
                } else if (__value__ == (5431211i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5431267i32;
                } else if (__value__ == (5431243i32)) {
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5431267i32;
                } else if (__value__ == (5431267i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
