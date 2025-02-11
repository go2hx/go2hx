package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _i_5230782:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5230748:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5230912:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5230917_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5230895:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_5230812:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5230748 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5230766i32;
                } else if (__value__ == (5230766i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5231308i32;
                    } else {
                        _gotoNext = 5231312i32;
                    };
                } else if (__value__ == (5230808i32)) {
                    _f_5230812 = (stdgo.Go.setRef(_se._fields._list[(_i_5230782 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5230895 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5230812 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5231065i32;
                    } else {
                        _gotoNext = 5231071i32;
                    };
                } else if (__value__ == (5230931i32)) {
                    _i_5230912 = (@:checkr _f_5230812 ?? throw "null pointer dereference")._index[(_i_5230917_0 : stdgo.GoInt)];
                    if (_fv_5230895.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5230968i32;
                    } else {
                        _gotoNext = 5231047i32;
                    };
                } else if (__value__ == (5230968i32)) {
                    if (_fv_5230895.isNil()) {
                        _gotoNext = 5230988i32;
                    } else {
                        _gotoNext = 5231024i32;
                    };
                } else if (__value__ == (5230988i32)) {
                    _i_5230782++;
                    _gotoNext = 5231309i32;
                } else if (__value__ == (5231024i32)) {
                    _fv_5230895 = _fv_5230895.elem()?.__copy__();
                    _gotoNext = 5231047i32;
                } else if (__value__ == (5231047i32)) {
                    _fv_5230895 = _fv_5230895.field(_i_5230912)?.__copy__();
                    _i_5230917_0++;
                    _gotoNext = 5231066i32;
                } else if (__value__ == (5231065i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5230812 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5230917_0 = __tmp__0;
                        _i_5230912 = __tmp__1;
                    };
                    _gotoNext = 5231066i32;
                } else if (__value__ == (5231066i32)) {
                    if (_i_5230917_0 < ((@:checkr _f_5230812 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5230931i32;
                    } else {
                        _gotoNext = 5231071i32;
                    };
                } else if (__value__ == (5231071i32)) {
                    if (((@:checkr _f_5230812 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5230895?.__copy__()) : Bool)) {
                        _gotoNext = 5231106i32;
                    } else {
                        _gotoNext = 5231126i32;
                    };
                } else if (__value__ == (5231106i32)) {
                    _i_5230782++;
                    _gotoNext = 5231309i32;
                } else if (__value__ == (5231126i32)) {
                    @:check2r _e.writeByte(_next_5230748);
                    _next_5230748 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5231178i32;
                    } else {
                        _gotoNext = 5231221i32;
                    };
                } else if (__value__ == (5231178i32)) {
                    @:check2r _e.writeString((@:checkr _f_5230812 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5231260i32;
                } else if (__value__ == (5231221i32)) {
                    _gotoNext = 5231221i32;
                    @:check2r _e.writeString((@:checkr _f_5230812 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5231260i32;
                } else if (__value__ == (5231260i32)) {
                    _opts._quoted = (@:checkr _f_5230812 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5230812 ?? throw "null pointer dereference")._encoder(_e, _fv_5230895?.__copy__(), _opts?.__copy__());
                    _i_5230782++;
                    _gotoNext = 5231309i32;
                } else if (__value__ == (5231308i32)) {
                    _i_5230782 = 0i32;
                    _gotoNext = 5231309i32;
                } else if (__value__ == (5231309i32)) {
                    if (_i_5230782 < (_se._fields._list.length)) {
                        _gotoNext = 5230808i32;
                    } else {
                        _gotoNext = 5231312i32;
                    };
                } else if (__value__ == (5231312i32)) {
                    if (_next_5230748 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5231327i32;
                    } else {
                        _gotoNext = 5231359i32;
                    };
                } else if (__value__ == (5231327i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5231383i32;
                } else if (__value__ == (5231359i32)) {
                    _gotoNext = 5231359i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5231383i32;
                } else if (__value__ == (5231383i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
