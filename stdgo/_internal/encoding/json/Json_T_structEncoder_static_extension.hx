package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _next_5380819:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5380983:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5380988_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5380966:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5380883:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5380853:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5380819 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5380837i32;
                } else if (__value__ == (5380837i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5381379i32;
                    } else {
                        _gotoNext = 5381383i32;
                    };
                } else if (__value__ == (5380879i32)) {
                    _f_5380883 = (stdgo.Go.setRef(_se._fields._list[(_i_5380853 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5380966 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5380883._index.length)) {
                        _gotoNext = 5381136i32;
                    } else {
                        _gotoNext = 5381142i32;
                    };
                } else if (__value__ == (5381002i32)) {
                    _i_5380983 = _f_5380883._index[(_i_5380988_0 : stdgo.GoInt)];
                    if (_fv_5380966.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5381039i32;
                    } else {
                        _gotoNext = 5381118i32;
                    };
                } else if (__value__ == (5381039i32)) {
                    if (_fv_5380966.isNil()) {
                        _gotoNext = 5381059i32;
                    } else {
                        _gotoNext = 5381095i32;
                    };
                } else if (__value__ == (5381059i32)) {
                    _i_5380853++;
                    _gotoNext = 5381380i32;
                } else if (__value__ == (5381095i32)) {
                    _fv_5380966 = _fv_5380966.elem()?.__copy__();
                    _gotoNext = 5381118i32;
                } else if (__value__ == (5381118i32)) {
                    _fv_5380966 = _fv_5380966.field(_i_5380983)?.__copy__();
                    _i_5380988_0++;
                    _gotoNext = 5381137i32;
                } else if (__value__ == (5381136i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5380883._index[(0i32 : stdgo.GoInt)];
                        _i_5380988_0 = __tmp__0;
                        _i_5380983 = __tmp__1;
                    };
                    _gotoNext = 5381137i32;
                } else if (__value__ == (5381137i32)) {
                    if (_i_5380988_0 < (_f_5380883._index.length)) {
                        _gotoNext = 5381002i32;
                    } else {
                        _gotoNext = 5381142i32;
                    };
                } else if (__value__ == (5381142i32)) {
                    if ((_f_5380883._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5380966?.__copy__()) : Bool)) {
                        _gotoNext = 5381177i32;
                    } else {
                        _gotoNext = 5381197i32;
                    };
                } else if (__value__ == (5381177i32)) {
                    _i_5380853++;
                    _gotoNext = 5381380i32;
                } else if (__value__ == (5381197i32)) {
                    _e.writeByte(_next_5380819);
                    _next_5380819 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5381249i32;
                    } else {
                        _gotoNext = 5381292i32;
                    };
                } else if (__value__ == (5381249i32)) {
                    _e.writeString(_f_5380883._nameEscHTML?.__copy__());
                    _gotoNext = 5381331i32;
                } else if (__value__ == (5381292i32)) {
                    _gotoNext = 5381292i32;
                    _e.writeString(_f_5380883._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5381331i32;
                } else if (__value__ == (5381331i32)) {
                    _opts._quoted = _f_5380883._quoted;
                    _f_5380883._encoder(_e, _fv_5380966?.__copy__(), _opts?.__copy__());
                    _i_5380853++;
                    _gotoNext = 5381380i32;
                } else if (__value__ == (5381379i32)) {
                    _i_5380853 = 0i32;
                    _gotoNext = 5381380i32;
                } else if (__value__ == (5381380i32)) {
                    if (_i_5380853 < (_se._fields._list.length)) {
                        _gotoNext = 5380879i32;
                    } else {
                        _gotoNext = 5381383i32;
                    };
                } else if (__value__ == (5381383i32)) {
                    if (_next_5380819 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5381398i32;
                    } else {
                        _gotoNext = 5381430i32;
                    };
                } else if (__value__ == (5381398i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5381454i32;
                } else if (__value__ == (5381430i32)) {
                    _gotoNext = 5381430i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5381454i32;
                } else if (__value__ == (5381454i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
