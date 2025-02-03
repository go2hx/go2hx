package stdgo.hash.fnv;
class T_sum128_static_extension {
    static public function unmarshalBinary(_s:T_sum128, _b:Array<std.UInt>):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.hash.fnv.Fnv_T_sum128.T_sum128>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.fnv.Fnv_T_sum128_static_extension.T_sum128_static_extension.unmarshalBinary(_s, _b);
    }
    static public function marshalBinary(_s:T_sum128):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.hash.fnv.Fnv_T_sum128.T_sum128>);
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_T_sum128_static_extension.T_sum128_static_extension.marshalBinary(_s);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function sum(_s:T_sum128, _in:Array<std.UInt>):Array<std.UInt> {
        final _s = (_s : stdgo.Ref<stdgo._internal.hash.fnv.Fnv_T_sum128.T_sum128>);
        final _in = ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.hash.fnv.Fnv_T_sum128_static_extension.T_sum128_static_extension.sum(_s, _in)) i];
    }
    static public function blockSize(_s:T_sum128):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.hash.fnv.Fnv_T_sum128.T_sum128>);
        return stdgo._internal.hash.fnv.Fnv_T_sum128_static_extension.T_sum128_static_extension.blockSize(_s);
    }
    static public function size(_s:T_sum128):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.hash.fnv.Fnv_T_sum128.T_sum128>);
        return stdgo._internal.hash.fnv.Fnv_T_sum128_static_extension.T_sum128_static_extension.size(_s);
    }
    static public function write(_s:T_sum128, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.hash.fnv.Fnv_T_sum128.T_sum128>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.hash.fnv.Fnv_T_sum128_static_extension.T_sum128_static_extension.write(_s, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function reset(_s:T_sum128):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.hash.fnv.Fnv_T_sum128.T_sum128>);
        stdgo._internal.hash.fnv.Fnv_T_sum128_static_extension.T_sum128_static_extension.reset(_s);
    }
}
