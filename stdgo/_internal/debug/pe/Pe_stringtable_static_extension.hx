package stdgo._internal.debug.pe;
@:keep @:allow(stdgo._internal.debug.pe.Pe.StringTable_asInterface) class StringTable_static_extension {
    @:keep
    @:tdfield
    static public function string( _st:stdgo._internal.debug.pe.Pe_stringtable.StringTable, _start:stdgo.GoUInt32):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _st:stdgo._internal.debug.pe.Pe_stringtable.StringTable = _st;
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/string.go#L61"
        if ((_start < (4u32 : stdgo.GoUInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/string.go#L62"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("offset %d is before the start of string table" : stdgo.GoString), stdgo.Go.toInterface(_start)) };
        };
        _start = (_start - ((4u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/string.go#L65"
        if (((_start : stdgo.GoInt) > (_st.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/string.go#L66"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("offset %d is beyond the end of string table" : stdgo.GoString), stdgo.Go.toInterface(_start)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/string.go#L68"
        return { _0 : stdgo._internal.debug.pe.Pe__cstring._cstring((_st.__slice__(_start) : stdgo._internal.debug.pe.Pe_stringtable.StringTable))?.__copy__(), _1 : (null : stdgo.Error) };
    }
}
