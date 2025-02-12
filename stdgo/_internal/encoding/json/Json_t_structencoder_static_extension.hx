package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _i_5563811:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5563816_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5563794:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_5563711:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_5563681:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5563647:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5563647 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5563665i32;
                } else if (__value__ == (5563665i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5564207i32;
                    } else {
                        _gotoNext = 5564211i32;
                    };
                } else if (__value__ == (5563707i32)) {
                    _f_5563711 = (stdgo.Go.setRef(_se._fields._list[(_i_5563681 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5563794 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5563711 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5563964i32;
                    } else {
                        _gotoNext = 5563970i32;
                    };
                } else if (__value__ == (5563830i32)) {
                    _i_5563811 = (@:checkr _f_5563711 ?? throw "null pointer dereference")._index[(_i_5563816_0 : stdgo.GoInt)];
                    if (_fv_5563794.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5563867i32;
                    } else {
                        _gotoNext = 5563946i32;
                    };
                } else if (__value__ == (5563867i32)) {
                    if (_fv_5563794.isNil()) {
                        _gotoNext = 5563887i32;
                    } else {
                        _gotoNext = 5563923i32;
                    };
                } else if (__value__ == (5563887i32)) {
                    _i_5563681++;
                    _gotoNext = 5564208i32;
                } else if (__value__ == (5563923i32)) {
                    _fv_5563794 = _fv_5563794.elem()?.__copy__();
                    _gotoNext = 5563946i32;
                } else if (__value__ == (5563946i32)) {
                    _fv_5563794 = _fv_5563794.field(_i_5563811)?.__copy__();
                    _i_5563816_0++;
                    _gotoNext = 5563965i32;
                } else if (__value__ == (5563964i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5563711 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5563816_0 = __tmp__0;
                        _i_5563811 = __tmp__1;
                    };
                    _gotoNext = 5563965i32;
                } else if (__value__ == (5563965i32)) {
                    if (_i_5563816_0 < ((@:checkr _f_5563711 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5563830i32;
                    } else {
                        _gotoNext = 5563970i32;
                    };
                } else if (__value__ == (5563970i32)) {
                    if (((@:checkr _f_5563711 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5563794?.__copy__()) : Bool)) {
                        _gotoNext = 5564005i32;
                    } else {
                        _gotoNext = 5564025i32;
                    };
                } else if (__value__ == (5564005i32)) {
                    _i_5563681++;
                    _gotoNext = 5564208i32;
                } else if (__value__ == (5564025i32)) {
                    @:check2r _e.writeByte(_next_5563647);
                    _next_5563647 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5564077i32;
                    } else {
                        _gotoNext = 5564120i32;
                    };
                } else if (__value__ == (5564077i32)) {
                    @:check2r _e.writeString((@:checkr _f_5563711 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5564159i32;
                } else if (__value__ == (5564120i32)) {
                    _gotoNext = 5564120i32;
                    @:check2r _e.writeString((@:checkr _f_5563711 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5564159i32;
                } else if (__value__ == (5564159i32)) {
                    _opts._quoted = (@:checkr _f_5563711 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5563711 ?? throw "null pointer dereference")._encoder(_e, _fv_5563794?.__copy__(), _opts?.__copy__());
                    _i_5563681++;
                    _gotoNext = 5564208i32;
                } else if (__value__ == (5564207i32)) {
                    _i_5563681 = 0i32;
                    _gotoNext = 5564208i32;
                } else if (__value__ == (5564208i32)) {
                    if (_i_5563681 < (_se._fields._list.length)) {
                        _gotoNext = 5563707i32;
                    } else {
                        _gotoNext = 5564211i32;
                    };
                } else if (__value__ == (5564211i32)) {
                    if (_next_5563647 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5564226i32;
                    } else {
                        _gotoNext = 5564258i32;
                    };
                } else if (__value__ == (5564226i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5564282i32;
                } else if (__value__ == (5564258i32)) {
                    _gotoNext = 5564258i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5564282i32;
                } else if (__value__ == (5564282i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
