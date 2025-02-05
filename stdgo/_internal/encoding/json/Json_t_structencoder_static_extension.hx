package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _i_5590334:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5590300:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5590464:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5590469_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5590447:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_5590364:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5590300 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5590318i32;
                } else if (__value__ == (5590318i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5590860i32;
                    } else {
                        _gotoNext = 5590864i32;
                    };
                } else if (__value__ == (5590360i32)) {
                    _f_5590364 = (stdgo.Go.setRef(_se._fields._list[(_i_5590334 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5590447 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5590364 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5590617i32;
                    } else {
                        _gotoNext = 5590623i32;
                    };
                } else if (__value__ == (5590483i32)) {
                    _i_5590464 = (@:checkr _f_5590364 ?? throw "null pointer dereference")._index[(_i_5590469_0 : stdgo.GoInt)];
                    if (_fv_5590447.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5590520i32;
                    } else {
                        _gotoNext = 5590599i32;
                    };
                } else if (__value__ == (5590520i32)) {
                    if (_fv_5590447.isNil()) {
                        _gotoNext = 5590540i32;
                    } else {
                        _gotoNext = 5590576i32;
                    };
                } else if (__value__ == (5590540i32)) {
                    _i_5590334++;
                    _gotoNext = 5590861i32;
                } else if (__value__ == (5590576i32)) {
                    _fv_5590447 = _fv_5590447.elem()?.__copy__();
                    _gotoNext = 5590599i32;
                } else if (__value__ == (5590599i32)) {
                    _fv_5590447 = _fv_5590447.field(_i_5590464)?.__copy__();
                    _i_5590469_0++;
                    _gotoNext = 5590618i32;
                } else if (__value__ == (5590617i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5590364 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5590469_0 = __tmp__0;
                        _i_5590464 = __tmp__1;
                    };
                    _gotoNext = 5590618i32;
                } else if (__value__ == (5590618i32)) {
                    if (_i_5590469_0 < ((@:checkr _f_5590364 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5590483i32;
                    } else {
                        _gotoNext = 5590623i32;
                    };
                } else if (__value__ == (5590623i32)) {
                    if (((@:checkr _f_5590364 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5590447?.__copy__()) : Bool)) {
                        _gotoNext = 5590658i32;
                    } else {
                        _gotoNext = 5590678i32;
                    };
                } else if (__value__ == (5590658i32)) {
                    _i_5590334++;
                    _gotoNext = 5590861i32;
                } else if (__value__ == (5590678i32)) {
                    @:check2r _e.writeByte(_next_5590300);
                    _next_5590300 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5590730i32;
                    } else {
                        _gotoNext = 5590773i32;
                    };
                } else if (__value__ == (5590730i32)) {
                    @:check2r _e.writeString((@:checkr _f_5590364 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5590812i32;
                } else if (__value__ == (5590773i32)) {
                    _gotoNext = 5590773i32;
                    @:check2r _e.writeString((@:checkr _f_5590364 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5590812i32;
                } else if (__value__ == (5590812i32)) {
                    _opts._quoted = (@:checkr _f_5590364 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5590364 ?? throw "null pointer dereference")._encoder(_e, _fv_5590447?.__copy__(), _opts?.__copy__());
                    _i_5590334++;
                    _gotoNext = 5590861i32;
                } else if (__value__ == (5590860i32)) {
                    _i_5590334 = 0i32;
                    _gotoNext = 5590861i32;
                } else if (__value__ == (5590861i32)) {
                    if (_i_5590334 < (_se._fields._list.length)) {
                        _gotoNext = 5590360i32;
                    } else {
                        _gotoNext = 5590864i32;
                    };
                } else if (__value__ == (5590864i32)) {
                    if (_next_5590300 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5590879i32;
                    } else {
                        _gotoNext = 5590911i32;
                    };
                } else if (__value__ == (5590879i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5590935i32;
                } else if (__value__ == (5590911i32)) {
                    _gotoNext = 5590911i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5590935i32;
                } else if (__value__ == (5590935i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
