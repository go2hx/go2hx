package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.TextValueGobber_asInterface) class TextValueGobber_static_extension {
    @:keep
    @:pointer
    static public function unmarshalText(____:stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber,  _v:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf((_data : stdgo.GoString)?.__copy__(), ("VALUE=%s" : stdgo.GoString), stdgo.Go.toInterface(new stdgo.Pointer<stdgo.GoString>(() -> (_v.value : stdgo.GoString), v -> (_v.value = (v : stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber) : stdgo.GoString)))), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    static public function marshalText( _v:stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _v:stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber = _v;
        return { _0 : (stdgo._internal.fmt.Fmt_sprintf.sprintf(("VALUE=%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v))) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}