package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _f_4841682:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_4841652:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_4841618:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_4841782:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_4841787_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_4841765:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_4841618 = (123 : stdgo.GoUInt8);
                    _gotoNext = 4841636i32;
                } else if (__value__ == (4841636i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 4842178i32;
                    } else {
                        _gotoNext = 4842182i32;
                    };
                } else if (__value__ == (4841678i32)) {
                    _f_4841682 = (stdgo.Go.setRef(_se._fields._list[(_i_4841652 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_4841765 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_4841682 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 4841935i32;
                    } else {
                        _gotoNext = 4841941i32;
                    };
                } else if (__value__ == (4841801i32)) {
                    _i_4841782 = (@:checkr _f_4841682 ?? throw "null pointer dereference")._index[(_i_4841787_0 : stdgo.GoInt)];
                    if (_fv_4841765.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 4841838i32;
                    } else {
                        _gotoNext = 4841917i32;
                    };
                } else if (__value__ == (4841838i32)) {
                    if (_fv_4841765.isNil()) {
                        _gotoNext = 4841858i32;
                    } else {
                        _gotoNext = 4841894i32;
                    };
                } else if (__value__ == (4841858i32)) {
                    _i_4841652++;
                    _gotoNext = 4842179i32;
                } else if (__value__ == (4841894i32)) {
                    _fv_4841765 = _fv_4841765.elem()?.__copy__();
                    _gotoNext = 4841917i32;
                } else if (__value__ == (4841917i32)) {
                    _fv_4841765 = _fv_4841765.field(_i_4841782)?.__copy__();
                    _i_4841787_0++;
                    _gotoNext = 4841936i32;
                } else if (__value__ == (4841935i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_4841682 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_4841787_0 = __tmp__0;
                        _i_4841782 = __tmp__1;
                    };
                    _gotoNext = 4841936i32;
                } else if (__value__ == (4841936i32)) {
                    if (_i_4841787_0 < ((@:checkr _f_4841682 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 4841801i32;
                    } else {
                        _gotoNext = 4841941i32;
                    };
                } else if (__value__ == (4841941i32)) {
                    if (((@:checkr _f_4841682 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_4841765?.__copy__()) : Bool)) {
                        _gotoNext = 4841976i32;
                    } else {
                        _gotoNext = 4841996i32;
                    };
                } else if (__value__ == (4841976i32)) {
                    _i_4841652++;
                    _gotoNext = 4842179i32;
                } else if (__value__ == (4841996i32)) {
                    @:check2r _e.writeByte(_next_4841618);
                    _next_4841618 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 4842048i32;
                    } else {
                        _gotoNext = 4842091i32;
                    };
                } else if (__value__ == (4842048i32)) {
                    @:check2r _e.writeString((@:checkr _f_4841682 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 4842130i32;
                } else if (__value__ == (4842091i32)) {
                    _gotoNext = 4842091i32;
                    @:check2r _e.writeString((@:checkr _f_4841682 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 4842130i32;
                } else if (__value__ == (4842130i32)) {
                    _opts._quoted = (@:checkr _f_4841682 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_4841682 ?? throw "null pointer dereference")._encoder(_e, _fv_4841765?.__copy__(), _opts?.__copy__());
                    _i_4841652++;
                    _gotoNext = 4842179i32;
                } else if (__value__ == (4842178i32)) {
                    _i_4841652 = 0i32;
                    _gotoNext = 4842179i32;
                } else if (__value__ == (4842179i32)) {
                    if (_i_4841652 < (_se._fields._list.length)) {
                        _gotoNext = 4841678i32;
                    } else {
                        _gotoNext = 4842182i32;
                    };
                } else if (__value__ == (4842182i32)) {
                    if (_next_4841618 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 4842197i32;
                    } else {
                        _gotoNext = 4842229i32;
                    };
                } else if (__value__ == (4842197i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 4842253i32;
                } else if (__value__ == (4842229i32)) {
                    _gotoNext = 4842229i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 4842253i32;
                } else if (__value__ == (4842253i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
