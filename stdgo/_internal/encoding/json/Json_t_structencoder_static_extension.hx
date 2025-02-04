package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _i_5571555:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5571560_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5571538:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_5571455:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_5571425:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5571391:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5571391 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5571409i32;
                } else if (__value__ == (5571409i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5571951i32;
                    } else {
                        _gotoNext = 5571955i32;
                    };
                } else if (__value__ == (5571451i32)) {
                    _f_5571455 = (stdgo.Go.setRef(_se._fields._list[(_i_5571425 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5571538 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5571455 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5571708i32;
                    } else {
                        _gotoNext = 5571714i32;
                    };
                } else if (__value__ == (5571574i32)) {
                    _i_5571555 = (@:checkr _f_5571455 ?? throw "null pointer dereference")._index[(_i_5571560_0 : stdgo.GoInt)];
                    if (_fv_5571538.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5571611i32;
                    } else {
                        _gotoNext = 5571690i32;
                    };
                } else if (__value__ == (5571611i32)) {
                    if (_fv_5571538.isNil()) {
                        _gotoNext = 5571631i32;
                    } else {
                        _gotoNext = 5571667i32;
                    };
                } else if (__value__ == (5571631i32)) {
                    _i_5571425++;
                    _gotoNext = 5571952i32;
                } else if (__value__ == (5571667i32)) {
                    _fv_5571538 = _fv_5571538.elem()?.__copy__();
                    _gotoNext = 5571690i32;
                } else if (__value__ == (5571690i32)) {
                    _fv_5571538 = _fv_5571538.field(_i_5571555)?.__copy__();
                    _i_5571560_0++;
                    _gotoNext = 5571709i32;
                } else if (__value__ == (5571708i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5571455 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5571560_0 = __tmp__0;
                        _i_5571555 = __tmp__1;
                    };
                    _gotoNext = 5571709i32;
                } else if (__value__ == (5571709i32)) {
                    if (_i_5571560_0 < ((@:checkr _f_5571455 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5571574i32;
                    } else {
                        _gotoNext = 5571714i32;
                    };
                } else if (__value__ == (5571714i32)) {
                    if (((@:checkr _f_5571455 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5571538?.__copy__()) : Bool)) {
                        _gotoNext = 5571749i32;
                    } else {
                        _gotoNext = 5571769i32;
                    };
                } else if (__value__ == (5571749i32)) {
                    _i_5571425++;
                    _gotoNext = 5571952i32;
                } else if (__value__ == (5571769i32)) {
                    @:check2r _e.writeByte(_next_5571391);
                    _next_5571391 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5571821i32;
                    } else {
                        _gotoNext = 5571864i32;
                    };
                } else if (__value__ == (5571821i32)) {
                    @:check2r _e.writeString((@:checkr _f_5571455 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5571903i32;
                } else if (__value__ == (5571864i32)) {
                    _gotoNext = 5571864i32;
                    @:check2r _e.writeString((@:checkr _f_5571455 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5571903i32;
                } else if (__value__ == (5571903i32)) {
                    _opts._quoted = (@:checkr _f_5571455 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5571455 ?? throw "null pointer dereference")._encoder(_e, _fv_5571538?.__copy__(), _opts?.__copy__());
                    _i_5571425++;
                    _gotoNext = 5571952i32;
                } else if (__value__ == (5571951i32)) {
                    _i_5571425 = 0i32;
                    _gotoNext = 5571952i32;
                } else if (__value__ == (5571952i32)) {
                    if (_i_5571425 < (_se._fields._list.length)) {
                        _gotoNext = 5571451i32;
                    } else {
                        _gotoNext = 5571955i32;
                    };
                } else if (__value__ == (5571955i32)) {
                    if (_next_5571391 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5571970i32;
                    } else {
                        _gotoNext = 5572002i32;
                    };
                } else if (__value__ == (5571970i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5572026i32;
                } else if (__value__ == (5572002i32)) {
                    _gotoNext = 5572002i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5572026i32;
                } else if (__value__ == (5572026i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
