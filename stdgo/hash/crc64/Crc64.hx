package stdgo.hash.crc64;
final size : haxe.UInt64 = stdgo._internal.hash.crc64.Crc64_size.size;
final iSO : haxe.UInt64 = stdgo._internal.hash.crc64.Crc64_iSO.iSO;
final eCMA : haxe.UInt64 = stdgo._internal.hash.crc64.Crc64_eCMA.eCMA;
@:structInit @:using(stdgo.hash.crc64.Crc64.T_digest_static_extension) abstract T_digest(stdgo._internal.hash.crc64.Crc64_T_digest.T_digest) from stdgo._internal.hash.crc64.Crc64_T_digest.T_digest to stdgo._internal.hash.crc64.Crc64_T_digest.T_digest {
    public var _crc(get, set) : haxe.UInt64;
    function get__crc():haxe.UInt64 return this._crc;
    function set__crc(v:haxe.UInt64):haxe.UInt64 {
        this._crc = (v : stdgo.GoUInt64);
        return v;
    }
    public var _tab(get, set) : Table;
    function get__tab():Table return this._tab;
    function set__tab(v:Table):Table {
        this._tab = (v : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_Table.Table>);
        return v;
    }
    public function new(?_crc:haxe.UInt64, ?_tab:Table) this = new stdgo._internal.hash.crc64.Crc64_T_digest.T_digest((_crc : stdgo.GoUInt64), (_tab : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_Table.Table>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Table = stdgo._internal.hash.crc64.Crc64_Table.Table;
typedef T_digestPointer = stdgo._internal.hash.crc64.Crc64_T_digestPointer.T_digestPointer;
class T_digest_static_extension {
    static public function sum(_d:T_digest, _in:Array<std.UInt>):Array<std.UInt> {
        final _d = (_d : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_T_digest.T_digest>);
        final _in = ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.hash.crc64.Crc64_T_digest_static_extension.T_digest_static_extension.sum(_d, _in)) i];
    }
    static public function sum64(_d:T_digest):haxe.UInt64 {
        final _d = (_d : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_T_digest.T_digest>);
        return stdgo._internal.hash.crc64.Crc64_T_digest_static_extension.T_digest_static_extension.sum64(_d);
    }
    static public function write(_d:T_digest, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_T_digest.T_digest>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.hash.crc64.Crc64_T_digest_static_extension.T_digest_static_extension.write(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function unmarshalBinary(_d:T_digest, _b:Array<std.UInt>):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_T_digest.T_digest>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.crc64.Crc64_T_digest_static_extension.T_digest_static_extension.unmarshalBinary(_d, _b);
    }
    static public function marshalBinary(_d:T_digest):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_T_digest.T_digest>);
        return {
            final obj = stdgo._internal.hash.crc64.Crc64_T_digest_static_extension.T_digest_static_extension.marshalBinary(_d);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function reset(_d:T_digest):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_T_digest.T_digest>);
        stdgo._internal.hash.crc64.Crc64_T_digest_static_extension.T_digest_static_extension.reset(_d);
    }
    static public function blockSize(_d:T_digest):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_T_digest.T_digest>);
        return stdgo._internal.hash.crc64.Crc64_T_digest_static_extension.T_digest_static_extension.blockSize(_d);
    }
    static public function size(_d:T_digest):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_T_digest.T_digest>);
        return stdgo._internal.hash.crc64.Crc64_T_digest_static_extension.T_digest_static_extension.size(_d);
    }
}
typedef TablePointer = stdgo._internal.hash.crc64.Crc64_TablePointer.TablePointer;
class Table_static_extension {

}
/**
    Package crc64 implements the 64-bit cyclic redundancy check, or CRC-64,
    checksum. See https://en.wikipedia.org/wiki/Cyclic_redundancy_check for
    information.
**/
class Crc64 {
    /**
        MakeTable returns a Table constructed from the specified polynomial.
        The contents of this Table must not be modified.
    **/
    static public inline function makeTable(_poly:haxe.UInt64):Table {
        final _poly = (_poly : stdgo.GoUInt64);
        return stdgo._internal.hash.crc64.Crc64_makeTable.makeTable(_poly);
    }
    /**
        New creates a new hash.Hash64 computing the CRC-64 checksum using the
        polynomial represented by the Table. Its Sum method will lay the
        value out in big-endian byte order. The returned Hash64 also
        implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
        marshal and unmarshal the internal state of the hash.
    **/
    static public inline function new_(_tab:Table):stdgo._internal.hash.Hash_Hash64.Hash64 {
        final _tab = (_tab : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_Table.Table>);
        return stdgo._internal.hash.crc64.Crc64_new_.new_(_tab);
    }
    /**
        Update returns the result of adding the bytes in p to the crc.
    **/
    static public inline function update(_crc:haxe.UInt64, _tab:Table, _p:Array<std.UInt>):haxe.UInt64 {
        final _crc = (_crc : stdgo.GoUInt64);
        final _tab = (_tab : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_Table.Table>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.crc64.Crc64_update.update(_crc, _tab, _p);
    }
    /**
        Checksum returns the CRC-64 checksum of data
        using the polynomial represented by the Table.
    **/
    static public inline function checksum(_data:Array<std.UInt>, _tab:Table):haxe.UInt64 {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _tab = (_tab : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_Table.Table>);
        return stdgo._internal.hash.crc64.Crc64_checksum.checksum(_data, _tab);
    }
}
