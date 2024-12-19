package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5222919:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5222924_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5222902:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5222819:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5222789:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5222755:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5222755 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5222773i32;
                } else if (__value__ == (5222773i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5223315i32;
                    } else {
                        _gotoNext = 5223319i32;
                    };
                } else if (__value__ == (5222815i32)) {
                    _f_5222819 = (stdgo.Go.setRef(_se._fields._list[(_i_5222789 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5222902 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5222819._index.length)) {
                        _gotoNext = 5223072i32;
                    } else {
                        _gotoNext = 5223078i32;
                    };
                } else if (__value__ == (5222938i32)) {
                    _i_5222919 = _f_5222819._index[(_i_5222924_0 : stdgo.GoInt)];
                    if (_fv_5222902.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5222975i32;
                    } else {
                        _gotoNext = 5223054i32;
                    };
                } else if (__value__ == (5222975i32)) {
                    if (_fv_5222902.isNil()) {
                        _gotoNext = 5222995i32;
                    } else {
                        _gotoNext = 5223031i32;
                    };
                } else if (__value__ == (5222995i32)) {
                    _i_5222789++;
                    _gotoNext = 5223316i32;
                } else if (__value__ == (5223031i32)) {
                    _fv_5222902 = _fv_5222902.elem()?.__copy__();
                    _gotoNext = 5223054i32;
                } else if (__value__ == (5223054i32)) {
                    _fv_5222902 = _fv_5222902.field(_i_5222919)?.__copy__();
                    _i_5222924_0++;
                    _gotoNext = 5223073i32;
                } else if (__value__ == (5223072i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5222819._index[(0i32 : stdgo.GoInt)];
                        _i_5222924_0 = __tmp__0;
                        _i_5222919 = __tmp__1;
                    };
                    _gotoNext = 5223073i32;
                } else if (__value__ == (5223073i32)) {
                    if (_i_5222924_0 < (_f_5222819._index.length)) {
                        _gotoNext = 5222938i32;
                    } else {
                        _gotoNext = 5223078i32;
                    };
                } else if (__value__ == (5223078i32)) {
                    if ((_f_5222819._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5222902?.__copy__()) : Bool)) {
                        _gotoNext = 5223113i32;
                    } else {
                        _gotoNext = 5223133i32;
                    };
                } else if (__value__ == (5223113i32)) {
                    _i_5222789++;
                    _gotoNext = 5223316i32;
                } else if (__value__ == (5223133i32)) {
                    _e.writeByte(_next_5222755);
                    _next_5222755 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5223185i32;
                    } else {
                        _gotoNext = 5223228i32;
                    };
                } else if (__value__ == (5223185i32)) {
                    _e.writeString(_f_5222819._nameEscHTML?.__copy__());
                    _gotoNext = 5223267i32;
                } else if (__value__ == (5223228i32)) {
                    _gotoNext = 5223228i32;
                    _e.writeString(_f_5222819._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5223267i32;
                } else if (__value__ == (5223267i32)) {
                    _opts._quoted = _f_5222819._quoted;
                    _f_5222819._encoder(_e, _fv_5222902?.__copy__(), _opts?.__copy__());
                    _i_5222789++;
                    _gotoNext = 5223316i32;
                } else if (__value__ == (5223315i32)) {
                    _i_5222789 = 0i32;
                    _gotoNext = 5223316i32;
                } else if (__value__ == (5223316i32)) {
                    if (_i_5222789 < (_se._fields._list.length)) {
                        _gotoNext = 5222815i32;
                    } else {
                        _gotoNext = 5223319i32;
                    };
                } else if (__value__ == (5223319i32)) {
                    if (_next_5222755 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5223334i32;
                    } else {
                        _gotoNext = 5223366i32;
                    };
                } else if (__value__ == (5223334i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5223390i32;
                } else if (__value__ == (5223366i32)) {
                    _gotoNext = 5223366i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5223390i32;
                } else if (__value__ == (5223390i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
