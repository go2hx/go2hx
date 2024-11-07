package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_6584669:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6584674_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_6584652:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_6584569:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_6584539:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_6584505:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_6584505 = (123 : stdgo.GoUInt8);
                    _gotoNext = 6584523i32;
                } else if (__value__ == (6584523i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 6585065i32;
                    } else {
                        _gotoNext = 6585069i32;
                    };
                } else if (__value__ == (6584565i32)) {
                    _f_6584569 = (stdgo.Go.setRef(_se._fields._list[(_i_6584539 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_6584652 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_6584569._index.length)) {
                        _gotoNext = 6584822i32;
                    } else {
                        _gotoNext = 6584828i32;
                    };
                } else if (__value__ == (6584688i32)) {
                    _i_6584669 = _f_6584569._index[(_i_6584674_0 : stdgo.GoInt)];
                    if (_fv_6584652.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 6584725i32;
                    } else {
                        _gotoNext = 6584804i32;
                    };
                } else if (__value__ == (6584725i32)) {
                    if (_fv_6584652.isNil()) {
                        _gotoNext = 6584745i32;
                    } else {
                        _gotoNext = 6584781i32;
                    };
                } else if (__value__ == (6584745i32)) {
                    _i_6584539++;
                    _gotoNext = 6585066i32;
                } else if (__value__ == (6584781i32)) {
                    _fv_6584652 = _fv_6584652.elem()?.__copy__();
                    _gotoNext = 6584804i32;
                } else if (__value__ == (6584804i32)) {
                    _fv_6584652 = _fv_6584652.field(_i_6584669)?.__copy__();
                    _i_6584674_0++;
                    _gotoNext = 6584823i32;
                } else if (__value__ == (6584822i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_6584569._index[(0i32 : stdgo.GoInt)];
                        _i_6584674_0 = __tmp__0;
                        _i_6584669 = __tmp__1;
                    };
                    _gotoNext = 6584823i32;
                } else if (__value__ == (6584823i32)) {
                    if (_i_6584674_0 < (_f_6584569._index.length)) {
                        _gotoNext = 6584688i32;
                    } else {
                        _gotoNext = 6584828i32;
                    };
                } else if (__value__ == (6584828i32)) {
                    if ((_f_6584569._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_6584652?.__copy__()) : Bool)) {
                        _gotoNext = 6584863i32;
                    } else {
                        _gotoNext = 6584883i32;
                    };
                } else if (__value__ == (6584863i32)) {
                    _i_6584539++;
                    _gotoNext = 6585066i32;
                } else if (__value__ == (6584883i32)) {
                    _e.writeByte(_next_6584505);
                    _next_6584505 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 6584935i32;
                    } else {
                        _gotoNext = 6584978i32;
                    };
                } else if (__value__ == (6584935i32)) {
                    _e.writeString(_f_6584569._nameEscHTML?.__copy__());
                    _gotoNext = 6585017i32;
                } else if (__value__ == (6584978i32)) {
                    _e.writeString(_f_6584569._nameNonEsc?.__copy__());
                    _gotoNext = 6585017i32;
                } else if (__value__ == (6585017i32)) {
                    _opts._quoted = _f_6584569._quoted;
                    _f_6584569._encoder(_e, _fv_6584652?.__copy__(), _opts?.__copy__());
                    _i_6584539++;
                    _gotoNext = 6585066i32;
                } else if (__value__ == (6585065i32)) {
                    _i_6584539 = 0i32;
                    _gotoNext = 6585066i32;
                } else if (__value__ == (6585066i32)) {
                    if (_i_6584539 < (_se._fields._list.length)) {
                        _gotoNext = 6584565i32;
                    } else {
                        _gotoNext = 6585069i32;
                    };
                } else if (__value__ == (6585069i32)) {
                    if (_next_6584505 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 6585084i32;
                    } else {
                        _gotoNext = 6585116i32;
                    };
                } else if (__value__ == (6585084i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 6585140i32;
                } else if (__value__ == (6585116i32)) {
                    _e.writeByte((125 : stdgo.GoUInt8));
                    _gotoNext = 6585140i32;
                } else if (__value__ == (6585140i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
