package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5396788_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5396766:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5396683:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5396653:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5396619:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5396783:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5396619 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5396637i32;
                } else if (__value__ == (5396637i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5397179i32;
                    } else {
                        _gotoNext = 5397183i32;
                    };
                } else if (__value__ == (5396679i32)) {
                    _f_5396683 = (stdgo.Go.setRef(_se._fields._list[(_i_5396653 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5396766 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5396683 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5396936i32;
                    } else {
                        _gotoNext = 5396942i32;
                    };
                } else if (__value__ == (5396802i32)) {
                    _i_5396783 = (@:checkr _f_5396683 ?? throw "null pointer dereference")._index[(_i_5396788_0 : stdgo.GoInt)];
                    if (_fv_5396766.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5396839i32;
                    } else {
                        _gotoNext = 5396918i32;
                    };
                } else if (__value__ == (5396839i32)) {
                    if (_fv_5396766.isNil()) {
                        _gotoNext = 5396859i32;
                    } else {
                        _gotoNext = 5396895i32;
                    };
                } else if (__value__ == (5396859i32)) {
                    _i_5396653++;
                    _gotoNext = 5397180i32;
                } else if (__value__ == (5396895i32)) {
                    _fv_5396766 = _fv_5396766.elem()?.__copy__();
                    _gotoNext = 5396918i32;
                } else if (__value__ == (5396918i32)) {
                    _fv_5396766 = _fv_5396766.field(_i_5396783)?.__copy__();
                    _i_5396788_0++;
                    _gotoNext = 5396937i32;
                } else if (__value__ == (5396936i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5396683 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5396788_0 = __tmp__0;
                        _i_5396783 = __tmp__1;
                    };
                    _gotoNext = 5396937i32;
                } else if (__value__ == (5396937i32)) {
                    if (_i_5396788_0 < ((@:checkr _f_5396683 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5396802i32;
                    } else {
                        _gotoNext = 5396942i32;
                    };
                } else if (__value__ == (5396942i32)) {
                    if (((@:checkr _f_5396683 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5396766?.__copy__()) : Bool)) {
                        _gotoNext = 5396977i32;
                    } else {
                        _gotoNext = 5396997i32;
                    };
                } else if (__value__ == (5396977i32)) {
                    _i_5396653++;
                    _gotoNext = 5397180i32;
                } else if (__value__ == (5396997i32)) {
                    @:check2r _e.writeByte(_next_5396619);
                    _next_5396619 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5397049i32;
                    } else {
                        _gotoNext = 5397092i32;
                    };
                } else if (__value__ == (5397049i32)) {
                    @:check2r _e.writeString((@:checkr _f_5396683 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5397131i32;
                } else if (__value__ == (5397092i32)) {
                    _gotoNext = 5397092i32;
                    @:check2r _e.writeString((@:checkr _f_5396683 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5397131i32;
                } else if (__value__ == (5397131i32)) {
                    _opts._quoted = (@:checkr _f_5396683 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5396683 ?? throw "null pointer dereference")._encoder(_e, _fv_5396766?.__copy__(), _opts?.__copy__());
                    _i_5396653++;
                    _gotoNext = 5397180i32;
                } else if (__value__ == (5397179i32)) {
                    _i_5396653 = 0i32;
                    _gotoNext = 5397180i32;
                } else if (__value__ == (5397180i32)) {
                    if (_i_5396653 < (_se._fields._list.length)) {
                        _gotoNext = 5396679i32;
                    } else {
                        _gotoNext = 5397183i32;
                    };
                } else if (__value__ == (5397183i32)) {
                    if (_next_5396619 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5397198i32;
                    } else {
                        _gotoNext = 5397230i32;
                    };
                } else if (__value__ == (5397198i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5397254i32;
                } else if (__value__ == (5397230i32)) {
                    _gotoNext = 5397230i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5397254i32;
                } else if (__value__ == (5397254i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
