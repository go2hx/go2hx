package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.BinaryGobber_asInterface) class BinaryGobber_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function unmarshalBinary( _g:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_binarygobber.BinaryGobber>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf((_data : stdgo.GoString)?.__copy__(), ("VALUE=%d" : stdgo.GoString), stdgo.Go.toInterface(new stdgo.Pointer<stdgo.GoInt>(() -> (_g.value : stdgo.GoInt), v -> (_g.value = (v : stdgo._internal.encoding.gob.Gob_binarygobber.BinaryGobber) : stdgo.GoInt)))), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:pointer
    @:tdfield
    static public function marshalBinary( _g:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_binarygobber.BinaryGobber>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        return { _0 : (stdgo._internal.fmt.Fmt_sprintf.sprintf(("VALUE=%d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_g.value))) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}
