package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _fv_5416945:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5416862:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5416832:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5416798:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5416962:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5416967_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5416798 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5416816i32;
                } else if (__value__ == (5416816i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5417358i32;
                    } else {
                        _gotoNext = 5417362i32;
                    };
                } else if (__value__ == (5416858i32)) {
                    _f_5416862 = (stdgo.Go.setRef(_se._fields._list[(_i_5416832 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5416945 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5416862._index.length)) {
                        _gotoNext = 5417115i32;
                    } else {
                        _gotoNext = 5417121i32;
                    };
                } else if (__value__ == (5416981i32)) {
                    _i_5416962 = _f_5416862._index[(_i_5416967_0 : stdgo.GoInt)];
                    if (_fv_5416945.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5417018i32;
                    } else {
                        _gotoNext = 5417097i32;
                    };
                } else if (__value__ == (5417018i32)) {
                    if (_fv_5416945.isNil()) {
                        _gotoNext = 5417038i32;
                    } else {
                        _gotoNext = 5417074i32;
                    };
                } else if (__value__ == (5417038i32)) {
                    _i_5416832++;
                    _gotoNext = 5417359i32;
                } else if (__value__ == (5417074i32)) {
                    _fv_5416945 = _fv_5416945.elem()?.__copy__();
                    _gotoNext = 5417097i32;
                } else if (__value__ == (5417097i32)) {
                    _fv_5416945 = _fv_5416945.field(_i_5416962)?.__copy__();
                    _i_5416967_0++;
                    _gotoNext = 5417116i32;
                } else if (__value__ == (5417115i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5416862._index[(0i32 : stdgo.GoInt)];
                        _i_5416967_0 = __tmp__0;
                        _i_5416962 = __tmp__1;
                    };
                    _gotoNext = 5417116i32;
                } else if (__value__ == (5417116i32)) {
                    if (_i_5416967_0 < (_f_5416862._index.length)) {
                        _gotoNext = 5416981i32;
                    } else {
                        _gotoNext = 5417121i32;
                    };
                } else if (__value__ == (5417121i32)) {
                    if ((_f_5416862._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5416945?.__copy__()) : Bool)) {
                        _gotoNext = 5417156i32;
                    } else {
                        _gotoNext = 5417176i32;
                    };
                } else if (__value__ == (5417156i32)) {
                    _i_5416832++;
                    _gotoNext = 5417359i32;
                } else if (__value__ == (5417176i32)) {
                    _e.writeByte(_next_5416798);
                    _next_5416798 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5417228i32;
                    } else {
                        _gotoNext = 5417271i32;
                    };
                } else if (__value__ == (5417228i32)) {
                    _e.writeString(_f_5416862._nameEscHTML?.__copy__());
                    _gotoNext = 5417310i32;
                } else if (__value__ == (5417271i32)) {
                    _gotoNext = 5417271i32;
                    _e.writeString(_f_5416862._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5417310i32;
                } else if (__value__ == (5417310i32)) {
                    _opts._quoted = _f_5416862._quoted;
                    _f_5416862._encoder(_e, _fv_5416945?.__copy__(), _opts?.__copy__());
                    _i_5416832++;
                    _gotoNext = 5417359i32;
                } else if (__value__ == (5417358i32)) {
                    _i_5416832 = 0i32;
                    _gotoNext = 5417359i32;
                } else if (__value__ == (5417359i32)) {
                    if (_i_5416832 < (_se._fields._list.length)) {
                        _gotoNext = 5416858i32;
                    } else {
                        _gotoNext = 5417362i32;
                    };
                } else if (__value__ == (5417362i32)) {
                    if (_next_5416798 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5417377i32;
                    } else {
                        _gotoNext = 5417409i32;
                    };
                } else if (__value__ == (5417377i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5417433i32;
                } else if (__value__ == (5417409i32)) {
                    _gotoNext = 5417409i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5417433i32;
                } else if (__value__ == (5417433i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
