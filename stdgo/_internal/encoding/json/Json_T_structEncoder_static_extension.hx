package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _f_5809573:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5809543:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5809509:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5809673:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5809678_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5809656:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5809509 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5809527i32;
                } else if (__value__ == (5809527i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5810069i32;
                    } else {
                        _gotoNext = 5810073i32;
                    };
                } else if (__value__ == (5809569i32)) {
                    _f_5809573 = (stdgo.Go.setRef(_se._fields._list[(_i_5809543 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5809656 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5809573._index.length)) {
                        _gotoNext = 5809826i32;
                    } else {
                        _gotoNext = 5809832i32;
                    };
                } else if (__value__ == (5809692i32)) {
                    _i_5809673 = _f_5809573._index[(_i_5809678_0 : stdgo.GoInt)];
                    if (_fv_5809656.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5809729i32;
                    } else {
                        _gotoNext = 5809808i32;
                    };
                } else if (__value__ == (5809729i32)) {
                    if (_fv_5809656.isNil()) {
                        _gotoNext = 5809749i32;
                    } else {
                        _gotoNext = 5809785i32;
                    };
                } else if (__value__ == (5809749i32)) {
                    _i_5809543++;
                    _gotoNext = 5810070i32;
                } else if (__value__ == (5809785i32)) {
                    _fv_5809656 = _fv_5809656.elem()?.__copy__();
                    _gotoNext = 5809808i32;
                } else if (__value__ == (5809808i32)) {
                    _fv_5809656 = _fv_5809656.field(_i_5809673)?.__copy__();
                    _i_5809678_0++;
                    _gotoNext = 5809827i32;
                } else if (__value__ == (5809826i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5809573._index[(0i32 : stdgo.GoInt)];
                        _i_5809678_0 = __tmp__0;
                        _i_5809673 = __tmp__1;
                    };
                    _gotoNext = 5809827i32;
                } else if (__value__ == (5809827i32)) {
                    if (_i_5809678_0 < (_f_5809573._index.length)) {
                        _gotoNext = 5809692i32;
                    } else {
                        _gotoNext = 5809832i32;
                    };
                } else if (__value__ == (5809832i32)) {
                    if ((_f_5809573._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5809656?.__copy__()) : Bool)) {
                        _gotoNext = 5809867i32;
                    } else {
                        _gotoNext = 5809887i32;
                    };
                } else if (__value__ == (5809867i32)) {
                    _i_5809543++;
                    _gotoNext = 5810070i32;
                } else if (__value__ == (5809887i32)) {
                    _e.writeByte(_next_5809509);
                    _next_5809509 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5809939i32;
                    } else {
                        _gotoNext = 5809982i32;
                    };
                } else if (__value__ == (5809939i32)) {
                    _e.writeString(_f_5809573._nameEscHTML?.__copy__());
                    _gotoNext = 5810021i32;
                } else if (__value__ == (5809982i32)) {
                    _gotoNext = 5809982i32;
                    _e.writeString(_f_5809573._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5810021i32;
                } else if (__value__ == (5810021i32)) {
                    _opts._quoted = _f_5809573._quoted;
                    _f_5809573._encoder(_e, _fv_5809656?.__copy__(), _opts?.__copy__());
                    _i_5809543++;
                    _gotoNext = 5810070i32;
                } else if (__value__ == (5810069i32)) {
                    _i_5809543 = 0i32;
                    _gotoNext = 5810070i32;
                } else if (__value__ == (5810070i32)) {
                    if (_i_5809543 < (_se._fields._list.length)) {
                        _gotoNext = 5809569i32;
                    } else {
                        _gotoNext = 5810073i32;
                    };
                } else if (__value__ == (5810073i32)) {
                    if (_next_5809509 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5810088i32;
                    } else {
                        _gotoNext = 5810120i32;
                    };
                } else if (__value__ == (5810088i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5810144i32;
                } else if (__value__ == (5810120i32)) {
                    _gotoNext = 5810120i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5810144i32;
                } else if (__value__ == (5810144i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
