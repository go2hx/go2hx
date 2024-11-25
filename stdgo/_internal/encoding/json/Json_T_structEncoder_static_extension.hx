package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5383475:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5383480_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5383458:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5383375:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5383345:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5383311:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5383311 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5383329i32;
                } else if (__value__ == (5383329i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5383871i32;
                    } else {
                        _gotoNext = 5383875i32;
                    };
                } else if (__value__ == (5383371i32)) {
                    _f_5383375 = (stdgo.Go.setRef(_se._fields._list[(_i_5383345 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5383458 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5383375._index.length)) {
                        _gotoNext = 5383628i32;
                    } else {
                        _gotoNext = 5383634i32;
                    };
                } else if (__value__ == (5383494i32)) {
                    _i_5383475 = _f_5383375._index[(_i_5383480_0 : stdgo.GoInt)];
                    if (_fv_5383458.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5383531i32;
                    } else {
                        _gotoNext = 5383610i32;
                    };
                } else if (__value__ == (5383531i32)) {
                    if (_fv_5383458.isNil()) {
                        _gotoNext = 5383551i32;
                    } else {
                        _gotoNext = 5383587i32;
                    };
                } else if (__value__ == (5383551i32)) {
                    _i_5383345++;
                    _gotoNext = 5383872i32;
                } else if (__value__ == (5383587i32)) {
                    _fv_5383458 = _fv_5383458.elem()?.__copy__();
                    _gotoNext = 5383610i32;
                } else if (__value__ == (5383610i32)) {
                    _fv_5383458 = _fv_5383458.field(_i_5383475)?.__copy__();
                    _i_5383480_0++;
                    _gotoNext = 5383629i32;
                } else if (__value__ == (5383628i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5383375._index[(0i32 : stdgo.GoInt)];
                        _i_5383480_0 = __tmp__0;
                        _i_5383475 = __tmp__1;
                    };
                    _gotoNext = 5383629i32;
                } else if (__value__ == (5383629i32)) {
                    if (_i_5383480_0 < (_f_5383375._index.length)) {
                        _gotoNext = 5383494i32;
                    } else {
                        _gotoNext = 5383634i32;
                    };
                } else if (__value__ == (5383634i32)) {
                    if ((_f_5383375._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5383458?.__copy__()) : Bool)) {
                        _gotoNext = 5383669i32;
                    } else {
                        _gotoNext = 5383689i32;
                    };
                } else if (__value__ == (5383669i32)) {
                    _i_5383345++;
                    _gotoNext = 5383872i32;
                } else if (__value__ == (5383689i32)) {
                    _e.writeByte(_next_5383311);
                    _next_5383311 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5383741i32;
                    } else {
                        _gotoNext = 5383784i32;
                    };
                } else if (__value__ == (5383741i32)) {
                    _e.writeString(_f_5383375._nameEscHTML?.__copy__());
                    _gotoNext = 5383823i32;
                } else if (__value__ == (5383784i32)) {
                    _gotoNext = 5383784i32;
                    _e.writeString(_f_5383375._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5383823i32;
                } else if (__value__ == (5383823i32)) {
                    _opts._quoted = _f_5383375._quoted;
                    _f_5383375._encoder(_e, _fv_5383458?.__copy__(), _opts?.__copy__());
                    _i_5383345++;
                    _gotoNext = 5383872i32;
                } else if (__value__ == (5383871i32)) {
                    _i_5383345 = 0i32;
                    _gotoNext = 5383872i32;
                } else if (__value__ == (5383872i32)) {
                    if (_i_5383345 < (_se._fields._list.length)) {
                        _gotoNext = 5383371i32;
                    } else {
                        _gotoNext = 5383875i32;
                    };
                } else if (__value__ == (5383875i32)) {
                    if (_next_5383311 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5383890i32;
                    } else {
                        _gotoNext = 5383922i32;
                    };
                } else if (__value__ == (5383890i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5383946i32;
                } else if (__value__ == (5383922i32)) {
                    _gotoNext = 5383922i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5383946i32;
                } else if (__value__ == (5383946i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
