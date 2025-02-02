package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5195468:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5195434:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5195598:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5195603_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5195581:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5195498:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5195434 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5195452i32;
                } else if (__value__ == (5195452i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5195994i32;
                    } else {
                        _gotoNext = 5195998i32;
                    };
                } else if (__value__ == (5195494i32)) {
                    _f_5195498 = (stdgo.Go.setRef(_se._fields._list[(_i_5195468 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5195581 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5195498 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5195751i32;
                    } else {
                        _gotoNext = 5195757i32;
                    };
                } else if (__value__ == (5195617i32)) {
                    _i_5195598 = (@:checkr _f_5195498 ?? throw "null pointer dereference")._index[(_i_5195603_0 : stdgo.GoInt)];
                    if (_fv_5195581.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5195654i32;
                    } else {
                        _gotoNext = 5195733i32;
                    };
                } else if (__value__ == (5195654i32)) {
                    if (_fv_5195581.isNil()) {
                        _gotoNext = 5195674i32;
                    } else {
                        _gotoNext = 5195710i32;
                    };
                } else if (__value__ == (5195674i32)) {
                    _i_5195468++;
                    _gotoNext = 5195995i32;
                } else if (__value__ == (5195710i32)) {
                    _fv_5195581 = _fv_5195581.elem()?.__copy__();
                    _gotoNext = 5195733i32;
                } else if (__value__ == (5195733i32)) {
                    _fv_5195581 = _fv_5195581.field(_i_5195598)?.__copy__();
                    _i_5195603_0++;
                    _gotoNext = 5195752i32;
                } else if (__value__ == (5195751i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5195498 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5195603_0 = __tmp__0;
                        _i_5195598 = __tmp__1;
                    };
                    _gotoNext = 5195752i32;
                } else if (__value__ == (5195752i32)) {
                    if (_i_5195603_0 < ((@:checkr _f_5195498 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5195617i32;
                    } else {
                        _gotoNext = 5195757i32;
                    };
                } else if (__value__ == (5195757i32)) {
                    if (((@:checkr _f_5195498 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5195581?.__copy__()) : Bool)) {
                        _gotoNext = 5195792i32;
                    } else {
                        _gotoNext = 5195812i32;
                    };
                } else if (__value__ == (5195792i32)) {
                    _i_5195468++;
                    _gotoNext = 5195995i32;
                } else if (__value__ == (5195812i32)) {
                    @:check2r _e.writeByte(_next_5195434);
                    _next_5195434 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5195864i32;
                    } else {
                        _gotoNext = 5195907i32;
                    };
                } else if (__value__ == (5195864i32)) {
                    @:check2r _e.writeString((@:checkr _f_5195498 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5195946i32;
                } else if (__value__ == (5195907i32)) {
                    _gotoNext = 5195907i32;
                    @:check2r _e.writeString((@:checkr _f_5195498 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5195946i32;
                } else if (__value__ == (5195946i32)) {
                    _opts._quoted = (@:checkr _f_5195498 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5195498 ?? throw "null pointer dereference")._encoder(_e, _fv_5195581?.__copy__(), _opts?.__copy__());
                    _i_5195468++;
                    _gotoNext = 5195995i32;
                } else if (__value__ == (5195994i32)) {
                    _i_5195468 = 0i32;
                    _gotoNext = 5195995i32;
                } else if (__value__ == (5195995i32)) {
                    if (_i_5195468 < (_se._fields._list.length)) {
                        _gotoNext = 5195494i32;
                    } else {
                        _gotoNext = 5195998i32;
                    };
                } else if (__value__ == (5195998i32)) {
                    if (_next_5195434 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5196013i32;
                    } else {
                        _gotoNext = 5196045i32;
                    };
                } else if (__value__ == (5196013i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5196069i32;
                } else if (__value__ == (5196045i32)) {
                    _gotoNext = 5196045i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5196069i32;
                } else if (__value__ == (5196069i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
