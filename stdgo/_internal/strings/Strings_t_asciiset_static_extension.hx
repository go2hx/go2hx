package stdgo._internal.strings;
@:keep @:allow(stdgo._internal.strings.Strings.T_asciiSet_asInterface) class T_asciiSet_static_extension {
    @:keep
    @:tdfield
    static public function _contains( _as:stdgo.Ref<stdgo._internal.strings.Strings_t_asciiset.T_asciiSet>, _c:stdgo.GoUInt8):Bool {
        @:recv var _as:stdgo.Ref<stdgo._internal.strings.Strings_t_asciiset.T_asciiSet> = _as;
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L891"
        return ((_as[((_c / (32 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] & (((1u32 : stdgo.GoUInt32) << ((_c % (32 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt32)) : stdgo.GoUInt32)) != ((0u32 : stdgo.GoUInt32));
    }
}
