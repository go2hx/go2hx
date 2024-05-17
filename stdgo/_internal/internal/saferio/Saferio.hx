package stdgo._internal.internal.saferio;
private var __go2hxdoc__package : Bool;
final _chunk : stdgo.GoUInt64 = (10485760i64 : stdgo.GoUInt64);
function readData(_r:stdgo._internal.io.Io.Reader, _n:stdgo.GoUInt64):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        if ((((_n : stdgo.GoInt64) < (0i64 : stdgo.GoInt64) : Bool) || (_n != ((_n : stdgo.GoInt) : stdgo.GoUInt64)) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.io.Io.errUnexpectedEOF };
        };
        if ((_n < (10485760i64 : stdgo.GoUInt64) : Bool)) {
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = stdgo._internal.io.Io.readFull(_r, _buf), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            return { _0 : _buf, _1 : (null : stdgo.Error) };
        };
        var _buf:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _buf1 = (new stdgo.Slice<stdgo.GoUInt8>((10485760 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        while ((_n > (0i64 : stdgo.GoUInt64) : Bool)) {
            var _next:stdgo.GoUInt64 = _n;
            if ((_next > (10485760i64 : stdgo.GoUInt64) : Bool)) {
                _next = (10485760i64 : stdgo.GoUInt64);
            };
            var __tmp__ = stdgo._internal.io.Io.readFull(_r, (_buf1.__slice__(0, _next) : stdgo.Slice<stdgo.GoUInt8>)), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if ((((_buf.length) > (0 : stdgo.GoInt) : Bool) && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) : Bool)) {
                    _err = stdgo._internal.io.Io.errUnexpectedEOF;
                };
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            _buf = (_buf.__append__(...((_buf1.__slice__(0, _next) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            _n = (_n - (_next) : stdgo.GoUInt64);
        };
        return { _0 : _buf, _1 : (null : stdgo.Error) };
    }
function readDataAt(_r:stdgo._internal.io.Io.ReaderAt, _n:stdgo.GoUInt64, _off:stdgo.GoInt64):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        if ((((_n : stdgo.GoInt64) < (0i64 : stdgo.GoInt64) : Bool) || (_n != ((_n : stdgo.GoInt) : stdgo.GoUInt64)) : Bool)) {
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.io.Io.errUnexpectedEOF };
        };
        if ((_n < (10485760i64 : stdgo.GoUInt64) : Bool)) {
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = _r.readAt(_buf, _off), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (((stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) || (_n > (0i64 : stdgo.GoUInt64) : Bool) : Bool)) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                };
            };
            return { _0 : _buf, _1 : (null : stdgo.Error) };
        };
        var _buf:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _buf1 = (new stdgo.Slice<stdgo.GoUInt8>((10485760 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        while ((_n > (0i64 : stdgo.GoUInt64) : Bool)) {
            var _next:stdgo.GoUInt64 = _n;
            if ((_next > (10485760i64 : stdgo.GoUInt64) : Bool)) {
                _next = (10485760i64 : stdgo.GoUInt64);
            };
            var __tmp__ = _r.readAt((_buf1.__slice__(0, _next) : stdgo.Slice<stdgo.GoUInt8>), _off), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
            };
            _buf = (_buf.__append__(...((_buf1.__slice__(0, _next) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            _n = (_n - (_next) : stdgo.GoUInt64);
            _off = (_off + ((_next : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        return { _0 : _buf, _1 : (null : stdgo.Error) };
    }
function sliceCap(_v:stdgo.AnyInterface, _c:stdgo.GoUInt64):stdgo.GoInt {
        if ((((_c : stdgo.GoInt64) < (0i64 : stdgo.GoInt64) : Bool) || (_c != ((_c : stdgo.GoInt) : stdgo.GoUInt64)) : Bool)) {
            return (-1 : stdgo.GoInt);
        };
        var _typ:stdgo._internal.reflect.Reflect.Type_ = stdgo._internal.reflect.Reflect.typeOf(_v);
        if (_typ.kind() != ((22u32 : stdgo._internal.reflect.Reflect.Kind))) {
            throw stdgo.Go.toInterface(("SliceCap called with non-pointer type" : stdgo.GoString));
        };
        var _size:stdgo.GoUInt64 = (_typ.elem().size() : stdgo.GoUInt64);
        if (((_size > (0i64 : stdgo.GoUInt64) : Bool) && (_c > ((-1i64 : stdgo.GoUInt64) / _size : stdgo.GoUInt64) : Bool) : Bool)) {
            return (-1 : stdgo.GoInt);
        };
        if (((_c * _size : stdgo.GoUInt64) > (10485760i64 : stdgo.GoUInt64) : Bool)) {
            _c = ((10485760i64 : stdgo.GoUInt64) / _size : stdgo.GoUInt64);
            if (_c == ((0i64 : stdgo.GoUInt64))) {
                _c = (1i64 : stdgo.GoUInt64);
            };
        };
        return (_c : stdgo.GoInt);
    }
