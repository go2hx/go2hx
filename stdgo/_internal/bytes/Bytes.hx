package stdgo._internal.bytes;
private var __go2hxdoc__package : Bool;
final _smallBufferSize : stdgo.GoUInt64 = (64i64 : stdgo.GoUInt64);
final _opRead : stdgo._internal.bytes.Bytes.T_readOp = (-1 : stdgo._internal.bytes.Bytes.T_readOp);
final _opInvalid : stdgo._internal.bytes.Bytes.T_readOp = (0 : stdgo._internal.bytes.Bytes.T_readOp);
final _opReadRune1 : stdgo._internal.bytes.Bytes.T_readOp = (1 : stdgo._internal.bytes.Bytes.T_readOp);
final _opReadRune2 : stdgo._internal.bytes.Bytes.T_readOp = (2 : stdgo._internal.bytes.Bytes.T_readOp);
final _opReadRune3 : stdgo._internal.bytes.Bytes.T_readOp = (3 : stdgo._internal.bytes.Bytes.T_readOp);
final _opReadRune4 : stdgo._internal.bytes.Bytes.T_readOp = (4 : stdgo._internal.bytes.Bytes.T_readOp);
final _maxInt : stdgo.GoInt = ((2147483647u32 : stdgo.GoUInt) : stdgo.GoInt);
final minRead : stdgo.GoUInt64 = (512i64 : stdgo.GoUInt64);
var errTooLarge : stdgo.Error = stdgo._internal.errors.Errors.new_(("bytes.Buffer: too large" : stdgo.GoString));
var _errNegativeRead : stdgo.Error = stdgo._internal.errors.Errors.new_(("bytes.Buffer: reader returned negative count from Read" : stdgo.GoString));
var _errUnreadByte : stdgo.Error = stdgo._internal.errors.Errors.new_(("bytes.Buffer: UnreadByte: previous operation was not a successful read" : stdgo.GoString));
var _asciiSpace : stdgo.GoArray<stdgo.GoUInt8> = {
        var s:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(256, 256, ...[for (i in 0 ... 256) 0]);
        s[9] = (1 : stdgo.GoUInt8);
        s[10] = (1 : stdgo.GoUInt8);
        s[11] = (1 : stdgo.GoUInt8);
        s[12] = (1 : stdgo.GoUInt8);
        s[13] = (1 : stdgo.GoUInt8);
        s[32] = (1 : stdgo.GoUInt8);
        s;
    };
