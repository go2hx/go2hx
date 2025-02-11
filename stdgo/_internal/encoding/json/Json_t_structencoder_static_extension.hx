package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _fv_5195364:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_5195281:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_5195251:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5195217:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5195381:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5195386_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5195217 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5195235i32;
                } else if (__value__ == (5195235i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5195777i32;
                    } else {
                        _gotoNext = 5195781i32;
                    };
                } else if (__value__ == (5195277i32)) {
                    _f_5195281 = (stdgo.Go.setRef(_se._fields._list[(_i_5195251 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5195364 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5195281 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5195534i32;
                    } else {
                        _gotoNext = 5195540i32;
                    };
                } else if (__value__ == (5195400i32)) {
                    _i_5195381 = (@:checkr _f_5195281 ?? throw "null pointer dereference")._index[(_i_5195386_0 : stdgo.GoInt)];
                    if (_fv_5195364.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5195437i32;
                    } else {
                        _gotoNext = 5195516i32;
                    };
                } else if (__value__ == (5195437i32)) {
                    if (_fv_5195364.isNil()) {
                        _gotoNext = 5195457i32;
                    } else {
                        _gotoNext = 5195493i32;
                    };
                } else if (__value__ == (5195457i32)) {
                    _i_5195251++;
                    _gotoNext = 5195778i32;
                } else if (__value__ == (5195493i32)) {
                    _fv_5195364 = _fv_5195364.elem()?.__copy__();
                    _gotoNext = 5195516i32;
                } else if (__value__ == (5195516i32)) {
                    _fv_5195364 = _fv_5195364.field(_i_5195381)?.__copy__();
                    _i_5195386_0++;
                    _gotoNext = 5195535i32;
                } else if (__value__ == (5195534i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5195281 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5195386_0 = __tmp__0;
                        _i_5195381 = __tmp__1;
                    };
                    _gotoNext = 5195535i32;
                } else if (__value__ == (5195535i32)) {
                    if (_i_5195386_0 < ((@:checkr _f_5195281 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5195400i32;
                    } else {
                        _gotoNext = 5195540i32;
                    };
                } else if (__value__ == (5195540i32)) {
                    if (((@:checkr _f_5195281 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5195364?.__copy__()) : Bool)) {
                        _gotoNext = 5195575i32;
                    } else {
                        _gotoNext = 5195595i32;
                    };
                } else if (__value__ == (5195575i32)) {
                    _i_5195251++;
                    _gotoNext = 5195778i32;
                } else if (__value__ == (5195595i32)) {
                    @:check2r _e.writeByte(_next_5195217);
                    _next_5195217 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5195647i32;
                    } else {
                        _gotoNext = 5195690i32;
                    };
                } else if (__value__ == (5195647i32)) {
                    @:check2r _e.writeString((@:checkr _f_5195281 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5195729i32;
                } else if (__value__ == (5195690i32)) {
                    _gotoNext = 5195690i32;
                    @:check2r _e.writeString((@:checkr _f_5195281 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5195729i32;
                } else if (__value__ == (5195729i32)) {
                    _opts._quoted = (@:checkr _f_5195281 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5195281 ?? throw "null pointer dereference")._encoder(_e, _fv_5195364?.__copy__(), _opts?.__copy__());
                    _i_5195251++;
                    _gotoNext = 5195778i32;
                } else if (__value__ == (5195777i32)) {
                    _i_5195251 = 0i32;
                    _gotoNext = 5195778i32;
                } else if (__value__ == (5195778i32)) {
                    if (_i_5195251 < (_se._fields._list.length)) {
                        _gotoNext = 5195277i32;
                    } else {
                        _gotoNext = 5195781i32;
                    };
                } else if (__value__ == (5195781i32)) {
                    if (_next_5195217 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5195796i32;
                    } else {
                        _gotoNext = 5195828i32;
                    };
                } else if (__value__ == (5195796i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5195852i32;
                } else if (__value__ == (5195828i32)) {
                    _gotoNext = 5195828i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5195852i32;
                } else if (__value__ == (5195852i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
