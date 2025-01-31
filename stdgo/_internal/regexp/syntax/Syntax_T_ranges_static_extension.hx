package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.T_ranges_asInterface) class T_ranges_static_extension {
    @:keep
    @:tdfield
    static public function swap( _ra:stdgo._internal.regexp.syntax.Syntax_T_ranges.T_ranges, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _ra:stdgo._internal.regexp.syntax.Syntax_T_ranges.T_ranges = _ra?.__copy__();
        var _p = (_ra._p : stdgo.Slice<stdgo.GoInt32>);
        _i = (_i * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        _j = (_j * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        {
            final __tmp__0 = _p[(_j : stdgo.GoInt)];
            final __tmp__1 = _p[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)];
            final __tmp__2 = _p[(_i : stdgo.GoInt)];
            final __tmp__3 = _p[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)];
            final __tmp__4 = _p;
            final __tmp__5 = (_i : stdgo.GoInt);
            final __tmp__6 = _p;
            final __tmp__7 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
            final __tmp__8 = _p;
            final __tmp__9 = (_j : stdgo.GoInt);
            final __tmp__10 = _p;
            final __tmp__11 = (_j + (1 : stdgo.GoInt) : stdgo.GoInt);
            __tmp__4[__tmp__5] = __tmp__0;
            __tmp__6[__tmp__7] = __tmp__1;
            __tmp__8[__tmp__9] = __tmp__2;
            __tmp__10[__tmp__11] = __tmp__3;
        };
    }
    @:keep
    @:tdfield
    static public function len( _ra:stdgo._internal.regexp.syntax.Syntax_T_ranges.T_ranges):stdgo.GoInt {
        @:recv var _ra:stdgo._internal.regexp.syntax.Syntax_T_ranges.T_ranges = _ra?.__copy__();
        return (((_ra._p : stdgo.Slice<stdgo.GoInt32>).length) / (2 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function less( _ra:stdgo._internal.regexp.syntax.Syntax_T_ranges.T_ranges, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _ra:stdgo._internal.regexp.syntax.Syntax_T_ranges.T_ranges = _ra?.__copy__();
        var _p = (_ra._p : stdgo.Slice<stdgo.GoInt32>);
        _i = (_i * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        _j = (_j * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        return ((_p[(_i : stdgo.GoInt)] < _p[(_j : stdgo.GoInt)] : Bool) || (_p[(_i : stdgo.GoInt)] == (_p[(_j : stdgo.GoInt)]) && (_p[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] > _p[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool) : Bool) : Bool);
    }
}
