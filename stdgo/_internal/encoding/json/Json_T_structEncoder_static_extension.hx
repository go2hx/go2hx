package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _f_5458788:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5458758:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5458724:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5458888:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5458893_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5458871:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5458724 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5458742i32;
                } else if (__value__ == (5458742i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5459284i32;
                    } else {
                        _gotoNext = 5459288i32;
                    };
                } else if (__value__ == (5458784i32)) {
                    _f_5458788 = (stdgo.Go.setRef(_se._fields._list[(_i_5458758 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5458871 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5458788._index.length)) {
                        _gotoNext = 5459041i32;
                    } else {
                        _gotoNext = 5459047i32;
                    };
                } else if (__value__ == (5458907i32)) {
                    _i_5458888 = _f_5458788._index[(_i_5458893_0 : stdgo.GoInt)];
                    if (_fv_5458871.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5458944i32;
                    } else {
                        _gotoNext = 5459023i32;
                    };
                } else if (__value__ == (5458944i32)) {
                    if (_fv_5458871.isNil()) {
                        _gotoNext = 5458964i32;
                    } else {
                        _gotoNext = 5459000i32;
                    };
                } else if (__value__ == (5458964i32)) {
                    _i_5458758++;
                    _gotoNext = 5459285i32;
                } else if (__value__ == (5459000i32)) {
                    _fv_5458871 = _fv_5458871.elem()?.__copy__();
                    _gotoNext = 5459023i32;
                } else if (__value__ == (5459023i32)) {
                    _fv_5458871 = _fv_5458871.field(_i_5458888)?.__copy__();
                    _i_5458893_0++;
                    _gotoNext = 5459042i32;
                } else if (__value__ == (5459041i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5458788._index[(0i32 : stdgo.GoInt)];
                        _i_5458893_0 = __tmp__0;
                        _i_5458888 = __tmp__1;
                    };
                    _gotoNext = 5459042i32;
                } else if (__value__ == (5459042i32)) {
                    if (_i_5458893_0 < (_f_5458788._index.length)) {
                        _gotoNext = 5458907i32;
                    } else {
                        _gotoNext = 5459047i32;
                    };
                } else if (__value__ == (5459047i32)) {
                    if ((_f_5458788._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5458871?.__copy__()) : Bool)) {
                        _gotoNext = 5459082i32;
                    } else {
                        _gotoNext = 5459102i32;
                    };
                } else if (__value__ == (5459082i32)) {
                    _i_5458758++;
                    _gotoNext = 5459285i32;
                } else if (__value__ == (5459102i32)) {
                    _e.writeByte(_next_5458724);
                    _next_5458724 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5459154i32;
                    } else {
                        _gotoNext = 5459197i32;
                    };
                } else if (__value__ == (5459154i32)) {
                    _e.writeString(_f_5458788._nameEscHTML?.__copy__());
                    _gotoNext = 5459236i32;
                } else if (__value__ == (5459197i32)) {
                    _gotoNext = 5459197i32;
                    _e.writeString(_f_5458788._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5459236i32;
                } else if (__value__ == (5459236i32)) {
                    _opts._quoted = _f_5458788._quoted;
                    _f_5458788._encoder(_e, _fv_5458871?.__copy__(), _opts?.__copy__());
                    _i_5458758++;
                    _gotoNext = 5459285i32;
                } else if (__value__ == (5459284i32)) {
                    _i_5458758 = 0i32;
                    _gotoNext = 5459285i32;
                } else if (__value__ == (5459285i32)) {
                    if (_i_5458758 < (_se._fields._list.length)) {
                        _gotoNext = 5458784i32;
                    } else {
                        _gotoNext = 5459288i32;
                    };
                } else if (__value__ == (5459288i32)) {
                    if (_next_5458724 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5459303i32;
                    } else {
                        _gotoNext = 5459335i32;
                    };
                } else if (__value__ == (5459303i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5459359i32;
                } else if (__value__ == (5459335i32)) {
                    _gotoNext = 5459335i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5459359i32;
                } else if (__value__ == (5459359i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
