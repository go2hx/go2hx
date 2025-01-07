package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _fv_5470714:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5470631:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5470601:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5470567:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5470731:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5470736_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5470567 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5470585i32;
                } else if (__value__ == (5470585i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5471127i32;
                    } else {
                        _gotoNext = 5471131i32;
                    };
                } else if (__value__ == (5470627i32)) {
                    _f_5470631 = (stdgo.Go.setRef(_se._fields._list[(_i_5470601 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5470714 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5470631 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5470884i32;
                    } else {
                        _gotoNext = 5470890i32;
                    };
                } else if (__value__ == (5470750i32)) {
                    _i_5470731 = (@:checkr _f_5470631 ?? throw "null pointer dereference")._index[(_i_5470736_0 : stdgo.GoInt)];
                    if (_fv_5470714.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5470787i32;
                    } else {
                        _gotoNext = 5470866i32;
                    };
                } else if (__value__ == (5470787i32)) {
                    if (_fv_5470714.isNil()) {
                        _gotoNext = 5470807i32;
                    } else {
                        _gotoNext = 5470843i32;
                    };
                } else if (__value__ == (5470807i32)) {
                    _i_5470601++;
                    _gotoNext = 5471128i32;
                } else if (__value__ == (5470843i32)) {
                    _fv_5470714 = _fv_5470714.elem()?.__copy__();
                    _gotoNext = 5470866i32;
                } else if (__value__ == (5470866i32)) {
                    _fv_5470714 = _fv_5470714.field(_i_5470731)?.__copy__();
                    _i_5470736_0++;
                    _gotoNext = 5470885i32;
                } else if (__value__ == (5470884i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5470631 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5470736_0 = __tmp__0;
                        _i_5470731 = __tmp__1;
                    };
                    _gotoNext = 5470885i32;
                } else if (__value__ == (5470885i32)) {
                    if (_i_5470736_0 < ((@:checkr _f_5470631 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5470750i32;
                    } else {
                        _gotoNext = 5470890i32;
                    };
                } else if (__value__ == (5470890i32)) {
                    if (((@:checkr _f_5470631 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5470714?.__copy__()) : Bool)) {
                        _gotoNext = 5470925i32;
                    } else {
                        _gotoNext = 5470945i32;
                    };
                } else if (__value__ == (5470925i32)) {
                    _i_5470601++;
                    _gotoNext = 5471128i32;
                } else if (__value__ == (5470945i32)) {
                    @:check2r _e.writeByte(_next_5470567);
                    _next_5470567 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5470997i32;
                    } else {
                        _gotoNext = 5471040i32;
                    };
                } else if (__value__ == (5470997i32)) {
                    @:check2r _e.writeString((@:checkr _f_5470631 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5471079i32;
                } else if (__value__ == (5471040i32)) {
                    _gotoNext = 5471040i32;
                    @:check2r _e.writeString((@:checkr _f_5470631 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5471079i32;
                } else if (__value__ == (5471079i32)) {
                    _opts._quoted = (@:checkr _f_5470631 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5470631 ?? throw "null pointer dereference")._encoder(_e, _fv_5470714?.__copy__(), _opts?.__copy__());
                    _i_5470601++;
                    _gotoNext = 5471128i32;
                } else if (__value__ == (5471127i32)) {
                    _i_5470601 = 0i32;
                    _gotoNext = 5471128i32;
                } else if (__value__ == (5471128i32)) {
                    if (_i_5470601 < (_se._fields._list.length)) {
                        _gotoNext = 5470627i32;
                    } else {
                        _gotoNext = 5471131i32;
                    };
                } else if (__value__ == (5471131i32)) {
                    if (_next_5470567 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5471146i32;
                    } else {
                        _gotoNext = 5471178i32;
                    };
                } else if (__value__ == (5471146i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5471202i32;
                } else if (__value__ == (5471178i32)) {
                    _gotoNext = 5471178i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5471202i32;
                } else if (__value__ == (5471202i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
