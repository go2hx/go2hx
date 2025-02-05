package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _f_5588702:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_5588672:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5588638:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5588802:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5588807_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5588785:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5588638 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5588656i32;
                } else if (__value__ == (5588656i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5589198i32;
                    } else {
                        _gotoNext = 5589202i32;
                    };
                } else if (__value__ == (5588698i32)) {
                    _f_5588702 = (stdgo.Go.setRef(_se._fields._list[(_i_5588672 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5588785 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5588702 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5588955i32;
                    } else {
                        _gotoNext = 5588961i32;
                    };
                } else if (__value__ == (5588821i32)) {
                    _i_5588802 = (@:checkr _f_5588702 ?? throw "null pointer dereference")._index[(_i_5588807_0 : stdgo.GoInt)];
                    if (_fv_5588785.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5588858i32;
                    } else {
                        _gotoNext = 5588937i32;
                    };
                } else if (__value__ == (5588858i32)) {
                    if (_fv_5588785.isNil()) {
                        _gotoNext = 5588878i32;
                    } else {
                        _gotoNext = 5588914i32;
                    };
                } else if (__value__ == (5588878i32)) {
                    _i_5588672++;
                    _gotoNext = 5589199i32;
                } else if (__value__ == (5588914i32)) {
                    _fv_5588785 = _fv_5588785.elem()?.__copy__();
                    _gotoNext = 5588937i32;
                } else if (__value__ == (5588937i32)) {
                    _fv_5588785 = _fv_5588785.field(_i_5588802)?.__copy__();
                    _i_5588807_0++;
                    _gotoNext = 5588956i32;
                } else if (__value__ == (5588955i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5588702 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5588807_0 = __tmp__0;
                        _i_5588802 = __tmp__1;
                    };
                    _gotoNext = 5588956i32;
                } else if (__value__ == (5588956i32)) {
                    if (_i_5588807_0 < ((@:checkr _f_5588702 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5588821i32;
                    } else {
                        _gotoNext = 5588961i32;
                    };
                } else if (__value__ == (5588961i32)) {
                    if (((@:checkr _f_5588702 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5588785?.__copy__()) : Bool)) {
                        _gotoNext = 5588996i32;
                    } else {
                        _gotoNext = 5589016i32;
                    };
                } else if (__value__ == (5588996i32)) {
                    _i_5588672++;
                    _gotoNext = 5589199i32;
                } else if (__value__ == (5589016i32)) {
                    @:check2r _e.writeByte(_next_5588638);
                    _next_5588638 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5589068i32;
                    } else {
                        _gotoNext = 5589111i32;
                    };
                } else if (__value__ == (5589068i32)) {
                    @:check2r _e.writeString((@:checkr _f_5588702 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5589150i32;
                } else if (__value__ == (5589111i32)) {
                    _gotoNext = 5589111i32;
                    @:check2r _e.writeString((@:checkr _f_5588702 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5589150i32;
                } else if (__value__ == (5589150i32)) {
                    _opts._quoted = (@:checkr _f_5588702 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5588702 ?? throw "null pointer dereference")._encoder(_e, _fv_5588785?.__copy__(), _opts?.__copy__());
                    _i_5588672++;
                    _gotoNext = 5589199i32;
                } else if (__value__ == (5589198i32)) {
                    _i_5588672 = 0i32;
                    _gotoNext = 5589199i32;
                } else if (__value__ == (5589199i32)) {
                    if (_i_5588672 < (_se._fields._list.length)) {
                        _gotoNext = 5588698i32;
                    } else {
                        _gotoNext = 5589202i32;
                    };
                } else if (__value__ == (5589202i32)) {
                    if (_next_5588638 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5589217i32;
                    } else {
                        _gotoNext = 5589249i32;
                    };
                } else if (__value__ == (5589217i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5589273i32;
                } else if (__value__ == (5589249i32)) {
                    _gotoNext = 5589249i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5589273i32;
                } else if (__value__ == (5589273i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
