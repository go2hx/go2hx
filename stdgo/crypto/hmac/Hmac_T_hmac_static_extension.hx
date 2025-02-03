package stdgo.crypto.hmac;
class T_hmac_static_extension {
    static public function reset(_h:T_hmac):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_T_hmac.T_hmac>);
        stdgo._internal.crypto.hmac.Hmac_T_hmac_static_extension.T_hmac_static_extension.reset(_h);
    }
    static public function blockSize(_h:T_hmac):StdTypes.Int {
        final _h = (_h : stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_T_hmac.T_hmac>);
        return stdgo._internal.crypto.hmac.Hmac_T_hmac_static_extension.T_hmac_static_extension.blockSize(_h);
    }
    static public function size(_h:T_hmac):StdTypes.Int {
        final _h = (_h : stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_T_hmac.T_hmac>);
        return stdgo._internal.crypto.hmac.Hmac_T_hmac_static_extension.T_hmac_static_extension.size(_h);
    }
    static public function write(_h:T_hmac, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _h = (_h : stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_T_hmac.T_hmac>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.hmac.Hmac_T_hmac_static_extension.T_hmac_static_extension.write(_h, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function sum(_h:T_hmac, _in:Array<std.UInt>):Array<std.UInt> {
        final _h = (_h : stdgo.Ref<stdgo._internal.crypto.hmac.Hmac_T_hmac.T_hmac>);
        final _in = ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.hmac.Hmac_T_hmac_static_extension.T_hmac_static_extension.sum(_h, _in)) i];
    }
}
