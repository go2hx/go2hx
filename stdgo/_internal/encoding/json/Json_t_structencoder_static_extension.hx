package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _i_5360792:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5360758:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5360922:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5360927_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5360905:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_5360822:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5360758 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5360776i32;
                } else if (__value__ == (5360776i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5361318i32;
                    } else {
                        _gotoNext = 5361322i32;
                    };
                } else if (__value__ == (5360818i32)) {
                    _f_5360822 = (stdgo.Go.setRef(_se._fields._list[(_i_5360792 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5360905 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5360822 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5361075i32;
                    } else {
                        _gotoNext = 5361081i32;
                    };
                } else if (__value__ == (5360941i32)) {
                    _i_5360922 = (@:checkr _f_5360822 ?? throw "null pointer dereference")._index[(_i_5360927_0 : stdgo.GoInt)];
                    if (_fv_5360905.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5360978i32;
                    } else {
                        _gotoNext = 5361057i32;
                    };
                } else if (__value__ == (5360978i32)) {
                    if (_fv_5360905.isNil()) {
                        _gotoNext = 5360998i32;
                    } else {
                        _gotoNext = 5361034i32;
                    };
                } else if (__value__ == (5360998i32)) {
                    _i_5360792++;
                    _gotoNext = 5361319i32;
                } else if (__value__ == (5361034i32)) {
                    _fv_5360905 = _fv_5360905.elem()?.__copy__();
                    _gotoNext = 5361057i32;
                } else if (__value__ == (5361057i32)) {
                    _fv_5360905 = _fv_5360905.field(_i_5360922)?.__copy__();
                    _i_5360927_0++;
                    _gotoNext = 5361076i32;
                } else if (__value__ == (5361075i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5360822 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5360927_0 = __tmp__0;
                        _i_5360922 = __tmp__1;
                    };
                    _gotoNext = 5361076i32;
                } else if (__value__ == (5361076i32)) {
                    if (_i_5360927_0 < ((@:checkr _f_5360822 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5360941i32;
                    } else {
                        _gotoNext = 5361081i32;
                    };
                } else if (__value__ == (5361081i32)) {
                    if (((@:checkr _f_5360822 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5360905?.__copy__()) : Bool)) {
                        _gotoNext = 5361116i32;
                    } else {
                        _gotoNext = 5361136i32;
                    };
                } else if (__value__ == (5361116i32)) {
                    _i_5360792++;
                    _gotoNext = 5361319i32;
                } else if (__value__ == (5361136i32)) {
                    @:check2r _e.writeByte(_next_5360758);
                    _next_5360758 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5361188i32;
                    } else {
                        _gotoNext = 5361231i32;
                    };
                } else if (__value__ == (5361188i32)) {
                    @:check2r _e.writeString((@:checkr _f_5360822 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5361270i32;
                } else if (__value__ == (5361231i32)) {
                    _gotoNext = 5361231i32;
                    @:check2r _e.writeString((@:checkr _f_5360822 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5361270i32;
                } else if (__value__ == (5361270i32)) {
                    _opts._quoted = (@:checkr _f_5360822 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5360822 ?? throw "null pointer dereference")._encoder(_e, _fv_5360905?.__copy__(), _opts?.__copy__());
                    _i_5360792++;
                    _gotoNext = 5361319i32;
                } else if (__value__ == (5361318i32)) {
                    _i_5360792 = 0i32;
                    _gotoNext = 5361319i32;
                } else if (__value__ == (5361319i32)) {
                    if (_i_5360792 < (_se._fields._list.length)) {
                        _gotoNext = 5360818i32;
                    } else {
                        _gotoNext = 5361322i32;
                    };
                } else if (__value__ == (5361322i32)) {
                    if (_next_5360758 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5361337i32;
                    } else {
                        _gotoNext = 5361369i32;
                    };
                } else if (__value__ == (5361337i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5361393i32;
                } else if (__value__ == (5361369i32)) {
                    _gotoNext = 5361369i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5361393i32;
                } else if (__value__ == (5361393i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
