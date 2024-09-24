package stdgo.internal.saferio;
/**
    Package saferio provides I/O functions that avoid allocating large
    amounts of memory unnecessarily. This is intended for packages that
    read data from an [io.Reader] where the size is part of the input
    data but the input may be corrupt, or may be provided by an
    untrustworthy attacker.
**/
class Saferio {
    /**
        ReadData reads n bytes from the input stream, but avoids allocating
        all n bytes if n is large. This avoids crashing the program by
        allocating all n bytes in cases where n is incorrect.
        
        The error is io.EOF only if no bytes were read.
        If an io.EOF happens after reading some but not all the bytes,
        ReadData returns io.ErrUnexpectedEOF.
    **/
    static public function readData(_r:stdgo._internal.io.Io_Reader.Reader, _n:haxe.UInt64):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.saferio.Saferio_readData.readData(_r, _n);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        ReadDataAt reads n bytes from the input stream at off, but avoids
        allocating all n bytes if n is large. This avoids crashing the program
        by allocating all n bytes in cases where n is incorrect.
    **/
    static public function readDataAt(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt, _n:haxe.UInt64, _off:haxe.Int64):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.internal.saferio.Saferio_readDataAt.readDataAt(_r, _n, _off);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    /**
        SliceCap returns the capacity to use when allocating a slice.
        After the slice is allocated with the capacity, it should be
        built using append. This will avoid allocating too much memory
        if the capacity is large and incorrect.
        
        A negative result means that the value is always too big.
        
        The element type is described by passing a pointer to a value of that type.
        This would ideally use generics, but this code is built with
        the bootstrap compiler which need not support generics.
        We use a pointer so that we can handle slices of interface type.
    **/
    static public function sliceCap(_v:stdgo.AnyInterface, _c:haxe.UInt64):StdTypes.Int {
        return stdgo._internal.internal.saferio.Saferio_sliceCap.sliceCap(_v, _c);
    }
    static public function testReadData(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.internal.saferio.Saferio_testReadData.testReadData(_t);
    }
    static public function testReadDataAt(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.internal.saferio.Saferio_testReadDataAt.testReadDataAt(_t);
    }
    static public function testSliceCap(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.internal.saferio.Saferio_testSliceCap.testSliceCap(_t);
    }
}
