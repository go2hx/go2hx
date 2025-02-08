package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _i_6818544:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6818549_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_6818527:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_6818444:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _i_6818414:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_6818380:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_6818380 = (123 : stdgo.GoUInt8);
                    _gotoNext = 6818398i32;
                } else if (__value__ == (6818398i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 6818940i32;
                    } else {
                        _gotoNext = 6818944i32;
                    };
                } else if (__value__ == (6818440i32)) {
                    _f_6818444 = (stdgo.Go.setRef(_se._fields._list[(_i_6818414 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_6818527 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_6818444 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 6818697i32;
                    } else {
                        _gotoNext = 6818703i32;
                    };
                } else if (__value__ == (6818563i32)) {
                    _i_6818544 = (@:checkr _f_6818444 ?? throw "null pointer dereference")._index[(_i_6818549_0 : stdgo.GoInt)];
                    if (_fv_6818527.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 6818600i32;
                    } else {
                        _gotoNext = 6818679i32;
                    };
                } else if (__value__ == (6818600i32)) {
                    if (_fv_6818527.isNil()) {
                        _gotoNext = 6818620i32;
                    } else {
                        _gotoNext = 6818656i32;
                    };
                } else if (__value__ == (6818620i32)) {
                    _i_6818414++;
                    _gotoNext = 6818941i32;
                } else if (__value__ == (6818656i32)) {
                    _fv_6818527 = _fv_6818527.elem()?.__copy__();
                    _gotoNext = 6818679i32;
                } else if (__value__ == (6818679i32)) {
                    _fv_6818527 = _fv_6818527.field(_i_6818544)?.__copy__();
                    _i_6818549_0++;
                    _gotoNext = 6818698i32;
                } else if (__value__ == (6818697i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_6818444 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_6818549_0 = __tmp__0;
                        _i_6818544 = __tmp__1;
                    };
                    _gotoNext = 6818698i32;
                } else if (__value__ == (6818698i32)) {
                    if (_i_6818549_0 < ((@:checkr _f_6818444 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 6818563i32;
                    } else {
                        _gotoNext = 6818703i32;
                    };
                } else if (__value__ == (6818703i32)) {
                    if (((@:checkr _f_6818444 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_6818527?.__copy__()) : Bool)) {
                        _gotoNext = 6818738i32;
                    } else {
                        _gotoNext = 6818758i32;
                    };
                } else if (__value__ == (6818738i32)) {
                    _i_6818414++;
                    _gotoNext = 6818941i32;
                } else if (__value__ == (6818758i32)) {
                    @:check2r _e.writeByte(_next_6818380);
                    _next_6818380 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 6818810i32;
                    } else {
                        _gotoNext = 6818853i32;
                    };
                } else if (__value__ == (6818810i32)) {
                    @:check2r _e.writeString((@:checkr _f_6818444 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 6818892i32;
                } else if (__value__ == (6818853i32)) {
                    _gotoNext = 6818853i32;
                    @:check2r _e.writeString((@:checkr _f_6818444 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 6818892i32;
                } else if (__value__ == (6818892i32)) {
                    _opts._quoted = (@:checkr _f_6818444 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_6818444 ?? throw "null pointer dereference")._encoder(_e, _fv_6818527?.__copy__(), _opts?.__copy__());
                    _i_6818414++;
                    _gotoNext = 6818941i32;
                } else if (__value__ == (6818940i32)) {
                    _i_6818414 = 0i32;
                    _gotoNext = 6818941i32;
                } else if (__value__ == (6818941i32)) {
                    if (_i_6818414 < (_se._fields._list.length)) {
                        _gotoNext = 6818440i32;
                    } else {
                        _gotoNext = 6818944i32;
                    };
                } else if (__value__ == (6818944i32)) {
                    if (_next_6818380 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 6818959i32;
                    } else {
                        _gotoNext = 6818991i32;
                    };
                } else if (__value__ == (6818959i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 6819015i32;
                } else if (__value__ == (6818991i32)) {
                    _gotoNext = 6818991i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 6819015i32;
                } else if (__value__ == (6819015i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
