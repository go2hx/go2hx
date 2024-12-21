package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _f_5808411:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5808381:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5808347:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5808511:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5808516_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5808494:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5808347 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5808365i32;
                } else if (__value__ == (5808365i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5808907i32;
                    } else {
                        _gotoNext = 5808911i32;
                    };
                } else if (__value__ == (5808407i32)) {
                    _f_5808411 = (stdgo.Go.setRef(_se._fields._list[(_i_5808381 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5808494 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5808411._index.length)) {
                        _gotoNext = 5808664i32;
                    } else {
                        _gotoNext = 5808670i32;
                    };
                } else if (__value__ == (5808530i32)) {
                    _i_5808511 = _f_5808411._index[(_i_5808516_0 : stdgo.GoInt)];
                    if (_fv_5808494.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5808567i32;
                    } else {
                        _gotoNext = 5808646i32;
                    };
                } else if (__value__ == (5808567i32)) {
                    if (_fv_5808494.isNil()) {
                        _gotoNext = 5808587i32;
                    } else {
                        _gotoNext = 5808623i32;
                    };
                } else if (__value__ == (5808587i32)) {
                    _i_5808381++;
                    _gotoNext = 5808908i32;
                } else if (__value__ == (5808623i32)) {
                    _fv_5808494 = _fv_5808494.elem()?.__copy__();
                    _gotoNext = 5808646i32;
                } else if (__value__ == (5808646i32)) {
                    _fv_5808494 = _fv_5808494.field(_i_5808511)?.__copy__();
                    _i_5808516_0++;
                    _gotoNext = 5808665i32;
                } else if (__value__ == (5808664i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5808411._index[(0i32 : stdgo.GoInt)];
                        _i_5808516_0 = __tmp__0;
                        _i_5808511 = __tmp__1;
                    };
                    _gotoNext = 5808665i32;
                } else if (__value__ == (5808665i32)) {
                    if (_i_5808516_0 < (_f_5808411._index.length)) {
                        _gotoNext = 5808530i32;
                    } else {
                        _gotoNext = 5808670i32;
                    };
                } else if (__value__ == (5808670i32)) {
                    if ((_f_5808411._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5808494?.__copy__()) : Bool)) {
                        _gotoNext = 5808705i32;
                    } else {
                        _gotoNext = 5808725i32;
                    };
                } else if (__value__ == (5808705i32)) {
                    _i_5808381++;
                    _gotoNext = 5808908i32;
                } else if (__value__ == (5808725i32)) {
                    _e.writeByte(_next_5808347);
                    _next_5808347 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5808777i32;
                    } else {
                        _gotoNext = 5808820i32;
                    };
                } else if (__value__ == (5808777i32)) {
                    _e.writeString(_f_5808411._nameEscHTML?.__copy__());
                    _gotoNext = 5808859i32;
                } else if (__value__ == (5808820i32)) {
                    _gotoNext = 5808820i32;
                    _e.writeString(_f_5808411._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5808859i32;
                } else if (__value__ == (5808859i32)) {
                    _opts._quoted = _f_5808411._quoted;
                    _f_5808411._encoder(_e, _fv_5808494?.__copy__(), _opts?.__copy__());
                    _i_5808381++;
                    _gotoNext = 5808908i32;
                } else if (__value__ == (5808907i32)) {
                    _i_5808381 = 0i32;
                    _gotoNext = 5808908i32;
                } else if (__value__ == (5808908i32)) {
                    if (_i_5808381 < (_se._fields._list.length)) {
                        _gotoNext = 5808407i32;
                    } else {
                        _gotoNext = 5808911i32;
                    };
                } else if (__value__ == (5808911i32)) {
                    if (_next_5808347 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5808926i32;
                    } else {
                        _gotoNext = 5808958i32;
                    };
                } else if (__value__ == (5808926i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5808982i32;
                } else if (__value__ == (5808958i32)) {
                    _gotoNext = 5808958i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5808982i32;
                } else if (__value__ == (5808982i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
