package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _i_5146228_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5146206:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_5146123:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_5146093:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5146059:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5146223:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5146059 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5146077i32;
                } else if (__value__ == (5146077i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5146619i32;
                    } else {
                        _gotoNext = 5146623i32;
                    };
                } else if (__value__ == (5146119i32)) {
                    _f_5146123 = (stdgo.Go.setRef(_se._fields._list[(_i_5146093 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5146206 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5146123 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5146376i32;
                    } else {
                        _gotoNext = 5146382i32;
                    };
                } else if (__value__ == (5146242i32)) {
                    _i_5146223 = (@:checkr _f_5146123 ?? throw "null pointer dereference")._index[(_i_5146228_0 : stdgo.GoInt)];
                    if (_fv_5146206.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5146279i32;
                    } else {
                        _gotoNext = 5146358i32;
                    };
                } else if (__value__ == (5146279i32)) {
                    if (_fv_5146206.isNil()) {
                        _gotoNext = 5146299i32;
                    } else {
                        _gotoNext = 5146335i32;
                    };
                } else if (__value__ == (5146299i32)) {
                    _i_5146093++;
                    _gotoNext = 5146620i32;
                } else if (__value__ == (5146335i32)) {
                    _fv_5146206 = _fv_5146206.elem()?.__copy__();
                    _gotoNext = 5146358i32;
                } else if (__value__ == (5146358i32)) {
                    _fv_5146206 = _fv_5146206.field(_i_5146223)?.__copy__();
                    _i_5146228_0++;
                    _gotoNext = 5146377i32;
                } else if (__value__ == (5146376i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5146123 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5146228_0 = __tmp__0;
                        _i_5146223 = __tmp__1;
                    };
                    _gotoNext = 5146377i32;
                } else if (__value__ == (5146377i32)) {
                    if (_i_5146228_0 < ((@:checkr _f_5146123 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5146242i32;
                    } else {
                        _gotoNext = 5146382i32;
                    };
                } else if (__value__ == (5146382i32)) {
                    if (((@:checkr _f_5146123 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5146206?.__copy__()) : Bool)) {
                        _gotoNext = 5146417i32;
                    } else {
                        _gotoNext = 5146437i32;
                    };
                } else if (__value__ == (5146417i32)) {
                    _i_5146093++;
                    _gotoNext = 5146620i32;
                } else if (__value__ == (5146437i32)) {
                    @:check2r _e.writeByte(_next_5146059);
                    _next_5146059 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5146489i32;
                    } else {
                        _gotoNext = 5146532i32;
                    };
                } else if (__value__ == (5146489i32)) {
                    @:check2r _e.writeString((@:checkr _f_5146123 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5146571i32;
                } else if (__value__ == (5146532i32)) {
                    _gotoNext = 5146532i32;
                    @:check2r _e.writeString((@:checkr _f_5146123 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5146571i32;
                } else if (__value__ == (5146571i32)) {
                    _opts._quoted = (@:checkr _f_5146123 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5146123 ?? throw "null pointer dereference")._encoder(_e, _fv_5146206?.__copy__(), _opts?.__copy__());
                    _i_5146093++;
                    _gotoNext = 5146620i32;
                } else if (__value__ == (5146619i32)) {
                    _i_5146093 = 0i32;
                    _gotoNext = 5146620i32;
                } else if (__value__ == (5146620i32)) {
                    if (_i_5146093 < (_se._fields._list.length)) {
                        _gotoNext = 5146119i32;
                    } else {
                        _gotoNext = 5146623i32;
                    };
                } else if (__value__ == (5146623i32)) {
                    if (_next_5146059 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5146638i32;
                    } else {
                        _gotoNext = 5146670i32;
                    };
                } else if (__value__ == (5146638i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5146694i32;
                } else if (__value__ == (5146670i32)) {
                    _gotoNext = 5146670i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5146694i32;
                } else if (__value__ == (5146694i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
