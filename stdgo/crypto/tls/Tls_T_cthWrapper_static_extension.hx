package stdgo.crypto.tls;
class T_cthWrapper_static_extension {
    static public function sum(_c:T_cthWrapper, _b:Array<std.UInt>):Array<std.UInt> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cthWrapper.T_cthWrapper>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.tls.Tls_T_cthWrapper_static_extension.T_cthWrapper_static_extension.sum(_c, _b)) i];
    }
    static public function write(_c:T_cthWrapper, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cthWrapper.T_cthWrapper>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.tls.Tls_T_cthWrapper_static_extension.T_cthWrapper_static_extension.write(_c, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function reset(_c:T_cthWrapper):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cthWrapper.T_cthWrapper>);
        stdgo._internal.crypto.tls.Tls_T_cthWrapper_static_extension.T_cthWrapper_static_extension.reset(_c);
    }
    static public function blockSize(_c:T_cthWrapper):StdTypes.Int {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cthWrapper.T_cthWrapper>);
        return stdgo._internal.crypto.tls.Tls_T_cthWrapper_static_extension.T_cthWrapper_static_extension.blockSize(_c);
    }
    static public function size(_c:T_cthWrapper):StdTypes.Int {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cthWrapper.T_cthWrapper>);
        return stdgo._internal.crypto.tls.Tls_T_cthWrapper_static_extension.T_cthWrapper_static_extension.size(_c);
    }
}
