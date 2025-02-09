package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _i_5452838:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5452804:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5452968:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5452973_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5452951:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_5452868:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5452804 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5452822i32;
                } else if (__value__ == (5452822i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5453364i32;
                    } else {
                        _gotoNext = 5453368i32;
                    };
                } else if (__value__ == (5452864i32)) {
                    _f_5452868 = (stdgo.Go.setRef(_se._fields._list[(_i_5452838 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5452951 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5452868 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5453121i32;
                    } else {
                        _gotoNext = 5453127i32;
                    };
                } else if (__value__ == (5452987i32)) {
                    _i_5452968 = (@:checkr _f_5452868 ?? throw "null pointer dereference")._index[(_i_5452973_0 : stdgo.GoInt)];
                    if (_fv_5452951.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5453024i32;
                    } else {
                        _gotoNext = 5453103i32;
                    };
                } else if (__value__ == (5453024i32)) {
                    if (_fv_5452951.isNil()) {
                        _gotoNext = 5453044i32;
                    } else {
                        _gotoNext = 5453080i32;
                    };
                } else if (__value__ == (5453044i32)) {
                    _i_5452838++;
                    _gotoNext = 5453365i32;
                } else if (__value__ == (5453080i32)) {
                    _fv_5452951 = _fv_5452951.elem()?.__copy__();
                    _gotoNext = 5453103i32;
                } else if (__value__ == (5453103i32)) {
                    _fv_5452951 = _fv_5452951.field(_i_5452968)?.__copy__();
                    _i_5452973_0++;
                    _gotoNext = 5453122i32;
                } else if (__value__ == (5453121i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5452868 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5452973_0 = __tmp__0;
                        _i_5452968 = __tmp__1;
                    };
                    _gotoNext = 5453122i32;
                } else if (__value__ == (5453122i32)) {
                    if (_i_5452973_0 < ((@:checkr _f_5452868 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5452987i32;
                    } else {
                        _gotoNext = 5453127i32;
                    };
                } else if (__value__ == (5453127i32)) {
                    if (((@:checkr _f_5452868 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5452951?.__copy__()) : Bool)) {
                        _gotoNext = 5453162i32;
                    } else {
                        _gotoNext = 5453182i32;
                    };
                } else if (__value__ == (5453162i32)) {
                    _i_5452838++;
                    _gotoNext = 5453365i32;
                } else if (__value__ == (5453182i32)) {
                    @:check2r _e.writeByte(_next_5452804);
                    _next_5452804 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5453234i32;
                    } else {
                        _gotoNext = 5453277i32;
                    };
                } else if (__value__ == (5453234i32)) {
                    @:check2r _e.writeString((@:checkr _f_5452868 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5453316i32;
                } else if (__value__ == (5453277i32)) {
                    _gotoNext = 5453277i32;
                    @:check2r _e.writeString((@:checkr _f_5452868 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5453316i32;
                } else if (__value__ == (5453316i32)) {
                    _opts._quoted = (@:checkr _f_5452868 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5452868 ?? throw "null pointer dereference")._encoder(_e, _fv_5452951?.__copy__(), _opts?.__copy__());
                    _i_5452838++;
                    _gotoNext = 5453365i32;
                } else if (__value__ == (5453364i32)) {
                    _i_5452838 = 0i32;
                    _gotoNext = 5453365i32;
                } else if (__value__ == (5453365i32)) {
                    if (_i_5452838 < (_se._fields._list.length)) {
                        _gotoNext = 5452864i32;
                    } else {
                        _gotoNext = 5453368i32;
                    };
                } else if (__value__ == (5453368i32)) {
                    if (_next_5452804 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5453383i32;
                    } else {
                        _gotoNext = 5453415i32;
                    };
                } else if (__value__ == (5453383i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5453439i32;
                } else if (__value__ == (5453415i32)) {
                    _gotoNext = 5453415i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5453439i32;
                } else if (__value__ == (5453439i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
