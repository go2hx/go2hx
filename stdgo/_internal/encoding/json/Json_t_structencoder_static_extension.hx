package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_structEncoder_asInterface) class T_structEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _encode( _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder, _e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        @:recv var _se:stdgo._internal.encoding.json.Json_t_structencoder.T_structEncoder = _se?.__copy__();
        var _i_3:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _iterator_5417327_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fv_5:stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
        var _f_4:stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _next_2 = (123 : stdgo.GoUInt8);
                    _gotoNext = 5417176i64;
                } else if (__value__ == (5417176i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L680"
                    if ((0i64 : stdgo.GoInt) < (_se._fields._list.length)) {
                        _gotoNext = 5417718i64;
                    } else {
                        _gotoNext = 5417722i64;
                    };
                } else if (__value__ == (5417218i64)) {
                    _f_4 = (stdgo.Go.setRef(_se._fields._list[(_i_3 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_field.T_field>);
                    _fv_5 = _v?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L685"
                    if ((0i64 : stdgo.GoInt) < ((@:checkr _f_4 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5417475i64;
                    } else {
                        _gotoNext = 5417481i64;
                    };
                } else if (__value__ == (5417341i64)) {
                    _i_7 = (@:checkr _f_4 ?? throw "null pointer dereference")._index[(_iterator_5417327_6 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L686"
                    if (_fv_5.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        _gotoNext = 5417378i64;
                    } else {
                        _gotoNext = 5417457i64;
                    };
                } else if (__value__ == (5417378i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L687"
                    if (_fv_5.isNil()) {
                        _gotoNext = 5417398i64;
                    } else {
                        _gotoNext = 5417434i64;
                    };
                } else if (__value__ == (5417398i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L680"
                    _i_3++;
                    _gotoNext = 5417719i64;
                } else if (__value__ == (5417434i64)) {
                    _fv_5 = _fv_5.elem()?.__copy__();
                    _gotoNext = 5417457i64;
                } else if (__value__ == (5417457i64)) {
                    _fv_5 = _fv_5.field(_i_7)?.__copy__();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L685"
                    _iterator_5417327_6++;
                    _gotoNext = 5417476i64;
                } else if (__value__ == (5417475i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = (@:checkr _f_4 ?? throw "null pointer dereference")._index[(0i64 : stdgo.GoInt)];
                        _iterator_5417327_6 = @:binopAssign __tmp__0;
                        _i_7 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5417476i64;
                } else if (__value__ == (5417476i64)) {
                    //"file://#L0"
                    if (_iterator_5417327_6 < ((@:checkr _f_4 ?? throw "null pointer dereference")._index.length)) {
                        _gotoNext = 5417341i64;
                    } else {
                        _gotoNext = 5417481i64;
                    };
                } else if (__value__ == (5417481i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L695"
                    if (((@:checkr _f_4 ?? throw "null pointer dereference")._omitEmpty && stdgo._internal.encoding.json.Json__isemptyvalue._isEmptyValue(_fv_5?.__copy__()) : Bool)) {
                        _gotoNext = 5417516i64;
                    } else {
                        _gotoNext = 5417536i64;
                    };
                } else if (__value__ == (5417516i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L680"
                    _i_3++;
                    _gotoNext = 5417719i64;
                } else if (__value__ == (5417536i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L698"
                    _e.writeByte(_next_2);
                    _next_2 = (44 : stdgo.GoUInt8);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L700"
                    if (_opts._escapeHTML) {
                        _gotoNext = 5417588i64;
                    } else {
                        _gotoNext = 5417631i64;
                    };
                } else if (__value__ == (5417588i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L701"
                    _e.writeString((@:checkr _f_4 ?? throw "null pointer dereference")._nameEscHTML?.__copy__());
                    _gotoNext = 5417670i64;
                } else if (__value__ == (5417631i64)) {
                    _gotoNext = 5417631i64;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L703"
                    _e.writeString((@:checkr _f_4 ?? throw "null pointer dereference")._nameNonEsc?.__copy__());
                    0i64;
                    _gotoNext = 5417670i64;
                } else if (__value__ == (5417670i64)) {
                    _opts._quoted = (@:checkr _f_4 ?? throw "null pointer dereference")._quoted;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L706"
                    (@:checkr _f_4 ?? throw "null pointer dereference")._encoder(_e, _fv_5?.__copy__(), _opts?.__copy__());
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L680"
                    _i_3++;
                    _gotoNext = 5417719i64;
                } else if (__value__ == (5417718i64)) {
                    _i_3 = 0i64;
                    _gotoNext = 5417719i64;
                } else if (__value__ == (5417719i64)) {
                    //"file://#L0"
                    if (_i_3 < (_se._fields._list.length)) {
                        _gotoNext = 5417218i64;
                    } else {
                        _gotoNext = 5417722i64;
                    };
                } else if (__value__ == (5417722i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L708"
                    if (_next_2 == ((123 : stdgo.GoUInt8))) {
                        _gotoNext = 5417737i64;
                    } else {
                        _gotoNext = 5417769i64;
                    };
                } else if (__value__ == (5417737i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L709"
                    _e.writeString(("{}" : stdgo.GoString));
                    _gotoNext = 5417793i64;
                } else if (__value__ == (5417769i64)) {
                    _gotoNext = 5417769i64;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L711"
                    _e.writeByte((125 : stdgo.GoUInt8));
                    0i64;
                    _gotoNext = 5417793i64;
                } else if (__value__ == (5417793i64)) {
                    _gotoNext = -1i64;
                };
            };
        };
    }
}
