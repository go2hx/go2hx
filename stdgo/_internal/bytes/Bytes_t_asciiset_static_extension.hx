package stdgo._internal.bytes;
@:keep @:allow(stdgo._internal.bytes.Bytes.T_asciiSet_asInterface) class T_asciiSet_static_extension {
    @:keep
    @:tdfield
    static public function _contains( _as:stdgo.Ref<stdgo._internal.bytes.Bytes_t_asciiset.T_asciiSet>, _c:stdgo.GoUInt8):Bool {
        @:recv var _as:stdgo.Ref<stdgo._internal.bytes.Bytes_t_asciiset.T_asciiSet> = _as;
        return ((_as[((_c / (32 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] & (((1u32 : stdgo.GoUInt32) << ((_c % (32 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt32)) : stdgo.GoUInt32)) != ((0u32 : stdgo.GoUInt32));
    }
}
