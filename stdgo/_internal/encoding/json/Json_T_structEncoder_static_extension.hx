package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5502667:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5502672_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5502650:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5502567:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5502537:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5502503:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5502503 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5502521i32;
                } else if (__value__ == (5502521i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5503063i32;
                    } else {
                        _gotoNext = 5503067i32;
                    };
                } else if (__value__ == (5502563i32)) {
                    _f_5502567 = (stdgo.Go.setRef(_se._fields._list[(_i_5502537 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5502650 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5502567._index.length)) {
                        _gotoNext = 5502820i32;
                    } else {
                        _gotoNext = 5502826i32;
                    };
                } else if (__value__ == (5502686i32)) {
                    _i_5502667 = _f_5502567._index[(_i_5502672_0 : stdgo.GoInt)];
                    if (_fv_5502650.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5502723i32;
                    } else {
                        _gotoNext = 5502802i32;
                    };
                } else if (__value__ == (5502723i32)) {
                    if (_fv_5502650.isNil()) {
                        _gotoNext = 5502743i32;
                    } else {
                        _gotoNext = 5502779i32;
                    };
                } else if (__value__ == (5502743i32)) {
                    _i_5502537++;
                    _gotoNext = 5503064i32;
                } else if (__value__ == (5502779i32)) {
                    _fv_5502650 = _fv_5502650.elem()?.__copy__();
                    _gotoNext = 5502802i32;
                } else if (__value__ == (5502802i32)) {
                    _fv_5502650 = _fv_5502650.field(_i_5502667)?.__copy__();
                    _i_5502672_0++;
                    _gotoNext = 5502821i32;
                } else if (__value__ == (5502820i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5502567._index[(0i32 : stdgo.GoInt)];
                        _i_5502672_0 = __tmp__0;
                        _i_5502667 = __tmp__1;
                    };
                    _gotoNext = 5502821i32;
                } else if (__value__ == (5502821i32)) {
                    if (_i_5502672_0 < (_f_5502567._index.length)) {
                        _gotoNext = 5502686i32;
                    } else {
                        _gotoNext = 5502826i32;
                    };
                } else if (__value__ == (5502826i32)) {
                    if ((_f_5502567._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5502650?.__copy__()) : Bool)) {
                        _gotoNext = 5502861i32;
                    } else {
                        _gotoNext = 5502881i32;
                    };
                } else if (__value__ == (5502861i32)) {
                    _i_5502537++;
                    _gotoNext = 5503064i32;
                } else if (__value__ == (5502881i32)) {
                    _e.writeByte(_next_5502503);
                    _next_5502503 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5502933i32;
                    } else {
                        _gotoNext = 5502976i32;
                    };
                } else if (__value__ == (5502933i32)) {
                    _e.writeString(_f_5502567._nameEscHTML?.__copy__());
                    _gotoNext = 5503015i32;
                } else if (__value__ == (5502976i32)) {
                    _e.writeString(_f_5502567._nameNonEsc?.__copy__());
                    _gotoNext = 5503015i32;
                } else if (__value__ == (5503015i32)) {
                    _opts._quoted = _f_5502567._quoted;
                    _f_5502567._encoder(_e, _fv_5502650?.__copy__(), _opts?.__copy__());
                    _i_5502537++;
                    _gotoNext = 5503064i32;
                } else if (__value__ == (5503063i32)) {
                    _i_5502537 = 0i32;
                    _gotoNext = 5503064i32;
                } else if (__value__ == (5503064i32)) {
                    if (_i_5502537 < (_se._fields._list.length)) {
                        _gotoNext = 5502563i32;
                    } else {
                        _gotoNext = 5503067i32;
                    };
                } else if (__value__ == (5503067i32)) {
                    if (_next_5502503 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5503082i32;
                    } else {
                        _gotoNext = 5503114i32;
                    };
                } else if (__value__ == (5503082i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5503138i32;
                } else if (__value__ == (5503114i32)) {
                    _e.writeByte((125 : stdgo.GoUInt8));
                    _gotoNext = 5503138i32;
                } else if (__value__ == (5503138i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
