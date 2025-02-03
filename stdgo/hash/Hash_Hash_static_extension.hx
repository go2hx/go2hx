package stdgo.hash;
class Hash_static_extension {
    static public function blockSize(t:stdgo._internal.hash.Hash_Hash.Hash):StdTypes.Int {
        return stdgo._internal.hash.Hash_Hash_static_extension.Hash_static_extension.blockSize(t);
    }
    static public function size(t:stdgo._internal.hash.Hash_Hash.Hash):StdTypes.Int {
        return stdgo._internal.hash.Hash_Hash_static_extension.Hash_static_extension.size(t);
    }
    static public function reset(t:stdgo._internal.hash.Hash_Hash.Hash):Void {
        stdgo._internal.hash.Hash_Hash_static_extension.Hash_static_extension.reset(t);
    }
    static public function sum(t:stdgo._internal.hash.Hash_Hash.Hash, _b:Array<std.UInt>):Array<std.UInt> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.hash.Hash_Hash_static_extension.Hash_static_extension.sum(t, _b)) i];
    }
}
