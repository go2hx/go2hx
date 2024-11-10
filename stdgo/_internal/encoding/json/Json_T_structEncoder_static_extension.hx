package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5410321_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5410299:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5410216:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5410186:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5410152:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5410316:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5410152 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5410170i32;
                } else if (__value__ == (5410170i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5410712i32;
                    } else {
                        _gotoNext = 5410716i32;
                    };
                } else if (__value__ == (5410212i32)) {
                    _f_5410216 = (stdgo.Go.setRef(_se._fields._list[(_i_5410186 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5410299 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5410216._index.length)) {
                        _gotoNext = 5410469i32;
                    } else {
                        _gotoNext = 5410475i32;
                    };
                } else if (__value__ == (5410335i32)) {
                    _i_5410316 = _f_5410216._index[(_i_5410321_0 : stdgo.GoInt)];
                    if (_fv_5410299.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5410372i32;
                    } else {
                        _gotoNext = 5410451i32;
                    };
                } else if (__value__ == (5410372i32)) {
                    if (_fv_5410299.isNil()) {
                        _gotoNext = 5410392i32;
                    } else {
                        _gotoNext = 5410428i32;
                    };
                } else if (__value__ == (5410392i32)) {
                    _i_5410186++;
                    _gotoNext = 5410713i32;
                } else if (__value__ == (5410428i32)) {
                    _fv_5410299 = _fv_5410299.elem()?.__copy__();
                    _gotoNext = 5410451i32;
                } else if (__value__ == (5410451i32)) {
                    _fv_5410299 = _fv_5410299.field(_i_5410316)?.__copy__();
                    _i_5410321_0++;
                    _gotoNext = 5410470i32;
                } else if (__value__ == (5410469i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5410216._index[(0i32 : stdgo.GoInt)];
                        _i_5410321_0 = __tmp__0;
                        _i_5410316 = __tmp__1;
                    };
                    _gotoNext = 5410470i32;
                } else if (__value__ == (5410470i32)) {
                    if (_i_5410321_0 < (_f_5410216._index.length)) {
                        _gotoNext = 5410335i32;
                    } else {
                        _gotoNext = 5410475i32;
                    };
                } else if (__value__ == (5410475i32)) {
                    if ((_f_5410216._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5410299?.__copy__()) : Bool)) {
                        _gotoNext = 5410510i32;
                    } else {
                        _gotoNext = 5410530i32;
                    };
                } else if (__value__ == (5410510i32)) {
                    _i_5410186++;
                    _gotoNext = 5410713i32;
                } else if (__value__ == (5410530i32)) {
                    _e.writeByte(_next_5410152);
                    _next_5410152 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5410582i32;
                    } else {
                        _gotoNext = 5410625i32;
                    };
                } else if (__value__ == (5410582i32)) {
                    _e.writeString(_f_5410216._nameEscHTML?.__copy__());
                    _gotoNext = 5410664i32;
                } else if (__value__ == (5410625i32)) {
                    _gotoNext = 5410625i32;
                    _e.writeString(_f_5410216._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5410664i32;
                } else if (__value__ == (5410664i32)) {
                    _opts._quoted = _f_5410216._quoted;
                    _f_5410216._encoder(_e, _fv_5410299?.__copy__(), _opts?.__copy__());
                    _i_5410186++;
                    _gotoNext = 5410713i32;
                } else if (__value__ == (5410712i32)) {
                    _i_5410186 = 0i32;
                    _gotoNext = 5410713i32;
                } else if (__value__ == (5410713i32)) {
                    if (_i_5410186 < (_se._fields._list.length)) {
                        _gotoNext = 5410212i32;
                    } else {
                        _gotoNext = 5410716i32;
                    };
                } else if (__value__ == (5410716i32)) {
                    if (_next_5410152 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5410731i32;
                    } else {
                        _gotoNext = 5410763i32;
                    };
                } else if (__value__ == (5410731i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5410787i32;
                } else if (__value__ == (5410763i32)) {
                    _gotoNext = 5410763i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5410787i32;
                } else if (__value__ == (5410787i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
