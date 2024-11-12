package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _f_5293533:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5293503:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5293469:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5293633:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5293638_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5293616:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5293469 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5293487i32;
                } else if (__value__ == (5293487i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5294029i32;
                    } else {
                        _gotoNext = 5294033i32;
                    };
                } else if (__value__ == (5293529i32)) {
                    _f_5293533 = (stdgo.Go.setRef(_se._fields._list[(_i_5293503 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5293616 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5293533._index.length)) {
                        _gotoNext = 5293786i32;
                    } else {
                        _gotoNext = 5293792i32;
                    };
                } else if (__value__ == (5293652i32)) {
                    _i_5293633 = _f_5293533._index[(_i_5293638_0 : stdgo.GoInt)];
                    if (_fv_5293616.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5293689i32;
                    } else {
                        _gotoNext = 5293768i32;
                    };
                } else if (__value__ == (5293689i32)) {
                    if (_fv_5293616.isNil()) {
                        _gotoNext = 5293709i32;
                    } else {
                        _gotoNext = 5293745i32;
                    };
                } else if (__value__ == (5293709i32)) {
                    _i_5293503++;
                    _gotoNext = 5294030i32;
                } else if (__value__ == (5293745i32)) {
                    _fv_5293616 = _fv_5293616.elem()?.__copy__();
                    _gotoNext = 5293768i32;
                } else if (__value__ == (5293768i32)) {
                    _fv_5293616 = _fv_5293616.field(_i_5293633)?.__copy__();
                    _i_5293638_0++;
                    _gotoNext = 5293787i32;
                } else if (__value__ == (5293786i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5293533._index[(0i32 : stdgo.GoInt)];
                        _i_5293638_0 = __tmp__0;
                        _i_5293633 = __tmp__1;
                    };
                    _gotoNext = 5293787i32;
                } else if (__value__ == (5293787i32)) {
                    if (_i_5293638_0 < (_f_5293533._index.length)) {
                        _gotoNext = 5293652i32;
                    } else {
                        _gotoNext = 5293792i32;
                    };
                } else if (__value__ == (5293792i32)) {
                    if ((_f_5293533._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5293616?.__copy__()) : Bool)) {
                        _gotoNext = 5293827i32;
                    } else {
                        _gotoNext = 5293847i32;
                    };
                } else if (__value__ == (5293827i32)) {
                    _i_5293503++;
                    _gotoNext = 5294030i32;
                } else if (__value__ == (5293847i32)) {
                    _e.writeByte(_next_5293469);
                    _next_5293469 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5293899i32;
                    } else {
                        _gotoNext = 5293942i32;
                    };
                } else if (__value__ == (5293899i32)) {
                    _e.writeString(_f_5293533._nameEscHTML?.__copy__());
                    _gotoNext = 5293981i32;
                } else if (__value__ == (5293942i32)) {
                    _gotoNext = 5293942i32;
                    _e.writeString(_f_5293533._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5293981i32;
                } else if (__value__ == (5293981i32)) {
                    _opts._quoted = _f_5293533._quoted;
                    _f_5293533._encoder(_e, _fv_5293616?.__copy__(), _opts?.__copy__());
                    _i_5293503++;
                    _gotoNext = 5294030i32;
                } else if (__value__ == (5294029i32)) {
                    _i_5293503 = 0i32;
                    _gotoNext = 5294030i32;
                } else if (__value__ == (5294030i32)) {
                    if (_i_5293503 < (_se._fields._list.length)) {
                        _gotoNext = 5293529i32;
                    } else {
                        _gotoNext = 5294033i32;
                    };
                } else if (__value__ == (5294033i32)) {
                    if (_next_5293469 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5294048i32;
                    } else {
                        _gotoNext = 5294080i32;
                    };
                } else if (__value__ == (5294048i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5294104i32;
                } else if (__value__ == (5294080i32)) {
                    _gotoNext = 5294080i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5294104i32;
                } else if (__value__ == (5294104i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
