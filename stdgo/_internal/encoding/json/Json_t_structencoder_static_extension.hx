package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _f_5199072:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_5199042:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5199008:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5199172:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5199177_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5199155:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5199008 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5199026i32;
                } else if (__value__ == (5199026i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5199568i32;
                    } else {
                        _gotoNext = 5199572i32;
                    };
                } else if (__value__ == (5199068i32)) {
                    _f_5199072 = (stdgo.Go.setRef(_se._fields._list[(_i_5199042 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5199155 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5199072 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5199325i32;
                    } else {
                        _gotoNext = 5199331i32;
                    };
                } else if (__value__ == (5199191i32)) {
                    _i_5199172 = (@:checkr _f_5199072 ?? throw "null pointer dereference")._index[(_i_5199177_0 : stdgo.GoInt)];
                    if (_fv_5199155.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5199228i32;
                    } else {
                        _gotoNext = 5199307i32;
                    };
                } else if (__value__ == (5199228i32)) {
                    if (_fv_5199155.isNil()) {
                        _gotoNext = 5199248i32;
                    } else {
                        _gotoNext = 5199284i32;
                    };
                } else if (__value__ == (5199248i32)) {
                    _i_5199042++;
                    _gotoNext = 5199569i32;
                } else if (__value__ == (5199284i32)) {
                    _fv_5199155 = _fv_5199155.elem()?.__copy__();
                    _gotoNext = 5199307i32;
                } else if (__value__ == (5199307i32)) {
                    _fv_5199155 = _fv_5199155.field(_i_5199172)?.__copy__();
                    _i_5199177_0++;
                    _gotoNext = 5199326i32;
                } else if (__value__ == (5199325i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5199072 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5199177_0 = __tmp__0;
                        _i_5199172 = __tmp__1;
                    };
                    _gotoNext = 5199326i32;
                } else if (__value__ == (5199326i32)) {
                    if (_i_5199177_0 < ((@:checkr _f_5199072 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5199191i32;
                    } else {
                        _gotoNext = 5199331i32;
                    };
                } else if (__value__ == (5199331i32)) {
                    if (((@:checkr _f_5199072 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5199155?.__copy__()) : Bool)) {
                        _gotoNext = 5199366i32;
                    } else {
                        _gotoNext = 5199386i32;
                    };
                } else if (__value__ == (5199366i32)) {
                    _i_5199042++;
                    _gotoNext = 5199569i32;
                } else if (__value__ == (5199386i32)) {
                    @:check2r _e.writeByte(_next_5199008);
                    _next_5199008 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5199438i32;
                    } else {
                        _gotoNext = 5199481i32;
                    };
                } else if (__value__ == (5199438i32)) {
                    @:check2r _e.writeString((@:checkr _f_5199072 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5199520i32;
                } else if (__value__ == (5199481i32)) {
                    _gotoNext = 5199481i32;
                    @:check2r _e.writeString((@:checkr _f_5199072 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5199520i32;
                } else if (__value__ == (5199520i32)) {
                    _opts._quoted = (@:checkr _f_5199072 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5199072 ?? throw "null pointer dereference")._encoder(_e, _fv_5199155?.__copy__(), _opts?.__copy__());
                    _i_5199042++;
                    _gotoNext = 5199569i32;
                } else if (__value__ == (5199568i32)) {
                    _i_5199042 = 0i32;
                    _gotoNext = 5199569i32;
                } else if (__value__ == (5199569i32)) {
                    if (_i_5199042 < (_se._fields._list.length)) {
                        _gotoNext = 5199068i32;
                    } else {
                        _gotoNext = 5199572i32;
                    };
                } else if (__value__ == (5199572i32)) {
                    if (_next_5199008 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5199587i32;
                    } else {
                        _gotoNext = 5199619i32;
                    };
                } else if (__value__ == (5199587i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5199643i32;
                } else if (__value__ == (5199619i32)) {
                    _gotoNext = 5199619i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5199643i32;
                } else if (__value__ == (5199643i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
