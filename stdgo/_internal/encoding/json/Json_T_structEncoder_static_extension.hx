package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5094586:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5094552:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_5094716:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5094721_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5094699:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5094616:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5094552 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5094570i32;
                } else if (__value__ == (5094570i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5095112i32;
                    } else {
                        _gotoNext = 5095116i32;
                    };
                } else if (__value__ == (5094612i32)) {
                    _f_5094616 = (stdgo.Go.setRef(_se._fields._list[(_i_5094586 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5094699 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_5094616 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5094869i32;
                    } else {
                        _gotoNext = 5094875i32;
                    };
                } else if (__value__ == (5094735i32)) {
                    _i_5094716 = (@:checkr _f_5094616 ?? throw "null pointer dereference")._index[(_i_5094721_0 : stdgo.GoInt)];
                    if (_fv_5094699.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5094772i32;
                    } else {
                        _gotoNext = 5094851i32;
                    };
                } else if (__value__ == (5094772i32)) {
                    if (_fv_5094699.isNil()) {
                        _gotoNext = 5094792i32;
                    } else {
                        _gotoNext = 5094828i32;
                    };
                } else if (__value__ == (5094792i32)) {
                    _i_5094586++;
                    _gotoNext = 5095113i32;
                } else if (__value__ == (5094828i32)) {
                    _fv_5094699 = _fv_5094699.elem()?.__copy__();
                    _gotoNext = 5094851i32;
                } else if (__value__ == (5094851i32)) {
                    _fv_5094699 = _fv_5094699.field(_i_5094716)?.__copy__();
                    _i_5094721_0++;
                    _gotoNext = 5094870i32;
                } else if (__value__ == (5094869i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_5094616 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_5094721_0 = __tmp__0;
                        _i_5094716 = __tmp__1;
                    };
                    _gotoNext = 5094870i32;
                } else if (__value__ == (5094870i32)) {
                    if (_i_5094721_0 < ((@:checkr _f_5094616 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5094735i32;
                    } else {
                        _gotoNext = 5094875i32;
                    };
                } else if (__value__ == (5094875i32)) {
                    if (((@:checkr _f_5094616 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5094699?.__copy__()) : Bool)) {
                        _gotoNext = 5094910i32;
                    } else {
                        _gotoNext = 5094930i32;
                    };
                } else if (__value__ == (5094910i32)) {
                    _i_5094586++;
                    _gotoNext = 5095113i32;
                } else if (__value__ == (5094930i32)) {
                    @:check2r _e.writeByte(_next_5094552);
                    _next_5094552 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5094982i32;
                    } else {
                        _gotoNext = 5095025i32;
                    };
                } else if (__value__ == (5094982i32)) {
                    @:check2r _e.writeString((@:checkr _f_5094616 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5095064i32;
                } else if (__value__ == (5095025i32)) {
                    _gotoNext = 5095025i32;
                    @:check2r _e.writeString((@:checkr _f_5094616 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5095064i32;
                } else if (__value__ == (5095064i32)) {
                    _opts._quoted = (@:checkr _f_5094616 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_5094616 ?? throw "null pointer dereference")._encoder(_e, _fv_5094699?.__copy__(), _opts?.__copy__());
                    _i_5094586++;
                    _gotoNext = 5095113i32;
                } else if (__value__ == (5095112i32)) {
                    _i_5094586 = 0i32;
                    _gotoNext = 5095113i32;
                } else if (__value__ == (5095113i32)) {
                    if (_i_5094586 < (_se._fields._list.length)) {
                        _gotoNext = 5094612i32;
                    } else {
                        _gotoNext = 5095116i32;
                    };
                } else if (__value__ == (5095116i32)) {
                    if (_next_5094552 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5095131i32;
                    } else {
                        _gotoNext = 5095163i32;
                    };
                } else if (__value__ == (5095131i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5095187i32;
                } else if (__value__ == (5095163i32)) {
                    _gotoNext = 5095163i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5095187i32;
                } else if (__value__ == (5095187i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
