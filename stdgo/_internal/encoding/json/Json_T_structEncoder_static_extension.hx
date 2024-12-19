package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5013116:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5013121_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5013099:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5013016:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5012986:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5012952:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5012952 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5012970i32;
                } else if (__value__ == (5012970i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5013512i32;
                    } else {
                        _gotoNext = 5013516i32;
                    };
                } else if (__value__ == (5013012i32)) {
                    _f_5013016 = (stdgo.Go.setRef(_se._fields._list[(_i_5012986 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5013099 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5013016._index.length)) {
                        _gotoNext = 5013269i32;
                    } else {
                        _gotoNext = 5013275i32;
                    };
                } else if (__value__ == (5013135i32)) {
                    _i_5013116 = _f_5013016._index[(_i_5013121_0 : stdgo.GoInt)];
                    if (_fv_5013099.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5013172i32;
                    } else {
                        _gotoNext = 5013251i32;
                    };
                } else if (__value__ == (5013172i32)) {
                    if (_fv_5013099.isNil()) {
                        _gotoNext = 5013192i32;
                    } else {
                        _gotoNext = 5013228i32;
                    };
                } else if (__value__ == (5013192i32)) {
                    _i_5012986++;
                    _gotoNext = 5013513i32;
                } else if (__value__ == (5013228i32)) {
                    _fv_5013099 = _fv_5013099.elem()?.__copy__();
                    _gotoNext = 5013251i32;
                } else if (__value__ == (5013251i32)) {
                    _fv_5013099 = _fv_5013099.field(_i_5013116)?.__copy__();
                    _i_5013121_0++;
                    _gotoNext = 5013270i32;
                } else if (__value__ == (5013269i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5013016._index[(0i32 : stdgo.GoInt)];
                        _i_5013121_0 = __tmp__0;
                        _i_5013116 = __tmp__1;
                    };
                    _gotoNext = 5013270i32;
                } else if (__value__ == (5013270i32)) {
                    if (_i_5013121_0 < (_f_5013016._index.length)) {
                        _gotoNext = 5013135i32;
                    } else {
                        _gotoNext = 5013275i32;
                    };
                } else if (__value__ == (5013275i32)) {
                    if ((_f_5013016._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5013099?.__copy__()) : Bool)) {
                        _gotoNext = 5013310i32;
                    } else {
                        _gotoNext = 5013330i32;
                    };
                } else if (__value__ == (5013310i32)) {
                    _i_5012986++;
                    _gotoNext = 5013513i32;
                } else if (__value__ == (5013330i32)) {
                    _e.writeByte(_next_5012952);
                    _next_5012952 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5013382i32;
                    } else {
                        _gotoNext = 5013425i32;
                    };
                } else if (__value__ == (5013382i32)) {
                    _e.writeString(_f_5013016._nameEscHTML?.__copy__());
                    _gotoNext = 5013464i32;
                } else if (__value__ == (5013425i32)) {
                    _gotoNext = 5013425i32;
                    _e.writeString(_f_5013016._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5013464i32;
                } else if (__value__ == (5013464i32)) {
                    _opts._quoted = _f_5013016._quoted;
                    _f_5013016._encoder(_e, _fv_5013099?.__copy__(), _opts?.__copy__());
                    _i_5012986++;
                    _gotoNext = 5013513i32;
                } else if (__value__ == (5013512i32)) {
                    _i_5012986 = 0i32;
                    _gotoNext = 5013513i32;
                } else if (__value__ == (5013513i32)) {
                    if (_i_5012986 < (_se._fields._list.length)) {
                        _gotoNext = 5013012i32;
                    } else {
                        _gotoNext = 5013516i32;
                    };
                } else if (__value__ == (5013516i32)) {
                    if (_next_5012952 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5013531i32;
                    } else {
                        _gotoNext = 5013563i32;
                    };
                } else if (__value__ == (5013531i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5013587i32;
                } else if (__value__ == (5013563i32)) {
                    _gotoNext = 5013563i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5013587i32;
                } else if (__value__ == (5013587i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
