package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _f_5880381:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5880351:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5880317:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5880481:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5880486_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5880464:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5880317 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5880335i32;
                } else if (__value__ == (5880335i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5880877i32;
                    } else {
                        _gotoNext = 5880881i32;
                    };
                } else if (__value__ == (5880377i32)) {
                    _f_5880381 = (stdgo.Go.setRef(_se._fields._list[(_i_5880351 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5880464 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5880381._index.length)) {
                        _gotoNext = 5880634i32;
                    } else {
                        _gotoNext = 5880640i32;
                    };
                } else if (__value__ == (5880500i32)) {
                    _i_5880481 = _f_5880381._index[(_i_5880486_0 : stdgo.GoInt)];
                    if (_fv_5880464.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5880537i32;
                    } else {
                        _gotoNext = 5880616i32;
                    };
                } else if (__value__ == (5880537i32)) {
                    if (_fv_5880464.isNil()) {
                        _gotoNext = 5880557i32;
                    } else {
                        _gotoNext = 5880593i32;
                    };
                } else if (__value__ == (5880557i32)) {
                    _i_5880351++;
                    _gotoNext = 5880878i32;
                } else if (__value__ == (5880593i32)) {
                    _fv_5880464 = _fv_5880464.elem()?.__copy__();
                    _gotoNext = 5880616i32;
                } else if (__value__ == (5880616i32)) {
                    _fv_5880464 = _fv_5880464.field(_i_5880481)?.__copy__();
                    _i_5880486_0++;
                    _gotoNext = 5880635i32;
                } else if (__value__ == (5880634i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5880381._index[(0i32 : stdgo.GoInt)];
                        _i_5880486_0 = __tmp__0;
                        _i_5880481 = __tmp__1;
                    };
                    _gotoNext = 5880635i32;
                } else if (__value__ == (5880635i32)) {
                    if (_i_5880486_0 < (_f_5880381._index.length)) {
                        _gotoNext = 5880500i32;
                    } else {
                        _gotoNext = 5880640i32;
                    };
                } else if (__value__ == (5880640i32)) {
                    if ((_f_5880381._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5880464?.__copy__()) : Bool)) {
                        _gotoNext = 5880675i32;
                    } else {
                        _gotoNext = 5880695i32;
                    };
                } else if (__value__ == (5880675i32)) {
                    _i_5880351++;
                    _gotoNext = 5880878i32;
                } else if (__value__ == (5880695i32)) {
                    _e.writeByte(_next_5880317);
                    _next_5880317 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5880747i32;
                    } else {
                        _gotoNext = 5880790i32;
                    };
                } else if (__value__ == (5880747i32)) {
                    _e.writeString(_f_5880381._nameEscHTML?.__copy__());
                    _gotoNext = 5880829i32;
                } else if (__value__ == (5880790i32)) {
                    _e.writeString(_f_5880381._nameNonEsc?.__copy__());
                    _gotoNext = 5880829i32;
                } else if (__value__ == (5880829i32)) {
                    _opts._quoted = _f_5880381._quoted;
                    _f_5880381._encoder(_e, _fv_5880464?.__copy__(), _opts?.__copy__());
                    _i_5880351++;
                    _gotoNext = 5880878i32;
                } else if (__value__ == (5880877i32)) {
                    _i_5880351 = 0i32;
                    _gotoNext = 5880878i32;
                } else if (__value__ == (5880878i32)) {
                    if (_i_5880351 < (_se._fields._list.length)) {
                        _gotoNext = 5880377i32;
                    } else {
                        _gotoNext = 5880881i32;
                    };
                } else if (__value__ == (5880881i32)) {
                    if (_next_5880317 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5880896i32;
                    } else {
                        _gotoNext = 5880928i32;
                    };
                } else if (__value__ == (5880896i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5880952i32;
                } else if (__value__ == (5880928i32)) {
                    _e.writeByte((125 : stdgo.GoUInt8));
                    _gotoNext = 5880952i32;
                } else if (__value__ == (5880952i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
