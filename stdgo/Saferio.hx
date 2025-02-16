package stdgo;
/**
    * Package saferio provides I/O functions that avoid allocating large
    * amounts of memory unnecessarily. This is intended for packages that
    * read data from an [io.Reader] where the size is part of the input
    * data but the input may be corrupt, or may be provided by an
    * untrustworthy attacker.
**/
class Saferio {
    /**
        * ReadData reads n bytes from the input stream, but avoids allocating
        * all n bytes if n is large. This avoids crashing the program by
        * allocating all n bytes in cases where n is incorrect.
        * 
        * The error is io.EOF only if no bytes were read.
        * If an io.EOF happens after reading some but not all the bytes,
        * ReadData returns io.ErrUnexpectedEOF.
    **/
    static public inline function readData(_r:stdgo._internal.io.Io_reader.Reader, _n:haxe.UInt64):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _n = (_n : stdgo.GoUInt64);
        return {
            final obj = stdgo._internal.internal.saferio.Saferio_readdata.readData(_r, _n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * ReadDataAt reads n bytes from the input stream at off, but avoids
        * allocating all n bytes if n is large. This avoids crashing the program
        * by allocating all n bytes in cases where n is incorrect.
    **/
    static public inline function readDataAt(_r:stdgo._internal.io.Io_readerat.ReaderAt, _n:haxe.UInt64, _off:haxe.Int64):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _n = (_n : stdgo.GoUInt64);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.internal.saferio.Saferio_readdataat.readDataAt(_r, _n, _off);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        * SliceCap returns the capacity to use when allocating a slice.
        * After the slice is allocated with the capacity, it should be
        * built using append. This will avoid allocating too much memory
        * if the capacity is large and incorrect.
        * 
        * A negative result means that the value is always too big.
        * 
        * The element type is described by passing a pointer to a value of that type.
        * This would ideally use generics, but this code is built with
        * the bootstrap compiler which need not support generics.
        * We use a pointer so that we can handle slices of interface type.
    **/
    static public inline function sliceCap(_v:stdgo.AnyInterface, _c:haxe.UInt64):StdTypes.Int {
        final _v = (_v : stdgo.AnyInterface);
        final _c = (_c : stdgo.GoUInt64);
        return stdgo._internal.internal.saferio.Saferio_slicecap.sliceCap(_v, _c);
    }
    static public inline function testReadData(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.internal.saferio.Saferio_testreaddata.testReadData(_t);
    }
    static public inline function testReadDataAt(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.internal.saferio.Saferio_testreaddataat.testReadDataAt(_t);
    }
    static public inline function testSliceCap(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.internal.saferio.Saferio_testslicecap.testSliceCap(_t);
    }
}
