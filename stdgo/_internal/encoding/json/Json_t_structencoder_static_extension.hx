package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _i_5352071:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5352076_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5352054:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_5351971:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_5351941:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5351907:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5351907 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5351925i32;
                } else if (__value__ == (5351925i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5352467i32;
                    } else {
                        _gotoNext = 5352471i32;
                    };
                } else if (__value__ == (5351967i32)) {
                    _f_5351971 = (stdgo.Go.setRef(_se._fields._list[(_i_5351941 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5352054 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5351971 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5352224i32;
                    } else {
                        _gotoNext = 5352230i32;
                    };
                } else if (__value__ == (5352090i32)) {
                    _i_5352071 = (@:checkr _f_5351971 ?? throw "null pointer dereference")._index[(_i_5352076_0 : stdgo.GoInt)];
                    if (_fv_5352054.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5352127i32;
                    } else {
                        _gotoNext = 5352206i32;
                    };
                } else if (__value__ == (5352127i32)) {
                    if (_fv_5352054.isNil()) {
                        _gotoNext = 5352147i32;
                    } else {
                        _gotoNext = 5352183i32;
                    };
                } else if (__value__ == (5352147i32)) {
                    _i_5351941++;
                    _gotoNext = 5352468i32;
                } else if (__value__ == (5352183i32)) {
                    _fv_5352054 = _fv_5352054.elem()?.__copy__();
                    _gotoNext = 5352206i32;
                } else if (__value__ == (5352206i32)) {
                    _fv_5352054 = _fv_5352054.field(_i_5352071)?.__copy__();
                    _i_5352076_0++;
                    _gotoNext = 5352225i32;
                } else if (__value__ == (5352224i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5351971 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5352076_0 = __tmp__0;
                        _i_5352071 = __tmp__1;
                    };
                    _gotoNext = 5352225i32;
                } else if (__value__ == (5352225i32)) {
                    if (_i_5352076_0 < ((@:checkr _f_5351971 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5352090i32;
                    } else {
                        _gotoNext = 5352230i32;
                    };
                } else if (__value__ == (5352230i32)) {
                    if (((@:checkr _f_5351971 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5352054?.__copy__()) : Bool)) {
                        _gotoNext = 5352265i32;
                    } else {
                        _gotoNext = 5352285i32;
                    };
                } else if (__value__ == (5352265i32)) {
                    _i_5351941++;
                    _gotoNext = 5352468i32;
                } else if (__value__ == (5352285i32)) {
                    @:check2r _e.writeByte(_next_5351907);
                    _next_5351907 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5352337i32;
                    } else {
                        _gotoNext = 5352380i32;
                    };
                } else if (__value__ == (5352337i32)) {
                    @:check2r _e.writeString((@:checkr _f_5351971 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5352419i32;
                } else if (__value__ == (5352380i32)) {
                    _gotoNext = 5352380i32;
                    @:check2r _e.writeString((@:checkr _f_5351971 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5352419i32;
                } else if (__value__ == (5352419i32)) {
                    _opts._quoted = (@:checkr _f_5351971 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5351971 ?? throw "null pointer dereference")._encoder(_e, _fv_5352054?.__copy__(), _opts?.__copy__());
                    _i_5351941++;
                    _gotoNext = 5352468i32;
                } else if (__value__ == (5352467i32)) {
                    _i_5351941 = 0i32;
                    _gotoNext = 5352468i32;
                } else if (__value__ == (5352468i32)) {
                    if (_i_5351941 < (_se._fields._list.length)) {
                        _gotoNext = 5351967i32;
                    } else {
                        _gotoNext = 5352471i32;
                    };
                } else if (__value__ == (5352471i32)) {
                    if (_next_5351907 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5352486i32;
                    } else {
                        _gotoNext = 5352518i32;
                    };
                } else if (__value__ == (5352486i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5352542i32;
                } else if (__value__ == (5352518i32)) {
                    _gotoNext = 5352518i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5352542i32;
                } else if (__value__ == (5352542i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
