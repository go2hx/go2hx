package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _i_5683659:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5683625:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5683789:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5683794_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5683772:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_5683689:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5683625 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5683643i32;
                } else if (__value__ == (5683643i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5684185i32;
                    } else {
                        _gotoNext = 5684189i32;
                    };
                } else if (__value__ == (5683685i32)) {
                    _f_5683689 = (stdgo.Go.setRef(_se._fields._list[(_i_5683659 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5683772 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5683689 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5683942i32;
                    } else {
                        _gotoNext = 5683948i32;
                    };
                } else if (__value__ == (5683808i32)) {
                    _i_5683789 = (@:checkr _f_5683689 ?? throw "null pointer dereference")._index[(_i_5683794_0 : stdgo.GoInt)];
                    if (_fv_5683772.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5683845i32;
                    } else {
                        _gotoNext = 5683924i32;
                    };
                } else if (__value__ == (5683845i32)) {
                    if (_fv_5683772.isNil()) {
                        _gotoNext = 5683865i32;
                    } else {
                        _gotoNext = 5683901i32;
                    };
                } else if (__value__ == (5683865i32)) {
                    _i_5683659++;
                    _gotoNext = 5684186i32;
                } else if (__value__ == (5683901i32)) {
                    _fv_5683772 = _fv_5683772.elem()?.__copy__();
                    _gotoNext = 5683924i32;
                } else if (__value__ == (5683924i32)) {
                    _fv_5683772 = _fv_5683772.field(_i_5683789)?.__copy__();
                    _i_5683794_0++;
                    _gotoNext = 5683943i32;
                } else if (__value__ == (5683942i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5683689 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5683794_0 = __tmp__0;
                        _i_5683789 = __tmp__1;
                    };
                    _gotoNext = 5683943i32;
                } else if (__value__ == (5683943i32)) {
                    if (_i_5683794_0 < ((@:checkr _f_5683689 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5683808i32;
                    } else {
                        _gotoNext = 5683948i32;
                    };
                } else if (__value__ == (5683948i32)) {
                    if (((@:checkr _f_5683689 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5683772?.__copy__()) : Bool)) {
                        _gotoNext = 5683983i32;
                    } else {
                        _gotoNext = 5684003i32;
                    };
                } else if (__value__ == (5683983i32)) {
                    _i_5683659++;
                    _gotoNext = 5684186i32;
                } else if (__value__ == (5684003i32)) {
                    @:check2r _e.writeByte(_next_5683625);
                    _next_5683625 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5684055i32;
                    } else {
                        _gotoNext = 5684098i32;
                    };
                } else if (__value__ == (5684055i32)) {
                    @:check2r _e.writeString((@:checkr _f_5683689 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5684137i32;
                } else if (__value__ == (5684098i32)) {
                    _gotoNext = 5684098i32;
                    @:check2r _e.writeString((@:checkr _f_5683689 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5684137i32;
                } else if (__value__ == (5684137i32)) {
                    _opts._quoted = (@:checkr _f_5683689 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5683689 ?? throw "null pointer dereference")._encoder(_e, _fv_5683772?.__copy__(), _opts?.__copy__());
                    _i_5683659++;
                    _gotoNext = 5684186i32;
                } else if (__value__ == (5684185i32)) {
                    _i_5683659 = 0i32;
                    _gotoNext = 5684186i32;
                } else if (__value__ == (5684186i32)) {
                    if (_i_5683659 < (_se._fields._list.length)) {
                        _gotoNext = 5683685i32;
                    } else {
                        _gotoNext = 5684189i32;
                    };
                } else if (__value__ == (5684189i32)) {
                    if (_next_5683625 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5684204i32;
                    } else {
                        _gotoNext = 5684236i32;
                    };
                } else if (__value__ == (5684204i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5684260i32;
                } else if (__value__ == (5684236i32)) {
                    _gotoNext = 5684236i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5684260i32;
                } else if (__value__ == (5684260i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
