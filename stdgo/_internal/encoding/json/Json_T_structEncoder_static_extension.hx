package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5214886_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5214864:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5214781:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5214751:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5214717:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5214881:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5214717 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5214735i32;
                } else if (__value__ == (5214735i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5215277i32;
                    } else {
                        _gotoNext = 5215281i32;
                    };
                } else if (__value__ == (5214777i32)) {
                    _f_5214781 = (stdgo.Go.setRef(_se._fields._list[(_i_5214751 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5214864 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5214781._index.length)) {
                        _gotoNext = 5215034i32;
                    } else {
                        _gotoNext = 5215040i32;
                    };
                } else if (__value__ == (5214900i32)) {
                    _i_5214881 = _f_5214781._index[(_i_5214886_0 : stdgo.GoInt)];
                    if (_fv_5214864.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5214937i32;
                    } else {
                        _gotoNext = 5215016i32;
                    };
                } else if (__value__ == (5214937i32)) {
                    if (_fv_5214864.isNil()) {
                        _gotoNext = 5214957i32;
                    } else {
                        _gotoNext = 5214993i32;
                    };
                } else if (__value__ == (5214957i32)) {
                    _i_5214751++;
                    _gotoNext = 5215278i32;
                } else if (__value__ == (5214993i32)) {
                    _fv_5214864 = _fv_5214864.elem()?.__copy__();
                    _gotoNext = 5215016i32;
                } else if (__value__ == (5215016i32)) {
                    _fv_5214864 = _fv_5214864.field(_i_5214881)?.__copy__();
                    _i_5214886_0++;
                    _gotoNext = 5215035i32;
                } else if (__value__ == (5215034i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5214781._index[(0i32 : stdgo.GoInt)];
                        _i_5214886_0 = __tmp__0;
                        _i_5214881 = __tmp__1;
                    };
                    _gotoNext = 5215035i32;
                } else if (__value__ == (5215035i32)) {
                    if (_i_5214886_0 < (_f_5214781._index.length)) {
                        _gotoNext = 5214900i32;
                    } else {
                        _gotoNext = 5215040i32;
                    };
                } else if (__value__ == (5215040i32)) {
                    if ((_f_5214781._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5214864?.__copy__()) : Bool)) {
                        _gotoNext = 5215075i32;
                    } else {
                        _gotoNext = 5215095i32;
                    };
                } else if (__value__ == (5215075i32)) {
                    _i_5214751++;
                    _gotoNext = 5215278i32;
                } else if (__value__ == (5215095i32)) {
                    _e.writeByte(_next_5214717);
                    _next_5214717 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5215147i32;
                    } else {
                        _gotoNext = 5215190i32;
                    };
                } else if (__value__ == (5215147i32)) {
                    _e.writeString(_f_5214781._nameEscHTML?.__copy__());
                    _gotoNext = 5215229i32;
                } else if (__value__ == (5215190i32)) {
                    _gotoNext = 5215190i32;
                    _e.writeString(_f_5214781._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5215229i32;
                } else if (__value__ == (5215229i32)) {
                    _opts._quoted = _f_5214781._quoted;
                    _f_5214781._encoder(_e, _fv_5214864?.__copy__(), _opts?.__copy__());
                    _i_5214751++;
                    _gotoNext = 5215278i32;
                } else if (__value__ == (5215277i32)) {
                    _i_5214751 = 0i32;
                    _gotoNext = 5215278i32;
                } else if (__value__ == (5215278i32)) {
                    if (_i_5214751 < (_se._fields._list.length)) {
                        _gotoNext = 5214777i32;
                    } else {
                        _gotoNext = 5215281i32;
                    };
                } else if (__value__ == (5215281i32)) {
                    if (_next_5214717 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5215296i32;
                    } else {
                        _gotoNext = 5215328i32;
                    };
                } else if (__value__ == (5215296i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5215352i32;
                } else if (__value__ == (5215328i32)) {
                    _gotoNext = 5215328i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5215352i32;
                } else if (__value__ == (5215352i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
