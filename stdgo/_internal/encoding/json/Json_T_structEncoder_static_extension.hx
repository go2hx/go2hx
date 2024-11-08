package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_6720403:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_6720369:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_6720533:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6720538_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_6720516:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_6720433:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_6720369 = (123 : stdgo.GoUInt8);
                    _gotoNext = 6720387i32;
                } else if (__value__ == (6720387i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 6720929i32;
                    } else {
                        _gotoNext = 6720933i32;
                    };
                } else if (__value__ == (6720429i32)) {
                    _f_6720433 = (stdgo.Go.setRef(_se._fields._list[(_i_6720403 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_6720516 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_6720433._index.length)) {
                        _gotoNext = 6720686i32;
                    } else {
                        _gotoNext = 6720692i32;
                    };
                } else if (__value__ == (6720552i32)) {
                    _i_6720533 = _f_6720433._index[(_i_6720538_0 : stdgo.GoInt)];
                    if (_fv_6720516.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 6720589i32;
                    } else {
                        _gotoNext = 6720668i32;
                    };
                } else if (__value__ == (6720589i32)) {
                    if (_fv_6720516.isNil()) {
                        _gotoNext = 6720609i32;
                    } else {
                        _gotoNext = 6720645i32;
                    };
                } else if (__value__ == (6720609i32)) {
                    _i_6720403++;
                    _gotoNext = 6720930i32;
                } else if (__value__ == (6720645i32)) {
                    _fv_6720516 = _fv_6720516.elem()?.__copy__();
                    _gotoNext = 6720668i32;
                } else if (__value__ == (6720668i32)) {
                    _fv_6720516 = _fv_6720516.field(_i_6720533)?.__copy__();
                    _i_6720538_0++;
                    _gotoNext = 6720687i32;
                } else if (__value__ == (6720686i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_6720433._index[(0i32 : stdgo.GoInt)];
                        _i_6720538_0 = __tmp__0;
                        _i_6720533 = __tmp__1;
                    };
                    _gotoNext = 6720687i32;
                } else if (__value__ == (6720687i32)) {
                    if (_i_6720538_0 < (_f_6720433._index.length)) {
                        _gotoNext = 6720552i32;
                    } else {
                        _gotoNext = 6720692i32;
                    };
                } else if (__value__ == (6720692i32)) {
                    if ((_f_6720433._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_6720516?.__copy__()) : Bool)) {
                        _gotoNext = 6720727i32;
                    } else {
                        _gotoNext = 6720747i32;
                    };
                } else if (__value__ == (6720727i32)) {
                    _i_6720403++;
                    _gotoNext = 6720930i32;
                } else if (__value__ == (6720747i32)) {
                    _e.writeByte(_next_6720369);
                    _next_6720369 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 6720799i32;
                    } else {
                        _gotoNext = 6720842i32;
                    };
                } else if (__value__ == (6720799i32)) {
                    _e.writeString(_f_6720433._nameEscHTML?.__copy__());
                    _gotoNext = 6720881i32;
                } else if (__value__ == (6720842i32)) {
                    _e.writeString(_f_6720433._nameNonEsc?.__copy__());
                    _gotoNext = 6720881i32;
                } else if (__value__ == (6720881i32)) {
                    _opts._quoted = _f_6720433._quoted;
                    _f_6720433._encoder(_e, _fv_6720516?.__copy__(), _opts?.__copy__());
                    _i_6720403++;
                    _gotoNext = 6720930i32;
                } else if (__value__ == (6720929i32)) {
                    _i_6720403 = 0i32;
                    _gotoNext = 6720930i32;
                } else if (__value__ == (6720930i32)) {
                    if (_i_6720403 < (_se._fields._list.length)) {
                        _gotoNext = 6720429i32;
                    } else {
                        _gotoNext = 6720933i32;
                    };
                } else if (__value__ == (6720933i32)) {
                    if (_next_6720369 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 6720948i32;
                    } else {
                        _gotoNext = 6720980i32;
                    };
                } else if (__value__ == (6720948i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 6721004i32;
                } else if (__value__ == (6720980i32)) {
                    _e.writeByte((125 : stdgo.GoUInt8));
                    _gotoNext = 6721004i32;
                } else if (__value__ == (6721004i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
