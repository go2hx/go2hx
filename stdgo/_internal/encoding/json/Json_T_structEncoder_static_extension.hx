package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5470610_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5470588:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5470505:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5470475:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5470441:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5470605:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5470441 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5470459i32;
                } else if (__value__ == (5470459i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5471001i32;
                    } else {
                        _gotoNext = 5471005i32;
                    };
                } else if (__value__ == (5470501i32)) {
                    _f_5470505 = (stdgo.Go.setRef(_se._fields._list[(_i_5470475 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5470588 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5470505._index.length)) {
                        _gotoNext = 5470758i32;
                    } else {
                        _gotoNext = 5470764i32;
                    };
                } else if (__value__ == (5470624i32)) {
                    _i_5470605 = _f_5470505._index[(_i_5470610_0 : stdgo.GoInt)];
                    if (_fv_5470588.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5470661i32;
                    } else {
                        _gotoNext = 5470740i32;
                    };
                } else if (__value__ == (5470661i32)) {
                    if (_fv_5470588.isNil()) {
                        _gotoNext = 5470681i32;
                    } else {
                        _gotoNext = 5470717i32;
                    };
                } else if (__value__ == (5470681i32)) {
                    _i_5470475++;
                    _gotoNext = 5471002i32;
                } else if (__value__ == (5470717i32)) {
                    _fv_5470588 = _fv_5470588.elem()?.__copy__();
                    _gotoNext = 5470740i32;
                } else if (__value__ == (5470740i32)) {
                    _fv_5470588 = _fv_5470588.field(_i_5470605)?.__copy__();
                    _i_5470610_0++;
                    _gotoNext = 5470759i32;
                } else if (__value__ == (5470758i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5470505._index[(0i32 : stdgo.GoInt)];
                        _i_5470610_0 = __tmp__0;
                        _i_5470605 = __tmp__1;
                    };
                    _gotoNext = 5470759i32;
                } else if (__value__ == (5470759i32)) {
                    if (_i_5470610_0 < (_f_5470505._index.length)) {
                        _gotoNext = 5470624i32;
                    } else {
                        _gotoNext = 5470764i32;
                    };
                } else if (__value__ == (5470764i32)) {
                    if ((_f_5470505._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5470588?.__copy__()) : Bool)) {
                        _gotoNext = 5470799i32;
                    } else {
                        _gotoNext = 5470819i32;
                    };
                } else if (__value__ == (5470799i32)) {
                    _i_5470475++;
                    _gotoNext = 5471002i32;
                } else if (__value__ == (5470819i32)) {
                    _e.writeByte(_next_5470441);
                    _next_5470441 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5470871i32;
                    } else {
                        _gotoNext = 5470914i32;
                    };
                } else if (__value__ == (5470871i32)) {
                    _e.writeString(_f_5470505._nameEscHTML?.__copy__());
                    _gotoNext = 5470953i32;
                } else if (__value__ == (5470914i32)) {
                    _gotoNext = 5470914i32;
                    _e.writeString(_f_5470505._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5470953i32;
                } else if (__value__ == (5470953i32)) {
                    _opts._quoted = _f_5470505._quoted;
                    _f_5470505._encoder(_e, _fv_5470588?.__copy__(), _opts?.__copy__());
                    _i_5470475++;
                    _gotoNext = 5471002i32;
                } else if (__value__ == (5471001i32)) {
                    _i_5470475 = 0i32;
                    _gotoNext = 5471002i32;
                } else if (__value__ == (5471002i32)) {
                    if (_i_5470475 < (_se._fields._list.length)) {
                        _gotoNext = 5470501i32;
                    } else {
                        _gotoNext = 5471005i32;
                    };
                } else if (__value__ == (5471005i32)) {
                    if (_next_5470441 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5471020i32;
                    } else {
                        _gotoNext = 5471052i32;
                    };
                } else if (__value__ == (5471020i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5471076i32;
                } else if (__value__ == (5471052i32)) {
                    _gotoNext = 5471052i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5471076i32;
                } else if (__value__ == (5471076i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
