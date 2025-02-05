package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _fv_5475699:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_5475616:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_5475586:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5475552:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5475716:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5475721_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5475552 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5475570i32;
                } else if (__value__ == (5475570i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5476112i32;
                    } else {
                        _gotoNext = 5476116i32;
                    };
                } else if (__value__ == (5475612i32)) {
                    _f_5475616 = (stdgo.Go.setRef(_se._fields._list[(_i_5475586 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5475699 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5475616 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5475869i32;
                    } else {
                        _gotoNext = 5475875i32;
                    };
                } else if (__value__ == (5475735i32)) {
                    _i_5475716 = (@:checkr _f_5475616 ?? throw "null pointer dereference")._index[(_i_5475721_0 : stdgo.GoInt)];
                    if (_fv_5475699.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5475772i32;
                    } else {
                        _gotoNext = 5475851i32;
                    };
                } else if (__value__ == (5475772i32)) {
                    if (_fv_5475699.isNil()) {
                        _gotoNext = 5475792i32;
                    } else {
                        _gotoNext = 5475828i32;
                    };
                } else if (__value__ == (5475792i32)) {
                    _i_5475586++;
                    _gotoNext = 5476113i32;
                } else if (__value__ == (5475828i32)) {
                    _fv_5475699 = _fv_5475699.elem()?.__copy__();
                    _gotoNext = 5475851i32;
                } else if (__value__ == (5475851i32)) {
                    _fv_5475699 = _fv_5475699.field(_i_5475716)?.__copy__();
                    _i_5475721_0++;
                    _gotoNext = 5475870i32;
                } else if (__value__ == (5475869i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5475616 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5475721_0 = __tmp__0;
                        _i_5475716 = __tmp__1;
                    };
                    _gotoNext = 5475870i32;
                } else if (__value__ == (5475870i32)) {
                    if (_i_5475721_0 < ((@:checkr _f_5475616 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5475735i32;
                    } else {
                        _gotoNext = 5475875i32;
                    };
                } else if (__value__ == (5475875i32)) {
                    if (((@:checkr _f_5475616 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5475699?.__copy__()) : Bool)) {
                        _gotoNext = 5475910i32;
                    } else {
                        _gotoNext = 5475930i32;
                    };
                } else if (__value__ == (5475910i32)) {
                    _i_5475586++;
                    _gotoNext = 5476113i32;
                } else if (__value__ == (5475930i32)) {
                    @:check2r _e.writeByte(_next_5475552);
                    _next_5475552 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5475982i32;
                    } else {
                        _gotoNext = 5476025i32;
                    };
                } else if (__value__ == (5475982i32)) {
                    @:check2r _e.writeString((@:checkr _f_5475616 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5476064i32;
                } else if (__value__ == (5476025i32)) {
                    _gotoNext = 5476025i32;
                    @:check2r _e.writeString((@:checkr _f_5475616 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5476064i32;
                } else if (__value__ == (5476064i32)) {
                    _opts._quoted = (@:checkr _f_5475616 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5475616 ?? throw "null pointer dereference")._encoder(_e, _fv_5475699?.__copy__(), _opts?.__copy__());
                    _i_5475586++;
                    _gotoNext = 5476113i32;
                } else if (__value__ == (5476112i32)) {
                    _i_5475586 = 0i32;
                    _gotoNext = 5476113i32;
                } else if (__value__ == (5476113i32)) {
                    if (_i_5475586 < (_se._fields._list.length)) {
                        _gotoNext = 5475612i32;
                    } else {
                        _gotoNext = 5476116i32;
                    };
                } else if (__value__ == (5476116i32)) {
                    if (_next_5475552 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5476131i32;
                    } else {
                        _gotoNext = 5476163i32;
                    };
                } else if (__value__ == (5476131i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5476187i32;
                } else if (__value__ == (5476163i32)) {
                    _gotoNext = 5476163i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5476187i32;
                } else if (__value__ == (5476187i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
