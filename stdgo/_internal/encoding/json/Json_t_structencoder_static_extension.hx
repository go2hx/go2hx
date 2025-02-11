package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _i_5443928:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5443933_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5443911:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_5443828:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_5443798:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5443764:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5443764 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5443782i32;
                } else if (__value__ == (5443782i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5444324i32;
                    } else {
                        _gotoNext = 5444328i32;
                    };
                } else if (__value__ == (5443824i32)) {
                    _f_5443828 = (stdgo.Go.setRef(_se._fields._list[(_i_5443798 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5443911 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5443828 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5444081i32;
                    } else {
                        _gotoNext = 5444087i32;
                    };
                } else if (__value__ == (5443947i32)) {
                    _i_5443928 = (@:checkr _f_5443828 ?? throw "null pointer dereference")._index[(_i_5443933_0 : stdgo.GoInt)];
                    if (_fv_5443911.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5443984i32;
                    } else {
                        _gotoNext = 5444063i32;
                    };
                } else if (__value__ == (5443984i32)) {
                    if (_fv_5443911.isNil()) {
                        _gotoNext = 5444004i32;
                    } else {
                        _gotoNext = 5444040i32;
                    };
                } else if (__value__ == (5444004i32)) {
                    _i_5443798++;
                    _gotoNext = 5444325i32;
                } else if (__value__ == (5444040i32)) {
                    _fv_5443911 = _fv_5443911.elem()?.__copy__();
                    _gotoNext = 5444063i32;
                } else if (__value__ == (5444063i32)) {
                    _fv_5443911 = _fv_5443911.field(_i_5443928)?.__copy__();
                    _i_5443933_0++;
                    _gotoNext = 5444082i32;
                } else if (__value__ == (5444081i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5443828 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5443933_0 = __tmp__0;
                        _i_5443928 = __tmp__1;
                    };
                    _gotoNext = 5444082i32;
                } else if (__value__ == (5444082i32)) {
                    if (_i_5443933_0 < ((@:checkr _f_5443828 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5443947i32;
                    } else {
                        _gotoNext = 5444087i32;
                    };
                } else if (__value__ == (5444087i32)) {
                    if (((@:checkr _f_5443828 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5443911?.__copy__()) : Bool)) {
                        _gotoNext = 5444122i32;
                    } else {
                        _gotoNext = 5444142i32;
                    };
                } else if (__value__ == (5444122i32)) {
                    _i_5443798++;
                    _gotoNext = 5444325i32;
                } else if (__value__ == (5444142i32)) {
                    @:check2r _e.writeByte(_next_5443764);
                    _next_5443764 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5444194i32;
                    } else {
                        _gotoNext = 5444237i32;
                    };
                } else if (__value__ == (5444194i32)) {
                    @:check2r _e.writeString((@:checkr _f_5443828 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5444276i32;
                } else if (__value__ == (5444237i32)) {
                    _gotoNext = 5444237i32;
                    @:check2r _e.writeString((@:checkr _f_5443828 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5444276i32;
                } else if (__value__ == (5444276i32)) {
                    _opts._quoted = (@:checkr _f_5443828 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5443828 ?? throw "null pointer dereference")._encoder(_e, _fv_5443911?.__copy__(), _opts?.__copy__());
                    _i_5443798++;
                    _gotoNext = 5444325i32;
                } else if (__value__ == (5444324i32)) {
                    _i_5443798 = 0i32;
                    _gotoNext = 5444325i32;
                } else if (__value__ == (5444325i32)) {
                    if (_i_5443798 < (_se._fields._list.length)) {
                        _gotoNext = 5443824i32;
                    } else {
                        _gotoNext = 5444328i32;
                    };
                } else if (__value__ == (5444328i32)) {
                    if (_next_5443764 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5444343i32;
                    } else {
                        _gotoNext = 5444375i32;
                    };
                } else if (__value__ == (5444343i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5444399i32;
                } else if (__value__ == (5444375i32)) {
                    _gotoNext = 5444375i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5444399i32;
                } else if (__value__ == (5444399i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
