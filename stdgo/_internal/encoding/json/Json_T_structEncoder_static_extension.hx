package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _next_5467624:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5467788:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5467793_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5467771:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5467688:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5467658:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5467624 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5467642i32;
                } else if (__value__ == (5467642i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5468184i32;
                    } else {
                        _gotoNext = 5468188i32;
                    };
                } else if (__value__ == (5467684i32)) {
                    _f_5467688 = (stdgo.Go.setRef(_se._fields._list[(_i_5467658 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5467771 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5467688._index.length)) {
                        _gotoNext = 5467941i32;
                    } else {
                        _gotoNext = 5467947i32;
                    };
                } else if (__value__ == (5467807i32)) {
                    _i_5467788 = _f_5467688._index[(_i_5467793_0 : stdgo.GoInt)];
                    if (_fv_5467771.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5467844i32;
                    } else {
                        _gotoNext = 5467923i32;
                    };
                } else if (__value__ == (5467844i32)) {
                    if (_fv_5467771.isNil()) {
                        _gotoNext = 5467864i32;
                    } else {
                        _gotoNext = 5467900i32;
                    };
                } else if (__value__ == (5467864i32)) {
                    _i_5467658++;
                    _gotoNext = 5468185i32;
                } else if (__value__ == (5467900i32)) {
                    _fv_5467771 = _fv_5467771.elem()?.__copy__();
                    _gotoNext = 5467923i32;
                } else if (__value__ == (5467923i32)) {
                    _fv_5467771 = _fv_5467771.field(_i_5467788)?.__copy__();
                    _i_5467793_0++;
                    _gotoNext = 5467942i32;
                } else if (__value__ == (5467941i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5467688._index[(0i32 : stdgo.GoInt)];
                        _i_5467793_0 = __tmp__0;
                        _i_5467788 = __tmp__1;
                    };
                    _gotoNext = 5467942i32;
                } else if (__value__ == (5467942i32)) {
                    if (_i_5467793_0 < (_f_5467688._index.length)) {
                        _gotoNext = 5467807i32;
                    } else {
                        _gotoNext = 5467947i32;
                    };
                } else if (__value__ == (5467947i32)) {
                    if ((_f_5467688._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5467771?.__copy__()) : Bool)) {
                        _gotoNext = 5467982i32;
                    } else {
                        _gotoNext = 5468002i32;
                    };
                } else if (__value__ == (5467982i32)) {
                    _i_5467658++;
                    _gotoNext = 5468185i32;
                } else if (__value__ == (5468002i32)) {
                    _e.writeByte(_next_5467624);
                    _next_5467624 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5468054i32;
                    } else {
                        _gotoNext = 5468097i32;
                    };
                } else if (__value__ == (5468054i32)) {
                    _e.writeString(_f_5467688._nameEscHTML?.__copy__());
                    _gotoNext = 5468136i32;
                } else if (__value__ == (5468097i32)) {
                    _gotoNext = 5468097i32;
                    _e.writeString(_f_5467688._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5468136i32;
                } else if (__value__ == (5468136i32)) {
                    _opts._quoted = _f_5467688._quoted;
                    _f_5467688._encoder(_e, _fv_5467771?.__copy__(), _opts?.__copy__());
                    _i_5467658++;
                    _gotoNext = 5468185i32;
                } else if (__value__ == (5468184i32)) {
                    _i_5467658 = 0i32;
                    _gotoNext = 5468185i32;
                } else if (__value__ == (5468185i32)) {
                    if (_i_5467658 < (_se._fields._list.length)) {
                        _gotoNext = 5467684i32;
                    } else {
                        _gotoNext = 5468188i32;
                    };
                } else if (__value__ == (5468188i32)) {
                    if (_next_5467624 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5468203i32;
                    } else {
                        _gotoNext = 5468235i32;
                    };
                } else if (__value__ == (5468203i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5468259i32;
                } else if (__value__ == (5468235i32)) {
                    _gotoNext = 5468235i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5468259i32;
                } else if (__value__ == (5468259i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
