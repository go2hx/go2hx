package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5194798_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5194776:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5194693:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5194663:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5194629:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5194793:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5194629 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5194647i32;
                } else if (__value__ == (5194647i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5195189i32;
                    } else {
                        _gotoNext = 5195193i32;
                    };
                } else if (__value__ == (5194689i32)) {
                    _f_5194693 = (stdgo.Go.setRef(_se._fields._list[(_i_5194663 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5194776 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5194693._index.length)) {
                        _gotoNext = 5194946i32;
                    } else {
                        _gotoNext = 5194952i32;
                    };
                } else if (__value__ == (5194812i32)) {
                    _i_5194793 = _f_5194693._index[(_i_5194798_0 : stdgo.GoInt)];
                    if (_fv_5194776.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5194849i32;
                    } else {
                        _gotoNext = 5194928i32;
                    };
                } else if (__value__ == (5194849i32)) {
                    if (_fv_5194776.isNil()) {
                        _gotoNext = 5194869i32;
                    } else {
                        _gotoNext = 5194905i32;
                    };
                } else if (__value__ == (5194869i32)) {
                    _i_5194663++;
                    _gotoNext = 5195190i32;
                } else if (__value__ == (5194905i32)) {
                    _fv_5194776 = _fv_5194776.elem()?.__copy__();
                    _gotoNext = 5194928i32;
                } else if (__value__ == (5194928i32)) {
                    _fv_5194776 = _fv_5194776.field(_i_5194793)?.__copy__();
                    _i_5194798_0++;
                    _gotoNext = 5194947i32;
                } else if (__value__ == (5194946i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5194693._index[(0i32 : stdgo.GoInt)];
                        _i_5194798_0 = __tmp__0;
                        _i_5194793 = __tmp__1;
                    };
                    _gotoNext = 5194947i32;
                } else if (__value__ == (5194947i32)) {
                    if (_i_5194798_0 < (_f_5194693._index.length)) {
                        _gotoNext = 5194812i32;
                    } else {
                        _gotoNext = 5194952i32;
                    };
                } else if (__value__ == (5194952i32)) {
                    if ((_f_5194693._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5194776?.__copy__()) : Bool)) {
                        _gotoNext = 5194987i32;
                    } else {
                        _gotoNext = 5195007i32;
                    };
                } else if (__value__ == (5194987i32)) {
                    _i_5194663++;
                    _gotoNext = 5195190i32;
                } else if (__value__ == (5195007i32)) {
                    _e.writeByte(_next_5194629);
                    _next_5194629 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5195059i32;
                    } else {
                        _gotoNext = 5195102i32;
                    };
                } else if (__value__ == (5195059i32)) {
                    _e.writeString(_f_5194693._nameEscHTML?.__copy__());
                    _gotoNext = 5195141i32;
                } else if (__value__ == (5195102i32)) {
                    _gotoNext = 5195102i32;
                    _e.writeString(_f_5194693._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5195141i32;
                } else if (__value__ == (5195141i32)) {
                    _opts._quoted = _f_5194693._quoted;
                    _f_5194693._encoder(_e, _fv_5194776?.__copy__(), _opts?.__copy__());
                    _i_5194663++;
                    _gotoNext = 5195190i32;
                } else if (__value__ == (5195189i32)) {
                    _i_5194663 = 0i32;
                    _gotoNext = 5195190i32;
                } else if (__value__ == (5195190i32)) {
                    if (_i_5194663 < (_se._fields._list.length)) {
                        _gotoNext = 5194689i32;
                    } else {
                        _gotoNext = 5195193i32;
                    };
                } else if (__value__ == (5195193i32)) {
                    if (_next_5194629 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5195208i32;
                    } else {
                        _gotoNext = 5195240i32;
                    };
                } else if (__value__ == (5195208i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5195264i32;
                } else if (__value__ == (5195240i32)) {
                    _gotoNext = 5195240i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5195264i32;
                } else if (__value__ == (5195264i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
