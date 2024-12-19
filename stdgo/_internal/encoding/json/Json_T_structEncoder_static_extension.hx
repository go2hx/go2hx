package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5448762_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5448740:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5448657:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5448627:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5448593:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5448757:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5448593 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5448611i32;
                } else if (__value__ == (5448611i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5449153i32;
                    } else {
                        _gotoNext = 5449157i32;
                    };
                } else if (__value__ == (5448653i32)) {
                    _f_5448657 = (stdgo.Go.setRef(_se._fields._list[(_i_5448627 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5448740 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5448657._index.length)) {
                        _gotoNext = 5448910i32;
                    } else {
                        _gotoNext = 5448916i32;
                    };
                } else if (__value__ == (5448776i32)) {
                    _i_5448757 = _f_5448657._index[(_i_5448762_0 : stdgo.GoInt)];
                    if (_fv_5448740.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5448813i32;
                    } else {
                        _gotoNext = 5448892i32;
                    };
                } else if (__value__ == (5448813i32)) {
                    if (_fv_5448740.isNil()) {
                        _gotoNext = 5448833i32;
                    } else {
                        _gotoNext = 5448869i32;
                    };
                } else if (__value__ == (5448833i32)) {
                    _i_5448627++;
                    _gotoNext = 5449154i32;
                } else if (__value__ == (5448869i32)) {
                    _fv_5448740 = _fv_5448740.elem()?.__copy__();
                    _gotoNext = 5448892i32;
                } else if (__value__ == (5448892i32)) {
                    _fv_5448740 = _fv_5448740.field(_i_5448757)?.__copy__();
                    _i_5448762_0++;
                    _gotoNext = 5448911i32;
                } else if (__value__ == (5448910i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5448657._index[(0i32 : stdgo.GoInt)];
                        _i_5448762_0 = __tmp__0;
                        _i_5448757 = __tmp__1;
                    };
                    _gotoNext = 5448911i32;
                } else if (__value__ == (5448911i32)) {
                    if (_i_5448762_0 < (_f_5448657._index.length)) {
                        _gotoNext = 5448776i32;
                    } else {
                        _gotoNext = 5448916i32;
                    };
                } else if (__value__ == (5448916i32)) {
                    if ((_f_5448657._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5448740?.__copy__()) : Bool)) {
                        _gotoNext = 5448951i32;
                    } else {
                        _gotoNext = 5448971i32;
                    };
                } else if (__value__ == (5448951i32)) {
                    _i_5448627++;
                    _gotoNext = 5449154i32;
                } else if (__value__ == (5448971i32)) {
                    _e.writeByte(_next_5448593);
                    _next_5448593 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5449023i32;
                    } else {
                        _gotoNext = 5449066i32;
                    };
                } else if (__value__ == (5449023i32)) {
                    _e.writeString(_f_5448657._nameEscHTML?.__copy__());
                    _gotoNext = 5449105i32;
                } else if (__value__ == (5449066i32)) {
                    _gotoNext = 5449066i32;
                    _e.writeString(_f_5448657._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5449105i32;
                } else if (__value__ == (5449105i32)) {
                    _opts._quoted = _f_5448657._quoted;
                    _f_5448657._encoder(_e, _fv_5448740?.__copy__(), _opts?.__copy__());
                    _i_5448627++;
                    _gotoNext = 5449154i32;
                } else if (__value__ == (5449153i32)) {
                    _i_5448627 = 0i32;
                    _gotoNext = 5449154i32;
                } else if (__value__ == (5449154i32)) {
                    if (_i_5448627 < (_se._fields._list.length)) {
                        _gotoNext = 5448653i32;
                    } else {
                        _gotoNext = 5449157i32;
                    };
                } else if (__value__ == (5449157i32)) {
                    if (_next_5448593 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5449172i32;
                    } else {
                        _gotoNext = 5449204i32;
                    };
                } else if (__value__ == (5449172i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5449228i32;
                } else if (__value__ == (5449204i32)) {
                    _gotoNext = 5449204i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5449228i32;
                } else if (__value__ == (5449228i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
