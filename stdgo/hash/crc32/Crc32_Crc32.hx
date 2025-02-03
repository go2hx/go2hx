package stdgo.hash.crc32;
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
    static public inline function makeTable(_poly:std.UInt):Table {
        final _poly = (_poly : stdgo.GoUInt32);
        return stdgo._internal.hash.crc32.Crc32_makeTable.makeTable(_poly);
    }
    /**
        New creates a new hash.Hash32 computing the CRC-32 checksum using the
        polynomial represented by the Table. Its Sum method will lay the
        value out in big-endian byte order. The returned Hash32 also
        implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
        marshal and unmarshal the internal state of the hash.
    **/
    static public inline function new_(_tab:Table):stdgo._internal.hash.Hash_Hash32.Hash32 {
        final _tab = (_tab : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_Table.Table>);
        return stdgo._internal.hash.crc32.Crc32_new_.new_(_tab);
    }
    /**
        NewIEEE creates a new hash.Hash32 computing the CRC-32 checksum using
        the IEEE polynomial. Its Sum method will lay the value out in
        big-endian byte order. The returned Hash32 also implements
        encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to marshal
        and unmarshal the internal state of the hash.
    **/
    static public inline function newIEEE():stdgo._internal.hash.Hash_Hash32.Hash32 {
        return stdgo._internal.hash.crc32.Crc32_newIEEE.newIEEE();
    }
    /**
        Update returns the result of adding the bytes in p to the crc.
    **/
    static public inline function update(_crc:std.UInt, _tab:Table, _p:Array<std.UInt>):std.UInt {
        final _crc = (_crc : stdgo.GoUInt32);
        final _tab = (_tab : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_Table.Table>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.crc32.Crc32_update.update(_crc, _tab, _p);
    }
    /**
        Checksum returns the CRC-32 checksum of data
        using the polynomial represented by the Table.
    **/
    static public inline function checksum(_data:Array<std.UInt>, _tab:Table):std.UInt {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _tab = (_tab : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_Table.Table>);
        return stdgo._internal.hash.crc32.Crc32_checksum.checksum(_data, _tab);
    }
    /**
        ChecksumIEEE returns the CRC-32 checksum of data
        using the IEEE polynomial.
    **/
    static public inline function checksumIEEE(_data:Array<std.UInt>):std.UInt {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.crc32.Crc32_checksumIEEE.checksumIEEE(_data);
    }
}
