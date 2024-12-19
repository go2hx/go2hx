package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5345764_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5345742:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5345659:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5345629:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5345595:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5345759:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5345595 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5345613i32;
                } else if (__value__ == (5345613i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5346155i32;
                    } else {
                        _gotoNext = 5346159i32;
                    };
                } else if (__value__ == (5345655i32)) {
                    _f_5345659 = (stdgo.Go.setRef(_se._fields._list[(_i_5345629 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5345742 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5345659._index.length)) {
                        _gotoNext = 5345912i32;
                    } else {
                        _gotoNext = 5345918i32;
                    };
                } else if (__value__ == (5345778i32)) {
                    _i_5345759 = _f_5345659._index[(_i_5345764_0 : stdgo.GoInt)];
                    if (_fv_5345742.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5345815i32;
                    } else {
                        _gotoNext = 5345894i32;
                    };
                } else if (__value__ == (5345815i32)) {
                    if (_fv_5345742.isNil()) {
                        _gotoNext = 5345835i32;
                    } else {
                        _gotoNext = 5345871i32;
                    };
                } else if (__value__ == (5345835i32)) {
                    _i_5345629++;
                    _gotoNext = 5346156i32;
                } else if (__value__ == (5345871i32)) {
                    _fv_5345742 = _fv_5345742.elem()?.__copy__();
                    _gotoNext = 5345894i32;
                } else if (__value__ == (5345894i32)) {
                    _fv_5345742 = _fv_5345742.field(_i_5345759)?.__copy__();
                    _i_5345764_0++;
                    _gotoNext = 5345913i32;
                } else if (__value__ == (5345912i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5345659._index[(0i32 : stdgo.GoInt)];
                        _i_5345764_0 = __tmp__0;
                        _i_5345759 = __tmp__1;
                    };
                    _gotoNext = 5345913i32;
                } else if (__value__ == (5345913i32)) {
                    if (_i_5345764_0 < (_f_5345659._index.length)) {
                        _gotoNext = 5345778i32;
                    } else {
                        _gotoNext = 5345918i32;
                    };
                } else if (__value__ == (5345918i32)) {
                    if ((_f_5345659._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5345742?.__copy__()) : Bool)) {
                        _gotoNext = 5345953i32;
                    } else {
                        _gotoNext = 5345973i32;
                    };
                } else if (__value__ == (5345953i32)) {
                    _i_5345629++;
                    _gotoNext = 5346156i32;
                } else if (__value__ == (5345973i32)) {
                    _e.writeByte(_next_5345595);
                    _next_5345595 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5346025i32;
                    } else {
                        _gotoNext = 5346068i32;
                    };
                } else if (__value__ == (5346025i32)) {
                    _e.writeString(_f_5345659._nameEscHTML?.__copy__());
                    _gotoNext = 5346107i32;
                } else if (__value__ == (5346068i32)) {
                    _gotoNext = 5346068i32;
                    _e.writeString(_f_5345659._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5346107i32;
                } else if (__value__ == (5346107i32)) {
                    _opts._quoted = _f_5345659._quoted;
                    _f_5345659._encoder(_e, _fv_5345742?.__copy__(), _opts?.__copy__());
                    _i_5345629++;
                    _gotoNext = 5346156i32;
                } else if (__value__ == (5346155i32)) {
                    _i_5345629 = 0i32;
                    _gotoNext = 5346156i32;
                } else if (__value__ == (5346156i32)) {
                    if (_i_5345629 < (_se._fields._list.length)) {
                        _gotoNext = 5345655i32;
                    } else {
                        _gotoNext = 5346159i32;
                    };
                } else if (__value__ == (5346159i32)) {
                    if (_next_5345595 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5346174i32;
                    } else {
                        _gotoNext = 5346206i32;
                    };
                } else if (__value__ == (5346174i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5346230i32;
                } else if (__value__ == (5346206i32)) {
                    _gotoNext = 5346206i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5346230i32;
                } else if (__value__ == (5346230i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
