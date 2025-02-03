package stdgo.hash.crc64;
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
