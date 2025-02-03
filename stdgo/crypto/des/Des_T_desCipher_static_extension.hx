package stdgo.crypto.des;
class T_desCipher_static_extension {
    static public function decrypt(_c:T_desCipher, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.des.Des_T_desCipher.T_desCipher>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.des.Des_T_desCipher_static_extension.T_desCipher_static_extension.decrypt(_c, _dst, _src);
    }
    static public function encrypt(_c:T_desCipher, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.des.Des_T_desCipher.T_desCipher>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.des.Des_T_desCipher_static_extension.T_desCipher_static_extension.encrypt(_c, _dst, _src);
    }
    static public function blockSize(_c:T_desCipher):StdTypes.Int {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.des.Des_T_desCipher.T_desCipher>);
        return stdgo._internal.crypto.des.Des_T_desCipher_static_extension.T_desCipher_static_extension.blockSize(_c);
    }
    static public function _generateSubkeys(_c:T_desCipher, _keyBytes:Array<std.UInt>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.des.Des_T_desCipher.T_desCipher>);
        final _keyBytes = ([for (i in _keyBytes) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.des.Des_T_desCipher_static_extension.T_desCipher_static_extension._generateSubkeys(_c, _keyBytes);
    }
}
