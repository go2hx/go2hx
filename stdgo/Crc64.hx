package stdgo;
final size : haxe.UInt64 = stdgo._internal.hash.crc64.Crc64_size.size;
final iSO : haxe.UInt64 = stdgo._internal.hash.crc64.Crc64_iso.iSO;
final eCMA : haxe.UInt64 = stdgo._internal.hash.crc64.Crc64_ecma.eCMA;
@:structInit @:using(stdgo.hash.crc64.Crc64.T_digest_static_extension) @:dox(hide) abstract T_digest(stdgo._internal.hash.crc64.Crc64_t_digest.T_digest) from stdgo._internal.hash.crc64.Crc64_t_digest.T_digest to stdgo._internal.hash.crc64.Crc64_t_digest.T_digest {
    public var _crc(get, set) : haxe.UInt64;
    function get__crc():haxe.UInt64 return this._crc;
    function set__crc(v:haxe.UInt64):haxe.UInt64 {
        this._crc = (v : stdgo.GoUInt64);
        return v;
    }
    public var _tab(get, set) : Table;
    function get__tab():Table return this._tab;
    function set__tab(v:Table):Table {
        this._tab = (v : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_table.Table>);
        return v;
    }
    public function new(?_crc:haxe.UInt64, ?_tab:Table) this = new stdgo._internal.hash.crc64.Crc64_t_digest.T_digest((_crc : stdgo.GoUInt64), (_tab : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_table.Table>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.hash.crc64.Crc64.T_test_static_extension) @:dox(hide) abstract T_test(stdgo._internal.hash.crc64.Crc64_t_test.T_test) from stdgo._internal.hash.crc64.Crc64_t_test.T_test to stdgo._internal.hash.crc64.Crc64_t_test.T_test {
    public var _outISO(get, set) : haxe.UInt64;
    function get__outISO():haxe.UInt64 return this._outISO;
    function set__outISO(v:haxe.UInt64):haxe.UInt64 {
        this._outISO = (v : stdgo.GoUInt64);
        return v;
    }
    public var _outECMA(get, set) : haxe.UInt64;
    function get__outECMA():haxe.UInt64 return this._outECMA;
    function set__outECMA(v:haxe.UInt64):haxe.UInt64 {
        this._outECMA = (v : stdgo.GoUInt64);
        return v;
    }
    public var _in(get, set) : String;
    function get__in():String return this._in;
    function set__in(v:String):String {
        this._in = (v : stdgo.GoString);
        return v;
    }
    public var _halfStateISO(get, set) : String;
    function get__halfStateISO():String return this._halfStateISO;
    function set__halfStateISO(v:String):String {
        this._halfStateISO = (v : stdgo.GoString);
        return v;
    }
    public var _halfStateECMA(get, set) : String;
    function get__halfStateECMA():String return this._halfStateECMA;
    function set__halfStateECMA(v:String):String {
        this._halfStateECMA = (v : stdgo.GoString);
        return v;
    }
    public function new(?_outISO:haxe.UInt64, ?_outECMA:haxe.UInt64, ?_in:String, ?_halfStateISO:String, ?_halfStateECMA:String) this = new stdgo._internal.hash.crc64.Crc64_t_test.T_test((_outISO : stdgo.GoUInt64), (_outECMA : stdgo.GoUInt64), (_in : stdgo.GoString), (_halfStateISO : stdgo.GoString), (_halfStateECMA : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef Table = stdgo._internal.hash.crc64.Crc64_table.Table;
@:dox(hide) typedef T_digestPointer = stdgo._internal.hash.crc64.Crc64_t_digestpointer.T_digestPointer;
@:dox(hide) class T_digest_static_extension {
    static public function sum(_d:T_digest, _in:Array<std.UInt>):Array<std.UInt> {
        final _d = (_d : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_t_digest.T_digest>);
        final _in = ([for (i in _in) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.hash.crc64.Crc64_t_digest_static_extension.T_digest_static_extension.sum(_d, _in)) i];
    }
    static public function sum64(_d:T_digest):haxe.UInt64 {
        final _d = (_d : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_t_digest.T_digest>);
        return stdgo._internal.hash.crc64.Crc64_t_digest_static_extension.T_digest_static_extension.sum64(_d);
    }
    static public function write(_d:T_digest, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_t_digest.T_digest>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.hash.crc64.Crc64_t_digest_static_extension.T_digest_static_extension.write(_d, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function unmarshalBinary(_d:T_digest, _b:Array<std.UInt>):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_t_digest.T_digest>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.crc64.Crc64_t_digest_static_extension.T_digest_static_extension.unmarshalBinary(_d, _b);
    }
    static public function marshalBinary(_d:T_digest):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_t_digest.T_digest>);
        return {
            final obj = stdgo._internal.hash.crc64.Crc64_t_digest_static_extension.T_digest_static_extension.marshalBinary(_d);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function reset(_d:T_digest):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_t_digest.T_digest>);
        stdgo._internal.hash.crc64.Crc64_t_digest_static_extension.T_digest_static_extension.reset(_d);
    }
    static public function blockSize(_d:T_digest):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_t_digest.T_digest>);
        return stdgo._internal.hash.crc64.Crc64_t_digest_static_extension.T_digest_static_extension.blockSize(_d);
    }
    static public function size(_d:T_digest):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_t_digest.T_digest>);
        return stdgo._internal.hash.crc64.Crc64_t_digest_static_extension.T_digest_static_extension.size(_d);
    }
}
@:dox(hide) typedef T_testPointer = stdgo._internal.hash.crc64.Crc64_t_testpointer.T_testPointer;
@:dox(hide) class T_test_static_extension {

}
typedef TablePointer = stdgo._internal.hash.crc64.Crc64_tablepointer.TablePointer;
class Table_static_extension {

}
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
    static public inline function makeTable(_poly:haxe.UInt64):Table {
        final _poly = (_poly : stdgo.GoUInt64);
        return stdgo._internal.hash.crc64.Crc64_maketable.makeTable(_poly);
    }
    /**
        * New creates a new hash.Hash64 computing the CRC-64 checksum using the
        * polynomial represented by the Table. Its Sum method will lay the
        * value out in big-endian byte order. The returned Hash64 also
        * implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
        * marshal and unmarshal the internal state of the hash.
    **/
    static public inline function new_(_tab:Table):stdgo._internal.hash.Hash_hash64.Hash64 {
        final _tab = (_tab : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_table.Table>);
        return stdgo._internal.hash.crc64.Crc64_new_.new_(_tab);
    }
    /**
        * Update returns the result of adding the bytes in p to the crc.
    **/
    static public inline function update(_crc:haxe.UInt64, _tab:Table, _p:Array<std.UInt>):haxe.UInt64 {
        final _crc = (_crc : stdgo.GoUInt64);
        final _tab = (_tab : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_table.Table>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.hash.crc64.Crc64_update.update(_crc, _tab, _p);
    }
    /**
        * Checksum returns the CRC-64 checksum of data
        * using the polynomial represented by the Table.
    **/
    static public inline function checksum(_data:Array<std.UInt>, _tab:Table):haxe.UInt64 {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _tab = (_tab : stdgo.Ref<stdgo._internal.hash.crc64.Crc64_table.Table>);
        return stdgo._internal.hash.crc64.Crc64_checksum.checksum(_data, _tab);
    }
    static public inline function testGolden(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.crc64.Crc64_testgolden.testGolden(_t);
    }
    static public inline function testGoldenMarshal(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.crc64.Crc64_testgoldenmarshal.testGoldenMarshal(_t);
    }
    static public inline function testMarshalTableMismatch(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.hash.crc64.Crc64_testmarshaltablemismatch.testMarshalTableMismatch(_t);
    }
    static public inline function benchmarkCrc64(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.hash.crc64.Crc64_benchmarkcrc64.benchmarkCrc64(_b);
    }
}
