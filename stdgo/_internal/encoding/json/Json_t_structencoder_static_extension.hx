package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _i_5403900:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5403905_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5403883:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_5403800:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_5403770:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5403736:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5403736 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5403754i32;
                } else if (__value__ == (5403754i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5404296i32;
                    } else {
                        _gotoNext = 5404300i32;
                    };
                } else if (__value__ == (5403796i32)) {
                    _f_5403800 = (stdgo.Go.setRef(_se._fields._list[(_i_5403770 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5403883 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5403800 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5404053i32;
                    } else {
                        _gotoNext = 5404059i32;
                    };
                } else if (__value__ == (5403919i32)) {
                    _i_5403900 = (@:checkr _f_5403800 ?? throw "null pointer dereference")._index[(_i_5403905_0 : stdgo.GoInt)];
                    if (_fv_5403883.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5403956i32;
                    } else {
                        _gotoNext = 5404035i32;
                    };
                } else if (__value__ == (5403956i32)) {
                    if (_fv_5403883.isNil()) {
                        _gotoNext = 5403976i32;
                    } else {
                        _gotoNext = 5404012i32;
                    };
                } else if (__value__ == (5403976i32)) {
                    _i_5403770++;
                    _gotoNext = 5404297i32;
                } else if (__value__ == (5404012i32)) {
                    _fv_5403883 = _fv_5403883.elem()?.__copy__();
                    _gotoNext = 5404035i32;
                } else if (__value__ == (5404035i32)) {
                    _fv_5403883 = _fv_5403883.field(_i_5403900)?.__copy__();
                    _i_5403905_0++;
                    _gotoNext = 5404054i32;
                } else if (__value__ == (5404053i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5403800 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5403905_0 = __tmp__0;
                        _i_5403900 = __tmp__1;
                    };
                    _gotoNext = 5404054i32;
                } else if (__value__ == (5404054i32)) {
                    if (_i_5403905_0 < ((@:checkr _f_5403800 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5403919i32;
                    } else {
                        _gotoNext = 5404059i32;
                    };
                } else if (__value__ == (5404059i32)) {
                    if (((@:checkr _f_5403800 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5403883?.__copy__()) : Bool)) {
                        _gotoNext = 5404094i32;
                    } else {
                        _gotoNext = 5404114i32;
                    };
                } else if (__value__ == (5404094i32)) {
                    _i_5403770++;
                    _gotoNext = 5404297i32;
                } else if (__value__ == (5404114i32)) {
                    @:check2r _e.writeByte(_next_5403736);
                    _next_5403736 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5404166i32;
                    } else {
                        _gotoNext = 5404209i32;
                    };
                } else if (__value__ == (5404166i32)) {
                    @:check2r _e.writeString((@:checkr _f_5403800 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5404248i32;
                } else if (__value__ == (5404209i32)) {
                    _gotoNext = 5404209i32;
                    @:check2r _e.writeString((@:checkr _f_5403800 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5404248i32;
                } else if (__value__ == (5404248i32)) {
                    _opts._quoted = (@:checkr _f_5403800 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5403800 ?? throw "null pointer dereference")._encoder(_e, _fv_5403883?.__copy__(), _opts?.__copy__());
                    _i_5403770++;
                    _gotoNext = 5404297i32;
                } else if (__value__ == (5404296i32)) {
                    _i_5403770 = 0i32;
                    _gotoNext = 5404297i32;
                } else if (__value__ == (5404297i32)) {
                    if (_i_5403770 < (_se._fields._list.length)) {
                        _gotoNext = 5403796i32;
                    } else {
                        _gotoNext = 5404300i32;
                    };
                } else if (__value__ == (5404300i32)) {
                    if (_next_5403736 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5404315i32;
                    } else {
                        _gotoNext = 5404347i32;
                    };
                } else if (__value__ == (5404315i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5404371i32;
                } else if (__value__ == (5404347i32)) {
                    _gotoNext = 5404347i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5404371i32;
                } else if (__value__ == (5404371i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
