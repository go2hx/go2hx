package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _i_5337111:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5337116_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5337094:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_5337011:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_5336981:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5336947:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5336947 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5336965i32;
                } else if (__value__ == (5336965i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5337507i32;
                    } else {
                        _gotoNext = 5337511i32;
                    };
                } else if (__value__ == (5337007i32)) {
                    _f_5337011 = (stdgo.Go.setRef(_se._fields._list[(_i_5336981 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5337094 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5337011 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5337264i32;
                    } else {
                        _gotoNext = 5337270i32;
                    };
                } else if (__value__ == (5337130i32)) {
                    _i_5337111 = (@:checkr _f_5337011 ?? throw "null pointer dereference")._index[(_i_5337116_0 : stdgo.GoInt)];
                    if (_fv_5337094.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5337167i32;
                    } else {
                        _gotoNext = 5337246i32;
                    };
                } else if (__value__ == (5337167i32)) {
                    if (_fv_5337094.isNil()) {
                        _gotoNext = 5337187i32;
                    } else {
                        _gotoNext = 5337223i32;
                    };
                } else if (__value__ == (5337187i32)) {
                    _i_5336981++;
                    _gotoNext = 5337508i32;
                } else if (__value__ == (5337223i32)) {
                    _fv_5337094 = _fv_5337094.elem()?.__copy__();
                    _gotoNext = 5337246i32;
                } else if (__value__ == (5337246i32)) {
                    _fv_5337094 = _fv_5337094.field(_i_5337111)?.__copy__();
                    _i_5337116_0++;
                    _gotoNext = 5337265i32;
                } else if (__value__ == (5337264i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5337011 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5337116_0 = __tmp__0;
                        _i_5337111 = __tmp__1;
                    };
                    _gotoNext = 5337265i32;
                } else if (__value__ == (5337265i32)) {
                    if (_i_5337116_0 < ((@:checkr _f_5337011 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5337130i32;
                    } else {
                        _gotoNext = 5337270i32;
                    };
                } else if (__value__ == (5337270i32)) {
                    if (((@:checkr _f_5337011 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5337094?.__copy__()) : Bool)) {
                        _gotoNext = 5337305i32;
                    } else {
                        _gotoNext = 5337325i32;
                    };
                } else if (__value__ == (5337305i32)) {
                    _i_5336981++;
                    _gotoNext = 5337508i32;
                } else if (__value__ == (5337325i32)) {
                    @:check2r _e.writeByte(_next_5336947);
                    _next_5336947 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5337377i32;
                    } else {
                        _gotoNext = 5337420i32;
                    };
                } else if (__value__ == (5337377i32)) {
                    @:check2r _e.writeString((@:checkr _f_5337011 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5337459i32;
                } else if (__value__ == (5337420i32)) {
                    _gotoNext = 5337420i32;
                    @:check2r _e.writeString((@:checkr _f_5337011 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5337459i32;
                } else if (__value__ == (5337459i32)) {
                    _opts._quoted = (@:checkr _f_5337011 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5337011 ?? throw "null pointer dereference")._encoder(_e, _fv_5337094?.__copy__(), _opts?.__copy__());
                    _i_5336981++;
                    _gotoNext = 5337508i32;
                } else if (__value__ == (5337507i32)) {
                    _i_5336981 = 0i32;
                    _gotoNext = 5337508i32;
                } else if (__value__ == (5337508i32)) {
                    if (_i_5336981 < (_se._fields._list.length)) {
                        _gotoNext = 5337007i32;
                    } else {
                        _gotoNext = 5337511i32;
                    };
                } else if (__value__ == (5337511i32)) {
                    if (_next_5336947 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5337526i32;
                    } else {
                        _gotoNext = 5337558i32;
                    };
                } else if (__value__ == (5337526i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5337582i32;
                } else if (__value__ == (5337558i32)) {
                    _gotoNext = 5337558i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5337582i32;
                } else if (__value__ == (5337582i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
