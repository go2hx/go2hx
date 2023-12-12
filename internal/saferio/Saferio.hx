package internal.saferio;
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
final _chunk : stdgo.StdGoTypes.GoUInt64 = (10485760i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // ReadData reads n bytes from the input stream, but avoids allocating
    // all n bytes if n is large. This avoids crashing the program by
    // allocating all n bytes in cases where n is incorrect.
    //
    // The error is io.EOF only if no bytes were read.
    // If an io.EOF happens after reading some but not all the bytes,
    // ReadData returns io.ErrUnexpectedEOF.
**/
function readData(_r:stdgo.io.Io.Reader, _n:stdgo.StdGoTypes.GoUInt64):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        if (((_n : stdgo.StdGoTypes.GoInt64) < (0i64 : stdgo.StdGoTypes.GoInt64)) || (_n != ((_n : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoUInt64))) {
            return { _0 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : stdgo.io.Io.errUnexpectedEOF };
        };
        if (_n < (10485760i64 : stdgo.StdGoTypes.GoUInt64)) {
            var _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_n : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
            var __tmp__ = stdgo.io.Io.readFull(_r, _buf), __0:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : _err };
            };
            return { _0 : _buf, _1 : (null : stdgo.Error) };
        };
        var _buf:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        var _buf1 = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((10485760 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        while (_n > (0i64 : stdgo.StdGoTypes.GoUInt64)) {
            var _next:stdgo.StdGoTypes.GoUInt64 = _n;
            if (_next > (10485760i64 : stdgo.StdGoTypes.GoUInt64)) {
                _next = (10485760i64 : stdgo.StdGoTypes.GoUInt64);
            };
            var __tmp__ = stdgo.io.Io.readFull(_r, (_buf1.__slice__(0, _next) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)), __1:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if ((_buf.length > (0 : stdgo.StdGoTypes.GoInt)) && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo.io.Io.eof))) {
                    _err = stdgo.io.Io.errUnexpectedEOF;
                };
                return { _0 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : _err };
            };
            _buf = (_buf.__append__(...(_buf1.__slice__(0, _next) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).__toArray__()));
            _n = _n - (_next);
        };
        return { _0 : _buf, _1 : (null : stdgo.Error) };
    }
/**
    // ReadDataAt reads n bytes from the input stream at off, but avoids
    // allocating all n bytes if n is large. This avoids crashing the program
    // by allocating all n bytes in cases where n is incorrect.
**/
function readDataAt(_r:stdgo.io.Io.ReaderAt, _n:stdgo.StdGoTypes.GoUInt64, _off:stdgo.StdGoTypes.GoInt64):{ var _0 : stdgo.Slice<stdgo.StdGoTypes.GoByte>; var _1 : stdgo.Error; } {
        if (((_n : stdgo.StdGoTypes.GoInt64) < (0i64 : stdgo.StdGoTypes.GoInt64)) || (_n != ((_n : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoUInt64))) {
            return { _0 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : stdgo.io.Io.errUnexpectedEOF };
        };
        if (_n < (10485760i64 : stdgo.StdGoTypes.GoUInt64)) {
            var _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_n : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
            var __tmp__ = _r.readAt(_buf, _off), __0:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if ((stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo.io.Io.eof)) || (_n > (0i64 : stdgo.StdGoTypes.GoUInt64))) {
                    return { _0 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : _err };
                };
            };
            return { _0 : _buf, _1 : (null : stdgo.Error) };
        };
        var _buf:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        var _buf1 = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((10485760 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        while (_n > (0i64 : stdgo.StdGoTypes.GoUInt64)) {
            var _next:stdgo.StdGoTypes.GoUInt64 = _n;
            if (_next > (10485760i64 : stdgo.StdGoTypes.GoUInt64)) {
                _next = (10485760i64 : stdgo.StdGoTypes.GoUInt64);
            };
            var __tmp__ = _r.readAt((_buf1.__slice__(0, _next) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _off), __1:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), _1 : _err };
            };
            _buf = (_buf.__append__(...(_buf1.__slice__(0, _next) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>).__toArray__()));
            _n = _n - (_next);
            _off = _off + ((_next : stdgo.StdGoTypes.GoInt64));
        };
        return { _0 : _buf, _1 : (null : stdgo.Error) };
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
function sliceCap(_v:stdgo.StdGoTypes.AnyInterface, _c:stdgo.StdGoTypes.GoUInt64):stdgo.StdGoTypes.GoInt {
        if (((_c : stdgo.StdGoTypes.GoInt64) < (0i64 : stdgo.StdGoTypes.GoInt64)) || (_c != ((_c : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoUInt64))) {
            return (-1 : stdgo.StdGoTypes.GoInt);
        };
        var _typ:stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(_v);
        if (_typ.kind() != ((22u32 : stdgo.reflect.Reflect.Kind))) {
            throw stdgo.Go.toInterface(("SliceCap called with non-pointer type" : stdgo.GoString));
        };
        var _size:stdgo.StdGoTypes.GoUInt64 = (_typ.elem().size() : stdgo.StdGoTypes.GoUInt64);
        if ((_size > (0i64 : stdgo.StdGoTypes.GoUInt64)) && (_c > ((-1i64 : stdgo.StdGoTypes.GoUInt64) / _size))) {
            return (-1 : stdgo.StdGoTypes.GoInt);
        };
        if ((_c * _size) > (10485760i64 : stdgo.StdGoTypes.GoUInt64)) {
            _c = ((10485760i64 : stdgo.StdGoTypes.GoUInt64) / _size : stdgo.StdGoTypes.GoUInt64);
            if (_c == ((0i64 : stdgo.StdGoTypes.GoUInt64))) {
                _c = (1i64 : stdgo.StdGoTypes.GoUInt64);
            };
        };
        return (_c : stdgo.StdGoTypes.GoInt);
    }
