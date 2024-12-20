package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_6632008:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6632013_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_6631991:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_6631908:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_6631878:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_6631844:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_6631844 = (123 : stdgo.GoUInt8);
                    _gotoNext = 6631862i32;
                } else if (__value__ == (6631862i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 6632404i32;
                    } else {
                        _gotoNext = 6632408i32;
                    };
                } else if (__value__ == (6631904i32)) {
                    _f_6631908 = (stdgo.Go.setRef(_se._fields._list[(_i_6631878 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_6631991 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_6631908._index.length)) {
                        _gotoNext = 6632161i32;
                    } else {
                        _gotoNext = 6632167i32;
                    };
                } else if (__value__ == (6632027i32)) {
                    _i_6632008 = _f_6631908._index[(_i_6632013_0 : stdgo.GoInt)];
                    if (_fv_6631991.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 6632064i32;
                    } else {
                        _gotoNext = 6632143i32;
                    };
                } else if (__value__ == (6632064i32)) {
                    if (_fv_6631991.isNil()) {
                        _gotoNext = 6632084i32;
                    } else {
                        _gotoNext = 6632120i32;
                    };
                } else if (__value__ == (6632084i32)) {
                    _i_6631878++;
                    _gotoNext = 6632405i32;
                } else if (__value__ == (6632120i32)) {
                    _fv_6631991 = _fv_6631991.elem()?.__copy__();
                    _gotoNext = 6632143i32;
                } else if (__value__ == (6632143i32)) {
                    _fv_6631991 = _fv_6631991.field(_i_6632008)?.__copy__();
                    _i_6632013_0++;
                    _gotoNext = 6632162i32;
                } else if (__value__ == (6632161i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_6631908._index[(0i32 : stdgo.GoInt)];
                        _i_6632013_0 = __tmp__0;
                        _i_6632008 = __tmp__1;
                    };
                    _gotoNext = 6632162i32;
                } else if (__value__ == (6632162i32)) {
                    if (_i_6632013_0 < (_f_6631908._index.length)) {
                        _gotoNext = 6632027i32;
                    } else {
                        _gotoNext = 6632167i32;
                    };
                } else if (__value__ == (6632167i32)) {
                    if ((_f_6631908._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_6631991?.__copy__()) : Bool)) {
                        _gotoNext = 6632202i32;
                    } else {
                        _gotoNext = 6632222i32;
                    };
                } else if (__value__ == (6632202i32)) {
                    _i_6631878++;
                    _gotoNext = 6632405i32;
                } else if (__value__ == (6632222i32)) {
                    _e.writeByte(_next_6631844);
                    _next_6631844 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 6632274i32;
                    } else {
                        _gotoNext = 6632317i32;
                    };
                } else if (__value__ == (6632274i32)) {
                    _e.writeString(_f_6631908._nameEscHTML?.__copy__());
                    _gotoNext = 6632356i32;
                } else if (__value__ == (6632317i32)) {
                    _gotoNext = 6632317i32;
                    _e.writeString(_f_6631908._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 6632356i32;
                } else if (__value__ == (6632356i32)) {
                    _opts._quoted = _f_6631908._quoted;
                    _f_6631908._encoder(_e, _fv_6631991?.__copy__(), _opts?.__copy__());
                    _i_6631878++;
                    _gotoNext = 6632405i32;
                } else if (__value__ == (6632404i32)) {
                    _i_6631878 = 0i32;
                    _gotoNext = 6632405i32;
                } else if (__value__ == (6632405i32)) {
                    if (_i_6631878 < (_se._fields._list.length)) {
                        _gotoNext = 6631904i32;
                    } else {
                        _gotoNext = 6632408i32;
                    };
                } else if (__value__ == (6632408i32)) {
                    if (_next_6631844 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 6632423i32;
                    } else {
                        _gotoNext = 6632455i32;
                    };
                } else if (__value__ == (6632423i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 6632479i32;
                } else if (__value__ == (6632455i32)) {
                    _gotoNext = 6632455i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 6632479i32;
                } else if (__value__ == (6632479i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
