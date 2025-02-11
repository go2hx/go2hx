package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _i_5967091_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5967069:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_5966986:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_5966956:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5966922:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5967086:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5966922 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5966940i32;
                } else if (__value__ == (5966940i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5967482i32;
                    } else {
                        _gotoNext = 5967486i32;
                    };
                } else if (__value__ == (5966982i32)) {
                    _f_5966986 = (stdgo.Go.setRef(_se._fields._list[(_i_5966956 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5967069 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5966986 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5967239i32;
                    } else {
                        _gotoNext = 5967245i32;
                    };
                } else if (__value__ == (5967105i32)) {
                    _i_5967086 = (@:checkr _f_5966986 ?? throw "null pointer dereference")._index[(_i_5967091_0 : stdgo.GoInt)];
                    if (_fv_5967069.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5967142i32;
                    } else {
                        _gotoNext = 5967221i32;
                    };
                } else if (__value__ == (5967142i32)) {
                    if (_fv_5967069.isNil()) {
                        _gotoNext = 5967162i32;
                    } else {
                        _gotoNext = 5967198i32;
                    };
                } else if (__value__ == (5967162i32)) {
                    _i_5966956++;
                    _gotoNext = 5967483i32;
                } else if (__value__ == (5967198i32)) {
                    _fv_5967069 = _fv_5967069.elem()?.__copy__();
                    _gotoNext = 5967221i32;
                } else if (__value__ == (5967221i32)) {
                    _fv_5967069 = _fv_5967069.field(_i_5967086)?.__copy__();
                    _i_5967091_0++;
                    _gotoNext = 5967240i32;
                } else if (__value__ == (5967239i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5966986 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5967091_0 = __tmp__0;
                        _i_5967086 = __tmp__1;
                    };
                    _gotoNext = 5967240i32;
                } else if (__value__ == (5967240i32)) {
                    if (_i_5967091_0 < ((@:checkr _f_5966986 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5967105i32;
                    } else {
                        _gotoNext = 5967245i32;
                    };
                } else if (__value__ == (5967245i32)) {
                    if (((@:checkr _f_5966986 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5967069?.__copy__()) : Bool)) {
                        _gotoNext = 5967280i32;
                    } else {
                        _gotoNext = 5967300i32;
                    };
                } else if (__value__ == (5967280i32)) {
                    _i_5966956++;
                    _gotoNext = 5967483i32;
                } else if (__value__ == (5967300i32)) {
                    @:check2r _e.writeByte(_next_5966922);
                    _next_5966922 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5967352i32;
                    } else {
                        _gotoNext = 5967395i32;
                    };
                } else if (__value__ == (5967352i32)) {
                    @:check2r _e.writeString((@:checkr _f_5966986 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5967434i32;
                } else if (__value__ == (5967395i32)) {
                    _gotoNext = 5967395i32;
                    @:check2r _e.writeString((@:checkr _f_5966986 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5967434i32;
                } else if (__value__ == (5967434i32)) {
                    _opts._quoted = (@:checkr _f_5966986 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5966986 ?? throw "null pointer dereference")._encoder(_e, _fv_5967069?.__copy__(), _opts?.__copy__());
                    _i_5966956++;
                    _gotoNext = 5967483i32;
                } else if (__value__ == (5967482i32)) {
                    _i_5966956 = 0i32;
                    _gotoNext = 5967483i32;
                } else if (__value__ == (5967483i32)) {
                    if (_i_5966956 < (_se._fields._list.length)) {
                        _gotoNext = 5966982i32;
                    } else {
                        _gotoNext = 5967486i32;
                    };
                } else if (__value__ == (5967486i32)) {
                    if (_next_5966922 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5967501i32;
                    } else {
                        _gotoNext = 5967533i32;
                    };
                } else if (__value__ == (5967501i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5967557i32;
                } else if (__value__ == (5967533i32)) {
                    _gotoNext = 5967533i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5967557i32;
                } else if (__value__ == (5967557i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
