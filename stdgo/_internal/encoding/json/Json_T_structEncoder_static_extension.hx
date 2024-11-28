package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5361494_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5361472:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5361389:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5361359:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5361325:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5361489:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5361325 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5361343i32;
                } else if (__value__ == (5361343i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5361885i32;
                    } else {
                        _gotoNext = 5361889i32;
                    };
                } else if (__value__ == (5361385i32)) {
                    _f_5361389 = (stdgo.Go.setRef(_se._fields._list[(_i_5361359 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5361472 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5361389._index.length)) {
                        _gotoNext = 5361642i32;
                    } else {
                        _gotoNext = 5361648i32;
                    };
                } else if (__value__ == (5361508i32)) {
                    _i_5361489 = _f_5361389._index[(_i_5361494_0 : stdgo.GoInt)];
                    if (_fv_5361472.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5361545i32;
                    } else {
                        _gotoNext = 5361624i32;
                    };
                } else if (__value__ == (5361545i32)) {
                    if (_fv_5361472.isNil()) {
                        _gotoNext = 5361565i32;
                    } else {
                        _gotoNext = 5361601i32;
                    };
                } else if (__value__ == (5361565i32)) {
                    _i_5361359++;
                    _gotoNext = 5361886i32;
                } else if (__value__ == (5361601i32)) {
                    _fv_5361472 = _fv_5361472.elem()?.__copy__();
                    _gotoNext = 5361624i32;
                } else if (__value__ == (5361624i32)) {
                    _fv_5361472 = _fv_5361472.field(_i_5361489)?.__copy__();
                    _i_5361494_0++;
                    _gotoNext = 5361643i32;
                } else if (__value__ == (5361642i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5361389._index[(0i32 : stdgo.GoInt)];
                        _i_5361494_0 = __tmp__0;
                        _i_5361489 = __tmp__1;
                    };
                    _gotoNext = 5361643i32;
                } else if (__value__ == (5361643i32)) {
                    if (_i_5361494_0 < (_f_5361389._index.length)) {
                        _gotoNext = 5361508i32;
                    } else {
                        _gotoNext = 5361648i32;
                    };
                } else if (__value__ == (5361648i32)) {
                    if ((_f_5361389._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5361472?.__copy__()) : Bool)) {
                        _gotoNext = 5361683i32;
                    } else {
                        _gotoNext = 5361703i32;
                    };
                } else if (__value__ == (5361683i32)) {
                    _i_5361359++;
                    _gotoNext = 5361886i32;
                } else if (__value__ == (5361703i32)) {
                    _e.writeByte(_next_5361325);
                    _next_5361325 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5361755i32;
                    } else {
                        _gotoNext = 5361798i32;
                    };
                } else if (__value__ == (5361755i32)) {
                    _e.writeString(_f_5361389._nameEscHTML?.__copy__());
                    _gotoNext = 5361837i32;
                } else if (__value__ == (5361798i32)) {
                    _gotoNext = 5361798i32;
                    _e.writeString(_f_5361389._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5361837i32;
                } else if (__value__ == (5361837i32)) {
                    _opts._quoted = _f_5361389._quoted;
                    _f_5361389._encoder(_e, _fv_5361472?.__copy__(), _opts?.__copy__());
                    _i_5361359++;
                    _gotoNext = 5361886i32;
                } else if (__value__ == (5361885i32)) {
                    _i_5361359 = 0i32;
                    _gotoNext = 5361886i32;
                } else if (__value__ == (5361886i32)) {
                    if (_i_5361359 < (_se._fields._list.length)) {
                        _gotoNext = 5361385i32;
                    } else {
                        _gotoNext = 5361889i32;
                    };
                } else if (__value__ == (5361889i32)) {
                    if (_next_5361325 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5361904i32;
                    } else {
                        _gotoNext = 5361936i32;
                    };
                } else if (__value__ == (5361904i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5361960i32;
                } else if (__value__ == (5361936i32)) {
                    _gotoNext = 5361936i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5361960i32;
                } else if (__value__ == (5361960i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
