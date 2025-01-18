package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _f_5273534:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5273504:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5273470:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5273634:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5273639_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5273617:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5273470 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5273488i32;
                } else if (__value__ == (5273488i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5274030i32;
                    } else {
                        _gotoNext = 5274034i32;
                    };
                } else if (__value__ == (5273530i32)) {
                    _f_5273534 = (stdgo.Go.setRef(_se._fields._list[(_i_5273504 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5273617 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5273534 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5273787i32;
                    } else {
                        _gotoNext = 5273793i32;
                    };
                } else if (__value__ == (5273653i32)) {
                    _i_5273634 = (@:checkr _f_5273534 ?? throw "null pointer dereference")._index[(_i_5273639_0 : stdgo.GoInt)];
                    if (_fv_5273617.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5273690i32;
                    } else {
                        _gotoNext = 5273769i32;
                    };
                } else if (__value__ == (5273690i32)) {
                    if (_fv_5273617.isNil()) {
                        _gotoNext = 5273710i32;
                    } else {
                        _gotoNext = 5273746i32;
                    };
                } else if (__value__ == (5273710i32)) {
                    _i_5273504++;
                    _gotoNext = 5274031i32;
                } else if (__value__ == (5273746i32)) {
                    _fv_5273617 = _fv_5273617.elem()?.__copy__();
                    _gotoNext = 5273769i32;
                } else if (__value__ == (5273769i32)) {
                    _fv_5273617 = _fv_5273617.field(_i_5273634)?.__copy__();
                    _i_5273639_0++;
                    _gotoNext = 5273788i32;
                } else if (__value__ == (5273787i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5273534 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5273639_0 = __tmp__0;
                        _i_5273634 = __tmp__1;
                    };
                    _gotoNext = 5273788i32;
                } else if (__value__ == (5273788i32)) {
                    if (_i_5273639_0 < ((@:checkr _f_5273534 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5273653i32;
                    } else {
                        _gotoNext = 5273793i32;
                    };
                } else if (__value__ == (5273793i32)) {
                    if (((@:checkr _f_5273534 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5273617?.__copy__()) : Bool)) {
                        _gotoNext = 5273828i32;
                    } else {
                        _gotoNext = 5273848i32;
                    };
                } else if (__value__ == (5273828i32)) {
                    _i_5273504++;
                    _gotoNext = 5274031i32;
                } else if (__value__ == (5273848i32)) {
                    @:check2r _e.writeByte(_next_5273470);
                    _next_5273470 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5273900i32;
                    } else {
                        _gotoNext = 5273943i32;
                    };
                } else if (__value__ == (5273900i32)) {
                    @:check2r _e.writeString((@:checkr _f_5273534 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5273982i32;
                } else if (__value__ == (5273943i32)) {
                    _gotoNext = 5273943i32;
                    @:check2r _e.writeString((@:checkr _f_5273534 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5273982i32;
                } else if (__value__ == (5273982i32)) {
                    _opts._quoted = (@:checkr _f_5273534 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5273534 ?? throw "null pointer dereference")._encoder(_e, _fv_5273617?.__copy__(), _opts?.__copy__());
                    _i_5273504++;
                    _gotoNext = 5274031i32;
                } else if (__value__ == (5274030i32)) {
                    _i_5273504 = 0i32;
                    _gotoNext = 5274031i32;
                } else if (__value__ == (5274031i32)) {
                    if (_i_5273504 < (_se._fields._list.length)) {
                        _gotoNext = 5273530i32;
                    } else {
                        _gotoNext = 5274034i32;
                    };
                } else if (__value__ == (5274034i32)) {
                    if (_next_5273470 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5274049i32;
                    } else {
                        _gotoNext = 5274081i32;
                    };
                } else if (__value__ == (5274049i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5274105i32;
                } else if (__value__ == (5274081i32)) {
                    _gotoNext = 5274081i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5274105i32;
                } else if (__value__ == (5274105i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
