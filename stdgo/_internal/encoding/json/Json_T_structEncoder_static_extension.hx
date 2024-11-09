package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    static public function _encode( _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_T_structEncoder.T_structEncoder = _se?.__copy__();
        var _i_6156901_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_6156879:stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
        var _f_6156796:stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
        var _i_6156766:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_6156732:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_6156896:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _next_6156732 = (123 : stdgo.GoUInt8);
                    _gotoNext = 6156750i32;
                } else if (__value__ == (6156750i32)) {
                    if ((0i32 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 6157292i32;
                    } else {
                        _gotoNext = 6157296i32;
                    };
                } else if (__value__ == (6156792i32)) {
                    _f_6156796 = (stdgo.Go.setRef(_se._fields._list[(_i_6156766 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_field.T_field>);
                    _fv_6156879 = _v?.__copy__();
                    if ((0i32 : stdgo.GoInt) < (_f_6156796._index.length)) {
                        _gotoNext = 6157049i32;
                    } else {
                        _gotoNext = 6157055i32;
                    };
                } else if (__value__ == (6156915i32)) {
                    _i_6156896 = _f_6156796._index[(_i_6156901_0 : stdgo.GoInt)];
                    if (_fv_6156879.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind))) {
                        _gotoNext = 6156952i32;
                    } else {
                        _gotoNext = 6157031i32;
                    };
                } else if (__value__ == (6156952i32)) {
                    if (_fv_6156879.isNil()) {
                        _gotoNext = 6156972i32;
                    } else {
                        _gotoNext = 6157008i32;
                    };
                } else if (__value__ == (6156972i32)) {
                    _i_6156766++;
                    _gotoNext = 6157293i32;
                } else if (__value__ == (6157008i32)) {
                    _fv_6156879 = _fv_6156879.elem()?.__copy__();
                    _gotoNext = 6157031i32;
                } else if (__value__ == (6157031i32)) {
                    _fv_6156879 = _fv_6156879.field(_i_6156896)?.__copy__();
                    _i_6156901_0++;
                    _gotoNext = 6157050i32;
                } else if (__value__ == (6157049i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _f_6156796._index[(0i32 : stdgo.GoInt)];
                        _i_6156901_0 = __tmp__0;
                        _i_6156896 = __tmp__1;
                    };
                    _gotoNext = 6157050i32;
                } else if (__value__ == (6157050i32)) {
                    if (_i_6156901_0 < (_f_6156796._index.length)) {
                        _gotoNext = 6156915i32;
                    } else {
                        _gotoNext = 6157055i32;
                    };
                } else if (__value__ == (6157055i32)) {
                    if ((_f_6156796._omitEmpty && stdgo._internal.encoding.json.Json__isEmptyValue._isEmptyValue(_fv_6156879?.__copy__()) : Bool)) {
                        _gotoNext = 6157090i32;
                    } else {
                        _gotoNext = 6157110i32;
                    };
                } else if (__value__ == (6157090i32)) {
                    _i_6156766++;
                    _gotoNext = 6157293i32;
                } else if (__value__ == (6157110i32)) {
                    _e.writeByte(_next_6156732);
                    _next_6156732 = (44 : stdgo.GoUInt8);
                    if (_opts._escapeHTML) {
                        _gotoNext = 6157162i32;
                    } else {
                        _gotoNext = 6157205i32;
                    };
                } else if (__value__ == (6157162i32)) {
                    _e.writeString(_f_6156796._nameEscHTML?.__copy__());
                    _gotoNext = 6157244i32;
                } else if (__value__ == (6157205i32)) {
                    _gotoNext = 6157205i32;
                    _e.writeString(_f_6156796._nameNonEsc?.__copy__());
                    var __blank__ = 0i32;
                    _gotoNext = 6157244i32;
                } else if (__value__ == (6157244i32)) {
                    _opts._quoted = _f_6156796._quoted;
                    _f_6156796._encoder(_e, _fv_6156879?.__copy__(), _opts?.__copy__());
                    _i_6156766++;
                    _gotoNext = 6157293i32;
                } else if (__value__ == (6157292i32)) {
                    _i_6156766 = 0i32;
                    _gotoNext = 6157293i32;
                } else if (__value__ == (6157293i32)) {
                    if (_i_6156766 < (_se._fields._list.length)) {
                        _gotoNext = 6156792i32;
                    } else {
                        _gotoNext = 6157296i32;
                    };
                } else if (__value__ == (6157296i32)) {
                    if (_next_6156732 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 6157311i32;
                    } else {
                        _gotoNext = 6157343i32;
                    };
                } else if (__value__ == (6157311i32)) {
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 6157367i32;
                } else if (__value__ == (6157343i32)) {
                    _gotoNext = 6157343i32;
                    _e.writeByte((125 : stdgo.GoUInt8));
                    var __blank__ = 0i32;
                    _gotoNext = 6157367i32;
                } else if (__value__ == (6157367i32)) {
                    _gotoNext = -1i32;
                };
            };
        };
    }
}
