package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5190521_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_4:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_3:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_2 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5190370i32;
                } else if (__value__ == (5190370i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5190912i32;
                    } else {
                        _gotoNext = 5190916i32;
                    };
                } else if (__value__ == (5190412i32)) {
                    _f_4 = (stdgo.Go.setRef(_se._fields._list[(_i_3 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_4 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5190669i32;
                    } else {
                        _gotoNext = 5190675i32;
                    };
                } else if (__value__ == (5190535i32)) {
                    _i_7 = (@:checkr _f_4 ?? throw "null pointer dereference")._index[(_i_5190521_6 : stdgo.GoInt)];
                    if (_fv_5.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5190572i32;
                    } else {
                        _gotoNext = 5190651i32;
                    };
                } else if (__value__ == (5190572i32)) {
                    if (_fv_5.isNil()) {
                        _gotoNext = 5190592i32;
                    } else {
                        _gotoNext = 5190628i32;
                    };
                } else if (__value__ == (5190592i32)) {
                    _i_3++;
                    _gotoNext = 5190913i32;
                } else if (__value__ == (5190628i32)) {
                    _fv_5 = _fv_5.elem()?.__copy__();
                    _gotoNext = 5190651i32;
                } else if (__value__ == (5190651i32)) {
                    _fv_5 = _fv_5.field(_i_7)?.__copy__();
                    _i_5190521_6++;
                    _gotoNext = 5190670i32;
                } else if (__value__ == (5190669i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_4 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5190521_6 = __tmp__0;
                        _i_7 = __tmp__1;
                    };
                    _gotoNext = 5190670i32;
                } else if (__value__ == (5190670i32)) {
                    if (_i_5190521_6 < ((@:checkr _f_4 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5190535i32;
                    } else {
                        _gotoNext = 5190675i32;
                    };
                } else if (__value__ == (5190675i32)) {
                    if (((@:checkr _f_4 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5?.__copy__()) : Bool)) {
                        _gotoNext = 5190710i32;
                    } else {
                        _gotoNext = 5190730i32;
                    };
                } else if (__value__ == (5190710i32)) {
                    _i_3++;
                    _gotoNext = 5190913i32;
                } else if (__value__ == (5190730i32)) {
                    @:check2r _e.writeByte(_next_2);
                    _next_2 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5190782i32;
                    } else {
                        _gotoNext = 5190825i32;
                    };
                } else if (__value__ == (5190782i32)) {
                    @:check2r _e.writeString((@:checkr _f_4 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5190864i32;
                } else if (__value__ == (5190825i32)) {
                    _gotoNext = 5190825i32;
                    @:check2r _e.writeString((@:checkr _f_4 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5190864i32;
                } else if (__value__ == (5190864i32)) {
                    _opts._quoted = (@:checkr _f_4 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_4 ?? throw "null pointer dereference")._encoder(_e, _fv_5?.__copy__(), _opts?.__copy__());
                    _i_3++;
                    _gotoNext = 5190913i32;
                } else if (__value__ == (5190912i32)) {
                    _i_3 = 0i32;
                    _gotoNext = 5190913i32;
                } else if (__value__ == (5190913i32)) {
                    if (_i_3 < (_se._fields._list.length)) {
                        _gotoNext = 5190412i32;
                    } else {
                        _gotoNext = 5190916i32;
                    };
                } else if (__value__ == (5190916i32)) {
                    if (_next_2 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5190931i32;
                    } else {
                        _gotoNext = 5190963i32;
                    };
                } else if (__value__ == (5190931i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5190987i32;
                } else if (__value__ == (5190963i32)) {
                    _gotoNext = 5190963i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5190987i32;
                } else if (__value__ == (5190987i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
