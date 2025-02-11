package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _i_5450927_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5450905:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_5450822:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_5450792:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5450758:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5450922:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5450758 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5450776i32;
                } else if (__value__ == (5450776i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5451318i32;
                    } else {
                        _gotoNext = 5451322i32;
                    };
                } else if (__value__ == (5450818i32)) {
                    _f_5450822 = (stdgo.Go.setRef(_se._fields._list[(_i_5450792 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5450905 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5450822 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5451075i32;
                    } else {
                        _gotoNext = 5451081i32;
                    };
                } else if (__value__ == (5450941i32)) {
                    _i_5450922 = (@:checkr _f_5450822 ?? throw "null pointer dereference")._index[(_i_5450927_0 : stdgo.GoInt)];
                    if (_fv_5450905.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5450978i32;
                    } else {
                        _gotoNext = 5451057i32;
                    };
                } else if (__value__ == (5450978i32)) {
                    if (_fv_5450905.isNil()) {
                        _gotoNext = 5450998i32;
                    } else {
                        _gotoNext = 5451034i32;
                    };
                } else if (__value__ == (5450998i32)) {
                    _i_5450792++;
                    _gotoNext = 5451319i32;
                } else if (__value__ == (5451034i32)) {
                    _fv_5450905 = _fv_5450905.elem()?.__copy__();
                    _gotoNext = 5451057i32;
                } else if (__value__ == (5451057i32)) {
                    _fv_5450905 = _fv_5450905.field(_i_5450922)?.__copy__();
                    _i_5450927_0++;
                    _gotoNext = 5451076i32;
                } else if (__value__ == (5451075i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5450822 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5450927_0 = __tmp__0;
                        _i_5450922 = __tmp__1;
                    };
                    _gotoNext = 5451076i32;
                } else if (__value__ == (5451076i32)) {
                    if (_i_5450927_0 < ((@:checkr _f_5450822 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5450941i32;
                    } else {
                        _gotoNext = 5451081i32;
                    };
                } else if (__value__ == (5451081i32)) {
                    if (((@:checkr _f_5450822 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5450905?.__copy__()) : Bool)) {
                        _gotoNext = 5451116i32;
                    } else {
                        _gotoNext = 5451136i32;
                    };
                } else if (__value__ == (5451116i32)) {
                    _i_5450792++;
                    _gotoNext = 5451319i32;
                } else if (__value__ == (5451136i32)) {
                    @:check2r _e.writeByte(_next_5450758);
                    _next_5450758 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5451188i32;
                    } else {
                        _gotoNext = 5451231i32;
                    };
                } else if (__value__ == (5451188i32)) {
                    @:check2r _e.writeString((@:checkr _f_5450822 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5451270i32;
                } else if (__value__ == (5451231i32)) {
                    _gotoNext = 5451231i32;
                    @:check2r _e.writeString((@:checkr _f_5450822 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5451270i32;
                } else if (__value__ == (5451270i32)) {
                    _opts._quoted = (@:checkr _f_5450822 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5450822 ?? throw "null pointer dereference")._encoder(_e, _fv_5450905?.__copy__(), _opts?.__copy__());
                    _i_5450792++;
                    _gotoNext = 5451319i32;
                } else if (__value__ == (5451318i32)) {
                    _i_5450792 = 0i32;
                    _gotoNext = 5451319i32;
                } else if (__value__ == (5451319i32)) {
                    if (_i_5450792 < (_se._fields._list.length)) {
                        _gotoNext = 5450818i32;
                    } else {
                        _gotoNext = 5451322i32;
                    };
                } else if (__value__ == (5451322i32)) {
                    if (_next_5450758 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5451337i32;
                    } else {
                        _gotoNext = 5451369i32;
                    };
                } else if (__value__ == (5451337i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5451393i32;
                } else if (__value__ == (5451369i32)) {
                    _gotoNext = 5451369i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5451393i32;
                } else if (__value__ == (5451393i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
