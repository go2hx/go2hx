package stdgo.internal.saferio;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    // Package saferio provides I/O functions that avoid allocating large
    // amounts of memory unnecessarily. This is intended for packages that
    // read data from an [io.Reader] where the size is part of the input
    // data but the input may be corrupt, or may be provided by an
    // untrustworthy attacker.
**/
private var __go2hxdoc__package : Bool;
/**
    // chunk is an arbitrary limit on how much memory we are willing
    // to allocate without concern.
    
    // 10M
**/
private final _chunk = (10485760i64 : GoUInt64);
/**
    // ReadData reads n bytes from the input stream, but avoids allocating
    // all n bytes if n is large. This avoids crashing the program by
    // allocating all n bytes in cases where n is incorrect.
    //
    // The error is io.EOF only if no bytes were read.
    // If an io.EOF happens after reading some but not all the bytes,
    // ReadData returns io.ErrUnexpectedEOF.
**/
function readData(_r:stdgo.io.Io.Reader, _n:GoUInt64):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        if (((_n : GoInt64) < (0i64 : GoInt64)) || (_n != ((_n : GoInt) : GoUInt64))) {
            return { _0 : (null : Slice<GoUInt8>), _1 : stdgo.io.Io.errUnexpectedEOF };
        };
        if (_n < (10485760i64 : GoUInt64)) {
            var _buf = new Slice<GoUInt8>((_n : GoInt).toBasic(), 0, ...[for (i in 0 ... (_n : GoInt).toBasic()) (0 : GoUInt8)]);
            var __tmp__ = stdgo.io.Io.readFull(_r, _buf), __0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : Slice<GoUInt8>), _1 : _err };
            };
            return { _0 : _buf, _1 : (null : Error) };
        };
        var _buf:Slice<GoByte> = (null : Slice<GoUInt8>);
        var _buf1 = new Slice<GoUInt8>((10485760 : GoInt).toBasic(), 0, ...[for (i in 0 ... (10485760 : GoInt).toBasic()) (0 : GoUInt8)]);
        while (_n > (0i64 : GoUInt64)) {
            var _next:GoUInt64 = _n;
            if (_next > (10485760i64 : GoUInt64)) {
                _next = (10485760i64 : GoUInt64);
            };
            var __tmp__ = stdgo.io.Io.readFull(_r, (_buf1.__slice__(0, _next) : Slice<GoUInt8>)), __1:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                if ((_buf.length > (0 : GoInt)) && (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof))) {
                    _err = stdgo.io.Io.errUnexpectedEOF;
                };
                return { _0 : (null : Slice<GoUInt8>), _1 : _err };
            };
            _buf = _buf.__appendref__(...(_buf1.__slice__(0, _next) : Slice<GoUInt8>).__toArray__());
            _n = _n - (_next);
        };
        return { _0 : _buf, _1 : (null : Error) };
    }
/**
    // ReadDataAt reads n bytes from the input stream at off, but avoids
    // allocating all n bytes if n is large. This avoids crashing the program
    // by allocating all n bytes in cases where n is incorrect.
**/
function readDataAt(_r:stdgo.io.Io.ReaderAt, _n:GoUInt64, _off:GoInt64):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        if (((_n : GoInt64) < (0i64 : GoInt64)) || (_n != ((_n : GoInt) : GoUInt64))) {
            return { _0 : (null : Slice<GoUInt8>), _1 : stdgo.io.Io.errUnexpectedEOF };
        };
        if (_n < (10485760i64 : GoUInt64)) {
            var _buf = new Slice<GoUInt8>((_n : GoInt).toBasic(), 0, ...[for (i in 0 ... (_n : GoInt).toBasic()) (0 : GoUInt8)]);
            var __tmp__ = _r.readAt(_buf, _off), __0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                if ((Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof)) || (_n > (0i64 : GoUInt64))) {
                    return { _0 : (null : Slice<GoUInt8>), _1 : _err };
                };
            };
            return { _0 : _buf, _1 : (null : Error) };
        };
        var _buf:Slice<GoByte> = (null : Slice<GoUInt8>);
        var _buf1 = new Slice<GoUInt8>((10485760 : GoInt).toBasic(), 0, ...[for (i in 0 ... (10485760 : GoInt).toBasic()) (0 : GoUInt8)]);
        while (_n > (0i64 : GoUInt64)) {
            var _next:GoUInt64 = _n;
            if (_next > (10485760i64 : GoUInt64)) {
                _next = (10485760i64 : GoUInt64);
            };
            var __tmp__ = _r.readAt((_buf1.__slice__(0, _next) : Slice<GoUInt8>), _off), __1:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : Slice<GoUInt8>), _1 : _err };
            };
            _buf = _buf.__appendref__(...(_buf1.__slice__(0, _next) : Slice<GoUInt8>).__toArray__());
            _n = _n - (_next);
            _off = _off + ((_next : GoInt64));
        };
        return { _0 : _buf, _1 : (null : Error) };
    }
/**
    // SliceCap returns the capacity to use when allocating a slice.
    // After the slice is allocated with the capacity, it should be
    // built using append. This will avoid allocating too much memory
    // if the capacity is large and incorrect.
    //
    // A negative result means that the value is always too big.
    //
    // The element type is described by passing a pointer to a value of that type.
    // This would ideally use generics, but this code is built with
    // the bootstrap compiler which need not support generics.
    // We use a pointer so that we can handle slices of interface type.
**/
function sliceCap(_v:AnyInterface, _c:GoUInt64):GoInt {
        if (((_c : GoInt64) < (0i64 : GoInt64)) || (_c != ((_c : GoInt) : GoUInt64))) {
            return (-1 : GoInt);
        };
        var _typ:stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(_v);
        if (_typ.kind() != ((22u32 : stdgo.reflect.Reflect.Kind))) {
            throw Go.toInterface(("SliceCap called with non-pointer type" : GoString));
        };
        var _size:GoUInt64 = (_typ.elem().size() : GoUInt64);
        if ((_size > (0i64 : GoUInt64)) && (_c > ((-1i64 : GoUInt64) / _size))) {
            return (-1 : GoInt);
        };
        if ((_c * _size) > (10485760i64 : GoUInt64)) {
            _c = ((10485760i64 : GoUInt64) / _size : GoUInt64);
            if (_c == ((0i64 : GoUInt64))) {
                _c = (1i64 : GoUInt64);
            };
        };
        return (_c : GoInt);
    }
