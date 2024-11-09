package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _f_5076196:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5076166:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5076132:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5076296:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5076301_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5076279:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5076132 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5076150i32;
                } else if (__value__ == (5076150i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5076692i32;
                    } else {
                        _gotoNext = 5076696i32;
                    };
                } else if (__value__ == (5076192i32)) {
                    _f_5076196 = (stdgo.Go.setRef(_se._fields._list[(_i_5076166 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5076279 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5076196._index.length)) {
                        _gotoNext = 5076449i32;
                    } else {
                        _gotoNext = 5076455i32;
                    };
                } else if (__value__ == (5076315i32)) {
                    _i_5076296 = _f_5076196._index[(_i_5076301_0 : stdgo.GoInt)];
                    if (_fv_5076279.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5076352i32;
                    } else {
                        _gotoNext = 5076431i32;
                    };
                } else if (__value__ == (5076352i32)) {
                    if (_fv_5076279.isNil()) {
                        _gotoNext = 5076372i32;
                    } else {
                        _gotoNext = 5076408i32;
                    };
                } else if (__value__ == (5076372i32)) {
                    _i_5076166++;
                    _gotoNext = 5076693i32;
                } else if (__value__ == (5076408i32)) {
                    _fv_5076279 = _fv_5076279.elem()?.__copy__();
                    _gotoNext = 5076431i32;
                } else if (__value__ == (5076431i32)) {
                    _fv_5076279 = _fv_5076279.field(_i_5076296)?.__copy__();
                    _i_5076301_0++;
                    _gotoNext = 5076450i32;
                } else if (__value__ == (5076449i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5076196._index[(0i32 : stdgo.GoInt)];
                        _i_5076301_0 = __tmp__0;
                        _i_5076296 = __tmp__1;
                    };
                    _gotoNext = 5076450i32;
                } else if (__value__ == (5076450i32)) {
                    if (_i_5076301_0 < (_f_5076196._index.length)) {
                        _gotoNext = 5076315i32;
                    } else {
                        _gotoNext = 5076455i32;
                    };
                } else if (__value__ == (5076455i32)) {
                    if ((_f_5076196._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5076279?.__copy__()) : Bool)) {
                        _gotoNext = 5076490i32;
                    } else {
                        _gotoNext = 5076510i32;
                    };
                } else if (__value__ == (5076490i32)) {
                    _i_5076166++;
                    _gotoNext = 5076693i32;
                } else if (__value__ == (5076510i32)) {
                    _e.writeByte(_next_5076132);
                    _next_5076132 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5076562i32;
                    } else {
                        _gotoNext = 5076605i32;
                    };
                } else if (__value__ == (5076562i32)) {
                    _e.writeString(_f_5076196._nameEscHTML?.__copy__());
                    _gotoNext = 5076644i32;
                } else if (__value__ == (5076605i32)) {
                    _gotoNext = 5076605i32;
                    _e.writeString(_f_5076196._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5076644i32;
                } else if (__value__ == (5076644i32)) {
                    _opts._quoted = _f_5076196._quoted;
                    _f_5076196._encoder(_e, _fv_5076279?.__copy__(), _opts?.__copy__());
                    _i_5076166++;
                    _gotoNext = 5076693i32;
                } else if (__value__ == (5076692i32)) {
                    _i_5076166 = 0i32;
                    _gotoNext = 5076693i32;
                } else if (__value__ == (5076693i32)) {
                    if (_i_5076166 < (_se._fields._list.length)) {
                        _gotoNext = 5076192i32;
                    } else {
                        _gotoNext = 5076696i32;
                    };
                } else if (__value__ == (5076696i32)) {
                    if (_next_5076132 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5076711i32;
                    } else {
                        _gotoNext = 5076743i32;
                    };
                } else if (__value__ == (5076711i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5076767i32;
                } else if (__value__ == (5076743i32)) {
                    _gotoNext = 5076743i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5076767i32;
                } else if (__value__ == (5076767i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
