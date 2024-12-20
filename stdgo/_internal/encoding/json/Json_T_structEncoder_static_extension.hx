package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5394889:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5394855:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5395019:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5395024_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5395002:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5394919:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5394855 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5394873i32;
                } else if (__value__ == (5394873i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5395415i32;
                    } else {
                        _gotoNext = 5395419i32;
                    };
                } else if (__value__ == (5394915i32)) {
                    _f_5394919 = (stdgo.Go.setRef(_se._fields._list[(_i_5394889 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5395002 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5394919._index.length)) {
                        _gotoNext = 5395172i32;
                    } else {
                        _gotoNext = 5395178i32;
                    };
                } else if (__value__ == (5395038i32)) {
                    _i_5395019 = _f_5394919._index[(_i_5395024_0 : stdgo.GoInt)];
                    if (_fv_5395002.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5395075i32;
                    } else {
                        _gotoNext = 5395154i32;
                    };
                } else if (__value__ == (5395075i32)) {
                    if (_fv_5395002.isNil()) {
                        _gotoNext = 5395095i32;
                    } else {
                        _gotoNext = 5395131i32;
                    };
                } else if (__value__ == (5395095i32)) {
                    _i_5394889++;
                    _gotoNext = 5395416i32;
                } else if (__value__ == (5395131i32)) {
                    _fv_5395002 = _fv_5395002.elem()?.__copy__();
                    _gotoNext = 5395154i32;
                } else if (__value__ == (5395154i32)) {
                    _fv_5395002 = _fv_5395002.field(_i_5395019)?.__copy__();
                    _i_5395024_0++;
                    _gotoNext = 5395173i32;
                } else if (__value__ == (5395172i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5394919._index[(0i32 : stdgo.GoInt)];
                        _i_5395024_0 = __tmp__0;
                        _i_5395019 = __tmp__1;
                    };
                    _gotoNext = 5395173i32;
                } else if (__value__ == (5395173i32)) {
                    if (_i_5395024_0 < (_f_5394919._index.length)) {
                        _gotoNext = 5395038i32;
                    } else {
                        _gotoNext = 5395178i32;
                    };
                } else if (__value__ == (5395178i32)) {
                    if ((_f_5394919._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5395002?.__copy__()) : Bool)) {
                        _gotoNext = 5395213i32;
                    } else {
                        _gotoNext = 5395233i32;
                    };
                } else if (__value__ == (5395213i32)) {
                    _i_5394889++;
                    _gotoNext = 5395416i32;
                } else if (__value__ == (5395233i32)) {
                    _e.writeByte(_next_5394855);
                    _next_5394855 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5395285i32;
                    } else {
                        _gotoNext = 5395328i32;
                    };
                } else if (__value__ == (5395285i32)) {
                    _e.writeString(_f_5394919._nameEscHTML?.__copy__());
                    _gotoNext = 5395367i32;
                } else if (__value__ == (5395328i32)) {
                    _gotoNext = 5395328i32;
                    _e.writeString(_f_5394919._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5395367i32;
                } else if (__value__ == (5395367i32)) {
                    _opts._quoted = _f_5394919._quoted;
                    _f_5394919._encoder(_e, _fv_5395002?.__copy__(), _opts?.__copy__());
                    _i_5394889++;
                    _gotoNext = 5395416i32;
                } else if (__value__ == (5395415i32)) {
                    _i_5394889 = 0i32;
                    _gotoNext = 5395416i32;
                } else if (__value__ == (5395416i32)) {
                    if (_i_5394889 < (_se._fields._list.length)) {
                        _gotoNext = 5394915i32;
                    } else {
                        _gotoNext = 5395419i32;
                    };
                } else if (__value__ == (5395419i32)) {
                    if (_next_5394855 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5395434i32;
                    } else {
                        _gotoNext = 5395466i32;
                    };
                } else if (__value__ == (5395434i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5395490i32;
                } else if (__value__ == (5395466i32)) {
                    _gotoNext = 5395466i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5395490i32;
                } else if (__value__ == (5395490i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
