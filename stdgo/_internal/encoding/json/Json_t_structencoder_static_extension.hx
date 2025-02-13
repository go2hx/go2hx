package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _i_5210247:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5210252_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5210230:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_5210147:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_5210117:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5210083:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5210083 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5210101i32;
                } else if (__value__ == (5210101i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5210643i32;
                    } else {
                        _gotoNext = 5210647i32;
                    };
                } else if (__value__ == (5210143i32)) {
                    _f_5210147 = (stdgo.Go.setRef(_se._fields._list[(_i_5210117 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5210230 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5210147 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5210400i32;
                    } else {
                        _gotoNext = 5210406i32;
                    };
                } else if (__value__ == (5210266i32)) {
                    _i_5210247 = (@:checkr _f_5210147 ?? throw "null pointer dereference")._index[(_i_5210252_0 : stdgo.GoInt)];
                    if (_fv_5210230.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5210303i32;
                    } else {
                        _gotoNext = 5210382i32;
                    };
                } else if (__value__ == (5210303i32)) {
                    if (_fv_5210230.isNil()) {
                        _gotoNext = 5210323i32;
                    } else {
                        _gotoNext = 5210359i32;
                    };
                } else if (__value__ == (5210323i32)) {
                    _i_5210117++;
                    _gotoNext = 5210644i32;
                } else if (__value__ == (5210359i32)) {
                    _fv_5210230 = _fv_5210230.elem()?.__copy__();
                    _gotoNext = 5210382i32;
                } else if (__value__ == (5210382i32)) {
                    _fv_5210230 = _fv_5210230.field(_i_5210247)?.__copy__();
                    _i_5210252_0++;
                    _gotoNext = 5210401i32;
                } else if (__value__ == (5210400i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5210147 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5210252_0 = __tmp__0;
                        _i_5210247 = __tmp__1;
                    };
                    _gotoNext = 5210401i32;
                } else if (__value__ == (5210401i32)) {
                    if (_i_5210252_0 < ((@:checkr _f_5210147 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5210266i32;
                    } else {
                        _gotoNext = 5210406i32;
                    };
                } else if (__value__ == (5210406i32)) {
                    if (((@:checkr _f_5210147 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5210230?.__copy__()) : Bool)) {
                        _gotoNext = 5210441i32;
                    } else {
                        _gotoNext = 5210461i32;
                    };
                } else if (__value__ == (5210441i32)) {
                    _i_5210117++;
                    _gotoNext = 5210644i32;
                } else if (__value__ == (5210461i32)) {
                    @:check2r _e.writeByte(_next_5210083);
                    _next_5210083 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5210513i32;
                    } else {
                        _gotoNext = 5210556i32;
                    };
                } else if (__value__ == (5210513i32)) {
                    @:check2r _e.writeString((@:checkr _f_5210147 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5210595i32;
                } else if (__value__ == (5210556i32)) {
                    _gotoNext = 5210556i32;
                    @:check2r _e.writeString((@:checkr _f_5210147 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5210595i32;
                } else if (__value__ == (5210595i32)) {
                    _opts._quoted = (@:checkr _f_5210147 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5210147 ?? throw "null pointer dereference")._encoder(_e, _fv_5210230?.__copy__(), _opts?.__copy__());
                    _i_5210117++;
                    _gotoNext = 5210644i32;
                } else if (__value__ == (5210643i32)) {
                    _i_5210117 = 0i32;
                    _gotoNext = 5210644i32;
                } else if (__value__ == (5210644i32)) {
                    if (_i_5210117 < (_se._fields._list.length)) {
                        _gotoNext = 5210143i32;
                    } else {
                        _gotoNext = 5210647i32;
                    };
                } else if (__value__ == (5210647i32)) {
                    if (_next_5210083 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5210662i32;
                    } else {
                        _gotoNext = 5210694i32;
                    };
                } else if (__value__ == (5210662i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5210718i32;
                } else if (__value__ == (5210694i32)) {
                    _gotoNext = 5210694i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5210718i32;
                } else if (__value__ == (5210718i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
