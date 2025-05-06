package stdgo.hash.crc64;
var size : stdgo.GoUInt64 = 8i64;
var iSO : stdgo.GoUInt64 = -2882303761517117440i64;
var eCMA : stdgo.GoUInt64 = -3932672073523589310i64;
typedef Table = stdgo._internal.hash.crc64.Crc64_table.Table;
typedef TablePointer = stdgo._internal.hash.crc64.Crc64_tablepointer.TablePointer;
/**
    * Package crc64 implements the 64-bit cyclic redundancy check, or CRC-64,
    * checksum. See https://en.wikipedia.org/wiki/Cyclic_redundancy_check for
    * information.
**/
class Crc64 {
    /**
        * MakeTable returns a Table constructed from the specified polynomial.
        * The contents of this Table must not be modified.
    **/
    static public inline function makeTable(_poly:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.hash.crc64.Crc64_table.Table> return stdgo._internal.hash.crc64.Crc64_maketable.makeTable(_poly);
    /**
        * New creates a new hash.Hash64 computing the CRC-64 checksum using the
        * polynomial represented by the Table. Its Sum method will lay the
        * value out in big-endian byte order. The returned Hash64 also
        * implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
        * marshal and unmarshal the internal state of the hash.
    **/
    static public inline function new_(_tab:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_table.Table>):stdgo._internal.hash.Hash_hash64.Hash64 return stdgo._internal.hash.crc64.Crc64_new_.new_(_tab);
    /**
        * Update returns the result of adding the bytes in p to the crc.
    **/
    static public inline function update(_crc:stdgo.GoUInt64, _tab:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_table.Table>, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return stdgo._internal.hash.crc64.Crc64_update.update(_crc, _tab, _p);
    /**
        * Checksum returns the CRC-64 checksum of data
        * using the polynomial represented by the Table.
    **/
    static public inline function checksum(_data:stdgo.Slice<stdgo.GoUInt8>, _tab:stdgo.Ref<stdgo._internal.hash.crc64.Crc64_table.Table>):stdgo.GoUInt64 return stdgo._internal.hash.crc64.Crc64_checksum.checksum(_data, _tab);
    static public inline function testGolden(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.hash.crc64.Crc64_testgolden.testGolden(_t);
    static public inline function testGoldenMarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.hash.crc64.Crc64_testgoldenmarshal.testGoldenMarshal(_t);
    static public inline function testMarshalTableMismatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.hash.crc64.Crc64_testmarshaltablemismatch.testMarshalTableMismatch(_t);
    static public inline function benchmarkCrc64(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.hash.crc64.Crc64_benchmarkcrc64.benchmarkCrc64(_b);
}
