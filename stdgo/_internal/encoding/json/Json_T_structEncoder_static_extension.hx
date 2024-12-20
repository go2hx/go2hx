package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _fv_5465762:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5465679:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5465649:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5465615:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5465779:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5465784_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5465615 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5465633i32;
                } else if (__value__ == (5465633i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5466175i32;
                    } else {
                        _gotoNext = 5466179i32;
                    };
                } else if (__value__ == (5465675i32)) {
                    _f_5465679 = (stdgo.Go.setRef(_se._fields._list[(_i_5465649 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5465762 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5465679._index.length)) {
                        _gotoNext = 5465932i32;
                    } else {
                        _gotoNext = 5465938i32;
                    };
                } else if (__value__ == (5465798i32)) {
                    _i_5465779 = _f_5465679._index[(_i_5465784_0 : stdgo.GoInt)];
                    if (_fv_5465762.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5465835i32;
                    } else {
                        _gotoNext = 5465914i32;
                    };
                } else if (__value__ == (5465835i32)) {
                    if (_fv_5465762.isNil()) {
                        _gotoNext = 5465855i32;
                    } else {
                        _gotoNext = 5465891i32;
                    };
                } else if (__value__ == (5465855i32)) {
                    _i_5465649++;
                    _gotoNext = 5466176i32;
                } else if (__value__ == (5465891i32)) {
                    _fv_5465762 = _fv_5465762.elem()?.__copy__();
                    _gotoNext = 5465914i32;
                } else if (__value__ == (5465914i32)) {
                    _fv_5465762 = _fv_5465762.field(_i_5465779)?.__copy__();
                    _i_5465784_0++;
                    _gotoNext = 5465933i32;
                } else if (__value__ == (5465932i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5465679._index[(0i32 : stdgo.GoInt)];
                        _i_5465784_0 = __tmp__0;
                        _i_5465779 = __tmp__1;
                    };
                    _gotoNext = 5465933i32;
                } else if (__value__ == (5465933i32)) {
                    if (_i_5465784_0 < (_f_5465679._index.length)) {
                        _gotoNext = 5465798i32;
                    } else {
                        _gotoNext = 5465938i32;
                    };
                } else if (__value__ == (5465938i32)) {
                    if ((_f_5465679._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5465762?.__copy__()) : Bool)) {
                        _gotoNext = 5465973i32;
                    } else {
                        _gotoNext = 5465993i32;
                    };
                } else if (__value__ == (5465973i32)) {
                    _i_5465649++;
                    _gotoNext = 5466176i32;
                } else if (__value__ == (5465993i32)) {
                    _e.writeByte(_next_5465615);
                    _next_5465615 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5466045i32;
                    } else {
                        _gotoNext = 5466088i32;
                    };
                } else if (__value__ == (5466045i32)) {
                    _e.writeString(_f_5465679._nameEscHTML?.__copy__());
                    _gotoNext = 5466127i32;
                } else if (__value__ == (5466088i32)) {
                    _gotoNext = 5466088i32;
                    _e.writeString(_f_5465679._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5466127i32;
                } else if (__value__ == (5466127i32)) {
                    _opts._quoted = _f_5465679._quoted;
                    _f_5465679._encoder(_e, _fv_5465762?.__copy__(), _opts?.__copy__());
                    _i_5465649++;
                    _gotoNext = 5466176i32;
                } else if (__value__ == (5466175i32)) {
                    _i_5465649 = 0i32;
                    _gotoNext = 5466176i32;
                } else if (__value__ == (5466176i32)) {
                    if (_i_5465649 < (_se._fields._list.length)) {
                        _gotoNext = 5465675i32;
                    } else {
                        _gotoNext = 5466179i32;
                    };
                } else if (__value__ == (5466179i32)) {
                    if (_next_5465615 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5466194i32;
                    } else {
                        _gotoNext = 5466226i32;
                    };
                } else if (__value__ == (5466194i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5466250i32;
                } else if (__value__ == (5466226i32)) {
                    _gotoNext = 5466226i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5466250i32;
                } else if (__value__ == (5466250i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
