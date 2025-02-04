package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.BinaryValueGobber_asInterface) class BinaryValueGobber_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function unmarshalBinary( _v:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf((_data : stdgo.GoString)?.__copy__(), ("VALUE=%s" : stdgo.GoString), stdgo.Go.toInterface(new stdgo.Pointer<stdgo.GoString>(() -> (_v.value : stdgo.GoString), v -> (_v.value = (v : stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber) : stdgo.GoString)))), __8:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    @:tdfield
    static public function marshalBinary( _v:stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _v:stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber = _v;
        return { _0 : (stdgo._internal.fmt.Fmt_sprintf.sprintf(("VALUE=%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v))) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
}
