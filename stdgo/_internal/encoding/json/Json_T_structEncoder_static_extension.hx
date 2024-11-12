package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5220712:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5220678:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5220842:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5220847_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5220825:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5220742:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5220678 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5220696i32;
                } else if (__value__ == (5220696i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5221238i32;
                    } else {
                        _gotoNext = 5221242i32;
                    };
                } else if (__value__ == (5220738i32)) {
                    _f_5220742 = (stdgo.Go.setRef(_se._fields._list[(_i_5220712 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5220825 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5220742._index.length)) {
                        _gotoNext = 5220995i32;
                    } else {
                        _gotoNext = 5221001i32;
                    };
                } else if (__value__ == (5220861i32)) {
                    _i_5220842 = _f_5220742._index[(_i_5220847_0 : stdgo.GoInt)];
                    if (_fv_5220825.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5220898i32;
                    } else {
                        _gotoNext = 5220977i32;
                    };
                } else if (__value__ == (5220898i32)) {
                    if (_fv_5220825.isNil()) {
                        _gotoNext = 5220918i32;
                    } else {
                        _gotoNext = 5220954i32;
                    };
                } else if (__value__ == (5220918i32)) {
                    _i_5220712++;
                    _gotoNext = 5221239i32;
                } else if (__value__ == (5220954i32)) {
                    _fv_5220825 = _fv_5220825.elem()?.__copy__();
                    _gotoNext = 5220977i32;
                } else if (__value__ == (5220977i32)) {
                    _fv_5220825 = _fv_5220825.field(_i_5220842)?.__copy__();
                    _i_5220847_0++;
                    _gotoNext = 5220996i32;
                } else if (__value__ == (5220995i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5220742._index[(0i32 : stdgo.GoInt)];
                        _i_5220847_0 = __tmp__0;
                        _i_5220842 = __tmp__1;
                    };
                    _gotoNext = 5220996i32;
                } else if (__value__ == (5220996i32)) {
                    if (_i_5220847_0 < (_f_5220742._index.length)) {
                        _gotoNext = 5220861i32;
                    } else {
                        _gotoNext = 5221001i32;
                    };
                } else if (__value__ == (5221001i32)) {
                    if ((_f_5220742._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5220825?.__copy__()) : Bool)) {
                        _gotoNext = 5221036i32;
                    } else {
                        _gotoNext = 5221056i32;
                    };
                } else if (__value__ == (5221036i32)) {
                    _i_5220712++;
                    _gotoNext = 5221239i32;
                } else if (__value__ == (5221056i32)) {
                    _e.writeByte(_next_5220678);
                    _next_5220678 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5221108i32;
                    } else {
                        _gotoNext = 5221151i32;
                    };
                } else if (__value__ == (5221108i32)) {
                    _e.writeString(_f_5220742._nameEscHTML?.__copy__());
                    _gotoNext = 5221190i32;
                } else if (__value__ == (5221151i32)) {
                    _gotoNext = 5221151i32;
                    _e.writeString(_f_5220742._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5221190i32;
                } else if (__value__ == (5221190i32)) {
                    _opts._quoted = _f_5220742._quoted;
                    _f_5220742._encoder(_e, _fv_5220825?.__copy__(), _opts?.__copy__());
                    _i_5220712++;
                    _gotoNext = 5221239i32;
                } else if (__value__ == (5221238i32)) {
                    _i_5220712 = 0i32;
                    _gotoNext = 5221239i32;
                } else if (__value__ == (5221239i32)) {
                    if (_i_5220712 < (_se._fields._list.length)) {
                        _gotoNext = 5220738i32;
                    } else {
                        _gotoNext = 5221242i32;
                    };
                } else if (__value__ == (5221242i32)) {
                    if (_next_5220678 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5221257i32;
                    } else {
                        _gotoNext = 5221289i32;
                    };
                } else if (__value__ == (5221257i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5221313i32;
                } else if (__value__ == (5221289i32)) {
                    _gotoNext = 5221289i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5221313i32;
                } else if (__value__ == (5221313i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
