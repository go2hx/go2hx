package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _f_5415809:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5415779:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5415745:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5415909:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5415914_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5415892:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5415745 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5415763i32;
                } else if (__value__ == (5415763i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5416305i32;
                    } else {
                        _gotoNext = 5416309i32;
                    };
                } else if (__value__ == (5415805i32)) {
                    _f_5415809 = (stdgo.Go.setRef(_se._fields._list[(_i_5415779 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5415892 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5415809 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5416062i32;
                    } else {
                        _gotoNext = 5416068i32;
                    };
                } else if (__value__ == (5415928i32)) {
                    _i_5415909 = (@:checkr _f_5415809 ?? throw "null pointer dereference")._index[(_i_5415914_0 : stdgo.GoInt)];
                    if (_fv_5415892.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5415965i32;
                    } else {
                        _gotoNext = 5416044i32;
                    };
                } else if (__value__ == (5415965i32)) {
                    if (_fv_5415892.isNil()) {
                        _gotoNext = 5415985i32;
                    } else {
                        _gotoNext = 5416021i32;
                    };
                } else if (__value__ == (5415985i32)) {
                    _i_5415779++;
                    _gotoNext = 5416306i32;
                } else if (__value__ == (5416021i32)) {
                    _fv_5415892 = _fv_5415892.elem()?.__copy__();
                    _gotoNext = 5416044i32;
                } else if (__value__ == (5416044i32)) {
                    _fv_5415892 = _fv_5415892.field(_i_5415909)?.__copy__();
                    _i_5415914_0++;
                    _gotoNext = 5416063i32;
                } else if (__value__ == (5416062i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5415809 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5415914_0 = __tmp__0;
                        _i_5415909 = __tmp__1;
                    };
                    _gotoNext = 5416063i32;
                } else if (__value__ == (5416063i32)) {
                    if (_i_5415914_0 < ((@:checkr _f_5415809 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5415928i32;
                    } else {
                        _gotoNext = 5416068i32;
                    };
                } else if (__value__ == (5416068i32)) {
                    if (((@:checkr _f_5415809 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5415892?.__copy__()) : Bool)) {
                        _gotoNext = 5416103i32;
                    } else {
                        _gotoNext = 5416123i32;
                    };
                } else if (__value__ == (5416103i32)) {
                    _i_5415779++;
                    _gotoNext = 5416306i32;
                } else if (__value__ == (5416123i32)) {
                    @:check2r _e.writeByte(_next_5415745);
                    _next_5415745 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5416175i32;
                    } else {
                        _gotoNext = 5416218i32;
                    };
                } else if (__value__ == (5416175i32)) {
                    @:check2r _e.writeString((@:checkr _f_5415809 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5416257i32;
                } else if (__value__ == (5416218i32)) {
                    _gotoNext = 5416218i32;
                    @:check2r _e.writeString((@:checkr _f_5415809 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5416257i32;
                } else if (__value__ == (5416257i32)) {
                    _opts._quoted = (@:checkr _f_5415809 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5415809 ?? throw "null pointer dereference")._encoder(_e, _fv_5415892?.__copy__(), _opts?.__copy__());
                    _i_5415779++;
                    _gotoNext = 5416306i32;
                } else if (__value__ == (5416305i32)) {
                    _i_5415779 = 0i32;
                    _gotoNext = 5416306i32;
                } else if (__value__ == (5416306i32)) {
                    if (_i_5415779 < (_se._fields._list.length)) {
                        _gotoNext = 5415805i32;
                    } else {
                        _gotoNext = 5416309i32;
                    };
                } else if (__value__ == (5416309i32)) {
                    if (_next_5415745 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5416324i32;
                    } else {
                        _gotoNext = 5416356i32;
                    };
                } else if (__value__ == (5416324i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5416380i32;
                } else if (__value__ == (5416356i32)) {
                    _gotoNext = 5416356i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5416380i32;
                } else if (__value__ == (5416380i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
