package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _iterator_6173939_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_4:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_3:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_2 = (123 : stdgo.GoUInt8);
                    _gotoNext = 6173788i32;
                } else if (__value__ == (6173788i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 6174330i32;
                    } else {
                        _gotoNext = 6174334i32;
                    };
                } else if (__value__ == (6173830i32)) {
                    _f_4 = (stdgo.Go.setRef(_se._fields._list[(_i_3 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_4 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 6174087i32;
                    } else {
                        _gotoNext = 6174093i32;
                    };
                } else if (__value__ == (6173953i32)) {
                    _i_7 = (@:checkr _f_4 ?? throw "null pointer dereference")._index[(_iterator_6173939_6 : stdgo.GoInt)];
                    if (_fv_5.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 6173990i32;
                    } else {
                        _gotoNext = 6174069i32;
                    };
                } else if (__value__ == (6173990i32)) {
                    if (_fv_5.isNil()) {
                        _gotoNext = 6174010i32;
                    } else {
                        _gotoNext = 6174046i32;
                    };
                } else if (__value__ == (6174010i32)) {
                    _i_3++;
                    _gotoNext = 6174331i32;
                } else if (__value__ == (6174046i32)) {
                    _fv_5 = _fv_5.elem()?.__copy__();
                    _gotoNext = 6174069i32;
                } else if (__value__ == (6174069i32)) {
                    _fv_5 = _fv_5.field(_i_7)?.__copy__();
                    _iterator_6173939_6++;
                    _gotoNext = 6174088i32;
                } else if (__value__ == (6174087i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_4 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _iterator_6173939_6 = @:binopAssign __tmp__0;
                        _i_7 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 6174088i32;
                } else if (__value__ == (6174088i32)) {
                    if (_iterator_6173939_6 < ((@:checkr _f_4 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 6173953i32;
                    } else {
                        _gotoNext = 6174093i32;
                    };
                } else if (__value__ == (6174093i32)) {
                    if (((@:checkr _f_4 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5?.__copy__()) : Bool)) {
                        _gotoNext = 6174128i32;
                    } else {
                        _gotoNext = 6174148i32;
                    };
                } else if (__value__ == (6174128i32)) {
                    _i_3++;
                    _gotoNext = 6174331i32;
                } else if (__value__ == (6174148i32)) {
                    @:check2r _e.writeByte(_next_2);
                    _next_2 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 6174200i32;
                    } else {
                        _gotoNext = 6174243i32;
                    };
                } else if (__value__ == (6174200i32)) {
                    @:check2r _e.writeString((@:checkr _f_4 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 6174282i32;
                } else if (__value__ == (6174243i32)) {
                    _gotoNext = 6174243i32;
                    @:check2r _e.writeString((@:checkr _f_4 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    0i32;
                    _gotoNext = 6174282i32;
                } else if (__value__ == (6174282i32)) {
                    _opts._quoted = (@:checkr _f_4 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_4 ?? throw "null pointer dereference")._encoder(_e, _fv_5?.__copy__(), _opts?.__copy__());
                    _i_3++;
                    _gotoNext = 6174331i32;
                } else if (__value__ == (6174330i32)) {
                    _i_3 = 0i32;
                    _gotoNext = 6174331i32;
                } else if (__value__ == (6174331i32)) {
                    if (_i_3 < (_se._fields._list.length)) {
                        _gotoNext = 6173830i32;
                    } else {
                        _gotoNext = 6174334i32;
                    };
                } else if (__value__ == (6174334i32)) {
                    if (_next_2 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 6174349i32;
                    } else {
                        _gotoNext = 6174381i32;
                    };
                } else if (__value__ == (6174349i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 6174405i32;
                } else if (__value__ == (6174381i32)) {
                    _gotoNext = 6174381i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    0i32;
                    _gotoNext = 6174405i32;
                } else if (__value__ == (6174405i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
