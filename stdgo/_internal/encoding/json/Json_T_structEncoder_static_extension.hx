package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5424947:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5424952_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5424930:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5424847:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5424817:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5424783:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5424783 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5424801i32;
                } else if (__value__ == (5424801i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5425343i32;
                    } else {
                        _gotoNext = 5425347i32;
                    };
                } else if (__value__ == (5424843i32)) {
                    _f_5424847 = (stdgo.Go.setRef(_se._fields._list[(_i_5424817 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5424930 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5424847._index.length)) {
                        _gotoNext = 5425100i32;
                    } else {
                        _gotoNext = 5425106i32;
                    };
                } else if (__value__ == (5424966i32)) {
                    _i_5424947 = _f_5424847._index[(_i_5424952_0 : stdgo.GoInt)];
                    if (_fv_5424930.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5425003i32;
                    } else {
                        _gotoNext = 5425082i32;
                    };
                } else if (__value__ == (5425003i32)) {
                    if (_fv_5424930.isNil()) {
                        _gotoNext = 5425023i32;
                    } else {
                        _gotoNext = 5425059i32;
                    };
                } else if (__value__ == (5425023i32)) {
                    _i_5424817++;
                    _gotoNext = 5425344i32;
                } else if (__value__ == (5425059i32)) {
                    _fv_5424930 = _fv_5424930.elem()?.__copy__();
                    _gotoNext = 5425082i32;
                } else if (__value__ == (5425082i32)) {
                    _fv_5424930 = _fv_5424930.field(_i_5424947)?.__copy__();
                    _i_5424952_0++;
                    _gotoNext = 5425101i32;
                } else if (__value__ == (5425100i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5424847._index[(0i32 : stdgo.GoInt)];
                        _i_5424952_0 = __tmp__0;
                        _i_5424947 = __tmp__1;
                    };
                    _gotoNext = 5425101i32;
                } else if (__value__ == (5425101i32)) {
                    if (_i_5424952_0 < (_f_5424847._index.length)) {
                        _gotoNext = 5424966i32;
                    } else {
                        _gotoNext = 5425106i32;
                    };
                } else if (__value__ == (5425106i32)) {
                    if ((_f_5424847._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5424930?.__copy__()) : Bool)) {
                        _gotoNext = 5425141i32;
                    } else {
                        _gotoNext = 5425161i32;
                    };
                } else if (__value__ == (5425141i32)) {
                    _i_5424817++;
                    _gotoNext = 5425344i32;
                } else if (__value__ == (5425161i32)) {
                    _e.writeByte(_next_5424783);
                    _next_5424783 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5425213i32;
                    } else {
                        _gotoNext = 5425256i32;
                    };
                } else if (__value__ == (5425213i32)) {
                    _e.writeString(_f_5424847._nameEscHTML?.__copy__());
                    _gotoNext = 5425295i32;
                } else if (__value__ == (5425256i32)) {
                    _gotoNext = 5425256i32;
                    _e.writeString(_f_5424847._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5425295i32;
                } else if (__value__ == (5425295i32)) {
                    _opts._quoted = _f_5424847._quoted;
                    _f_5424847._encoder(_e, _fv_5424930?.__copy__(), _opts?.__copy__());
                    _i_5424817++;
                    _gotoNext = 5425344i32;
                } else if (__value__ == (5425343i32)) {
                    _i_5424817 = 0i32;
                    _gotoNext = 5425344i32;
                } else if (__value__ == (5425344i32)) {
                    if (_i_5424817 < (_se._fields._list.length)) {
                        _gotoNext = 5424843i32;
                    } else {
                        _gotoNext = 5425347i32;
                    };
                } else if (__value__ == (5425347i32)) {
                    if (_next_5424783 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5425362i32;
                    } else {
                        _gotoNext = 5425394i32;
                    };
                } else if (__value__ == (5425362i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5425418i32;
                } else if (__value__ == (5425394i32)) {
                    _gotoNext = 5425394i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5425418i32;
                } else if (__value__ == (5425418i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
