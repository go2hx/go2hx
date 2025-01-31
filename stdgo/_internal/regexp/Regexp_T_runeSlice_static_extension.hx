package stdgo._internal.regexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.testing.Testing;
import stdgo._internal.os.Os;
import stdgo._internal.compress.bzip2.Bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.Io;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
@:keep @:allow(stdgo._internal.regexp.Regexp.T_runeSlice_asInterface) class T_runeSlice_static_extension {
    @:keep
    @:tdfield
    static public function swap( _p:stdgo._internal.regexp.Regexp_T_runeSlice.T_runeSlice, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _p:stdgo._internal.regexp.Regexp_T_runeSlice.T_runeSlice = _p;
        {
            final __tmp__0 = _p[(_j : stdgo.GoInt)];
            final __tmp__1 = _p[(_i : stdgo.GoInt)];
            final __tmp__2 = _p;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _p;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function less( _p:stdgo._internal.regexp.Regexp_T_runeSlice.T_runeSlice, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _p:stdgo._internal.regexp.Regexp_T_runeSlice.T_runeSlice = _p;
        return (_p[(_i : stdgo.GoInt)] < _p[(_j : stdgo.GoInt)] : Bool);
    }
    @:keep
    @:tdfield
    static public function len( _p:stdgo._internal.regexp.Regexp_T_runeSlice.T_runeSlice):stdgo.GoInt {
        @:recv var _p:stdgo._internal.regexp.Regexp_T_runeSlice.T_runeSlice = _p;
        return (_p.length);
    }
}
