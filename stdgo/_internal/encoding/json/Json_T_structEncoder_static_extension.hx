package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5426845:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5426850_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5426828:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5426745:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5426715:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5426681:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5426681 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5426699i32;
                } else if (__value__ == (5426699i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5427241i32;
                    } else {
                        _gotoNext = 5427245i32;
                    };
                } else if (__value__ == (5426741i32)) {
                    _f_5426745 = (stdgo.Go.setRef(_se._fields._list[(_i_5426715 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5426828 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5426745 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5426998i32;
                    } else {
                        _gotoNext = 5427004i32;
                    };
                } else if (__value__ == (5426864i32)) {
                    _i_5426845 = (@:checkr _f_5426745 ?? throw "null pointer dereference")._index[(_i_5426850_0 : stdgo.GoInt)];
                    if (_fv_5426828.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5426901i32;
                    } else {
                        _gotoNext = 5426980i32;
                    };
                } else if (__value__ == (5426901i32)) {
                    if (_fv_5426828.isNil()) {
                        _gotoNext = 5426921i32;
                    } else {
                        _gotoNext = 5426957i32;
                    };
                } else if (__value__ == (5426921i32)) {
                    _i_5426715++;
                    _gotoNext = 5427242i32;
                } else if (__value__ == (5426957i32)) {
                    _fv_5426828 = _fv_5426828.elem()?.__copy__();
                    _gotoNext = 5426980i32;
                } else if (__value__ == (5426980i32)) {
                    _fv_5426828 = _fv_5426828.field(_i_5426845)?.__copy__();
                    _i_5426850_0++;
                    _gotoNext = 5426999i32;
                } else if (__value__ == (5426998i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5426745 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5426850_0 = __tmp__0;
                        _i_5426845 = __tmp__1;
                    };
                    _gotoNext = 5426999i32;
                } else if (__value__ == (5426999i32)) {
                    if (_i_5426850_0 < ((@:checkr _f_5426745 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5426864i32;
                    } else {
                        _gotoNext = 5427004i32;
                    };
                } else if (__value__ == (5427004i32)) {
                    if (((@:checkr _f_5426745 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5426828?.__copy__()) : Bool)) {
                        _gotoNext = 5427039i32;
                    } else {
                        _gotoNext = 5427059i32;
                    };
                } else if (__value__ == (5427039i32)) {
                    _i_5426715++;
                    _gotoNext = 5427242i32;
                } else if (__value__ == (5427059i32)) {
                    @:check2r _e.writeByte(_next_5426681);
                    _next_5426681 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5427111i32;
                    } else {
                        _gotoNext = 5427154i32;
                    };
                } else if (__value__ == (5427111i32)) {
                    @:check2r _e.writeString((@:checkr _f_5426745 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5427193i32;
                } else if (__value__ == (5427154i32)) {
                    _gotoNext = 5427154i32;
                    @:check2r _e.writeString((@:checkr _f_5426745 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5427193i32;
                } else if (__value__ == (5427193i32)) {
                    _opts._quoted = (@:checkr _f_5426745 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5426745 ?? throw "null pointer dereference")._encoder(_e, _fv_5426828?.__copy__(), _opts?.__copy__());
                    _i_5426715++;
                    _gotoNext = 5427242i32;
                } else if (__value__ == (5427241i32)) {
                    _i_5426715 = 0i32;
                    _gotoNext = 5427242i32;
                } else if (__value__ == (5427242i32)) {
                    if (_i_5426715 < (_se._fields._list.length)) {
                        _gotoNext = 5426741i32;
                    } else {
                        _gotoNext = 5427245i32;
                    };
                } else if (__value__ == (5427245i32)) {
                    if (_next_5426681 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5427260i32;
                    } else {
                        _gotoNext = 5427292i32;
                    };
                } else if (__value__ == (5427260i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5427316i32;
                } else if (__value__ == (5427292i32)) {
                    _gotoNext = 5427292i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5427316i32;
                } else if (__value__ == (5427316i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
