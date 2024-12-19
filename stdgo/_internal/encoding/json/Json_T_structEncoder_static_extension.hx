package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _f_5565717:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5565687:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5565653:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5565817:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5565822_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5565800:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5565653 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5565671i32;
                } else if (__value__ == (5565671i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5566213i32;
                    } else {
                        _gotoNext = 5566217i32;
                    };
                } else if (__value__ == (5565713i32)) {
                    _f_5565717 = (stdgo.Go.setRef(_se._fields._list[(_i_5565687 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5565800 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5565717._index.length)) {
                        _gotoNext = 5565970i32;
                    } else {
                        _gotoNext = 5565976i32;
                    };
                } else if (__value__ == (5565836i32)) {
                    _i_5565817 = _f_5565717._index[(_i_5565822_0 : stdgo.GoInt)];
                    if (_fv_5565800.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5565873i32;
                    } else {
                        _gotoNext = 5565952i32;
                    };
                } else if (__value__ == (5565873i32)) {
                    if (_fv_5565800.isNil()) {
                        _gotoNext = 5565893i32;
                    } else {
                        _gotoNext = 5565929i32;
                    };
                } else if (__value__ == (5565893i32)) {
                    _i_5565687++;
                    _gotoNext = 5566214i32;
                } else if (__value__ == (5565929i32)) {
                    _fv_5565800 = _fv_5565800.elem()?.__copy__();
                    _gotoNext = 5565952i32;
                } else if (__value__ == (5565952i32)) {
                    _fv_5565800 = _fv_5565800.field(_i_5565817)?.__copy__();
                    _i_5565822_0++;
                    _gotoNext = 5565971i32;
                } else if (__value__ == (5565970i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5565717._index[(0i32 : stdgo.GoInt)];
                        _i_5565822_0 = __tmp__0;
                        _i_5565817 = __tmp__1;
                    };
                    _gotoNext = 5565971i32;
                } else if (__value__ == (5565971i32)) {
                    if (_i_5565822_0 < (_f_5565717._index.length)) {
                        _gotoNext = 5565836i32;
                    } else {
                        _gotoNext = 5565976i32;
                    };
                } else if (__value__ == (5565976i32)) {
                    if ((_f_5565717._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5565800?.__copy__()) : Bool)) {
                        _gotoNext = 5566011i32;
                    } else {
                        _gotoNext = 5566031i32;
                    };
                } else if (__value__ == (5566011i32)) {
                    _i_5565687++;
                    _gotoNext = 5566214i32;
                } else if (__value__ == (5566031i32)) {
                    _e.writeByte(_next_5565653);
                    _next_5565653 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5566083i32;
                    } else {
                        _gotoNext = 5566126i32;
                    };
                } else if (__value__ == (5566083i32)) {
                    _e.writeString(_f_5565717._nameEscHTML?.__copy__());
                    _gotoNext = 5566165i32;
                } else if (__value__ == (5566126i32)) {
                    _gotoNext = 5566126i32;
                    _e.writeString(_f_5565717._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5566165i32;
                } else if (__value__ == (5566165i32)) {
                    _opts._quoted = _f_5565717._quoted;
                    _f_5565717._encoder(_e, _fv_5565800?.__copy__(), _opts?.__copy__());
                    _i_5565687++;
                    _gotoNext = 5566214i32;
                } else if (__value__ == (5566213i32)) {
                    _i_5565687 = 0i32;
                    _gotoNext = 5566214i32;
                } else if (__value__ == (5566214i32)) {
                    if (_i_5565687 < (_se._fields._list.length)) {
                        _gotoNext = 5565713i32;
                    } else {
                        _gotoNext = 5566217i32;
                    };
                } else if (__value__ == (5566217i32)) {
                    if (_next_5565653 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5566232i32;
                    } else {
                        _gotoNext = 5566264i32;
                    };
                } else if (__value__ == (5566232i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5566288i32;
                } else if (__value__ == (5566264i32)) {
                    _gotoNext = 5566264i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5566288i32;
                } else if (__value__ == (5566288i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
