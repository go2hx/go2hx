package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
@:keep @:allow(stdgo._internal.strings.Strings.T_asciiSet_asInterface) class T_asciiSet_static_extension {
    @:keep
    @:tdfield
    static public function _contains( _as:stdgo.Ref<stdgo._internal.strings.Strings_T_asciiSet.T_asciiSet>, _c:stdgo.GoUInt8):Bool {
        @:recv var _as:stdgo.Ref<stdgo._internal.strings.Strings_T_asciiSet.T_asciiSet> = _as;
        return ((_as[((_c / (32 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] & (((1u32 : stdgo.GoUInt32) << ((_c % (32 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt32)) : stdgo.GoUInt32)) != ((0u32 : stdgo.GoUInt32));
    }
}
