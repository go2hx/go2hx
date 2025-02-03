package stdgo.crypto.elliptic;
class T_nistPoint_static_extension {
    static public function scalarBaseMult(t:stdgo._internal.crypto.elliptic.Elliptic_T_nistPoint.T_nistPoint, _0:Array<std.UInt>):stdgo.Tuple<Dynamic, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_T_nistPoint_static_extension.T_nistPoint_static_extension.scalarBaseMult(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scalarMult(t:stdgo._internal.crypto.elliptic.Elliptic_T_nistPoint.T_nistPoint, _0:Dynamic, _1:Array<std.UInt>):stdgo.Tuple<Dynamic, stdgo.Error> {
        final _1 = ([for (i in _1) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_T_nistPoint_static_extension.T_nistPoint_static_extension.scalarMult(t, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function double(t:stdgo._internal.crypto.elliptic.Elliptic_T_nistPoint.T_nistPoint, _0:Dynamic):Dynamic {
        return stdgo._internal.crypto.elliptic.Elliptic_T_nistPoint_static_extension.T_nistPoint_static_extension.double(t, _0);
    }
    static public function add(t:stdgo._internal.crypto.elliptic.Elliptic_T_nistPoint.T_nistPoint, _0:Dynamic, _1:Dynamic):Dynamic {
        return stdgo._internal.crypto.elliptic.Elliptic_T_nistPoint_static_extension.T_nistPoint_static_extension.add(t, _0, _1);
    }
    static public function setBytes(t:stdgo._internal.crypto.elliptic.Elliptic_T_nistPoint.T_nistPoint, _0:Array<std.UInt>):stdgo.Tuple<Dynamic, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.elliptic.Elliptic_T_nistPoint_static_extension.T_nistPoint_static_extension.setBytes(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function bytes(t:stdgo._internal.crypto.elliptic.Elliptic_T_nistPoint.T_nistPoint):Array<std.UInt> {
        return [for (i in stdgo._internal.crypto.elliptic.Elliptic_T_nistPoint_static_extension.T_nistPoint_static_extension.bytes(t)) i];
    }
}
