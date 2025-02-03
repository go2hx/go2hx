package stdgo.crypto.sha512;
class T_digest_static_extension {
    static public function _checkSum(_d:T_digest):haxe.ds.Vector<std.UInt> {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_T_digest.T_digest>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.crypto.sha512.Sha512_T_digest_static_extension.T_digest_static_extension._checkSum(_d)) i]);
    }
    static public function sum(_d:T_digest, _in:Array<std.UInt>):Array<std.UInt> {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_T_digest.T_digest>);
        final _in = ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.crypto.sha512.Sha512_T_digest_static_extension.T_digest_static_extension.sum(_d, _in)) i];
    }
    static public function write(_d:T_digest, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_T_digest.T_digest>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.sha512.Sha512_T_digest_static_extension.T_digest_static_extension.write(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function blockSize(_d:T_digest):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_T_digest.T_digest>);
        return stdgo._internal.crypto.sha512.Sha512_T_digest_static_extension.T_digest_static_extension.blockSize(_d);
    }
    static public function size(_d:T_digest):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_T_digest.T_digest>);
        return stdgo._internal.crypto.sha512.Sha512_T_digest_static_extension.T_digest_static_extension.size(_d);
    }
    static public function unmarshalBinary(_d:T_digest, _b:Array<std.UInt>):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_T_digest.T_digest>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.crypto.sha512.Sha512_T_digest_static_extension.T_digest_static_extension.unmarshalBinary(_d, _b);
    }
    static public function marshalBinary(_d:T_digest):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_T_digest.T_digest>);
        return {
            final obj = stdgo._internal.crypto.sha512.Sha512_T_digest_static_extension.T_digest_static_extension.marshalBinary(_d);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function reset(_d:T_digest):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_T_digest.T_digest>);
        stdgo._internal.crypto.sha512.Sha512_T_digest_static_extension.T_digest_static_extension.reset(_d);
    }
}