var indexBytePortable : (stdgo.Slice<stdgo.GoUInt8>, stdgo.GoUInt8) -> stdgo.GoInt = _indexBytePortable;
@:structInit @:using(stdgo._internal.bytes.Bytes.Buffer_static_extension) class Buffer {
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _off : stdgo.GoInt = 0;
    public var _lastRead : stdgo._internal.bytes.Bytes.T_readOp = ((0 : stdgo.GoInt8) : stdgo._internal.bytes.Bytes.T_readOp);
    public function new(?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_off:stdgo.GoInt, ?_lastRead:stdgo._internal.bytes.Bytes.T_readOp) {
        if (_buf != null) this._buf = _buf;
        if (_off != null) this._off = _off;
        if (_lastRead != null) this._lastRead = _lastRead;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Buffer(_buf, _off, _lastRead);
    }
}
@:structInit @:using(stdgo._internal.bytes.Bytes.Reader_static_extension) class Reader {
    public var _s : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _i : stdgo.GoInt64 = 0;
    public var _prevRune : stdgo.GoInt = 0;
    public function new(?_s:stdgo.Slice<stdgo.GoUInt8>, ?_i:stdgo.GoInt64, ?_prevRune:stdgo.GoInt) {
        if (_s != null) this._s = _s;
        if (_i != null) this._i = _i;
        if (_prevRune != null) this._prevRune = _prevRune;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reader(_s, _i, _prevRune);
    }
}
@:named typedef T_readOp = stdgo.GoInt8;
@:named @:using(stdgo._internal.bytes.Bytes.T_asciiSet_static_extension) typedef T_asciiSet = stdgo.GoArray<stdgo.GoUInt32>;
function _growSlice(_b:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    if (({
                        final r = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        r;
                    }) != null) {
                        throw stdgo.Go.toInterface(errTooLarge);
                    };
                };
                a();
            });
            var _c:stdgo.GoInt = ((_b.length) + _n : stdgo.GoInt);
            if ((_c < ((2 : stdgo.GoInt) * _b.capacity : stdgo.GoInt) : Bool)) {
                _c = ((2 : stdgo.GoInt) * _b.capacity : stdgo.GoInt);
            };
            var _b2 = (((null : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Slice<stdgo.GoByte>).__append__(...((new stdgo.Slice<stdgo.GoUInt8>((_c : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
            stdgo.Go.copySlice(_b2, _b);
            {
                final __ret__:stdgo.Slice<stdgo.GoByte> = (_b2.__slice__(0, (_b.length)) : stdgo.Slice<stdgo.GoUInt8>);
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
function newBuffer(_buf:stdgo.Slice<stdgo.GoByte>):stdgo.Ref<Buffer> {
        return (stdgo.Go.setRef(({ _buf : _buf } : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
    }
function newBufferString(_s:stdgo.GoString):stdgo.Ref<Buffer> {
        return (stdgo.Go.setRef(({ _buf : (_s : stdgo.Slice<stdgo.GoByte>) } : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
    }
function equal(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):Bool {
        return (_a : stdgo.GoString) == ((_b : stdgo.GoString));
    }
function compare(_a:stdgo.Slice<stdgo.GoByte>, _b:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt {
        return stdgo._internal.internal.bytealg.Bytealg.compare(_a, _b);
    }
function _explode(_s:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>> {
        if (((_n <= (0 : stdgo.GoInt) : Bool) || (_n > (_s.length) : Bool) : Bool)) {
            _n = (_s.length);
        };
        var _a = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        var _size:stdgo.GoInt = (0 : stdgo.GoInt);
        var _na:stdgo.GoInt = (0 : stdgo.GoInt);
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            if (((_na + (1 : stdgo.GoInt) : stdgo.GoInt) >= _n : Bool)) {
                _a[(_na : stdgo.GoInt)] = _s;
                _na++;
                break;
            };
            {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune(_s);
                _size = __tmp__._1;
            };
            _a[(_na : stdgo.GoInt)] = (_s.__slice__((0 : stdgo.GoInt), _size, _size) : stdgo.Slice<stdgo.GoUInt8>);
            _s = (_s.__slice__(_size) : stdgo.Slice<stdgo.GoUInt8>);
            _na++;
        };
        return (_a.__slice__((0 : stdgo.GoInt), _na) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    }
function count(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt {
        if ((_sep.length) == ((0 : stdgo.GoInt))) {
            return (stdgo._internal.unicode.utf8.Utf8.runeCount(_s) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        if ((_sep.length) == ((1 : stdgo.GoInt))) {
            return stdgo._internal.internal.bytealg.Bytealg.count(_s, _sep[(0 : stdgo.GoInt)]);
        };
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        while (true) {
            var _i:stdgo.GoInt = index(_s, _sep);
            if (_i == ((-1 : stdgo.GoInt))) {
                return _n;
            };
            _n++;
            _s = (_s.__slice__((_i + (_sep.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
    }
function contains(_b:stdgo.Slice<stdgo.GoByte>, _subslice:stdgo.Slice<stdgo.GoByte>):Bool {
        return index(_b, _subslice) != ((-1 : stdgo.GoInt));
    }
function containsAny(_b:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):Bool {
        return (indexAny(_b, _chars?.__copy__()) >= (0 : stdgo.GoInt) : Bool);
    }
function containsRune(_b:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):Bool {
        return (indexRune(_b, _r) >= (0 : stdgo.GoInt) : Bool);
    }
function containsFunc(_b:stdgo.Slice<stdgo.GoByte>, _f:stdgo.GoRune -> Bool):Bool {
        return (indexFunc(_b, _f) >= (0 : stdgo.GoInt) : Bool);
    }
function indexByte(_b:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt {
        return stdgo._internal.internal.bytealg.Bytealg.indexByte(_b, _c);
    }
function _indexBytePortable(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt {
        for (_i => _b in _s) {
            if (_b == (_c)) {
                return _i;
            };
        };
        return (-1 : stdgo.GoInt);
    }
function lastIndex(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt {
        var _n:stdgo.GoInt = (_sep.length);
        if (_n == ((0 : stdgo.GoInt))) {
            return (_s.length);
        } else if (_n == ((1 : stdgo.GoInt))) {
            return lastIndexByte(_s, _sep[(0 : stdgo.GoInt)]);
        } else if (_n == ((_s.length))) {
            if (equal(_s, _sep)) {
                return (0 : stdgo.GoInt);
            };
            return (-1 : stdgo.GoInt);
        } else if ((_n > (_s.length) : Bool)) {
            return (-1 : stdgo.GoInt);
        };
        var __tmp__ = stdgo._internal.internal.bytealg.Bytealg.hashStrRevBytes(_sep), _hashss:stdgo.GoUInt32 = __tmp__._0, _pow:stdgo.GoUInt32 = __tmp__._1;
        var _last:stdgo.GoInt = ((_s.length) - _n : stdgo.GoInt);
        var _h:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        {
            var _i:stdgo.GoInt = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= _last : Bool), _i--, {
                _h = ((_h * (16777619u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
            });
        };
        if (((_h == _hashss) && equal((_s.__slice__(_last) : stdgo.Slice<stdgo.GoUInt8>), _sep) : Bool)) {
            return _last;
        };
        {
            var _i:stdgo.GoInt = (_last - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                _h = (_h * ((16777619u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _h = (_h + ((_s[(_i : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _h = (_h - ((_pow * (_s[(_i + _n : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                if (((_h == _hashss) && equal((_s.__slice__(_i, (_i + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _sep) : Bool)) {
                    return _i;
                };
            });
        };
        return (-1 : stdgo.GoInt);
    }
function lastIndexByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.GoInt {
        {
            var _i:stdgo.GoInt = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                if (_s[(_i : stdgo.GoInt)] == (_c)) {
                    return _i;
                };
            });
        };
        return (-1 : stdgo.GoInt);
    }
function indexRune(_s:stdgo.Slice<stdgo.GoByte>, _r:stdgo.GoRune):stdgo.GoInt {
        if ((((0 : stdgo.GoInt32) <= _r : Bool) && (_r < (128 : stdgo.GoInt32) : Bool) : Bool)) {
            return indexByte(_s, (_r : stdgo.GoByte));
        } else if (_r == ((65533 : stdgo.GoInt32))) {
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                while ((_i < (_s.length) : Bool)) {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)), _r1:stdgo.GoInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
                    if (_r1 == ((65533 : stdgo.GoInt32))) {
                        return _i;
                    };
                    _i = (_i + (_n) : stdgo.GoInt);
                };
            };
            return (-1 : stdgo.GoInt);
        } else if (!stdgo._internal.unicode.utf8.Utf8.validRune(_r)) {
            return (-1 : stdgo.GoInt);
        } else {
            var _b:stdgo.GoArray<stdgo.GoByte> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
            var _n:stdgo.GoInt = stdgo._internal.unicode.utf8.Utf8.encodeRune((_b.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _r);
            return index(_s, (_b.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
        };
    }
function indexAny(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):stdgo.GoInt {
        if (_chars == (stdgo.Go.str())) {
            return (-1 : stdgo.GoInt);
        };
        if ((_s.length) == ((1 : stdgo.GoInt))) {
            var _r:stdgo.GoInt32 = (_s[(0 : stdgo.GoInt)] : stdgo.GoRune);
            if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                for (__key__ => __value__ in _chars) {
                    _r = __value__;
                    if (_r == ((65533 : stdgo.GoInt32))) {
                        return (0 : stdgo.GoInt);
                    };
                };
                return (-1 : stdgo.GoInt);
            };
            if ((stdgo._internal.internal.bytealg.Bytealg.indexByteString(_chars?.__copy__(), _s[(0 : stdgo.GoInt)]) >= (0 : stdgo.GoInt) : Bool)) {
                return (0 : stdgo.GoInt);
            };
            return (-1 : stdgo.GoInt);
        };
        if ((_chars.length) == ((1 : stdgo.GoInt))) {
            var _r:stdgo.GoInt32 = (_chars[(0 : stdgo.GoInt)] : stdgo.GoRune);
            if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                _r = (65533 : stdgo.GoInt32);
            };
            return indexRune(_s, _r);
        };
        if (((_s.length) > (8 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = _makeASCIISet(_chars?.__copy__()), _as:stdgo._internal.bytes.Bytes.T_asciiSet = __tmp__._0, _isASCII:Bool = __tmp__._1;
                if (_isASCII) {
                    for (_i => _c in _s) {
                        if (_as._contains(_c)) {
                            return _i;
                        };
                    };
                    return (-1 : stdgo.GoInt);
                };
            };
        };
        var _width:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i = (_i + (_width) : stdgo.GoInt), {
                var _r:stdgo.GoInt32 = (_s[(_i : stdgo.GoInt)] : stdgo.GoRune);
                if ((_r < (128 : stdgo.GoInt32) : Bool)) {
                    if ((stdgo._internal.internal.bytealg.Bytealg.indexByteString(_chars?.__copy__(), _s[(_i : stdgo.GoInt)]) >= (0 : stdgo.GoInt) : Bool)) {
                        return _i;
                    };
                    _width = (1 : stdgo.GoInt);
                    continue;
                };
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
                    _r = __tmp__._0;
                    _width = __tmp__._1;
                };
                if (_r != ((65533 : stdgo.GoInt32))) {
                    if ((_chars.length) == (_width)) {
                        if (_chars == ((_r : stdgo.GoString))) {
                            return _i;
                        };
                        continue;
                    };
                    if ((stdgo._internal.internal.bytealg.Bytealg.maxLen >= _width : Bool)) {
                        if ((stdgo._internal.internal.bytealg.Bytealg.indexString(_chars?.__copy__(), (_r : stdgo.GoString)?.__copy__()) >= (0 : stdgo.GoInt) : Bool)) {
                            return _i;
                        };
                        continue;
                    };
                };
                for (__1 => _ch in _chars) {
                    if (_r == (_ch)) {
                        return _i;
                    };
                };
            });
        };
        return (-1 : stdgo.GoInt);
    }
function lastIndexAny(_s:stdgo.Slice<stdgo.GoByte>, _chars:stdgo.GoString):stdgo.GoInt {
        if (_chars == (stdgo.Go.str())) {
            return (-1 : stdgo.GoInt);
        };
        if (((_s.length) > (8 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = _makeASCIISet(_chars?.__copy__()), _as:stdgo._internal.bytes.Bytes.T_asciiSet = __tmp__._0, _isASCII:Bool = __tmp__._1;
                if (_isASCII) {
                    {
                        var _i:stdgo.GoInt = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                            if (_as._contains(_s[(_i : stdgo.GoInt)])) {
                                return _i;
                            };
                        });
                    };
                    return (-1 : stdgo.GoInt);
                };
            };
        };
        if ((_s.length) == ((1 : stdgo.GoInt))) {
            var _r:stdgo.GoInt32 = (_s[(0 : stdgo.GoInt)] : stdgo.GoRune);
            if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                for (__key__ => __value__ in _chars) {
                    _r = __value__;
                    if (_r == ((65533 : stdgo.GoInt32))) {
                        return (0 : stdgo.GoInt);
                    };
                };
                return (-1 : stdgo.GoInt);
            };
            if ((stdgo._internal.internal.bytealg.Bytealg.indexByteString(_chars?.__copy__(), _s[(0 : stdgo.GoInt)]) >= (0 : stdgo.GoInt) : Bool)) {
                return (0 : stdgo.GoInt);
            };
            return (-1 : stdgo.GoInt);
        };
        if ((_chars.length) == ((1 : stdgo.GoInt))) {
            var _cr:stdgo.GoInt32 = (_chars[(0 : stdgo.GoInt)] : stdgo.GoRune);
            if ((_cr >= (128 : stdgo.GoInt32) : Bool)) {
                _cr = (65533 : stdgo.GoInt32);
            };
            {
                var _i:stdgo.GoInt = (_s.length);
                while ((_i > (0 : stdgo.GoInt) : Bool)) {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeLastRune((_s.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>)), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                    _i = (_i - (_size) : stdgo.GoInt);
                    if (_r == (_cr)) {
                        return _i;
                    };
                };
            };
            return (-1 : stdgo.GoInt);
        };
        {
            var _i:stdgo.GoInt = (_s.length);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                var _r:stdgo.GoInt32 = (_s[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoRune);
                if ((_r < (128 : stdgo.GoInt32) : Bool)) {
                    if ((stdgo._internal.internal.bytealg.Bytealg.indexByteString(_chars?.__copy__(), _s[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) >= (0 : stdgo.GoInt) : Bool)) {
                        return (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                    };
                    _i--;
                    continue;
                };
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeLastRune((_s.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>)), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                _i = (_i - (_size) : stdgo.GoInt);
                if (_r != ((65533 : stdgo.GoInt32))) {
                    if ((_chars.length) == (_size)) {
                        if (_chars == ((_r : stdgo.GoString))) {
                            return _i;
                        };
                        continue;
                    };
                    if ((stdgo._internal.internal.bytealg.Bytealg.maxLen >= _size : Bool)) {
                        if ((stdgo._internal.internal.bytealg.Bytealg.indexString(_chars?.__copy__(), (_r : stdgo.GoString)?.__copy__()) >= (0 : stdgo.GoInt) : Bool)) {
                            return _i;
                        };
                        continue;
                    };
                };
                for (__1 => _ch in _chars) {
                    if (_r == (_ch)) {
                        return _i;
                    };
                };
            };
        };
        return (-1 : stdgo.GoInt);
    }
function _genSplit(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>> {
        if (_n == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        };
        if ((_sep.length) == ((0 : stdgo.GoInt))) {
            return _explode(_s, _n);
        };
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = (count(_s, _sep) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        if ((_n > ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _a = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        _n--;
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        while ((_i < _n : Bool)) {
            var _m:stdgo.GoInt = index(_s, _sep);
            if ((_m < (0 : stdgo.GoInt) : Bool)) {
                break;
            };
            _a[(_i : stdgo.GoInt)] = (_s.__slice__(0, (_m + _sepSave : stdgo.GoInt), (_m + _sepSave : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _s = (_s.__slice__((_m + (_sep.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _i++;
        };
        _a[(_i : stdgo.GoInt)] = _s;
        return (_a.__slice__(0, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    }
function splitN(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>> {
        return _genSplit(_s, _sep, (0 : stdgo.GoInt), _n);
    }
function splitAfterN(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoByte>> {
        return _genSplit(_s, _sep, (_sep.length), _n);
    }
function split(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>> {
        return _genSplit(_s, _sep, (0 : stdgo.GoInt), (-1 : stdgo.GoInt));
    }
function splitAfter(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>> {
        return _genSplit(_s, _sep, (_sep.length), (-1 : stdgo.GoInt));
    }
function fields(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.Slice<stdgo.GoByte>> {
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        var _wasSpace:stdgo.GoInt = (1 : stdgo.GoInt);
        var _setBits:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                var _r:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                _setBits = (_setBits | (_r) : stdgo.GoUInt8);
                var _isSpace:stdgo.GoInt = (_asciiSpace[(_r : stdgo.GoInt)] : stdgo.GoInt);
                _n = (_n + ((_wasSpace & (-1 ^ _isSpace) : stdgo.GoInt)) : stdgo.GoInt);
                _wasSpace = _isSpace;
            });
        };
        if ((_setBits >= (128 : stdgo.GoUInt8) : Bool)) {
            return fieldsFunc(_s, stdgo._internal.unicode.Unicode.isSpace);
        };
        var _a = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        var _na:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldStart:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        while (((_i < (_s.length) : Bool) && (_asciiSpace[(_s[(_i : stdgo.GoInt)] : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) : Bool)) {
            _i++;
        };
        _fieldStart = _i;
        while ((_i < (_s.length) : Bool)) {
            if (_asciiSpace[(_s[(_i : stdgo.GoInt)] : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                _i++;
                continue;
            };
            _a[(_na : stdgo.GoInt)] = (_s.__slice__(_fieldStart, _i, _i) : stdgo.Slice<stdgo.GoUInt8>);
            _na++;
            _i++;
            while (((_i < (_s.length) : Bool) && (_asciiSpace[(_s[(_i : stdgo.GoInt)] : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) : Bool)) {
                _i++;
            };
            _fieldStart = _i;
        };
        if ((_fieldStart < (_s.length) : Bool)) {
            _a[(_na : stdgo.GoInt)] = (_s.__slice__(_fieldStart, (_s.length), (_s.length)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _a;
    }
@:structInit class T_fieldsFunc___localname___span_11914 {
    public var _start : stdgo.GoInt = 0;
    public var _end : stdgo.GoInt = 0;
    public function new(?_start:stdgo.GoInt, ?_end:stdgo.GoInt) {
        if (_start != null) this._start = _start;
        if (_end != null) this._end = _end;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fieldsFunc___localname___span_11914(_start, _end);
    }
}
function fieldsFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:stdgo.GoRune -> Bool):stdgo.Slice<stdgo.Slice<stdgo.GoByte>> {
        {};
        var _spans = (new stdgo.Slice<stdgo._internal.bytes.Bytes.T_fieldsFunc___localname___span_11914>((0 : stdgo.GoInt).toBasic(), (32 : stdgo.GoInt), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > (32 : stdgo.GoInt) ? (0 : stdgo.GoInt).toBasic() : (32 : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.bytes.Bytes.T_fieldsFunc___localname___span_11914)]) : stdgo.Slice<stdgo._internal.bytes.Bytes.T_fieldsFunc___localname___span_11914>);
        var _start:stdgo.GoInt = (-1 : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _size:stdgo.GoInt = (1 : stdgo.GoInt);
                var _r:stdgo.GoInt32 = (_s[(_i : stdgo.GoInt)] : stdgo.GoRune);
                if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
                        _r = __tmp__._0;
                        _size = __tmp__._1;
                    };
                };
                if (_f(_r)) {
                    if ((_start >= (0 : stdgo.GoInt) : Bool)) {
                        _spans = (_spans.__append__((new stdgo._internal.bytes.Bytes.T_fieldsFunc___localname___span_11914(_start, _i) : stdgo._internal.bytes.Bytes.T_fieldsFunc___localname___span_11914)));
                        _start = (-1 : stdgo.GoInt);
                    };
                } else {
                    if ((_start < (0 : stdgo.GoInt) : Bool)) {
                        _start = _i;
                    };
                };
                _i = (_i + (_size) : stdgo.GoInt);
            };
        };
        if ((_start >= (0 : stdgo.GoInt) : Bool)) {
            _spans = (_spans.__append__((new stdgo._internal.bytes.Bytes.T_fieldsFunc___localname___span_11914(_start, (_s.length)) : stdgo._internal.bytes.Bytes.T_fieldsFunc___localname___span_11914)));
        };
        var _a = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((_spans.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        for (_i => _span in _spans) {
            _a[(_i : stdgo.GoInt)] = (_s.__slice__(_span._start, _span._end, _span._end) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _a;
    }
function join(_s:stdgo.Slice<stdgo.Slice<stdgo.GoByte>>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        if ((_s.length) == ((1 : stdgo.GoInt))) {
            return (((null : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Slice<stdgo.GoByte>).__append__(...(_s[(0 : stdgo.GoInt)] : Array<stdgo.GoUInt8>)));
        };
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        if (((_sep.length) > (0 : stdgo.GoInt) : Bool)) {
            if (((_sep.length) >= ((2147483647 : stdgo.GoInt) / (((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(("bytes: Join output length overflow" : stdgo.GoString));
            };
            _n = (_n + (((_sep.length) * (((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.GoInt);
        };
        for (__0 => _v in _s) {
            if (((_v.length) > ((2147483647 : stdgo.GoInt) - _n : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(("bytes: Join output length overflow" : stdgo.GoString));
            };
            _n = (_n + ((_v.length)) : stdgo.GoInt);
        };
        var _b = stdgo._internal.internal.bytealg.Bytealg.makeNoZero(_n);
        var _bp:stdgo.GoInt = stdgo.Go.copySlice(_b, _s[(0 : stdgo.GoInt)]);
        for (__1 => _v in (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>)) {
            _bp = (_bp + (stdgo.Go.copySlice((_b.__slice__(_bp) : stdgo.Slice<stdgo.GoUInt8>), _sep)) : stdgo.GoInt);
            _bp = (_bp + (stdgo.Go.copySlice((_b.__slice__(_bp) : stdgo.Slice<stdgo.GoUInt8>), _v)) : stdgo.GoInt);
        };
        return _b;
    }
function hasPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):Bool {
        return (((_s.length) >= (_prefix.length) : Bool) && equal((_s.__slice__((0 : stdgo.GoInt), (_prefix.length)) : stdgo.Slice<stdgo.GoUInt8>), _prefix) : Bool);
    }
function hasSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):Bool {
        return (((_s.length) >= (_suffix.length) : Bool) && equal((_s.__slice__(((_s.length) - (_suffix.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _suffix) : Bool);
    }
function map_(_mapping:(_r:stdgo.GoRune) -> stdgo.GoRune, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (_s.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _wid:stdgo.GoInt = (1 : stdgo.GoInt);
                var _r:stdgo.GoInt32 = (_s[(_i : stdgo.GoInt)] : stdgo.GoRune);
                if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
                        _r = __tmp__._0;
                        _wid = __tmp__._1;
                    };
                };
                _r = _mapping(_r);
                if ((_r >= (0 : stdgo.GoInt32) : Bool)) {
                    _b = stdgo._internal.unicode.utf8.Utf8.appendRune(_b, _r);
                };
                _i = (_i + (_wid) : stdgo.GoInt);
            };
        };
        return _b;
    }
function repeat(_b:stdgo.Slice<stdgo.GoByte>, _count:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> {
        if (_count == ((0 : stdgo.GoInt))) {
            return (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        if ((_count < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("bytes: negative Repeat count" : stdgo.GoString));
        };
        if (((_b.length) >= ((2147483647 : stdgo.GoInt) / _count : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("bytes: Repeat output length overflow" : stdgo.GoString));
        };
        var _n:stdgo.GoInt = ((_b.length) * _count : stdgo.GoInt);
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            return (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        {};
        var _chunkMax:stdgo.GoInt = _n;
        if ((_chunkMax > (8192 : stdgo.GoInt) : Bool)) {
            _chunkMax = (((8192 : stdgo.GoInt) / (_b.length) : stdgo.GoInt) * (_b.length) : stdgo.GoInt);
            if (_chunkMax == ((0 : stdgo.GoInt))) {
                _chunkMax = (_b.length);
            };
        };
        var _nb = stdgo._internal.internal.bytealg.Bytealg.makeNoZero(_n);
        var _bp:stdgo.GoInt = stdgo.Go.copySlice(_nb, _b);
        while ((_bp < _n : Bool)) {
            var _chunk:stdgo.GoInt = _bp;
            if ((_chunk > _chunkMax : Bool)) {
                _chunk = _chunkMax;
            };
            _bp = (_bp + (stdgo.Go.copySlice((_nb.__slice__(_bp) : stdgo.Slice<stdgo.GoUInt8>), (_nb.__slice__(0, _chunk) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        };
        return _nb;
    }
function toUpper(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        var __0:Bool = true, __1:Bool = false, _hasLower:Bool = __1, _isASCII:Bool = __0;
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                var _c:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                    _isASCII = false;
                    break;
                };
                _hasLower = (_hasLower || ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool);
            });
        };
        if (_isASCII) {
            if (!_hasLower) {
                return ((stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>).__append__(...(_s : Array<stdgo.GoUInt8>)));
            };
            var _b = stdgo._internal.internal.bytealg.Bytealg.makeNoZero((_s.length));
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                    var _c:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                    if ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _c = (_c - ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    };
                    _b[(_i : stdgo.GoInt)] = _c;
                });
            };
            return _b;
        };
        return map_(stdgo._internal.unicode.Unicode.toUpper, _s);
    }
function toLower(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        var __0:Bool = true, __1:Bool = false, _hasUpper:Bool = __1, _isASCII:Bool = __0;
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                var _c:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                    _isASCII = false;
                    break;
                };
                _hasUpper = (_hasUpper || ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool);
            });
        };
        if (_isASCII) {
            if (!_hasUpper) {
                return ((stdgo.Go.str() : stdgo.Slice<stdgo.GoByte>).__append__(...(_s : Array<stdgo.GoUInt8>)));
            };
            var _b = stdgo._internal.internal.bytealg.Bytealg.makeNoZero((_s.length));
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                    var _c:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                    if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _c = (_c + ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                    };
                    _b[(_i : stdgo.GoInt)] = _c;
                });
            };
            return _b;
        };
        return map_(stdgo._internal.unicode.Unicode.toLower, _s);
    }
function toTitle(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        return map_(stdgo._internal.unicode.Unicode.toTitle, _s);
    }
function toUpperSpecial(_c:stdgo._internal.unicode.Unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        return map_(_c.toUpper, _s);
    }
function toLowerSpecial(_c:stdgo._internal.unicode.Unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        return map_(_c.toLower, _s);
    }
function toTitleSpecial(_c:stdgo._internal.unicode.Unicode.SpecialCase, _s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        return map_(_c.toTitle, _s);
    }
function toValidUTF8(_s:stdgo.Slice<stdgo.GoByte>, _replacement:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_s.length) + (_replacement.length) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _invalid:Bool = false;
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _c:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                    _i++;
                    _invalid = false;
                    _b = (_b.__append__(_c));
                    continue;
                };
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt32 = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1;
                if (_wid == ((1 : stdgo.GoInt))) {
                    _i++;
                    if (!_invalid) {
                        _invalid = true;
                        _b = (_b.__append__(...(_replacement : Array<stdgo.GoUInt8>)));
                    };
                    continue;
                };
                _invalid = false;
                _b = (_b.__append__(...((_s.__slice__(_i, (_i + _wid : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                _i = (_i + (_wid) : stdgo.GoInt);
            };
        };
        return _b;
    }
function _isSeparator(_r:stdgo.GoRune):Bool {
        if ((_r <= (127 : stdgo.GoInt32) : Bool)) {
            if ((((48 : stdgo.GoInt32) <= _r : Bool) && (_r <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
                return false;
            } else if ((((97 : stdgo.GoInt32) <= _r : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
                return false;
            } else if ((((65 : stdgo.GoInt32) <= _r : Bool) && (_r <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
                return false;
            } else if (_r == ((95 : stdgo.GoInt32))) {
                return false;
            };
            return true;
        };
        if ((stdgo._internal.unicode.Unicode.isLetter(_r) || stdgo._internal.unicode.Unicode.isDigit(_r) : Bool)) {
            return false;
        };
        return stdgo._internal.unicode.Unicode.isSpace(_r);
    }
function title(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        var _prev:stdgo.GoInt32 = (32 : stdgo.GoInt32);
        return map_(function(_r:stdgo.GoRune):stdgo.GoRune {
            if (_isSeparator(_prev)) {
                _prev = _r;
                return stdgo._internal.unicode.Unicode.toTitle(_r);
            };
            _prev = _r;
            return _r;
        }, _s);
    }
function trimLeftFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune) -> Bool):stdgo.Slice<stdgo.GoByte> {
        var _i:stdgo.GoInt = _indexFunc(_s, _f, false);
        if (_i == ((-1 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        return (_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
    }
function trimRightFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune) -> Bool):stdgo.Slice<stdgo.GoByte> {
        var _i:stdgo.GoInt = _lastIndexFunc(_s, _f, false);
        if (((_i >= (0 : stdgo.GoInt) : Bool) && (_s[(_i : stdgo.GoInt)] >= (128 : stdgo.GoUInt8) : Bool) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt32 = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1;
            _i = (_i + (_wid) : stdgo.GoInt);
        } else {
            _i++;
        };
        return (_s.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>);
    }
function trimFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune) -> Bool):stdgo.Slice<stdgo.GoByte> {
        return trimRightFunc(trimLeftFunc(_s, _f), _f);
    }
function trimPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        if (hasPrefix(_s, _prefix)) {
            return (_s.__slice__((_prefix.length)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _s;
    }
function trimSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        if (hasSuffix(_s, _suffix)) {
            return (_s.__slice__(0, ((_s.length) - (_suffix.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _s;
    }
function indexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune) -> Bool):stdgo.GoInt {
        return _indexFunc(_s, _f, true);
    }
function lastIndexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune) -> Bool):stdgo.GoInt {
        return _lastIndexFunc(_s, _f, true);
    }
function _indexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune) -> Bool, _truth:Bool):stdgo.GoInt {
        var _start:stdgo.GoInt = (0 : stdgo.GoInt);
        while ((_start < (_s.length) : Bool)) {
            var _wid:stdgo.GoInt = (1 : stdgo.GoInt);
            var _r:stdgo.GoInt32 = (_s[(_start : stdgo.GoInt)] : stdgo.GoRune);
            if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune((_s.__slice__(_start) : stdgo.Slice<stdgo.GoUInt8>));
                    _r = __tmp__._0;
                    _wid = __tmp__._1;
                };
            };
            if (_f(_r) == (_truth)) {
                return _start;
            };
            _start = (_start + (_wid) : stdgo.GoInt);
        };
        return (-1 : stdgo.GoInt);
    }
function _lastIndexFunc(_s:stdgo.Slice<stdgo.GoByte>, _f:(_r:stdgo.GoRune) -> Bool, _truth:Bool):stdgo.GoInt {
        {
            var _i:stdgo.GoInt = (_s.length);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                var __0:stdgo.GoInt32 = (_s[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoRune), __1:stdgo.GoInt = (1 : stdgo.GoInt), _size:stdgo.GoInt = __1, _r:stdgo.GoInt32 = __0;
                if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeLastRune((_s.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>));
                        _r = __tmp__._0;
                        _size = __tmp__._1;
                    };
                };
                _i = (_i - (_size) : stdgo.GoInt);
                if (_f(_r) == (_truth)) {
                    return _i;
                };
            };
        };
        return (-1 : stdgo.GoInt);
    }
function _makeASCIISet(_chars:stdgo.GoString):{ var _0 : T_asciiSet; var _1 : Bool; } {
        var _as:T_asciiSet = new stdgo._internal.bytes.Bytes.T_asciiSet(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt32)]), _ok:Bool = false;
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_chars.length) : Bool), _i++, {
                var _c:stdgo.GoUInt8 = _chars[(_i : stdgo.GoInt)];
                if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                    return { _0 : _as?.__copy__(), _1 : false };
                };
                _as[((_c / (32 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] = (_as[((_c / (32 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] | (((1u32 : stdgo.GoUInt32) << ((_c % (32 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt32)) : stdgo.GoUInt32);
            });
        };
        return { _0 : _as?.__copy__(), _1 : true };
    }
function _containsRune(_s:stdgo.GoString, _r:stdgo.GoRune):Bool {
        for (__0 => _c in _s) {
            if (_c == (_r)) {
                return true;
            };
        };
        return false;
    }
function trim(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte> {
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        if (_cutset == (stdgo.Go.str())) {
            return _s;
        };
        if (((_cutset.length == (1 : stdgo.GoInt)) && (_cutset[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) : Bool)) {
            return _trimLeftByte(_trimRightByte(_s, _cutset[(0 : stdgo.GoInt)]), _cutset[(0 : stdgo.GoInt)]);
        };
        {
            var __tmp__ = _makeASCIISet(_cutset?.__copy__()), _as:stdgo._internal.bytes.Bytes.T_asciiSet = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _trimLeftASCII(_trimRightASCII(_s, (stdgo.Go.setRef(_as) : stdgo.Ref<stdgo._internal.bytes.Bytes.T_asciiSet>)), (stdgo.Go.setRef(_as) : stdgo.Ref<stdgo._internal.bytes.Bytes.T_asciiSet>));
            };
        };
        return _trimLeftUnicode(_trimRightUnicode(_s, _cutset?.__copy__()), _cutset?.__copy__());
    }
function trimLeft(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte> {
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        if (_cutset == (stdgo.Go.str())) {
            return _s;
        };
        if (((_cutset.length == (1 : stdgo.GoInt)) && (_cutset[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) : Bool)) {
            return _trimLeftByte(_s, _cutset[(0 : stdgo.GoInt)]);
        };
        {
            var __tmp__ = _makeASCIISet(_cutset?.__copy__()), _as:stdgo._internal.bytes.Bytes.T_asciiSet = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _trimLeftASCII(_s, (stdgo.Go.setRef(_as) : stdgo.Ref<stdgo._internal.bytes.Bytes.T_asciiSet>));
            };
        };
        return _trimLeftUnicode(_s, _cutset?.__copy__());
    }
function _trimLeftByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.Slice<stdgo.GoByte> {
        while ((((_s.length) > (0 : stdgo.GoInt) : Bool) && (_s[(0 : stdgo.GoInt)] == _c) : Bool)) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _s;
    }
function _trimLeftASCII(_s:stdgo.Slice<stdgo.GoByte>, _as:stdgo.Ref<T_asciiSet>):stdgo.Slice<stdgo.GoByte> {
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            if (!_as._contains(_s[(0 : stdgo.GoInt)])) {
                break;
            };
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _s;
    }
function _trimLeftUnicode(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte> {
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            var __0:stdgo.GoInt32 = (_s[(0 : stdgo.GoInt)] : stdgo.GoRune), __1:stdgo.GoInt = (1 : stdgo.GoInt), _n:stdgo.GoInt = __1, _r:stdgo.GoInt32 = __0;
            if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune(_s);
                    _r = __tmp__._0;
                    _n = __tmp__._1;
                };
            };
            if (!_containsRune(_cutset?.__copy__(), _r)) {
                break;
            };
            _s = (_s.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _s;
    }
function trimRight(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte> {
        if (((_s.length == (0 : stdgo.GoInt)) || (_cutset == stdgo.Go.str()) : Bool)) {
            return _s;
        };
        if (((_cutset.length == (1 : stdgo.GoInt)) && (_cutset[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) : Bool)) {
            return _trimRightByte(_s, _cutset[(0 : stdgo.GoInt)]);
        };
        {
            var __tmp__ = _makeASCIISet(_cutset?.__copy__()), _as:stdgo._internal.bytes.Bytes.T_asciiSet = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _trimRightASCII(_s, (stdgo.Go.setRef(_as) : stdgo.Ref<stdgo._internal.bytes.Bytes.T_asciiSet>));
            };
        };
        return _trimRightUnicode(_s, _cutset?.__copy__());
    }
function _trimRightByte(_s:stdgo.Slice<stdgo.GoByte>, _c:stdgo.GoByte):stdgo.Slice<stdgo.GoByte> {
        while ((((_s.length) > (0 : stdgo.GoInt) : Bool) && (_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == _c) : Bool)) {
            _s = (_s.__slice__(0, ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _s;
    }
function _trimRightASCII(_s:stdgo.Slice<stdgo.GoByte>, _as:stdgo.Ref<T_asciiSet>):stdgo.Slice<stdgo.GoByte> {
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            if (!_as._contains(_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)])) {
                break;
            };
            _s = (_s.__slice__(0, ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _s;
    }
function _trimRightUnicode(_s:stdgo.Slice<stdgo.GoByte>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoByte> {
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            var __0:stdgo.GoInt32 = (_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoRune), __1:stdgo.GoInt = (1 : stdgo.GoInt), _n:stdgo.GoInt = __1, _r:stdgo.GoInt32 = __0;
            if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeLastRune(_s);
                    _r = __tmp__._0;
                    _n = __tmp__._1;
                };
            };
            if (!_containsRune(_cutset?.__copy__(), _r)) {
                break;
            };
            _s = (_s.__slice__(0, ((_s.length) - _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _s;
    }
function trimSpace(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        var _start:stdgo.GoInt = (0 : stdgo.GoInt);
        stdgo.Go.cfor((_start < (_s.length) : Bool), _start++, {
            var _c:stdgo.GoUInt8 = _s[(_start : stdgo.GoInt)];
            if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                return trimFunc((_s.__slice__(_start) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.unicode.Unicode.isSpace);
            };
            if (_asciiSpace[(_c : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                break;
            };
        });
        var _stop:stdgo.GoInt = (_s.length);
        stdgo.Go.cfor((_stop > _start : Bool), _stop--, {
            var _c:stdgo.GoUInt8 = _s[(_stop - (1 : stdgo.GoInt) : stdgo.GoInt)];
            if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                return trimFunc((_s.__slice__(_start, _stop) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.unicode.Unicode.isSpace);
            };
            if (_asciiSpace[(_c : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                break;
            };
        });
        if (_start == (_stop)) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        return (_s.__slice__(_start, _stop) : stdgo.Slice<stdgo.GoUInt8>);
    }
function runes(_s:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoRune> {
        var _t = (new stdgo.Slice<stdgo.GoInt32>((stdgo._internal.unicode.utf8.Utf8.runeCount(_s) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune(_s), _r:stdgo.GoInt32 = __tmp__._0, _l:stdgo.GoInt = __tmp__._1;
            _t[(_i : stdgo.GoInt)] = _r;
            _i++;
            _s = (_s.__slice__(_l) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _t;
    }
function replace(_s:stdgo.Slice<stdgo.GoByte>, _old:stdgo.Slice<stdgo.GoByte>, _new:stdgo.Slice<stdgo.GoByte>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> {
        var _m:stdgo.GoInt = (0 : stdgo.GoInt);
        if (_n != ((0 : stdgo.GoInt))) {
            _m = count(_s, _old);
        };
        if (_m == ((0 : stdgo.GoInt))) {
            return (((null : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Slice<stdgo.GoByte>).__append__(...(_s : Array<stdgo.GoUInt8>)));
        };
        if (((_n < (0 : stdgo.GoInt) : Bool) || (_m < _n : Bool) : Bool)) {
            _n = _m;
        };
        var _t = (new stdgo.Slice<stdgo.GoUInt8>(((_s.length) + (_n * (((_new.length) - (_old.length) : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _w:stdgo.GoInt = (0 : stdgo.GoInt);
        var _start:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                var _j:stdgo.GoInt = _start;
                if ((_old.length) == ((0 : stdgo.GoInt))) {
                    if ((_i > (0 : stdgo.GoInt) : Bool)) {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune((_s.__slice__(_start) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt32 = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1;
                        _j = (_j + (_wid) : stdgo.GoInt);
                    };
                } else {
                    _j = (_j + (index((_s.__slice__(_start) : stdgo.Slice<stdgo.GoUInt8>), _old)) : stdgo.GoInt);
                };
                _w = (_w + (stdgo.Go.copySlice((_t.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>), (_s.__slice__(_start, _j) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
                _w = (_w + (stdgo.Go.copySlice((_t.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>), _new)) : stdgo.GoInt);
                _start = (_j + (_old.length) : stdgo.GoInt);
            });
        };
        _w = (_w + (stdgo.Go.copySlice((_t.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>), (_s.__slice__(_start) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        return (_t.__slice__((0 : stdgo.GoInt), _w) : stdgo.Slice<stdgo.GoUInt8>);
    }
function replaceAll(_s:stdgo.Slice<stdgo.GoByte>, _old:stdgo.Slice<stdgo.GoByte>, _new:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        return replace(_s, _old, _new, (-1 : stdgo.GoInt));
    }
function equalFold(_s:stdgo.Slice<stdgo.GoByte>, _t:stdgo.Slice<stdgo.GoByte>):Bool {
        stdgo._internal.internal.Macro.controlFlow({
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(((_i < (_s.length) : Bool) && (_i < (_t.length) : Bool) : Bool), _i++, {
                var _sr:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                var _tr:stdgo.GoUInt8 = _t[(_i : stdgo.GoInt)];
                if (((_sr | _tr : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                    @:goto "hasUnicode";
                };
                if (_tr == (_sr)) {
                    continue;
                };
                if ((_tr < _sr : Bool)) {
                    {
                        final __tmp__0 = _sr;
                        final __tmp__1 = _tr;
                        _tr = __tmp__0;
                        _sr = __tmp__1;
                    };
                };
                if (((((65 : stdgo.GoUInt8) <= _sr : Bool) && (_sr <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr == ((_sr + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                    continue;
                };
                return false;
            });
            return (_s.length) == ((_t.length));
            @:label("hasUnicode") _s = (_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
            _t = (_t.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
            while (((_s.length != (0 : stdgo.GoInt)) && (_t.length != (0 : stdgo.GoInt)) : Bool)) {
                var __0:stdgo.GoRune = (0 : stdgo.GoInt32), __1:stdgo.GoRune = (0 : stdgo.GoInt32), _tr:stdgo.GoRune = __1, _sr:stdgo.GoRune = __0;
                if ((_s[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                    {
                        final __tmp__0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoRune);
                        final __tmp__1 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr = __tmp__0;
                        _s = __tmp__1;
                    };
                } else {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune(_s), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                    {
                        final __tmp__0 = _r;
                        final __tmp__1 = (_s.__slice__(_size) : stdgo.Slice<stdgo.GoUInt8>);
                        _sr = __tmp__0;
                        _s = __tmp__1;
                    };
                };
                if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoRune);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr = __tmp__0;
                        _t = __tmp__1;
                    };
                } else {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune(_t), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                    {
                        final __tmp__0 = _r;
                        final __tmp__1 = (_t.__slice__(_size) : stdgo.Slice<stdgo.GoUInt8>);
                        _tr = __tmp__0;
                        _t = __tmp__1;
                    };
                };
                if (_tr == (_sr)) {
                    continue;
                };
                if ((_tr < _sr : Bool)) {
                    {
                        final __tmp__0 = _sr;
                        final __tmp__1 = _tr;
                        _tr = __tmp__0;
                        _sr = __tmp__1;
                    };
                };
                if ((_tr < (128 : stdgo.GoInt32) : Bool)) {
                    if (((((65 : stdgo.GoInt32) <= _sr : Bool) && (_sr <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr == ((_sr + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        continue;
                    };
                    return false;
                };
                var _r:stdgo.GoInt32 = stdgo._internal.unicode.Unicode.simpleFold(_sr);
                while (((_r != _sr) && (_r < _tr : Bool) : Bool)) {
                    _r = stdgo._internal.unicode.Unicode.simpleFold(_r);
                };
                if (_r == (_tr)) {
                    continue;
                };
                return false;
            };
            return (_s.length) == ((_t.length));
        });
        throw "controlFlow did not return";
    }
function index(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):stdgo.GoInt {
        var _n:stdgo.GoInt = (_sep.length);
        if (_n == ((0 : stdgo.GoInt))) {
            return (0 : stdgo.GoInt);
        } else if (_n == ((1 : stdgo.GoInt))) {
            return indexByte(_s, _sep[(0 : stdgo.GoInt)]);
        } else if (_n == ((_s.length))) {
            if (equal(_sep, _s)) {
                return (0 : stdgo.GoInt);
            };
            return (-1 : stdgo.GoInt);
        } else if ((_n > (_s.length) : Bool)) {
            return (-1 : stdgo.GoInt);
        } else if ((_n <= stdgo._internal.internal.bytealg.Bytealg.maxLen : Bool)) {
            if (((_s.length) <= (0 : stdgo.GoInt) : Bool)) {
                return stdgo._internal.internal.bytealg.Bytealg.index(_s, _sep);
            };
            var _c0:stdgo.GoUInt8 = _sep[(0 : stdgo.GoInt)];
            var _c1:stdgo.GoUInt8 = _sep[(1 : stdgo.GoInt)];
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t:stdgo.GoInt = (((_s.length) - _n : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            var _fails:stdgo.GoInt = (0 : stdgo.GoInt);
            while ((_i < _t : Bool)) {
                if (_s[(_i : stdgo.GoInt)] != (_c0)) {
                    var _o:stdgo.GoInt = indexByte((_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt), _t) : stdgo.Slice<stdgo.GoUInt8>), _c0);
                    if ((_o < (0 : stdgo.GoInt) : Bool)) {
                        return (-1 : stdgo.GoInt);
                    };
                    _i = (_i + ((_o + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                };
                if (((_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == _c1) && equal((_s.__slice__(_i, (_i + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _sep) : Bool)) {
                    return _i;
                };
                _fails++;
                _i++;
                if ((_fails > stdgo._internal.internal.bytealg.Bytealg.cutover(_i) : Bool)) {
                    var _r:stdgo.GoInt = stdgo._internal.internal.bytealg.Bytealg.index((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), _sep);
                    if ((_r >= (0 : stdgo.GoInt) : Bool)) {
                        return (_r + _i : stdgo.GoInt);
                    };
                    return (-1 : stdgo.GoInt);
                };
            };
            return (-1 : stdgo.GoInt);
        };
        var _c0:stdgo.GoUInt8 = _sep[(0 : stdgo.GoInt)];
        var _c1:stdgo.GoUInt8 = _sep[(1 : stdgo.GoInt)];
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fails:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t:stdgo.GoInt = (((_s.length) - _n : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        while ((_i < _t : Bool)) {
            if (_s[(_i : stdgo.GoInt)] != (_c0)) {
                var _o:stdgo.GoInt = indexByte((_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt), _t) : stdgo.Slice<stdgo.GoUInt8>), _c0);
                if ((_o < (0 : stdgo.GoInt) : Bool)) {
                    break;
                };
                _i = (_i + ((_o + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
            if (((_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == _c1) && equal((_s.__slice__(_i, (_i + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _sep) : Bool)) {
                return _i;
            };
            _i++;
            _fails++;
            if (((_fails >= ((4 : stdgo.GoInt) + (_i >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) : Bool) && (_i < _t : Bool) : Bool)) {
                var _j:stdgo.GoInt = stdgo._internal.internal.bytealg.Bytealg.indexRabinKarpBytes((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), _sep);
                if ((_j < (0 : stdgo.GoInt) : Bool)) {
                    return (-1 : stdgo.GoInt);
                };
                return (_i + _j : stdgo.GoInt);
            };
        };
        return (-1 : stdgo.GoInt);
    }
function cut(_s:stdgo.Slice<stdgo.GoByte>, _sep:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Slice<stdgo.GoByte>; var _2 : Bool; } {
        var _before:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), _after:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), _found:Bool = false;
        {
            var _i:stdgo.GoInt = index(_s, _sep);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                return { _0 : (_s.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>), _1 : (_s.__slice__((_i + (_sep.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _2 : true };
            };
        };
        return { _0 : _s, _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : false };
    }
function clone(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Slice<stdgo.GoByte> {
        if (_b == null) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        return ((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_b : Array<stdgo.GoUInt8>)));
    }
function cutPrefix(_s:stdgo.Slice<stdgo.GoByte>, _prefix:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : Bool; } {
        var _after:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), _found:Bool = false;
        if (!hasPrefix(_s, _prefix)) {
            return { _0 : _s, _1 : false };
        };
        return { _0 : (_s.__slice__((_prefix.length)) : stdgo.Slice<stdgo.GoUInt8>), _1 : true };
    }
function cutSuffix(_s:stdgo.Slice<stdgo.GoByte>, _suffix:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : Bool; } {
        var _before:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), _found:Bool = false;
        if (!hasSuffix(_s, _suffix)) {
            return { _0 : _s, _1 : false };
        };
        return { _0 : (_s.__slice__(0, ((_s.length) - (_suffix.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _1 : true };
    }
function newReader(_b:stdgo.Slice<stdgo.GoByte>):stdgo.Ref<Reader> {
        return (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes.Reader(_b, (0i64 : stdgo.GoInt64), (-1 : stdgo.GoInt)) : stdgo._internal.bytes.Bytes.Reader)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Reader>);
    }
class Buffer_asInterface {
    @:keep
    public dynamic function readString(_delim:stdgo.GoByte):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.value.readString(_delim);
    @:keep
    public dynamic function _readSlice(_delim:stdgo.GoByte):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value._readSlice(_delim);
    @:keep
    public dynamic function readBytes(_delim:stdgo.GoByte):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } return __self__.value.readBytes(_delim);
    @:keep
    public dynamic function unreadByte():stdgo.Error return __self__.value.unreadByte();
    @:keep
    public dynamic function unreadRune():stdgo.Error return __self__.value.unreadRune();
    @:keep
    public dynamic function readRune():{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value.readRune();
    @:keep
    public dynamic function readByte():{ var _0 : stdgo.GoByte; var _1 : stdgo.Error; } return __self__.value.readByte();
    @:keep
    public dynamic function next(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> return __self__.value.next(_n);
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    @:keep
    public dynamic function writeRune(_r:stdgo.GoRune):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeRune(_r);
    @:keep
    public dynamic function writeByte(_c:stdgo.GoByte):stdgo.Error return __self__.value.writeByte(_c);
    @:keep
    public dynamic function writeTo(_w:stdgo._internal.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.writeTo(_w);
    @:keep
    public dynamic function readFrom(_r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.readFrom(_r);
    @:keep
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_s);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:keep
    public dynamic function grow(_n:stdgo.GoInt):Void __self__.value.grow(_n);
    @:keep
    public dynamic function _grow(_n:stdgo.GoInt):stdgo.GoInt return __self__.value._grow(_n);
    @:keep
    public dynamic function _tryGrowByReslice(_n:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return __self__.value._tryGrowByReslice(_n);
    @:keep
    public dynamic function reset():Void __self__.value.reset();
    @:keep
    public dynamic function truncate(_n:stdgo.GoInt):Void __self__.value.truncate(_n);
    @:keep
    public dynamic function available():stdgo.GoInt return __self__.value.available();
    @:keep
    public dynamic function cap():stdgo.GoInt return __self__.value.cap();
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:keep
    public dynamic function _empty():Bool return __self__.value._empty();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function availableBuffer():stdgo.Slice<stdgo.GoByte> return __self__.value.availableBuffer();
    @:keep
    public dynamic function bytes():stdgo.Slice<stdgo.GoByte> return __self__.value.bytes();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Buffer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bytes.Bytes.Buffer_asInterface) class Buffer_static_extension {
    @:keep
    static public function readString( _b:stdgo.Ref<Buffer>, _delim:stdgo.GoByte):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        var _line:stdgo.GoString = ("" : stdgo.GoString), _err:stdgo.Error = (null : stdgo.Error);
        var __tmp__ = _b._readSlice(_delim), _slice:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : (_slice : stdgo.GoString)?.__copy__(), _1 : _err };
    }
    @:keep
    static public function _readSlice( _b:stdgo.Ref<Buffer>, _delim:stdgo.GoByte):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        var _line:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), _err:stdgo.Error = (null : stdgo.Error);
        var _i:stdgo.GoInt = indexByte((_b._buf.__slice__(_b._off) : stdgo.Slice<stdgo.GoUInt8>), _delim);
        var _end:stdgo.GoInt = ((_b._off + _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            _end = (_b._buf.length);
            _err = stdgo._internal.io.Io.eof;
        };
        _line = (_b._buf.__slice__(_b._off, _end) : stdgo.Slice<stdgo.GoUInt8>);
        _b._off = _end;
        _b._lastRead = (-1 : stdgo._internal.bytes.Bytes.T_readOp);
        return { _0 : _line, _1 : _err };
    }
    @:keep
    static public function readBytes( _b:stdgo.Ref<Buffer>, _delim:stdgo.GoByte):{ var _0 : stdgo.Slice<stdgo.GoByte>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        var _line:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>), _err:stdgo.Error = (null : stdgo.Error);
        var __tmp__ = _b._readSlice(_delim), _slice:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _line = (_line.__append__(...(_slice : Array<stdgo.GoUInt8>)));
        return { _0 : _line, _1 : _err };
    }
    @:keep
    static public function unreadByte( _b:stdgo.Ref<Buffer>):stdgo.Error {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        if (_b._lastRead == ((0 : stdgo._internal.bytes.Bytes.T_readOp))) {
            return _errUnreadByte;
        };
        _b._lastRead = (0 : stdgo._internal.bytes.Bytes.T_readOp);
        if ((_b._off > (0 : stdgo.GoInt) : Bool)) {
            _b._off--;
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function unreadRune( _b:stdgo.Ref<Buffer>):stdgo.Error {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        if ((_b._lastRead <= (0 : stdgo._internal.bytes.Bytes.T_readOp) : Bool)) {
            return stdgo._internal.errors.Errors.new_(("bytes.Buffer: UnreadRune: previous operation was not a successful ReadRune" : stdgo.GoString));
        };
        if ((_b._off >= (_b._lastRead : stdgo.GoInt) : Bool)) {
            _b._off = (_b._off - ((_b._lastRead : stdgo.GoInt)) : stdgo.GoInt);
        };
        _b._lastRead = (0 : stdgo._internal.bytes.Bytes.T_readOp);
        return (null : stdgo.Error);
    }
    @:keep
    static public function readRune( _b:stdgo.Ref<Buffer>):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        var _r:stdgo.GoRune = (0 : stdgo.GoInt32), _size:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if (_b._empty()) {
            _b.reset();
            return { _0 : (0 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.io.Io.eof };
        };
        var _c:stdgo.GoUInt8 = _b._buf[(_b._off : stdgo.GoInt)];
        if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
            _b._off++;
            _b._lastRead = (1 : stdgo._internal.bytes.Bytes.T_readOp);
            return { _0 : (_c : stdgo.GoRune), _1 : (1 : stdgo.GoInt), _2 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune((_b._buf.__slice__(_b._off) : stdgo.Slice<stdgo.GoUInt8>)), _r:stdgo.GoInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
        _b._off = (_b._off + (_n) : stdgo.GoInt);
        _b._lastRead = (_n : T_readOp);
        return { _0 : _r, _1 : _n, _2 : (null : stdgo.Error) };
    }
    @:keep
    static public function readByte( _b:stdgo.Ref<Buffer>):{ var _0 : stdgo.GoByte; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        if (_b._empty()) {
            _b.reset();
            return { _0 : (0 : stdgo.GoUInt8), _1 : stdgo._internal.io.Io.eof };
        };
        var _c:stdgo.GoUInt8 = _b._buf[(_b._off : stdgo.GoInt)];
        _b._off++;
        _b._lastRead = (-1 : stdgo._internal.bytes.Bytes.T_readOp);
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function next( _b:stdgo.Ref<Buffer>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        _b._lastRead = (0 : stdgo._internal.bytes.Bytes.T_readOp);
        var _m:stdgo.GoInt = _b.len();
        if ((_n > _m : Bool)) {
            _n = _m;
        };
        var _data = (_b._buf.__slice__(_b._off, (_b._off + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _b._off = (_b._off + (_n) : stdgo.GoInt);
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            _b._lastRead = (-1 : stdgo._internal.bytes.Bytes.T_readOp);
        };
        return _data;
    }
    @:keep
    static public function read( _b:stdgo.Ref<Buffer>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        _b._lastRead = (0 : stdgo._internal.bytes.Bytes.T_readOp);
        if (_b._empty()) {
            _b.reset();
            if ((_p.length) == ((0 : stdgo.GoInt))) {
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
            };
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io.eof };
        };
        _n = stdgo.Go.copySlice(_p, (_b._buf.__slice__(_b._off) : stdgo.Slice<stdgo.GoUInt8>));
        _b._off = (_b._off + (_n) : stdgo.GoInt);
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            _b._lastRead = (-1 : stdgo._internal.bytes.Bytes.T_readOp);
        };
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function writeRune( _b:stdgo.Ref<Buffer>, _r:stdgo.GoRune):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if (((_r : stdgo.GoUInt32) < (128u32 : stdgo.GoUInt32) : Bool)) {
            _b.writeByte((_r : stdgo.GoByte));
            return { _0 : (1 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
        _b._lastRead = (0 : stdgo._internal.bytes.Bytes.T_readOp);
        var __tmp__ = _b._tryGrowByReslice((4 : stdgo.GoInt)), _m:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = _b._grow((4 : stdgo.GoInt));
        };
        _b._buf = stdgo._internal.unicode.utf8.Utf8.appendRune((_b._buf.__slice__(0, _m) : stdgo.Slice<stdgo.GoUInt8>), _r);
        return { _0 : ((_b._buf.length) - _m : stdgo.GoInt), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function writeByte( _b:stdgo.Ref<Buffer>, _c:stdgo.GoByte):stdgo.Error {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        _b._lastRead = (0 : stdgo._internal.bytes.Bytes.T_readOp);
        var __tmp__ = _b._tryGrowByReslice((1 : stdgo.GoInt)), _m:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = _b._grow((1 : stdgo.GoInt));
        };
        _b._buf[(_m : stdgo.GoInt)] = _c;
        return (null : stdgo.Error);
    }
    @:keep
    static public function writeTo( _b:stdgo.Ref<Buffer>, _w:stdgo._internal.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        var _n:stdgo.GoInt64 = (0 : stdgo.GoInt64), _err:stdgo.Error = (null : stdgo.Error);
        _b._lastRead = (0 : stdgo._internal.bytes.Bytes.T_readOp);
        {
            var _nBytes:stdgo.GoInt = _b.len();
            if ((_nBytes > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = _w.write((_b._buf.__slice__(_b._off) : stdgo.Slice<stdgo.GoUInt8>)), _m:stdgo.GoInt = __tmp__._0, _e:stdgo.Error = __tmp__._1;
                if ((_m > _nBytes : Bool)) {
                    throw stdgo.Go.toInterface(("bytes.Buffer.WriteTo: invalid Write count" : stdgo.GoString));
                };
                _b._off = (_b._off + (_m) : stdgo.GoInt);
                _n = (_m : stdgo.GoInt64);
                if (_e != null) {
                    return { _0 : _n, _1 : _e };
                };
                if (_m != (_nBytes)) {
                    return { _0 : _n, _1 : stdgo._internal.io.Io.errShortWrite };
                };
            };
        };
        _b.reset();
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function readFrom( _b:stdgo.Ref<Buffer>, _r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        var _n:stdgo.GoInt64 = (0 : stdgo.GoInt64), _err:stdgo.Error = (null : stdgo.Error);
        _b._lastRead = (0 : stdgo._internal.bytes.Bytes.T_readOp);
        while (true) {
            var _i:stdgo.GoInt = _b._grow((512 : stdgo.GoInt));
            _b._buf = (_b._buf.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = _r.read((_b._buf.__slice__(_i, _b._buf.capacity) : stdgo.Slice<stdgo.GoUInt8>)), _m:stdgo.GoInt = __tmp__._0, _e:stdgo.Error = __tmp__._1;
            if ((_m < (0 : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(_errNegativeRead);
            };
            _b._buf = (_b._buf.__slice__(0, (_i + _m : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _n = (_n + ((_m : stdgo.GoInt64)) : stdgo.GoInt64);
            if (stdgo.Go.toInterface(_e) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                return { _0 : _n, _1 : (null : stdgo.Error) };
            };
            if (_e != null) {
                return { _0 : _n, _1 : _e };
            };
        };
    }
    @:keep
    static public function writeString( _b:stdgo.Ref<Buffer>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        _b._lastRead = (0 : stdgo._internal.bytes.Bytes.T_readOp);
        var __tmp__ = _b._tryGrowByReslice((_s.length)), _m:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = _b._grow((_s.length));
        };
        return { _0 : stdgo.Go.copySlice((_b._buf.__slice__(_m) : stdgo.Slice<stdgo.GoUInt8>), _s), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function write( _b:stdgo.Ref<Buffer>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        _b._lastRead = (0 : stdgo._internal.bytes.Bytes.T_readOp);
        var __tmp__ = _b._tryGrowByReslice((_p.length)), _m:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = _b._grow((_p.length));
        };
        return { _0 : stdgo.Go.copySlice((_b._buf.__slice__(_m) : stdgo.Slice<stdgo.GoUInt8>), _p), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function grow( _b:stdgo.Ref<Buffer>, _n:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("bytes.Buffer.Grow: negative count" : stdgo.GoString));
        };
        var _m:stdgo.GoInt = _b._grow(_n);
        _b._buf = (_b._buf.__slice__(0, _m) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function _grow( _b:stdgo.Ref<Buffer>, _n:stdgo.GoInt):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        var _m:stdgo.GoInt = _b.len();
        if (((_m == (0 : stdgo.GoInt)) && (_b._off != (0 : stdgo.GoInt)) : Bool)) {
            _b.reset();
        };
        {
            var __tmp__ = _b._tryGrowByReslice(_n), _i:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _i;
            };
        };
        if (((_b._buf == null) && (_n <= (64 : stdgo.GoInt) : Bool) : Bool)) {
            _b._buf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            return (0 : stdgo.GoInt);
        };
        var _c:stdgo.GoInt = _b._buf.capacity;
        if ((_n <= ((_c / (2 : stdgo.GoInt) : stdgo.GoInt) - _m : stdgo.GoInt) : Bool)) {
            stdgo.Go.copySlice(_b._buf, (_b._buf.__slice__(_b._off) : stdgo.Slice<stdgo.GoUInt8>));
        } else if ((_c > (((2147483647 : stdgo.GoInt) - _c : stdgo.GoInt) - _n : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(errTooLarge);
        } else {
            _b._buf = _growSlice((_b._buf.__slice__(_b._off) : stdgo.Slice<stdgo.GoUInt8>), (_b._off + _n : stdgo.GoInt));
        };
        _b._off = (0 : stdgo.GoInt);
        _b._buf = (_b._buf.__slice__(0, (_m + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return _m;
    }
    @:keep
    static public function _tryGrowByReslice( _b:stdgo.Ref<Buffer>, _n:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        {
            var _l:stdgo.GoInt = (_b._buf.length);
            if ((_n <= (_b._buf.capacity - _l : stdgo.GoInt) : Bool)) {
                _b._buf = (_b._buf.__slice__(0, (_l + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                return { _0 : _l, _1 : true };
            };
        };
        return { _0 : (0 : stdgo.GoInt), _1 : false };
    }
    @:keep
    static public function reset( _b:stdgo.Ref<Buffer>):Void {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        _b._buf = (_b._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _b._off = (0 : stdgo.GoInt);
        _b._lastRead = (0 : stdgo._internal.bytes.Bytes.T_readOp);
    }
    @:keep
    static public function truncate( _b:stdgo.Ref<Buffer>, _n:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        if (_n == ((0 : stdgo.GoInt))) {
            _b.reset();
            return;
        };
        _b._lastRead = (0 : stdgo._internal.bytes.Bytes.T_readOp);
        if (((_n < (0 : stdgo.GoInt) : Bool) || (_n > _b.len() : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("bytes.Buffer: truncation out of range" : stdgo.GoString));
        };
        _b._buf = (_b._buf.__slice__(0, (_b._off + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function available( _b:stdgo.Ref<Buffer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        return (_b._buf.capacity - (_b._buf.length) : stdgo.GoInt);
    }
    @:keep
    static public function cap( _b:stdgo.Ref<Buffer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        return _b._buf.capacity;
    }
    @:keep
    static public function len( _b:stdgo.Ref<Buffer>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        return ((_b._buf.length) - _b._off : stdgo.GoInt);
    }
    @:keep
    static public function _empty( _b:stdgo.Ref<Buffer>):Bool {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        return ((_b._buf.length) <= _b._off : Bool);
    }
    @:keep
    static public function string( _b:stdgo.Ref<Buffer>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        if (_b == null || (_b : Dynamic).__nil__) {
            return ("<nil>" : stdgo.GoString);
        };
        return ((_b._buf.__slice__(_b._off) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function availableBuffer( _b:stdgo.Ref<Buffer>):stdgo.Slice<stdgo.GoByte> {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        return (_b._buf.__slice__((_b._buf.length)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function bytes( _b:stdgo.Ref<Buffer>):stdgo.Slice<stdgo.GoByte> {
        @:recv var _b:stdgo.Ref<Buffer> = _b;
        return (_b._buf.__slice__(_b._off) : stdgo.Slice<stdgo.GoUInt8>);
    }
}
class Reader_asInterface {
    @:keep
    public dynamic function reset(_b:stdgo.Slice<stdgo.GoByte>):Void __self__.value.reset(_b);
    @:keep
    public dynamic function writeTo(_w:stdgo._internal.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.writeTo(_w);
    @:keep
    public dynamic function seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.seek(_offset, _whence);
    @:keep
    public dynamic function unreadRune():stdgo.Error return __self__.value.unreadRune();
    @:keep
    public dynamic function readRune():{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value.readRune();
    @:keep
    public dynamic function unreadByte():stdgo.Error return __self__.value.unreadByte();
    @:keep
    public dynamic function readByte():{ var _0 : stdgo.GoByte; var _1 : stdgo.Error; } return __self__.value.readByte();
    @:keep
    public dynamic function readAt(_b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.readAt(_b, _off);
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    @:keep
    public dynamic function size():stdgo.GoInt64 return __self__.value.size();
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Reader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bytes.Bytes.Reader_asInterface) class Reader_static_extension {
    @:keep
    static public function reset( _r:stdgo.Ref<Reader>, _b:stdgo.Slice<stdgo.GoByte>):Void {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        {
            var __tmp__ = (new stdgo._internal.bytes.Bytes.Reader(_b, (0i64 : stdgo.GoInt64), (-1 : stdgo.GoInt)) : stdgo._internal.bytes.Bytes.Reader);
            _r._s = __tmp__._s;
            _r._i = __tmp__._i;
            _r._prevRune = __tmp__._prevRune;
        };
    }
    @:keep
    static public function writeTo( _r:stdgo.Ref<Reader>, _w:stdgo._internal.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        var _n:stdgo.GoInt64 = (0 : stdgo.GoInt64), _err:stdgo.Error = (null : stdgo.Error);
        _r._prevRune = (-1 : stdgo.GoInt);
        if ((_r._i >= (_r._s.length : stdgo.GoInt64) : Bool)) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
        };
        var _b = (_r._s.__slice__(_r._i) : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = _w.write(_b), _m:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_m > (_b.length) : Bool)) {
            throw stdgo.Go.toInterface(("bytes.Reader.WriteTo: invalid Write count" : stdgo.GoString));
        };
        _r._i = (_r._i + ((_m : stdgo.GoInt64)) : stdgo.GoInt64);
        _n = (_m : stdgo.GoInt64);
        if (((_m != (_b.length)) && (_err == null) : Bool)) {
            _err = stdgo._internal.io.Io.errShortWrite;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function seek( _r:stdgo.Ref<Reader>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        _r._prevRune = (-1 : stdgo.GoInt);
        var _abs:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        {
            final __value__ = _whence;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _abs = _offset;
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                _abs = (_r._i + _offset : stdgo.GoInt64);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                _abs = ((_r._s.length : stdgo.GoInt64) + _offset : stdgo.GoInt64);
            } else {
                return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.errors.Errors.new_(("bytes.Reader.Seek: invalid whence" : stdgo.GoString)) };
            };
        };
        if ((_abs < (0i64 : stdgo.GoInt64) : Bool)) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.errors.Errors.new_(("bytes.Reader.Seek: negative position" : stdgo.GoString)) };
        };
        _r._i = _abs;
        return { _0 : _abs, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function unreadRune( _r:stdgo.Ref<Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        if ((_r._i <= (0i64 : stdgo.GoInt64) : Bool)) {
            return stdgo._internal.errors.Errors.new_(("bytes.Reader.UnreadRune: at beginning of slice" : stdgo.GoString));
        };
        if ((_r._prevRune < (0 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.errors.Errors.new_(("bytes.Reader.UnreadRune: previous operation was not ReadRune" : stdgo.GoString));
        };
        _r._i = (_r._prevRune : stdgo.GoInt64);
        _r._prevRune = (-1 : stdgo.GoInt);
        return (null : stdgo.Error);
    }
    @:keep
    static public function readRune( _r:stdgo.Ref<Reader>):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        var _ch:stdgo.GoRune = (0 : stdgo.GoInt32), _size:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if ((_r._i >= (_r._s.length : stdgo.GoInt64) : Bool)) {
            _r._prevRune = (-1 : stdgo.GoInt);
            return { _0 : (0 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.io.Io.eof };
        };
        _r._prevRune = (_r._i : stdgo.GoInt);
        {
            var _c:stdgo.GoUInt8 = _r._s[(_r._i : stdgo.GoInt)];
            if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                _r._i++;
                return { _0 : (_c : stdgo.GoRune), _1 : (1 : stdgo.GoInt), _2 : (null : stdgo.Error) };
            };
        };
        {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRune((_r._s.__slice__(_r._i) : stdgo.Slice<stdgo.GoUInt8>));
            _ch = __tmp__._0;
            _size = __tmp__._1;
        };
        _r._i = (_r._i + ((_size : stdgo.GoInt64)) : stdgo.GoInt64);
        return { _0 : _ch, _1 : _size, _2 : _err };
    }
    @:keep
    static public function unreadByte( _r:stdgo.Ref<Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        if ((_r._i <= (0i64 : stdgo.GoInt64) : Bool)) {
            return stdgo._internal.errors.Errors.new_(("bytes.Reader.UnreadByte: at beginning of slice" : stdgo.GoString));
        };
        _r._prevRune = (-1 : stdgo.GoInt);
        _r._i--;
        return (null : stdgo.Error);
    }
    @:keep
    static public function readByte( _r:stdgo.Ref<Reader>):{ var _0 : stdgo.GoByte; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        _r._prevRune = (-1 : stdgo.GoInt);
        if ((_r._i >= (_r._s.length : stdgo.GoInt64) : Bool)) {
            return { _0 : (0 : stdgo.GoUInt8), _1 : stdgo._internal.io.Io.eof };
        };
        var _b:stdgo.GoUInt8 = _r._s[(_r._i : stdgo.GoInt)];
        _r._i++;
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function readAt( _r:stdgo.Ref<Reader>, _b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if ((_off < (0i64 : stdgo.GoInt64) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors.new_(("bytes.Reader.ReadAt: negative offset" : stdgo.GoString)) };
        };
        if ((_off >= (_r._s.length : stdgo.GoInt64) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io.eof };
        };
        _n = stdgo.Go.copySlice(_b, (_r._s.__slice__(_off) : stdgo.Slice<stdgo.GoUInt8>));
        if ((_n < (_b.length) : Bool)) {
            _err = stdgo._internal.io.Io.eof;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function read( _r:stdgo.Ref<Reader>, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if ((_r._i >= (_r._s.length : stdgo.GoInt64) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io.eof };
        };
        _r._prevRune = (-1 : stdgo.GoInt);
        _n = stdgo.Go.copySlice(_b, (_r._s.__slice__(_r._i) : stdgo.Slice<stdgo.GoUInt8>));
        _r._i = (_r._i + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function size( _r:stdgo.Ref<Reader>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        return (_r._s.length : stdgo.GoInt64);
    }
    @:keep
    static public function len( _r:stdgo.Ref<Reader>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        if ((_r._i >= (_r._s.length : stdgo.GoInt64) : Bool)) {
            return (0 : stdgo.GoInt);
        };
        return (((_r._s.length : stdgo.GoInt64) - _r._i : stdgo.GoInt64) : stdgo.GoInt);
    }
}
class T_asciiSet_asInterface {
    @:keep
    public dynamic function _contains(_c:stdgo.GoByte):Bool return __self__.value._contains(_c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_asciiSet>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.bytes.Bytes.T_asciiSet_asInterface) class T_asciiSet_static_extension {
    @:keep
    static public function _contains( _as:stdgo.Ref<T_asciiSet>, _c:stdgo.GoByte):Bool {
        @:recv var _as:stdgo.Ref<T_asciiSet> = _as;
        return ((_as[((_c / (32 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] & (((1u32 : stdgo.GoUInt32) << ((_c % (32 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt32)) : stdgo.GoUInt32)) != ((0u32 : stdgo.GoUInt32));
    }
}
