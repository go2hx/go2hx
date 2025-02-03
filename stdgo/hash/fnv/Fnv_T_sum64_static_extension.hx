package stdgo.hash.fnv;
class T_sum64_static_extension {
    static public function unmarshalBinary(_s:stdgo.Pointer<T_sum64>, _b:Array<std.UInt>):stdgo.Error {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.fnv.Fnv_T_sum64_static_extension.T_sum64_static_extension.unmarshalBinary(_s, _b);
    }
    static public function marshalBinary(_s:stdgo.Pointer<T_sum64>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_T_sum64_static_extension.T_sum64_static_extension.marshalBinary(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function sum(_s:stdgo.Pointer<T_sum64>, _in:Array<std.UInt>):Array<std.UInt> {
        final _in = ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.hash.fnv.Fnv_T_sum64_static_extension.T_sum64_static_extension.sum(_s, _in)) i];
    }
    static public function blockSize(_s:stdgo.Pointer<T_sum64>):StdTypes.Int {
        return stdgo._internal.hash.fnv.Fnv_T_sum64_static_extension.T_sum64_static_extension.blockSize(_s);
    }
    static public function size(_s:stdgo.Pointer<T_sum64>):StdTypes.Int {
        return stdgo._internal.hash.fnv.Fnv_T_sum64_static_extension.T_sum64_static_extension.size(_s);
    }
    static public function write(_s:stdgo.Pointer<T_sum64>, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_T_sum64_static_extension.T_sum64_static_extension.write(_s, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function sum64(_s:stdgo.Pointer<T_sum64>):haxe.UInt64 {
        return stdgo._internal.hash.fnv.Fnv_T_sum64_static_extension.T_sum64_static_extension.sum64(_s);
    }
    static public function reset(_s:stdgo.Pointer<T_sum64>):Void {
        stdgo._internal.hash.fnv.Fnv_T_sum64_static_extension.T_sum64_static_extension.reset(_s);
    }
}
