package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5464137_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5464115:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5464032:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5464002:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5463968:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5464132:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5463968 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5463986i32;
                } else if (__value__ == (5463986i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5464528i32;
                    } else {
                        _gotoNext = 5464532i32;
                    };
                } else if (__value__ == (5464028i32)) {
                    _f_5464032 = (stdgo.Go.setRef(_se._fields._list[(_i_5464002 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5464115 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5464032._index.length)) {
                        _gotoNext = 5464285i32;
                    } else {
                        _gotoNext = 5464291i32;
                    };
                } else if (__value__ == (5464151i32)) {
                    _i_5464132 = _f_5464032._index[(_i_5464137_0 : stdgo.GoInt)];
                    if (_fv_5464115.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5464188i32;
                    } else {
                        _gotoNext = 5464267i32;
                    };
                } else if (__value__ == (5464188i32)) {
                    if (_fv_5464115.isNil()) {
                        _gotoNext = 5464208i32;
                    } else {
                        _gotoNext = 5464244i32;
                    };
                } else if (__value__ == (5464208i32)) {
                    _i_5464002++;
                    _gotoNext = 5464529i32;
                } else if (__value__ == (5464244i32)) {
                    _fv_5464115 = _fv_5464115.elem()?.__copy__();
                    _gotoNext = 5464267i32;
                } else if (__value__ == (5464267i32)) {
                    _fv_5464115 = _fv_5464115.field(_i_5464132)?.__copy__();
                    _i_5464137_0++;
                    _gotoNext = 5464286i32;
                } else if (__value__ == (5464285i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5464032._index[(0i32 : stdgo.GoInt)];
                        _i_5464137_0 = __tmp__0;
                        _i_5464132 = __tmp__1;
                    };
                    _gotoNext = 5464286i32;
                } else if (__value__ == (5464286i32)) {
                    if (_i_5464137_0 < (_f_5464032._index.length)) {
                        _gotoNext = 5464151i32;
                    } else {
                        _gotoNext = 5464291i32;
                    };
                } else if (__value__ == (5464291i32)) {
                    if ((_f_5464032._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5464115?.__copy__()) : Bool)) {
                        _gotoNext = 5464326i32;
                    } else {
                        _gotoNext = 5464346i32;
                    };
                } else if (__value__ == (5464326i32)) {
                    _i_5464002++;
                    _gotoNext = 5464529i32;
                } else if (__value__ == (5464346i32)) {
                    _e.writeByte(_next_5463968);
                    _next_5463968 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5464398i32;
                    } else {
                        _gotoNext = 5464441i32;
                    };
                } else if (__value__ == (5464398i32)) {
                    _e.writeString(_f_5464032._nameEscHTML?.__copy__());
                    _gotoNext = 5464480i32;
                } else if (__value__ == (5464441i32)) {
                    _gotoNext = 5464441i32;
                    _e.writeString(_f_5464032._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5464480i32;
                } else if (__value__ == (5464480i32)) {
                    _opts._quoted = _f_5464032._quoted;
                    _f_5464032._encoder(_e, _fv_5464115?.__copy__(), _opts?.__copy__());
                    _i_5464002++;
                    _gotoNext = 5464529i32;
                } else if (__value__ == (5464528i32)) {
                    _i_5464002 = 0i32;
                    _gotoNext = 5464529i32;
                } else if (__value__ == (5464529i32)) {
                    if (_i_5464002 < (_se._fields._list.length)) {
                        _gotoNext = 5464028i32;
                    } else {
                        _gotoNext = 5464532i32;
                    };
                } else if (__value__ == (5464532i32)) {
                    if (_next_5463968 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5464547i32;
                    } else {
                        _gotoNext = 5464579i32;
                    };
                } else if (__value__ == (5464547i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5464603i32;
                } else if (__value__ == (5464579i32)) {
                    _gotoNext = 5464579i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5464603i32;
                } else if (__value__ == (5464603i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
