package stdgo.internal.abi;
class Name_static_extension {
    static public function tag(_n:Name):String {
        return stdgo._internal.internal.abi.Abi_Name_static_extension.Name_static_extension.tag(_n);
    }
    static public function name(_n:Name):String {
        return stdgo._internal.internal.abi.Abi_Name_static_extension.Name_static_extension.name(_n);
    }
    static public function isBlank(_n:Name):Bool {
        return stdgo._internal.internal.abi.Abi_Name_static_extension.Name_static_extension.isBlank(_n);
    }
    static public function readVarint(_n:Name, _off:StdTypes.Int):stdgo.Tuple<StdTypes.Int, StdTypes.Int> {
        final _off = (_off : stdgo.GoInt);
        return {
            final obj = stdgo._internal.internal.abi.Abi_Name_static_extension.Name_static_extension.readVarint(_n, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function isEmbedded(_n:Name):Bool {
        return stdgo._internal.internal.abi.Abi_Name_static_extension.Name_static_extension.isEmbedded(_n);
    }
    static public function hasTag(_n:Name):Bool {
        return stdgo._internal.internal.abi.Abi_Name_static_extension.Name_static_extension.hasTag(_n);
    }
    static public function isExported(_n:Name):Bool {
        return stdgo._internal.internal.abi.Abi_Name_static_extension.Name_static_extension.isExported(_n);
    }
    static public function data(_n:Name, _off:StdTypes.Int):stdgo.Pointer<std.UInt> {
        final _off = (_off : stdgo.GoInt);
        return stdgo._internal.internal.abi.Abi_Name_static_extension.Name_static_extension.data(_n, _off);
    }
    static public function dataChecked(_n:Name, _off:StdTypes.Int, _whySafe:String):stdgo.Pointer<std.UInt> {
        final _off = (_off : stdgo.GoInt);
        final _whySafe = (_whySafe : stdgo.GoString);
        return stdgo._internal.internal.abi.Abi_Name_static_extension.Name_static_extension.dataChecked(_n, _off, _whySafe);
    }
}
