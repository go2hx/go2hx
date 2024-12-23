package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_5643280:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_5643285_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5643263:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_5643180:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_5643150:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_5643116:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_5643116 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5643134i32;
                } else if (__value__ == (5643134i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5643676i32;
                    } else {
                        _gotoNext = 5643680i32;
                    };
                } else if (__value__ == (5643176i32)) {
                    _f_5643180 = (stdgo.Go.setRef(_se._fields._list[(_i_5643150 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_5643263 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_5643180._index.length)) {
                        _gotoNext = 5643433i32;
                    } else {
                        _gotoNext = 5643439i32;
                    };
                } else if (__value__ == (5643299i32)) {
                    _i_5643280 = _f_5643180._index[(_i_5643285_0 : stdgo.GoInt)];
                    if (_fv_5643263.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 5643336i32;
                    } else {
                        _gotoNext = 5643415i32;
                    };
                } else if (__value__ == (5643336i32)) {
                    if (_fv_5643263.isNil()) {
                        _gotoNext = 5643356i32;
                    } else {
                        _gotoNext = 5643392i32;
                    };
                } else if (__value__ == (5643356i32)) {
                    _i_5643150++;
                    _gotoNext = 5643677i32;
                } else if (__value__ == (5643392i32)) {
                    _fv_5643263 = _fv_5643263.elem()?.__copy__();
                    _gotoNext = 5643415i32;
                } else if (__value__ == (5643415i32)) {
                    _fv_5643263 = _fv_5643263.field(_i_5643280)?.__copy__();
                    _i_5643285_0++;
                    _gotoNext = 5643434i32;
                } else if (__value__ == (5643433i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_5643180._index[(0i32 : stdgo.GoInt)];
                        _i_5643285_0 = __tmp__0;
                        _i_5643280 = __tmp__1;
                    };
                    _gotoNext = 5643434i32;
                } else if (__value__ == (5643434i32)) {
                    if (_i_5643285_0 < (_f_5643180._index.length)) {
                        _gotoNext = 5643299i32;
                    } else {
                        _gotoNext = 5643439i32;
                    };
                } else if (__value__ == (5643439i32)) {
                    if ((_f_5643180._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_5643263?.__copy__()) : Bool)) {
                        _gotoNext = 5643474i32;
                    } else {
                        _gotoNext = 5643494i32;
                    };
                } else if (__value__ == (5643474i32)) {
                    _i_5643150++;
                    _gotoNext = 5643677i32;
                } else if (__value__ == (5643494i32)) {
                    _e.writeByte(_next_5643116);
                    _next_5643116 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 5643546i32;
                    } else {
                        _gotoNext = 5643589i32;
                    };
                } else if (__value__ == (5643546i32)) {
                    _e.writeString(_f_5643180._nameEscHTML?.__copy__());
                    _gotoNext = 5643628i32;
                } else if (__value__ == (5643589i32)) {
                    _gotoNext = 5643589i32;
                    _e.writeString(_f_5643180._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 5643628i32;
                } else if (__value__ == (5643628i32)) {
                    _opts._quoted = _f_5643180._quoted;
                    _f_5643180._encoder(_e, _fv_5643263?.__copy__(), _opts?.__copy__());
                    _i_5643150++;
                    _gotoNext = 5643677i32;
                } else if (__value__ == (5643676i32)) {
                    _i_5643150 = 0i32;
                    _gotoNext = 5643677i32;
                } else if (__value__ == (5643677i32)) {
                    if (_i_5643150 < (_se._fields._list.length)) {
                        _gotoNext = 5643176i32;
                    } else {
                        _gotoNext = 5643680i32;
                    };
                } else if (__value__ == (5643680i32)) {
                    if (_next_5643116 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5643695i32;
                    } else {
                        _gotoNext = 5643727i32;
                    };
                } else if (__value__ == (5643695i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5643751i32;
                } else if (__value__ == (5643727i32)) {
                    _gotoNext = 5643727i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 5643751i32;
                } else if (__value__ == (5643751i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
