package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _fv_5524374:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5524291:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5524261:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5524227:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5524391:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5524396_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5524227 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5524245i32;
                } else if (__value__ == (5524245i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5524787i32;
                    } else {
                        _gotoNext = 5524791i32;
                    };
                } else if (__value__ == (5524287i32)) {
                    _f_5524291 = (stdgo.Go.setRef(_se._fields._list[(_i_5524261 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5524374 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5524291._index.length)) {
                        _gotoNext = 5524544i32;
                    } else {
                        _gotoNext = 5524550i32;
                    };
                } else if (__value__ == (5524410i32)) {
                    _i_5524391 = _f_5524291._index[(_i_5524396_0 : stdgo.GoInt)];
                    if (_fv_5524374.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5524447i32;
                    } else {
                        _gotoNext = 5524526i32;
                    };
                } else if (__value__ == (5524447i32)) {
                    if (_fv_5524374.isNil()) {
                        _gotoNext = 5524467i32;
                    } else {
                        _gotoNext = 5524503i32;
                    };
                } else if (__value__ == (5524467i32)) {
                    _i_5524261++;
                    _gotoNext = 5524788i32;
                } else if (__value__ == (5524503i32)) {
                    _fv_5524374 = _fv_5524374.elem()?.__copy__();
                    _gotoNext = 5524526i32;
                } else if (__value__ == (5524526i32)) {
                    _fv_5524374 = _fv_5524374.field(_i_5524391)?.__copy__();
                    _i_5524396_0++;
                    _gotoNext = 5524545i32;
                } else if (__value__ == (5524544i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5524291._index[(0i32 : stdgo.GoInt)];
                        _i_5524396_0 = __tmp__0;
                        _i_5524391 = __tmp__1;
                    };
                    _gotoNext = 5524545i32;
                } else if (__value__ == (5524545i32)) {
                    if (_i_5524396_0 < (_f_5524291._index.length)) {
                        _gotoNext = 5524410i32;
                    } else {
                        _gotoNext = 5524550i32;
                    };
                } else if (__value__ == (5524550i32)) {
                    if ((_f_5524291._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5524374?.__copy__()) : Bool)) {
                        _gotoNext = 5524585i32;
                    } else {
                        _gotoNext = 5524605i32;
                    };
                } else if (__value__ == (5524585i32)) {
                    _i_5524261++;
                    _gotoNext = 5524788i32;
                } else if (__value__ == (5524605i32)) {
                    _e.writeByte(_next_5524227);
                    _next_5524227 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5524657i32;
                    } else {
                        _gotoNext = 5524700i32;
                    };
                } else if (__value__ == (5524657i32)) {
                    _e.writeString(_f_5524291._nameEscHTML?.__copy__());
                    _gotoNext = 5524739i32;
                } else if (__value__ == (5524700i32)) {
                    _gotoNext = 5524700i32;
                    _e.writeString(_f_5524291._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5524739i32;
                } else if (__value__ == (5524739i32)) {
                    _opts._quoted = _f_5524291._quoted;
                    _f_5524291._encoder(_e, _fv_5524374?.__copy__(), _opts?.__copy__());
                    _i_5524261++;
                    _gotoNext = 5524788i32;
                } else if (__value__ == (5524787i32)) {
                    _i_5524261 = 0i32;
                    _gotoNext = 5524788i32;
                } else if (__value__ == (5524788i32)) {
                    if (_i_5524261 < (_se._fields._list.length)) {
                        _gotoNext = 5524287i32;
                    } else {
                        _gotoNext = 5524791i32;
                    };
                } else if (__value__ == (5524791i32)) {
                    if (_next_5524227 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5524806i32;
                    } else {
                        _gotoNext = 5524838i32;
                    };
                } else if (__value__ == (5524806i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5524862i32;
                } else if (__value__ == (5524838i32)) {
                    _gotoNext = 5524838i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5524862i32;
                } else if (__value__ == (5524862i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
