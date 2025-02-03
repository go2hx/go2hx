package stdgo.crypto.des;
class T_tripleDESCipher_static_extension {
    static public function decrypt(_c:T_tripleDESCipher, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.des.Des_T_tripleDESCipher.T_tripleDESCipher>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.des.Des_T_tripleDESCipher_static_extension.T_tripleDESCipher_static_extension.decrypt(_c, _dst, _src);
    }
    static public function encrypt(_c:T_tripleDESCipher, _dst:Array<std.UInt>, _src:Array<std.UInt>):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.des.Des_T_tripleDESCipher.T_tripleDESCipher>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.crypto.des.Des_T_tripleDESCipher_static_extension.T_tripleDESCipher_static_extension.encrypt(_c, _dst, _src);
    }
    static public function blockSize(_c:T_tripleDESCipher):StdTypes.Int {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.des.Des_T_tripleDESCipher.T_tripleDESCipher>);
        return stdgo._internal.crypto.des.Des_T_tripleDESCipher_static_extension.T_tripleDESCipher_static_extension.blockSize(_c);
    }
}
