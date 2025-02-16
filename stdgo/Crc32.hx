package stdgo;
final size : haxe.UInt64 = stdgo._internal.hash.crc32.Crc32_size.size;
final iEEE : haxe.UInt64 = stdgo._internal.hash.crc32.Crc32_ieee.iEEE;
final castagnoli : haxe.UInt64 = stdgo._internal.hash.crc32.Crc32_castagnoli.castagnoli;
final koopman : haxe.UInt64 = stdgo._internal.hash.crc32.Crc32_koopman.koopman;
var iEEETable(get, set) : Table;
private function get_iEEETable():Table return stdgo._internal.hash.crc32.Crc32_ieeetable.iEEETable;
private function set_iEEETable(v:Table):Table {
        stdgo._internal.hash.crc32.Crc32_ieeetable.iEEETable = (v : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>);
        return v;
    }
@:structInit @:using(stdgo.hash.crc32.Crc32.T_digest_static_extension) @:dox(hide) abstract T_digest(stdgo._internal.hash.crc32.Crc32_t_digest.T_digest) from stdgo._internal.hash.crc32.Crc32_t_digest.T_digest to stdgo._internal.hash.crc32.Crc32_t_digest.T_digest {
    public var _crc(get, set) : std.UInt;
    function get__crc():std.UInt return this._crc;
    function set__crc(v:std.UInt):std.UInt {
        this._crc = (v : stdgo.GoUInt32);
        return v;
    }
    public var _tab(get, set) : Table;
    function get__tab():Table return this._tab;
    function set__tab(v:Table):Table {
        this._tab = (v : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>);
        return v;
    }
    public function new(?_crc:std.UInt, ?_tab:Table) this = new stdgo._internal.hash.crc32.Crc32_t_digest.T_digest((_crc : stdgo.GoUInt32), (_tab : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.hash.crc32.Crc32.T_test_static_extension) @:dox(hide) abstract T_test(stdgo._internal.hash.crc32.Crc32_t_test.T_test) from stdgo._internal.hash.crc32.Crc32_t_test.T_test to stdgo._internal.hash.crc32.Crc32_t_test.T_test {
    public var _ieee(get, set) : std.UInt;
    function get__ieee():std.UInt return this._ieee;
    function set__ieee(v:std.UInt):std.UInt {
        this._ieee = (v : stdgo.GoUInt32);
        return v;
    }
    public var _castagnoli(get, set) : std.UInt;
    function get__castagnoli():std.UInt return this._castagnoli;
    function set__castagnoli(v:std.UInt):std.UInt {
        this._castagnoli = (v : stdgo.GoUInt32);
        return v;
    }
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = (v : stdgo.GoString);
        return v;
    }
    public var _halfStateIEEE(get, set) : String;
    function get__halfStateIEEE():String return this._halfStateIEEE;
    function set__halfStateIEEE(v:String):String {
        this._halfStateIEEE = (v : stdgo.GoString);
        return v;
    }
    public var _halfStateCastagnoli(get, set) : String;
    function get__halfStateCastagnoli():String return this._halfStateCastagnoli;
    function set__halfStateCastagnoli(v:String):String {
        this._halfStateCastagnoli = (v : stdgo.GoString);
        return v;
    }
    public function new(?_ieee:std.UInt, ?_castagnoli:std.UInt, ?_in:String, ?_halfStateIEEE:String, ?_halfStateCastagnoli:String) this = new stdgo._internal.hash.crc32.Crc32_t_test.T_test((_ieee : stdgo.GoUInt32), (_castagnoli : stdgo.GoUInt32), (_in : stdgo.GoString), (_halfStateIEEE : stdgo.GoString), (_halfStateCastagnoli : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Table = stdgo._internal.hash.crc32.Crc32_table.Table;
@:dox(hide) typedef T_slicing8Table = stdgo._internal.hash.crc32.Crc32_t_slicing8table.T_slicing8Table;
@:dox(hide) typedef T_digestPointer = stdgo._internal.hash.crc32.Crc32_t_digestpointer.T_digestPointer;
@:dox(hide) class T_digest_static_extension {
    static public function sum(_d:T_digest, _in:Array<std.UInt>):Array<std.UInt> {
        final _d = (_d : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_digest.T_digest>);
        final _in = ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.hash.crc32.Crc32_t_digest_static_extension.T_digest_static_extension.sum(_d, _in)) i];
    }
    static public function sum32(_d:T_digest):std.UInt {
        final _d = (_d : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_digest.T_digest>);
        return stdgo._internal.hash.crc32.Crc32_t_digest_static_extension.T_digest_static_extension.sum32(_d);
    }
    static public function write(_d:T_digest, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_digest.T_digest>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.hash.crc32.Crc32_t_digest_static_extension.T_digest_static_extension.write(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function unmarshalBinary(_d:T_digest, _b:Array<std.UInt>):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_digest.T_digest>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.crc32.Crc32_t_digest_static_extension.T_digest_static_extension.unmarshalBinary(_d, _b);
    }
    static public function marshalBinary(_d:T_digest):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_digest.T_digest>);
        return {
            final obj = stdgo._internal.hash.crc32.Crc32_t_digest_static_extension.T_digest_static_extension.marshalBinary(_d);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function reset(_d:T_digest):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_digest.T_digest>);
        stdgo._internal.hash.crc32.Crc32_t_digest_static_extension.T_digest_static_extension.reset(_d);
    }
    static public function blockSize(_d:T_digest):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_digest.T_digest>);
        return stdgo._internal.hash.crc32.Crc32_t_digest_static_extension.T_digest_static_extension.blockSize(_d);
    }
    static public function size(_d:T_digest):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_digest.T_digest>);
        return stdgo._internal.hash.crc32.Crc32_t_digest_static_extension.T_digest_static_extension.size(_d);
    }
}
@:dox(hide) typedef T_testPointer = stdgo._internal.hash.crc32.Crc32_t_testpointer.T_testPointer;
@:dox(hide) class T_test_static_extension {

}
typedef TablePointer = stdgo._internal.hash.crc32.Crc32_tablepointer.TablePointer;
class Table_static_extension {

}
@:dox(hide) typedef T_slicing8TablePointer = stdgo._internal.hash.crc32.Crc32_t_slicing8tablepointer.T_slicing8TablePointer;
@:dox(hide) class T_slicing8Table_static_extension {

}
/**
    * Package crc32 implements the 32-bit cyclic redundancy check, or CRC-32,
    * checksum. See https://en.wikipedia.org/wiki/Cyclic_redundancy_check for
    * information.
    * 
    * Polynomials are represented in LSB-first form also known as reversed representation.
    * 
    * See https://en.wikipedia.org/wiki/Mathematics_of_cyclic_redundancy_checks#Reversed_representations_and_reciprocal_polynomials
    * for information.
**/
class Crc32 {
    /**
        * MakeTable returns a Table constructed from the specified polynomial.
        * The contents of this Table must not be modified.
    **/
    static public inline function makeTable(_poly:std.UInt):Table {
        final _poly = (_poly : stdgo.GoUInt32);
        return stdgo._internal.hash.crc32.Crc32_maketable.makeTable(_poly);
    }
    /**
        * New creates a new hash.Hash32 computing the CRC-32 checksum using the
        * polynomial represented by the Table. Its Sum method will lay the
        * value out in big-endian byte order. The returned Hash32 also
        * implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
        * marshal and unmarshal the internal state of the hash.
    **/
    static public inline function new_(_tab:Table):stdgo._internal.hash.Hash_hash32.Hash32 {
        final _tab = (_tab : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>);
        return stdgo._internal.hash.crc32.Crc32_new_.new_(_tab);
    }
    /**
        * NewIEEE creates a new hash.Hash32 computing the CRC-32 checksum using
        * the IEEE polynomial. Its Sum method will lay the value out in
        * big-endian byte order. The returned Hash32 also implements
        * encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to marshal
        * and unmarshal the internal state of the hash.
    **/
    static public inline function newIEEE():stdgo._internal.hash.Hash_hash32.Hash32 {
        return stdgo._internal.hash.crc32.Crc32_newieee.newIEEE();
    }
    /**
        * Update returns the result of adding the bytes in p to the crc.
    **/
    static public inline function update(_crc:std.UInt, _tab:Table, _p:Array<std.UInt>):std.UInt {
        final _crc = (_crc : stdgo.GoUInt32);
        final _tab = (_tab : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.crc32.Crc32_update.update(_crc, _tab, _p);
    }
    /**
        * Checksum returns the CRC-32 checksum of data
        * using the polynomial represented by the Table.
    **/
    static public inline function checksum(_data:Array<std.UInt>, _tab:Table):std.UInt {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _tab = (_tab : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>);
        return stdgo._internal.hash.crc32.Crc32_checksum.checksum(_data, _tab);
    }
    /**
        * ChecksumIEEE returns the CRC-32 checksum of data
        * using the IEEE polynomial.
    **/
    static public inline function checksumIEEE(_data:Array<std.UInt>):std.UInt {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.crc32.Crc32_checksumieee.checksumIEEE(_data);
    }
    /**
        * First test, so that it can be the one to initialize castagnoliTable.
    **/
    static public inline function testCastagnoliRace(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.crc32.Crc32_testcastagnolirace.testCastagnoliRace(_t);
    }
    /**
        * TestSimple tests the simple generic algorithm.
    **/
    static public inline function testSimple(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.crc32.Crc32_testsimple.testSimple(_t);
    }
    static public inline function testGoldenMarshal(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.crc32.Crc32_testgoldenmarshal.testGoldenMarshal(_t);
    }
    static public inline function testMarshalTableMismatch(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.crc32.Crc32_testmarshaltablemismatch.testMarshalTableMismatch(_t);
    }
    /**
        * TestSimple tests the slicing-by-8 algorithm.
    **/
    static public inline function testSlicing(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.crc32.Crc32_testslicing.testSlicing(_t);
    }
    static public inline function testArchIEEE(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.crc32.Crc32_testarchieee.testArchIEEE(_t);
    }
    static public inline function testArchCastagnoli(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.crc32.Crc32_testarchcastagnoli.testArchCastagnoli(_t);
    }
    static public inline function testGolden(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.crc32.Crc32_testgolden.testGolden(_t);
    }
    static public inline function benchmarkCRC32(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.hash.crc32.Crc32_benchmarkcrc32.benchmarkCRC32(_b);
    }
}
