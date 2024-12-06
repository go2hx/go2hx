package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _f_7160995:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_7160965:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_7160931:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7161095:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_7161100_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_7161078:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_7160931 = (123 : stdgo.GoUInt8);
                    _gotoNext = 7160949i32;
                } else if (__value__ == (7160949i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 7161491i32;
                    } else {
                        _gotoNext = 7161495i32;
                    };
                } else if (__value__ == (7160991i32)) {
                    _f_7160995 = (stdgo.Go.setRef(_se._fields._list[(_i_7160965 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_7161078 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_7160995._index.length)) {
                        _gotoNext = 7161248i32;
                    } else {
                        _gotoNext = 7161254i32;
                    };
                } else if (__value__ == (7161114i32)) {
                    _i_7161095 = _f_7160995._index[(_i_7161100_0 : stdgo.GoInt)];
                    if (_fv_7161078.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 7161151i32;
                    } else {
                        _gotoNext = 7161230i32;
                    };
                } else if (__value__ == (7161151i32)) {
                    if (_fv_7161078.isNil()) {
                        _gotoNext = 7161171i32;
                    } else {
                        _gotoNext = 7161207i32;
                    };
                } else if (__value__ == (7161171i32)) {
                    _i_7160965++;
                    _gotoNext = 7161492i32;
                } else if (__value__ == (7161207i32)) {
                    _fv_7161078 = _fv_7161078.elem()?.__copy__();
                    _gotoNext = 7161230i32;
                } else if (__value__ == (7161230i32)) {
                    _fv_7161078 = _fv_7161078.field(_i_7161095)?.__copy__();
                    _i_7161100_0++;
                    _gotoNext = 7161249i32;
                } else if (__value__ == (7161248i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_7160995._index[(0i32 : stdgo.GoInt)];
                        _i_7161100_0 = __tmp__0;
                        _i_7161095 = __tmp__1;
                    };
                    _gotoNext = 7161249i32;
                } else if (__value__ == (7161249i32)) {
                    if (_i_7161100_0 < (_f_7160995._index.length)) {
                        _gotoNext = 7161114i32;
                    } else {
                        _gotoNext = 7161254i32;
                    };
                } else if (__value__ == (7161254i32)) {
                    if ((_f_7160995._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_7161078?.__copy__()) : Bool)) {
                        _gotoNext = 7161289i32;
                    } else {
                        _gotoNext = 7161309i32;
                    };
                } else if (__value__ == (7161289i32)) {
                    _i_7160965++;
                    _gotoNext = 7161492i32;
                } else if (__value__ == (7161309i32)) {
                    _e.writeByte(_next_7160931);
                    _next_7160931 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 7161361i32;
                    } else {
                        _gotoNext = 7161404i32;
                    };
                } else if (__value__ == (7161361i32)) {
                    _e.writeString(_f_7160995._nameEscHTML?.__copy__());
                    _gotoNext = 7161443i32;
                } else if (__value__ == (7161404i32)) {
                    _gotoNext = 7161404i32;
                    _e.writeString(_f_7160995._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 7161443i32;
                } else if (__value__ == (7161443i32)) {
                    _opts._quoted = _f_7160995._quoted;
                    _f_7160995._encoder(_e, _fv_7161078?.__copy__(), _opts?.__copy__());
                    _i_7160965++;
                    _gotoNext = 7161492i32;
                } else if (__value__ == (7161491i32)) {
                    _i_7160965 = 0i32;
                    _gotoNext = 7161492i32;
                } else if (__value__ == (7161492i32)) {
                    if (_i_7160965 < (_se._fields._list.length)) {
                        _gotoNext = 7160991i32;
                    } else {
                        _gotoNext = 7161495i32;
                    };
                } else if (__value__ == (7161495i32)) {
                    if (_next_7160931 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 7161510i32;
                    } else {
                        _gotoNext = 7161542i32;
                    };
                } else if (__value__ == (7161510i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 7161566i32;
                } else if (__value__ == (7161542i32)) {
                    _gotoNext = 7161542i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 7161566i32;
                } else if (__value__ == (7161566i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
