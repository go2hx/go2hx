package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _fv_6382650:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_6382567:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_6382537:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_6382503:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_6382667:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_6382672_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_6382503 = (123 : stdgo.GoUInt8);
                    _gotoNext = 6382521i32;
                } else if (__value__ == (6382521i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 6383063i32;
                    } else {
                        _gotoNext = 6383067i32;
                    };
                } else if (__value__ == (6382563i32)) {
                    _f_6382567 = (stdgo.Go.setRef(_se._fields._list[(_i_6382537 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_6382650 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _f_6382567 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 6382820i32;
                    } else {
                        _gotoNext = 6382826i32;
                    };
                } else if (__value__ == (6382686i32)) {
                    _i_6382667 = (@:checkr _f_6382567 ?? throw "null pointer dereference")._index[(_i_6382672_0 : stdgo.GoInt)];
                    if (_fv_6382650.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 6382723i32;
                    } else {
                        _gotoNext = 6382802i32;
                    };
                } else if (__value__ == (6382723i32)) {
                    if (_fv_6382650.isNil()) {
                        _gotoNext = 6382743i32;
                    } else {
                        _gotoNext = 6382779i32;
                    };
                } else if (__value__ == (6382743i32)) {
                    _i_6382537++;
                    _gotoNext = 6383064i32;
                } else if (__value__ == (6382779i32)) {
                    _fv_6382650 = _fv_6382650.elem()?.__copy__();
                    _gotoNext = 6382802i32;
                } else if (__value__ == (6382802i32)) {
                    _fv_6382650 = _fv_6382650.field(_i_6382667)?.__copy__();
                    _i_6382672_0++;
                    _gotoNext = 6382821i32;
                } else if (__value__ == (6382820i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _f_6382567 ?? throw "null pointer dereference")._index[(0i32 : stdgo.GoInt)];
                        _i_6382672_0 = __tmp__0;
                        _i_6382667 = __tmp__1;
                    };
                    _gotoNext = 6382821i32;
                } else if (__value__ == (6382821i32)) {
                    if (_i_6382672_0 < ((@:checkr _f_6382567 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 6382686i32;
                    } else {
                        _gotoNext = 6382826i32;
                    };
                } else if (__value__ == (6382826i32)) {
                    if (((@:checkr _f_6382567 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_6382650?.__copy__()) : Bool)) {
                        _gotoNext = 6382861i32;
                    } else {
                        _gotoNext = 6382881i32;
                    };
                } else if (__value__ == (6382861i32)) {
                    _i_6382537++;
                    _gotoNext = 6383064i32;
                } else if (__value__ == (6382881i32)) {
                    @:check2r _e.writeByte(_next_6382503);
                    _next_6382503 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 6382933i32;
                    } else {
                        _gotoNext = 6382976i32;
                    };
                } else if (__value__ == (6382933i32)) {
                    @:check2r _e.writeString((@:checkr _f_6382567 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 6383015i32;
                } else if (__value__ == (6382976i32)) {
                    _gotoNext = 6382976i32;
                    @:check2r _e.writeString((@:checkr _f_6382567 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 6383015i32;
                } else if (__value__ == (6383015i32)) {
                    _opts._quoted = (@:checkr _f_6382567 ?? throw "null pointer dereference")._quoted;
                    (@:checkr _f_6382567 ?? throw "null pointer dereference")._encoder(_e, _fv_6382650?.__copy__(), _opts?.__copy__());
                    _i_6382537++;
                    _gotoNext = 6383064i32;
                } else if (__value__ == (6383063i32)) {
                    _i_6382537 = 0i32;
                    _gotoNext = 6383064i32;
                } else if (__value__ == (6383064i32)) {
                    if (_i_6382537 < (_se._fields._list.length)) {
                        _gotoNext = 6382563i32;
                    } else {
                        _gotoNext = 6383067i32;
                    };
                } else if (__value__ == (6383067i32)) {
                    if (_next_6382503 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 6383082i32;
                    } else {
                        _gotoNext = 6383114i32;
                    };
                } else if (__value__ == (6383082i32)) {
                    @:check2r _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 6383138i32;
                } else if (__value__ == (6383114i32)) {
                    _gotoNext = 6383114i32;
                    @:check2r _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 6383138i32;
                } else if (__value__ == (6383138i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
