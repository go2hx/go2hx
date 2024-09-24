package stdgo.hash.crc32;
final size : haxe.UInt64 = stdgo._internal.hash.crc32.Crc32_size.size;
final ieee : haxe.UInt64 = stdgo._internal.hash.crc32.Crc32_ieee.ieee;
final castagnoli : haxe.UInt64 = stdgo._internal.hash.crc32.Crc32_castagnoli.castagnoli;
final koopman : haxe.UInt64 = stdgo._internal.hash.crc32.Crc32_koopman.koopman;
var ieeetable(get, set) : Table;
private function get_ieeetable():Table return stdgo._internal.hash.crc32.Crc32_ieeetable.ieeetable;
private function set_ieeetable(v:Table):Table {
        stdgo._internal.hash.crc32.Crc32_ieeetable.ieeetable = v;
        return v;
    }
@:structInit @:using(stdgo.hash.crc32.Crc32.T_digest_static_extension) abstract T_digest(stdgo._internal.hash.crc32.Crc32_T_digest.T_digest) from stdgo._internal.hash.crc32.Crc32_T_digest.T_digest to stdgo._internal.hash.crc32.Crc32_T_digest.T_digest {
    public var _crc(get, set) : std.UInt;
    function get__crc():std.UInt return this._crc;
    function set__crc(v:std.UInt):std.UInt {
        this._crc = v;
        return v;
    }
    public var _tab(get, set) : Table;
    function get__tab():Table return this._tab;
    function set__tab(v:Table):Table {
        this._tab = v;
        return v;
    }
    public function new(?_crc:std.UInt, ?_tab:Table) this = new stdgo._internal.hash.crc32.Crc32_T_digest.T_digest(_crc, _tab);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Table = stdgo._internal.hash.crc32.Crc32_Table.Table;
typedef T_slicing8Table = stdgo._internal.hash.crc32.Crc32_T_slicing8Table.T_slicing8Table;
class T_digest_static_extension {
    static public function sum(_d:T_digest, _in:Array<std.UInt>):Array<std.UInt> {
        final _in = ([for (i in _in) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.hash.crc32.Crc32_T_digest_static_extension.T_digest_static_extension.sum(_d, _in)) i];
    }
    static public function sum32(_d:T_digest):std.UInt {
        return stdgo._internal.hash.crc32.Crc32_T_digest_static_extension.T_digest_static_extension.sum32(_d);
    }
    static public function write(_d:T_digest, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.hash.crc32.Crc32_T_digest_static_extension.T_digest_static_extension.write(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function unmarshalBinary(_d:T_digest, _b:Array<std.UInt>):stdgo.Error {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.crc32.Crc32_T_digest_static_extension.T_digest_static_extension.unmarshalBinary(_d, _b);
    }
    static public function marshalBinary(_d:T_digest):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.hash.crc32.Crc32_T_digest_static_extension.T_digest_static_extension.marshalBinary(_d);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function reset(_d:T_digest):Void {
        stdgo._internal.hash.crc32.Crc32_T_digest_static_extension.T_digest_static_extension.reset(_d);
    }
    static public function blockSize(_d:T_digest):StdTypes.Int {
        return stdgo._internal.hash.crc32.Crc32_T_digest_static_extension.T_digest_static_extension.blockSize(_d);
    }
    static public function size(_d:T_digest):StdTypes.Int {
        return stdgo._internal.hash.crc32.Crc32_T_digest_static_extension.T_digest_static_extension.size(_d);
    }
}
/**
    Package crc32 implements the 32-bit cyclic redundancy check, or CRC-32,
    checksum. See https://en.wikipedia.org/wiki/Cyclic_redundancy_check for
    information.
    
    Polynomials are represented in LSB-first form also known as reversed representation.
    
    See https://en.wikipedia.org/wiki/Mathematics_of_cyclic_redundancy_checks#Reversed_representations_and_reciprocal_polynomials
    for information.
**/
class Crc32 {
    /**
        MakeTable returns a Table constructed from the specified polynomial.
        The contents of this Table must not be modified.
    **/
    static public function makeTable(_poly:std.UInt):Table {
        return stdgo._internal.hash.crc32.Crc32_makeTable.makeTable(_poly);
    }
    /**
        New creates a new hash.Hash32 computing the CRC-32 checksum using the
        polynomial represented by the Table. Its Sum method will lay the
        value out in big-endian byte order. The returned Hash32 also
        implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
        marshal and unmarshal the internal state of the hash.
    **/
    static public function new_(_tab:Table):stdgo._internal.hash.Hash_Hash32.Hash32 {
        return stdgo._internal.hash.crc32.Crc32_new_.new_(_tab);
    }
    /**
        NewIEEE creates a new hash.Hash32 computing the CRC-32 checksum using
        the IEEE polynomial. Its Sum method will lay the value out in
        big-endian byte order. The returned Hash32 also implements
        encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to marshal
        and unmarshal the internal state of the hash.
    **/
    static public function newIEEE():stdgo._internal.hash.Hash_Hash32.Hash32 {
        return stdgo._internal.hash.crc32.Crc32_newIEEE.newIEEE();
    }
    /**
        Update returns the result of adding the bytes in p to the crc.
    **/
    static public function update(_crc:std.UInt, _tab:Table, _p:Array<std.UInt>):std.UInt {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.crc32.Crc32_update.update(_crc, _tab, _p);
    }
    /**
        Checksum returns the CRC-32 checksum of data
        using the polynomial represented by the Table.
    **/
    static public function checksum(_data:Array<std.UInt>, _tab:Table):std.UInt {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.crc32.Crc32_checksum.checksum(_data, _tab);
    }
    /**
        ChecksumIEEE returns the CRC-32 checksum of data
        using the IEEE polynomial.
    **/
    static public function checksumIEEE(_data:Array<std.UInt>):std.UInt {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.crc32.Crc32_checksumIEEE.checksumIEEE(_data);
    }
}
