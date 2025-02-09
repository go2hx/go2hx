package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _f_5383437:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_5383407:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5383373:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5383537:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5383542_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5383520:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5383373 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5383391i32;
                } else if (__value__ == (5383391i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5383933i32;
                    } else {
                        _gotoNext = 5383937i32;
                    };
                } else if (__value__ == (5383433i32)) {
                    _f_5383437 = (stdgo.Go.setRef(_se._fields._list[(_i_5383407 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5383520 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5383437 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5383690i32;
                    } else {
                        _gotoNext = 5383696i32;
                    };
                } else if (__value__ == (5383556i32)) {
                    _i_5383537 = (@:checkr _f_5383437 ?? throw "null pointer dereference")._index[(_i_5383542_0 : stdgo.GoInt)];
                    if (_fv_5383520.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5383593i32;
                    } else {
                        _gotoNext = 5383672i32;
                    };
                } else if (__value__ == (5383593i32)) {
                    if (_fv_5383520.isNil()) {
                        _gotoNext = 5383613i32;
                    } else {
                        _gotoNext = 5383649i32;
                    };
                } else if (__value__ == (5383613i32)) {
                    _i_5383407++;
                    _gotoNext = 5383934i32;
                } else if (__value__ == (5383649i32)) {
                    _fv_5383520 = _fv_5383520.elem()?.__copy__();
                    _gotoNext = 5383672i32;
                } else if (__value__ == (5383672i32)) {
                    _fv_5383520 = _fv_5383520.field(_i_5383537)?.__copy__();
                    _i_5383542_0++;
                    _gotoNext = 5383691i32;
                } else if (__value__ == (5383690i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5383437 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5383542_0 = __tmp__0;
                        _i_5383537 = __tmp__1;
                    };
                    _gotoNext = 5383691i32;
                } else if (__value__ == (5383691i32)) {
                    if (_i_5383542_0 < ((@:checkr _f_5383437 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5383556i32;
                    } else {
                        _gotoNext = 5383696i32;
                    };
                } else if (__value__ == (5383696i32)) {
                    if (((@:checkr _f_5383437 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5383520?.__copy__()) : Bool)) {
                        _gotoNext = 5383731i32;
                    } else {
                        _gotoNext = 5383751i32;
                    };
                } else if (__value__ == (5383731i32)) {
                    _i_5383407++;
                    _gotoNext = 5383934i32;
                } else if (__value__ == (5383751i32)) {
                    @:check2r _e.writeByte(_next_5383373);
                    _next_5383373 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5383803i32;
                    } else {
                        _gotoNext = 5383846i32;
                    };
                } else if (__value__ == (5383803i32)) {
                    @:check2r _e.writeString((@:checkr _f_5383437 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5383885i32;
                } else if (__value__ == (5383846i32)) {
                    _gotoNext = 5383846i32;
                    @:check2r _e.writeString((@:checkr _f_5383437 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5383885i32;
                } else if (__value__ == (5383885i32)) {
                    _opts._quoted = (@:checkr _f_5383437 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5383437 ?? throw "null pointer dereference")._encoder(_e, _fv_5383520?.__copy__(), _opts?.__copy__());
                    _i_5383407++;
                    _gotoNext = 5383934i32;
                } else if (__value__ == (5383933i32)) {
                    _i_5383407 = 0i32;
                    _gotoNext = 5383934i32;
                } else if (__value__ == (5383934i32)) {
                    if (_i_5383407 < (_se._fields._list.length)) {
                        _gotoNext = 5383433i32;
                    } else {
                        _gotoNext = 5383937i32;
                    };
                } else if (__value__ == (5383937i32)) {
                    if (_next_5383373 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5383952i32;
                    } else {
                        _gotoNext = 5383984i32;
                    };
                } else if (__value__ == (5383952i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5384008i32;
                } else if (__value__ == (5383984i32)) {
                    _gotoNext = 5383984i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5384008i32;
                } else if (__value__ == (5384008i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
