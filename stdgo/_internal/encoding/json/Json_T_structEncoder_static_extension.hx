package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5428254:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5428259_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5428237:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5428154:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5428124:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5428090:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5428090 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5428108i32;
                } else if (__value__ == (5428108i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5428650i32;
                    } else {
                        _gotoNext = 5428654i32;
                    };
                } else if (__value__ == (5428150i32)) {
                    _f_5428154 = (stdgo.Go.setRef(_se._fields._list[(_i_5428124 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5428237 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5428154._index.length)) {
                        _gotoNext = 5428407i32;
                    } else {
                        _gotoNext = 5428413i32;
                    };
                } else if (__value__ == (5428273i32)) {
                    _i_5428254 = _f_5428154._index[(_i_5428259_0 : stdgo.GoInt)];
                    if (_fv_5428237.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5428310i32;
                    } else {
                        _gotoNext = 5428389i32;
                    };
                } else if (__value__ == (5428310i32)) {
                    if (_fv_5428237.isNil()) {
                        _gotoNext = 5428330i32;
                    } else {
                        _gotoNext = 5428366i32;
                    };
                } else if (__value__ == (5428330i32)) {
                    _i_5428124++;
                    _gotoNext = 5428651i32;
                } else if (__value__ == (5428366i32)) {
                    _fv_5428237 = _fv_5428237.elem()?.__copy__();
                    _gotoNext = 5428389i32;
                } else if (__value__ == (5428389i32)) {
                    _fv_5428237 = _fv_5428237.field(_i_5428254)?.__copy__();
                    _i_5428259_0++;
                    _gotoNext = 5428408i32;
                } else if (__value__ == (5428407i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5428154._index[(0i32 : stdgo.GoInt)];
                        _i_5428259_0 = __tmp__0;
                        _i_5428254 = __tmp__1;
                    };
                    _gotoNext = 5428408i32;
                } else if (__value__ == (5428408i32)) {
                    if (_i_5428259_0 < (_f_5428154._index.length)) {
                        _gotoNext = 5428273i32;
                    } else {
                        _gotoNext = 5428413i32;
                    };
                } else if (__value__ == (5428413i32)) {
                    if ((_f_5428154._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5428237?.__copy__()) : Bool)) {
                        _gotoNext = 5428448i32;
                    } else {
                        _gotoNext = 5428468i32;
                    };
                } else if (__value__ == (5428448i32)) {
                    _i_5428124++;
                    _gotoNext = 5428651i32;
                } else if (__value__ == (5428468i32)) {
                    _e.writeByte(_next_5428090);
                    _next_5428090 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5428520i32;
                    } else {
                        _gotoNext = 5428563i32;
                    };
                } else if (__value__ == (5428520i32)) {
                    _e.writeString(_f_5428154._nameEscHTML?.__copy__());
                    _gotoNext = 5428602i32;
                } else if (__value__ == (5428563i32)) {
                    _e.writeString(_f_5428154._nameNonEsc?.__copy__());
                    _gotoNext = 5428602i32;
                } else if (__value__ == (5428602i32)) {
                    _opts._quoted = _f_5428154._quoted;
                    _f_5428154._encoder(_e, _fv_5428237?.__copy__(), _opts?.__copy__());
                    _i_5428124++;
                    _gotoNext = 5428651i32;
                } else if (__value__ == (5428650i32)) {
                    _i_5428124 = 0i32;
                    _gotoNext = 5428651i32;
                } else if (__value__ == (5428651i32)) {
                    if (_i_5428124 < (_se._fields._list.length)) {
                        _gotoNext = 5428150i32;
                    } else {
                        _gotoNext = 5428654i32;
                    };
                } else if (__value__ == (5428654i32)) {
                    if (_next_5428090 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5428669i32;
                    } else {
                        _gotoNext = 5428701i32;
                    };
                } else if (__value__ == (5428669i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5428725i32;
                } else if (__value__ == (5428701i32)) {
                    _e.writeByte((125 : stdgo.GoUInt8));
                    _gotoNext = 5428725i32;
                } else if (__value__ == (5428725i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
