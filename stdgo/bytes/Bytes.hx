package stdgo.bytes;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var errTooLarge : stdgo.Error = stdgo.errors.Errors.new_(((("bytes.Buffer: too large" : GoString))));
var _errNegativeRead : stdgo.Error = stdgo.errors.Errors.new_(((("bytes.Buffer: reader returned negative count from Read" : GoString))));
var _errUnreadByte : stdgo.Error = stdgo.errors.Errors.new_(((("bytes.Buffer: UnreadByte: previous operation was not a successful read" : GoString))));
var _asciiSpace : GoArray<GoUInt8> = {
        var s:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 256) 0]);
        s[0] = ((1 : GoUInt8));
        s[1] = ((1 : GoUInt8));
        s[2] = ((1 : GoUInt8));
        s[3] = ((1 : GoUInt8));
        s[4] = ((1 : GoUInt8));
        s[5] = ((1 : GoUInt8));
        s;
    };
@:structInit @:using(stdgo.bytes.Bytes.Buffer_static_extension) class Buffer {
    public var _buf : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _off : GoInt = ((0 : GoInt));
    public var _lastRead : T_readOp = new T_readOp();
    public function new(?_buf:Slice<GoUInt8>, ?_off:GoInt, ?_lastRead:T_readOp) {
        if (_buf != null) this._buf = _buf;
        if (_off != null) this._off = _off;
        if (_lastRead != null) this._lastRead = _lastRead;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Buffer(_buf, _off, _lastRead);
    }
}
@:structInit @:using(stdgo.bytes.Bytes.Reader_static_extension) class Reader {
    public var _s : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _i : GoInt64 = ((0 : GoInt64));
    public var _prevRune : GoInt = ((0 : GoInt));
    public function new(?_s:Slice<GoUInt8>, ?_i:GoInt64, ?_prevRune:GoInt) {
        if (_s != null) this._s = _s;
        if (_i != null) this._i = _i;
        if (_prevRune != null) this._prevRune = _prevRune;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Reader(_s, _i, _prevRune);
    }
}
@:named typedef T_readOp = GoInt8;
@:named @:using(stdgo.bytes.Bytes.T_asciiSet_static_extension) typedef T_asciiSet = GoArray<GoUInt32>;
/**
    // makeSlice allocates a slice of size n. If the allocation fails, it panics
    // with ErrTooLarge.
**/
function _makeSlice(_n:GoInt):Slice<GoByte> {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        __deferstack__.unshift(() -> {
            var a = function():Void {
                if (({
                    final r = __recover_exception__;
                    __recover_exception__ = null;
                    r;
                }) != null) {
                    throw Go.toInterface(errTooLarge);
                };
            };
            a();
        });
        try {
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
            };
            for (defer in __deferstack__) {
                defer();
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return ((null : Slice<GoUInt8>));
            };
        };
    }
/**
    // NewBuffer creates and initializes a new Buffer using buf as its
    // initial contents. The new Buffer takes ownership of buf, and the
    // caller should not use buf after this call. NewBuffer is intended to
    // prepare a Buffer to read existing data. It can also be used to set
    // the initial size of the internal buffer for writing. To do that,
    // buf should have the desired capacity but a length of zero.
    //
    // In most cases, new(Buffer) (or just declaring a Buffer variable) is
    // sufficient to initialize a Buffer.
**/
function newBuffer(_buf:Slice<GoByte>):Buffer {
        return (({ _buf : _buf, _off : 0, _lastRead : new T_readOp() } : Buffer));
    }
/**
    // NewBufferString creates and initializes a new Buffer using string s as its
    // initial contents. It is intended to prepare a buffer to read an existing
    // string.
    //
    // In most cases, new(Buffer) (or just declaring a Buffer variable) is
    // sufficient to initialize a Buffer.
**/
function newBufferString(_s:GoString):Buffer {
        return (({ _buf : ((_s : Slice<GoByte>)), _off : 0, _lastRead : new T_readOp() } : Buffer));
    }
/**
    // Equal reports whether a and b
    // are the same length and contain the same bytes.
    // A nil argument is equivalent to an empty slice.
**/
function equal(_a:Slice<GoByte>, _b:Slice<GoByte>):Bool {
        return ((_a : GoString)) == ((_b : GoString));
    }
/**
    // Compare returns an integer comparing two byte slices lexicographically.
    // The result will be 0 if a == b, -1 if a < b, and +1 if a > b.
    // A nil argument is equivalent to an empty slice.
**/
function compare(_a:Slice<GoByte>, _b:Slice<GoByte>):GoInt {
        return stdgo.internal.bytealg.Bytealg.compare(_a, _b);
    }
/**
    // explode splits s into a slice of UTF-8 sequences, one per Unicode code point (still slices of bytes),
    // up to a maximum of n byte slices. Invalid UTF-8 sequences are chopped into individual bytes.
**/
function _explode(_s:Slice<GoByte>, _n:GoInt):Slice<Slice<GoByte>> {
        if (_n <= ((0 : GoInt))) {
            _n = (_s != null ? _s.length : ((0 : GoInt)));
        };
        var _a = new Slice<Slice<GoUInt8>>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((null : Slice<GoUInt8>))]);
        var _size:GoInt = ((0 : GoInt));
        var _na:GoInt = ((0 : GoInt));
        while ((_s != null ? _s.length : ((0 : GoInt))) > ((0 : GoInt))) {
            if ((_na + ((1 : GoInt))) >= _n) {
                if (_a != null) _a[_na] = _s;
                _na++;
                break;
            };
            {
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_s);
                _size = __tmp__._1;
            };
            if (_a != null) _a[_na] = ((_s.__slice__(((0 : GoInt)), _size) : Slice<GoUInt8>)).__setCap__(((_size : GoInt)) - ((1 : GoInt)));
            _s = ((_s.__slice__(_size) : Slice<GoUInt8>));
            _na++;
        };
        return ((_a.__slice__(((0 : GoInt)), _na) : Slice<Slice<GoUInt8>>));
    }
/**
    // Count counts the number of non-overlapping instances of sep in s.
    // If sep is an empty slice, Count returns 1 + the number of UTF-8-encoded code points in s.
**/
function count(_s:Slice<GoByte>, _sep:Slice<GoByte>):GoInt {
        if ((_sep != null ? _sep.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return stdgo.unicode.utf8.Utf8.runeCount(_s) + ((1 : GoInt));
        };
        if ((_sep != null ? _sep.length : ((0 : GoInt))) == ((1 : GoInt))) {
            return stdgo.internal.bytealg.Bytealg.count(_s, (_sep != null ? _sep[((0 : GoInt))] : ((0 : GoUInt8))));
        };
        var _n:GoInt = ((0 : GoInt));
        while (true) {
            var _i:GoInt = index(_s, _sep);
            if (_i == ((-1 : GoInt))) {
                return _n;
            };
            _n++;
            _s = ((_s.__slice__(_i + (_sep != null ? _sep.length : ((0 : GoInt)))) : Slice<GoUInt8>));
        };
    }
/**
    // Contains reports whether subslice is within b.
**/
function contains(_b:Slice<GoByte>, _subslice:Slice<GoByte>):Bool {
        return index(_b, _subslice) != ((-1 : GoInt));
    }
/**
    // ContainsAny reports whether any of the UTF-8-encoded code points in chars are within b.
**/
function containsAny(_b:Slice<GoByte>, _chars:GoString):Bool {
        return indexAny(_b, _chars) >= ((0 : GoInt));
    }
/**
    // ContainsRune reports whether the rune is contained in the UTF-8-encoded byte slice b.
**/
function containsRune(_b:Slice<GoByte>, _r:GoRune):Bool {
        return indexRune(_b, _r) >= ((0 : GoInt));
    }
/**
    // IndexByte returns the index of the first instance of c in b, or -1 if c is not present in b.
**/
function indexByte(_b:Slice<GoByte>, _c:GoByte):GoInt {
        return stdgo.internal.bytealg.Bytealg.indexByte(_b, _c);
    }
function _indexBytePortable(_s:Slice<GoByte>, _c:GoByte):GoInt {
        for (_i => _b in _s) {
            if (_b == _c) {
                return _i;
            };
        };
        return ((-1 : GoInt));
    }
/**
    // LastIndex returns the index of the last instance of sep in s, or -1 if sep is not present in s.
**/
function lastIndex(_s:Slice<GoByte>, _sep:Slice<GoByte>):GoInt {
        var _n:GoInt = (_sep != null ? _sep.length : ((0 : GoInt)));
        if (_n == ((0 : GoInt))) {
            return (_s != null ? _s.length : ((0 : GoInt)));
        } else if (_n == ((1 : GoInt))) {
            return lastIndexByte(_s, (_sep != null ? _sep[((0 : GoInt))] : ((0 : GoUInt8))));
        } else if (_n == (_s != null ? _s.length : ((0 : GoInt)))) {
            if (equal(_s, _sep)) {
                return ((0 : GoInt));
            };
            return ((-1 : GoInt));
        } else if (_n > (_s != null ? _s.length : ((0 : GoInt)))) {
            return ((-1 : GoInt));
        };
        var __tmp__ = stdgo.internal.bytealg.Bytealg.hashStrRevBytes(_sep), _hashss:GoUInt32 = __tmp__._0, _pow:GoUInt32 = __tmp__._1;
        var _last:GoInt = (_s != null ? _s.length : ((0 : GoInt))) - _n;
        var _h:GoUInt32 = ((0 : GoUInt32));
        {
            var _i:GoInt = (_s != null ? _s.length : ((0 : GoInt))) - ((1 : GoInt));
            Go.cfor(_i >= _last, _i--, {
                _h = (_h * ((16777619 : GoUInt32))) + (((_s != null ? _s[_i] : ((0 : GoUInt8))) : GoUInt32));
            });
        };
        if ((_h == _hashss) && equal(((_s.__slice__(_last) : Slice<GoUInt8>)), _sep)) {
            return _last;
        };
        {
            var _i:GoInt = _last - ((1 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                _h = _h * (((16777619 : GoUInt32)));
                _h = _h + ((((_s != null ? _s[_i] : ((0 : GoUInt8))) : GoUInt32)));
                _h = _h - (_pow * (((_s != null ? _s[_i + _n] : ((0 : GoUInt8))) : GoUInt32)));
                if ((_h == _hashss) && equal(((_s.__slice__(_i, _i + _n) : Slice<GoUInt8>)), _sep)) {
                    return _i;
                };
            });
        };
        return ((-1 : GoInt));
    }
/**
    // LastIndexByte returns the index of the last instance of c in s, or -1 if c is not present in s.
**/
function lastIndexByte(_s:Slice<GoByte>, _c:GoByte):GoInt {
        {
            var _i:GoInt = (_s != null ? _s.length : ((0 : GoInt))) - ((1 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                if ((_s != null ? _s[_i] : ((0 : GoUInt8))) == _c) {
                    return _i;
                };
            });
        };
        return ((-1 : GoInt));
    }
/**
    // IndexRune interprets s as a sequence of UTF-8-encoded code points.
    // It returns the byte index of the first occurrence in s of the given rune.
    // It returns -1 if rune is not present in s.
    // If r is utf8.RuneError, it returns the first instance of any
    // invalid UTF-8 byte sequence.
**/
function indexRune(_s:Slice<GoByte>, _r:GoRune):GoInt {
        if ((((0 : GoInt32)) <= _r) && (_r < ((128 : GoInt32)))) {
            return indexByte(_s, ((_r : GoByte)));
        } else if (_r == ((65533 : GoInt32))) {
            {
                var _i:GoInt = ((0 : GoInt));
                while (_i < (_s != null ? _s.length : ((0 : GoInt)))) {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_s.__slice__(_i) : Slice<GoUInt8>))), _r1:GoInt32 = __tmp__._0, _n:GoInt = __tmp__._1;
                    if (_r1 == ((65533 : GoInt32))) {
                        return _i;
                    };
                    _i = _i + (_n);
                };
            };
            return ((-1 : GoInt));
        } else if (!stdgo.unicode.utf8.Utf8.validRune(_r)) {
            return ((-1 : GoInt));
        } else {
            var _b:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]);
            var _n:GoInt = stdgo.unicode.utf8.Utf8.encodeRune(((_b.__slice__(0) : Slice<GoUInt8>)), _r);
            return index(_s, ((_b.__slice__(0, _n) : Slice<GoUInt8>)));
        };
    }
/**
    // IndexAny interprets s as a sequence of UTF-8-encoded Unicode code points.
    // It returns the byte index of the first occurrence in s of any of the Unicode
    // code points in chars. It returns -1 if chars is empty or if there is no code
    // point in common.
**/
function indexAny(_s:Slice<GoByte>, _chars:GoString):GoInt {
        if (_chars == ((("" : GoString)))) {
            return ((-1 : GoInt));
        };
        if ((_s != null ? _s.length : ((0 : GoInt))) == ((1 : GoInt))) {
            var _r:GoInt32 = (((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) : GoRune));
            if (_r >= ((128 : GoInt32))) {
                for (__key__ => __value__ in _chars) {
                    _r = __value__;
                    _0 = __key__;
                    if (_r == ((65533 : GoInt32))) {
                        return ((0 : GoInt));
                    };
                };
                return ((-1 : GoInt));
            };
            if (stdgo.internal.bytealg.Bytealg.indexByteString(_chars, (_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8)))) >= ((0 : GoInt))) {
                return ((0 : GoInt));
            };
            return ((-1 : GoInt));
        };
        if ((_chars != null ? _chars.length : ((0 : GoInt))) == ((1 : GoInt))) {
            var _r:GoInt32 = (((_chars != null ? _chars[((0 : GoInt))] : ((0 : GoUInt8))) : GoRune));
            if (_r >= ((128 : GoInt32))) {
                _r = ((65533 : GoInt32));
            };
            return indexRune(_s, _r);
        };
        if ((_s != null ? _s.length : ((0 : GoInt))) > ((8 : GoInt))) {
            {
                var __tmp__ = _makeASCIISet(_chars), _as:T_asciiSet = __tmp__._0, _isASCII:Bool = __tmp__._1;
                if (_isASCII) {
                    for (_i => _c in _s) {
                        if (_as._contains(_c)) {
                            return _i;
                        };
                    };
                    return ((-1 : GoInt));
                };
            };
        };
        var _width:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i = _i + (_width), {
                var _r:GoInt32 = (((_s != null ? _s[_i] : ((0 : GoUInt8))) : GoRune));
                if (_r < ((128 : GoInt32))) {
                    if (stdgo.internal.bytealg.Bytealg.indexByteString(_chars, (_s != null ? _s[_i] : ((0 : GoUInt8)))) >= ((0 : GoInt))) {
                        return _i;
                    };
                    _width = ((1 : GoInt));
                    continue;
                };
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_s.__slice__(_i) : Slice<GoUInt8>)));
                    _r = __tmp__._0;
                    _width = __tmp__._1;
                };
                if (_r != ((65533 : GoInt32))) {
                    if ((_chars != null ? _chars.length : ((0 : GoInt))) == _width) {
                        if (_chars == ((_r : GoString))) {
                            return _i;
                        };
                        continue;
                    };
                    if (stdgo.internal.bytealg.Bytealg.maxLen >= _width) {
                        if (stdgo.internal.bytealg.Bytealg.indexString(_chars, ((_r : GoString))) >= ((0 : GoInt))) {
                            return _i;
                        };
                        continue;
                    };
                };
                for (_1 => _ch in _chars) {
                    if (_r == _ch) {
                        return _i;
                    };
                };
            });
        };
        return ((-1 : GoInt));
    }
/**
    // LastIndexAny interprets s as a sequence of UTF-8-encoded Unicode code
    // points. It returns the byte index of the last occurrence in s of any of
    // the Unicode code points in chars. It returns -1 if chars is empty or if
    // there is no code point in common.
**/
function lastIndexAny(_s:Slice<GoByte>, _chars:GoString):GoInt {
        if (_chars == ((("" : GoString)))) {
            return ((-1 : GoInt));
        };
        if ((_s != null ? _s.length : ((0 : GoInt))) > ((8 : GoInt))) {
            {
                var __tmp__ = _makeASCIISet(_chars), _as:T_asciiSet = __tmp__._0, _isASCII:Bool = __tmp__._1;
                if (_isASCII) {
                    {
                        var _i:GoInt = (_s != null ? _s.length : ((0 : GoInt))) - ((1 : GoInt));
                        Go.cfor(_i >= ((0 : GoInt)), _i--, {
                            if (_as._contains((_s != null ? _s[_i] : ((0 : GoUInt8))))) {
                                return _i;
                            };
                        });
                    };
                    return ((-1 : GoInt));
                };
            };
        };
        if ((_s != null ? _s.length : ((0 : GoInt))) == ((1 : GoInt))) {
            var _r:GoInt32 = (((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) : GoRune));
            if (_r >= ((128 : GoInt32))) {
                for (__key__ => __value__ in _chars) {
                    _r = __value__;
                    _0 = __key__;
                    if (_r == ((65533 : GoInt32))) {
                        return ((0 : GoInt));
                    };
                };
                return ((-1 : GoInt));
            };
            if (stdgo.internal.bytealg.Bytealg.indexByteString(_chars, (_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8)))) >= ((0 : GoInt))) {
                return ((0 : GoInt));
            };
            return ((-1 : GoInt));
        };
        if ((_chars != null ? _chars.length : ((0 : GoInt))) == ((1 : GoInt))) {
            var _cr:GoInt32 = (((_chars != null ? _chars[((0 : GoInt))] : ((0 : GoUInt8))) : GoRune));
            if (_cr >= ((128 : GoInt32))) {
                _cr = ((65533 : GoInt32));
            };
            {
                var _i:GoInt = (_s != null ? _s.length : ((0 : GoInt)));
                while (_i > ((0 : GoInt))) {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRune(((_s.__slice__(0, _i) : Slice<GoUInt8>))), _r:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
                    _i = _i - (_size);
                    if (_r == _cr) {
                        return _i;
                    };
                };
            };
            return ((-1 : GoInt));
        };
        {
            var _i:GoInt = (_s != null ? _s.length : ((0 : GoInt)));
            while (_i > ((0 : GoInt))) {
                var _r:GoInt32 = (((_s != null ? _s[_i - ((1 : GoInt))] : ((0 : GoUInt8))) : GoRune));
                if (_r < ((128 : GoInt32))) {
                    if (stdgo.internal.bytealg.Bytealg.indexByteString(_chars, (_s != null ? _s[_i - ((1 : GoInt))] : ((0 : GoUInt8)))) >= ((0 : GoInt))) {
                        return _i - ((1 : GoInt));
                    };
                    _i--;
                    continue;
                };
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRune(((_s.__slice__(0, _i) : Slice<GoUInt8>))), _r:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
                _i = _i - (_size);
                if (_r != ((65533 : GoInt32))) {
                    if ((_chars != null ? _chars.length : ((0 : GoInt))) == _size) {
                        if (_chars == ((_r : GoString))) {
                            return _i;
                        };
                        continue;
                    };
                    if (stdgo.internal.bytealg.Bytealg.maxLen >= _size) {
                        if (stdgo.internal.bytealg.Bytealg.indexString(_chars, ((_r : GoString))) >= ((0 : GoInt))) {
                            return _i;
                        };
                        continue;
                    };
                };
                for (_1 => _ch in _chars) {
                    if (_r == _ch) {
                        return _i;
                    };
                };
            };
        };
        return ((-1 : GoInt));
    }
/**
    // Generic split: splits after each instance of sep,
    // including sepSave bytes of sep in the subslices.
**/
function _genSplit(_s:Slice<GoByte>, _sep:Slice<GoByte>, _sepSave:GoInt, _n:GoInt):Slice<Slice<GoByte>> {
        if (_n == ((0 : GoInt))) {
            return ((null : Slice<Slice<GoUInt8>>));
        };
        if ((_sep != null ? _sep.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return _explode(_s, _n);
        };
        if (_n < ((0 : GoInt))) {
            _n = count(_s, _sep) + ((1 : GoInt));
        };
        var _a = new Slice<Slice<GoUInt8>>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((null : Slice<GoUInt8>))]);
        _n--;
        var _i:GoInt = ((0 : GoInt));
        while (_i < _n) {
            var _m:GoInt = index(_s, _sep);
            if (_m < ((0 : GoInt))) {
                break;
            };
            if (_a != null) _a[_i] = ((_s.__slice__(0, _m + _sepSave) : Slice<GoUInt8>)).__setCap__(((_m + _sepSave : GoInt)) - ((1 : GoInt)));
            _s = ((_s.__slice__(_m + (_sep != null ? _sep.length : ((0 : GoInt)))) : Slice<GoUInt8>));
            _i++;
        };
        if (_a != null) _a[_i] = _s;
        return ((_a.__slice__(0, _i + ((1 : GoInt))) : Slice<Slice<GoUInt8>>));
    }
/**
    // SplitN slices s into subslices separated by sep and returns a slice of
    // the subslices between those separators.
    // If sep is empty, SplitN splits after each UTF-8 sequence.
    // The count determines the number of subslices to return:
    //   n > 0: at most n subslices; the last subslice will be the unsplit remainder.
    //   n == 0: the result is nil (zero subslices)
    //   n < 0: all subslices
    //
    // To split around the first instance of a separator, see Cut.
**/
function splitN(_s:Slice<GoByte>, _sep:Slice<GoByte>, _n:GoInt):Slice<Slice<GoByte>> {
        return _genSplit(_s, _sep, ((0 : GoInt)), _n);
    }
/**
    // SplitAfterN slices s into subslices after each instance of sep and
    // returns a slice of those subslices.
    // If sep is empty, SplitAfterN splits after each UTF-8 sequence.
    // The count determines the number of subslices to return:
    //   n > 0: at most n subslices; the last subslice will be the unsplit remainder.
    //   n == 0: the result is nil (zero subslices)
    //   n < 0: all subslices
**/
function splitAfterN(_s:Slice<GoByte>, _sep:Slice<GoByte>, _n:GoInt):Slice<Slice<GoByte>> {
        return _genSplit(_s, _sep, (_sep != null ? _sep.length : ((0 : GoInt))), _n);
    }
/**
    // Split slices s into all subslices separated by sep and returns a slice of
    // the subslices between those separators.
    // If sep is empty, Split splits after each UTF-8 sequence.
    // It is equivalent to SplitN with a count of -1.
    //
    // To split around the first instance of a separator, see Cut.
**/
function split(_s:Slice<GoByte>, _sep:Slice<GoByte>):Slice<Slice<GoByte>> {
        return _genSplit(_s, _sep, ((0 : GoInt)), ((-1 : GoInt)));
    }
/**
    // SplitAfter slices s into all subslices after each instance of sep and
    // returns a slice of those subslices.
    // If sep is empty, SplitAfter splits after each UTF-8 sequence.
    // It is equivalent to SplitAfterN with a count of -1.
**/
function splitAfter(_s:Slice<GoByte>, _sep:Slice<GoByte>):Slice<Slice<GoByte>> {
        return _genSplit(_s, _sep, (_sep != null ? _sep.length : ((0 : GoInt))), ((-1 : GoInt)));
    }
/**
    // Fields interprets s as a sequence of UTF-8-encoded code points.
    // It splits the slice s around each instance of one or more consecutive white space
    // characters, as defined by unicode.IsSpace, returning a slice of subslices of s or an
    // empty slice if s contains only white space.
**/
function fields(_s:Slice<GoByte>):Slice<Slice<GoByte>> {
        var _n:GoInt = ((0 : GoInt));
        var _wasSpace:GoInt = ((1 : GoInt));
        var _setBits:GoUInt8 = ((((0 : GoUInt8)) : GoUInt8));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i++, {
                var _r:GoUInt8 = (_s != null ? _s[_i] : ((0 : GoUInt8)));
                _setBits = _setBits | (_r);
                var _isSpace:GoInt = (((_asciiSpace != null ? _asciiSpace[_r] : ((0 : GoUInt8))) : GoInt));
                _n = _n + (_wasSpace & (-1 ^ _isSpace));
                _wasSpace = _isSpace;
            });
        };
        if (_setBits >= ((128 : GoUInt8))) {
            return fieldsFunc(_s, stdgo.unicode.Unicode.isSpace);
        };
        var _a = new Slice<Slice<GoUInt8>>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((null : Slice<GoUInt8>))]);
        var _na:GoInt = ((0 : GoInt));
        var _fieldStart:GoInt = ((0 : GoInt));
        var _i:GoInt = ((0 : GoInt));
        while ((_i < (_s != null ? _s.length : ((0 : GoInt)))) && ((_asciiSpace != null ? _asciiSpace[(_s != null ? _s[_i] : ((0 : GoUInt8)))] : ((0 : GoUInt8))) != ((0 : GoUInt8)))) {
            _i++;
        };
        _fieldStart = _i;
        while (_i < (_s != null ? _s.length : ((0 : GoInt)))) {
            if ((_asciiSpace != null ? _asciiSpace[(_s != null ? _s[_i] : ((0 : GoUInt8)))] : ((0 : GoUInt8))) == ((0 : GoUInt8))) {
                _i++;
                continue;
            };
            if (_a != null) _a[_na] = ((_s.__slice__(_fieldStart, _i) : Slice<GoUInt8>)).__setCap__(((_i : GoInt)) - ((1 : GoInt)));
            _na++;
            _i++;
            while ((_i < (_s != null ? _s.length : ((0 : GoInt)))) && ((_asciiSpace != null ? _asciiSpace[(_s != null ? _s[_i] : ((0 : GoUInt8)))] : ((0 : GoUInt8))) != ((0 : GoUInt8)))) {
                _i++;
            };
            _fieldStart = _i;
        };
        if (_fieldStart < (_s != null ? _s.length : ((0 : GoInt)))) {
            if (_a != null) _a[_na] = ((_s.__slice__(_fieldStart, (_s != null ? _s.length : ((0 : GoInt)))) : Slice<GoUInt8>)).__setCap__((((_s != null ? _s.length : ((0 : GoInt))) : GoInt)) - ((1 : GoInt)));
        };
        return _a;
    }
@:structInit class T_span_fieldsFunc_0 {
    public var _start : GoInt = ((0 : GoInt));
    public var _end : GoInt = ((0 : GoInt));
    public function new(?_start:GoInt, ?_end:GoInt) {
        if (_start != null) this._start = _start;
        if (_end != null) this._end = _end;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_span_fieldsFunc_0(_start, _end);
    }
}
/**
    // FieldsFunc interprets s as a sequence of UTF-8-encoded code points.
    // It splits the slice s at each run of code points c satisfying f(c) and
    // returns a slice of subslices of s. If all code points in s satisfy f(c), or
    // len(s) == 0, an empty slice is returned.
    //
    // FieldsFunc makes no guarantees about the order in which it calls f(c)
    // and assumes that f always returns the same value for a given c.
**/
function fieldsFunc(_s:Slice<GoByte>, _f:GoRune -> Bool):Slice<Slice<GoByte>> {
        {};
        var _spans = new Slice<T_span_fieldsFunc_0>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new T_span_fieldsFunc_0()]).__setCap__(((((32 : GoInt)) : GoInt)).toBasic());
        var _start:GoInt = ((-1 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            while (_i < (_s != null ? _s.length : ((0 : GoInt)))) {
                var _size:GoInt = ((1 : GoInt));
                var _r:GoInt32 = (((_s != null ? _s[_i] : ((0 : GoUInt8))) : GoRune));
                if (_r >= ((128 : GoInt32))) {
                    {
                        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_s.__slice__(_i) : Slice<GoUInt8>)));
                        _r = __tmp__._0;
                        _size = __tmp__._1;
                    };
                };
                if (_f(_r)) {
                    if (_start >= ((0 : GoInt))) {
                        _spans = (_spans != null ? _spans.__append__(((new T_span_fieldsFunc_0(_start, _i) : T_span_fieldsFunc_0))) : new Slice<T_span_fieldsFunc_0>(((new T_span_fieldsFunc_0(_start, _i) : T_span_fieldsFunc_0))));
                        _start = ((-1 : GoInt));
                    };
                } else {
                    if (_start < ((0 : GoInt))) {
                        _start = _i;
                    };
                };
                _i = _i + (_size);
            };
        };
        if (_start >= ((0 : GoInt))) {
            _spans = (_spans != null ? _spans.__append__(((new T_span_fieldsFunc_0(_start, (_s != null ? _s.length : ((0 : GoInt)))) : T_span_fieldsFunc_0))) : new Slice<T_span_fieldsFunc_0>(((new T_span_fieldsFunc_0(_start, (_s != null ? _s.length : ((0 : GoInt)))) : T_span_fieldsFunc_0))));
        };
        var _a = new Slice<Slice<GoUInt8>>(...[for (i in 0 ... (((_spans != null ? _spans.length : ((0 : GoInt))) : GoInt)).toBasic()) ((null : Slice<GoUInt8>))]);
        for (_i => _span in _spans) {
            if (_a != null) _a[_i] = ((_s.__slice__(_span._start, _span._end) : Slice<GoUInt8>)).__setCap__(((_span._end : GoInt)) - ((1 : GoInt)));
        };
        return _a;
    }
/**
    // Join concatenates the elements of s to create a new byte slice. The separator
    // sep is placed between elements in the resulting slice.
**/
function join(_s:Slice<Slice<GoByte>>, _sep:Slice<GoByte>):Slice<GoByte> {
        if ((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return ((new Slice<GoByte>() : Slice<GoByte>));
        };
        if ((_s != null ? _s.length : ((0 : GoInt))) == ((1 : GoInt))) {
            return (((((null : Slice<GoUInt8>)) : Slice<GoByte>)) != null ? ((((null : Slice<GoUInt8>)) : Slice<GoByte>)).__append__(...(_s != null ? _s[((0 : GoInt))] : ((null : Slice<GoUInt8>))).__toArray__()) : new Slice<GoUInt8>(...(_s != null ? _s[((0 : GoInt))] : ((null : Slice<GoUInt8>))).__toArray__()));
        };
        var _n:GoInt = (_sep != null ? _sep.length : ((0 : GoInt))) * ((_s != null ? _s.length : ((0 : GoInt))) - ((1 : GoInt)));
        for (_0 => _v in _s) {
            _n = _n + ((_v != null ? _v.length : ((0 : GoInt))));
        };
        var _b = new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _bp:GoInt = Go.copySlice(_b, (_s != null ? _s[((0 : GoInt))] : ((null : Slice<GoUInt8>))));
        for (_1 => _v in ((_s.__slice__(((1 : GoInt))) : Slice<Slice<GoUInt8>>))) {
            _bp = _bp + (Go.copySlice(((_b.__slice__(_bp) : Slice<GoUInt8>)), _sep));
            _bp = _bp + (Go.copySlice(((_b.__slice__(_bp) : Slice<GoUInt8>)), _v));
        };
        return _b;
    }
/**
    // HasPrefix tests whether the byte slice s begins with prefix.
**/
function hasPrefix(_s:Slice<GoByte>, _prefix:Slice<GoByte>):Bool {
        return ((_s != null ? _s.length : ((0 : GoInt))) >= (_prefix != null ? _prefix.length : ((0 : GoInt)))) && equal(((_s.__slice__(((0 : GoInt)), (_prefix != null ? _prefix.length : ((0 : GoInt)))) : Slice<GoUInt8>)), _prefix);
    }
/**
    // HasSuffix tests whether the byte slice s ends with suffix.
**/
function hasSuffix(_s:Slice<GoByte>, _suffix:Slice<GoByte>):Bool {
        return ((_s != null ? _s.length : ((0 : GoInt))) >= (_suffix != null ? _suffix.length : ((0 : GoInt)))) && equal(((_s.__slice__((_s != null ? _s.length : ((0 : GoInt))) - (_suffix != null ? _suffix.length : ((0 : GoInt)))) : Slice<GoUInt8>)), _suffix);
    }
/**
    // Map returns a copy of the byte slice s with all its characters modified
    // according to the mapping function. If mapping returns a negative value, the character is
    // dropped from the byte slice with no replacement. The characters in s and the
    // output are interpreted as UTF-8-encoded code points.
**/
function map(_mapping:(_r:GoRune) -> GoRune, _s:Slice<GoByte>):Slice<GoByte> {
        var _maxbytes:GoInt = (_s != null ? _s.length : ((0 : GoInt)));
        var _nbytes:GoInt = ((0 : GoInt));
        var _b = new Slice<GoUInt8>(...[for (i in 0 ... ((_maxbytes : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var _i:GoInt = ((0 : GoInt));
            while (_i < (_s != null ? _s.length : ((0 : GoInt)))) {
                var _wid:GoInt = ((1 : GoInt));
                var _r:GoInt32 = (((_s != null ? _s[_i] : ((0 : GoUInt8))) : GoRune));
                if (_r >= ((128 : GoInt32))) {
                    {
                        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_s.__slice__(_i) : Slice<GoUInt8>)));
                        _r = __tmp__._0;
                        _wid = __tmp__._1;
                    };
                };
                _r = _mapping(_r);
                if (_r >= ((0 : GoInt32))) {
                    var _rl:GoInt = stdgo.unicode.utf8.Utf8.runeLen(_r);
                    if (_rl < ((0 : GoInt))) {
                        _rl = (((((65533 : GoInt32)) : GoString)) != null ? ((((65533 : GoInt32)) : GoString)).length : ((0 : GoInt)));
                    };
                    if ((_nbytes + _rl) > _maxbytes) {
                        _maxbytes = (_maxbytes * ((2 : GoInt))) + ((4 : GoInt));
                        var _nb = new Slice<GoUInt8>(...[for (i in 0 ... ((_maxbytes : GoInt)).toBasic()) ((0 : GoUInt8))]);
                        Go.copySlice(_nb, ((_b.__slice__(((0 : GoInt)), _nbytes) : Slice<GoUInt8>)));
                        _b = _nb;
                    };
                    _nbytes = _nbytes + (stdgo.unicode.utf8.Utf8.encodeRune(((_b.__slice__(_nbytes, _maxbytes) : Slice<GoUInt8>)), _r));
                };
                _i = _i + (_wid);
            };
        };
        return ((_b.__slice__(((0 : GoInt)), _nbytes) : Slice<GoUInt8>));
    }
/**
    // Repeat returns a new byte slice consisting of count copies of b.
    //
    // It panics if count is negative or if
    // the result of (len(b) * count) overflows.
**/
function repeat(_b:Slice<GoByte>, _count:GoInt):Slice<GoByte> {
        if (_count == ((0 : GoInt))) {
            return ((new Slice<GoByte>() : Slice<GoByte>));
        };
        if (_count < ((0 : GoInt))) {
            throw Go.toInterface(((("bytes: negative Repeat count" : GoString))));
        } else if ((((_b != null ? _b.length : ((0 : GoInt))) * _count) / _count) != (_b != null ? _b.length : ((0 : GoInt)))) {
            throw Go.toInterface(((("bytes: Repeat count causes overflow" : GoString))));
        };
        var _nb = new Slice<GoUInt8>(...[for (i in 0 ... (((_b != null ? _b.length : ((0 : GoInt))) * _count : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _bp:GoInt = Go.copySlice(_nb, _b);
        while (_bp < (_nb != null ? _nb.length : ((0 : GoInt)))) {
            Go.copySlice(((_nb.__slice__(_bp) : Slice<GoUInt8>)), ((_nb.__slice__(0, _bp) : Slice<GoUInt8>)));
            _bp = _bp * (((2 : GoInt)));
        };
        return _nb;
    }
/**
    // ToUpper returns a copy of the byte slice s with all Unicode letters mapped to
    // their upper case.
**/
function toUpper(_s:Slice<GoByte>):Slice<GoByte> {
        var _isASCII:Bool = true, _hasLower:Bool = false;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i++, {
                var _c:GoUInt8 = (_s != null ? _s[_i] : ((0 : GoUInt8)));
                if (_c >= ((128 : GoUInt8))) {
                    _isASCII = false;
                    break;
                };
                _hasLower = _hasLower || ((((((("a" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("z" : GoString))).code : GoRune))));
            });
        };
        if (_isASCII) {
            if (!_hasLower) {
                return (((((("" : GoString))) : Slice<GoByte>)) != null ? ((((("" : GoString))) : Slice<GoByte>)).__append__(..._s.__toArray__()) : new Slice<GoUInt8>(..._s.__toArray__()));
            };
            var _b = new Slice<GoUInt8>(...[for (i in 0 ... (((_s != null ? _s.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i++, {
                    var _c:GoUInt8 = (_s != null ? _s[_i] : ((0 : GoUInt8)));
                    if ((((((("a" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("z" : GoString))).code : GoRune)))) {
                        _c = _c - (((32 : GoUInt8)));
                    };
                    if (_b != null) _b[_i] = _c;
                });
            };
            return _b;
        };
        return map(stdgo.unicode.Unicode.toUpper, _s);
    }
/**
    // ToLower returns a copy of the byte slice s with all Unicode letters mapped to
    // their lower case.
**/
function toLower(_s:Slice<GoByte>):Slice<GoByte> {
        var _isASCII:Bool = true, _hasUpper:Bool = false;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i++, {
                var _c:GoUInt8 = (_s != null ? _s[_i] : ((0 : GoUInt8)));
                if (_c >= ((128 : GoUInt8))) {
                    _isASCII = false;
                    break;
                };
                _hasUpper = _hasUpper || ((((((("A" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("Z" : GoString))).code : GoRune))));
            });
        };
        if (_isASCII) {
            if (!_hasUpper) {
                return (((((("" : GoString))) : Slice<GoByte>)) != null ? ((((("" : GoString))) : Slice<GoByte>)).__append__(..._s.__toArray__()) : new Slice<GoUInt8>(..._s.__toArray__()));
            };
            var _b = new Slice<GoUInt8>(...[for (i in 0 ... (((_s != null ? _s.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < (_s != null ? _s.length : ((0 : GoInt))), _i++, {
                    var _c:GoUInt8 = (_s != null ? _s[_i] : ((0 : GoUInt8)));
                    if ((((((("A" : GoString))).code : GoRune)) <= _c) && (_c <= ((((("Z" : GoString))).code : GoRune)))) {
                        _c = _c + (((32 : GoUInt8)));
                    };
                    if (_b != null) _b[_i] = _c;
                });
            };
            return _b;
        };
        return map(stdgo.unicode.Unicode.toLower, _s);
    }
/**
    // ToTitle treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their title case.
**/
function toTitle(_s:Slice<GoByte>):Slice<GoByte> {
        return map(stdgo.unicode.Unicode.toTitle, _s);
    }
/**
    // ToUpperSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
    // upper case, giving priority to the special casing rules.
**/
function toUpperSpecial(_c:stdgo.unicode.Unicode.SpecialCase, _s:Slice<GoByte>):Slice<GoByte> {
        return map(_c.toUpper, _s);
    }
/**
    // ToLowerSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
    // lower case, giving priority to the special casing rules.
**/
function toLowerSpecial(_c:stdgo.unicode.Unicode.SpecialCase, _s:Slice<GoByte>):Slice<GoByte> {
        return map(_c.toLower, _s);
    }
/**
    // ToTitleSpecial treats s as UTF-8-encoded bytes and returns a copy with all the Unicode letters mapped to their
    // title case, giving priority to the special casing rules.
**/
function toTitleSpecial(_c:stdgo.unicode.Unicode.SpecialCase, _s:Slice<GoByte>):Slice<GoByte> {
        return map(_c.toTitle, _s);
    }
/**
    // ToValidUTF8 treats s as UTF-8-encoded bytes and returns a copy with each run of bytes
    // representing invalid UTF-8 replaced with the bytes in replacement, which may be empty.
**/
function toValidUTF8(_s:Slice<GoByte>, _replacement:Slice<GoByte>):Slice<GoByte> {
        var _b = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__((((_s != null ? _s.length : ((0 : GoInt))) + (_replacement != null ? _replacement.length : ((0 : GoInt))) : GoInt)).toBasic());
        var _invalid:Bool = false;
        {
            var _i:GoInt = ((0 : GoInt));
            while (_i < (_s != null ? _s.length : ((0 : GoInt)))) {
                var _c:GoUInt8 = (_s != null ? _s[_i] : ((0 : GoUInt8)));
                if (_c < ((128 : GoUInt8))) {
                    _i++;
                    _invalid = false;
                    _b = (_b != null ? _b.__append__(_c) : new Slice<GoUInt8>(_c));
                    continue;
                };
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_s.__slice__(_i) : Slice<GoUInt8>))), _0:GoInt32 = __tmp__._0, _wid:GoInt = __tmp__._1;
                if (_wid == ((1 : GoInt))) {
                    _i++;
                    if (!_invalid) {
                        _invalid = true;
                        _b = (_b != null ? _b.__append__(..._replacement.__toArray__()) : new Slice<GoUInt8>(..._replacement.__toArray__()));
                    };
                    continue;
                };
                _invalid = false;
                _b = (_b != null ? _b.__append__(...((_s.__slice__(_i, _i + _wid) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_s.__slice__(_i, _i + _wid) : Slice<GoUInt8>)).__toArray__()));
                _i = _i + (_wid);
            };
        };
        return _b;
    }
/**
    // isSeparator reports whether the rune could mark a word boundary.
    // TODO: update when package unicode captures more of the properties.
**/
function _isSeparator(_r:GoRune):Bool {
        if (_r <= ((127 : GoInt32))) {
            if ((((((("0" : GoString))).code : GoRune)) <= _r) && (_r <= ((((("9" : GoString))).code : GoRune)))) {
                return false;
            } else if ((((((("a" : GoString))).code : GoRune)) <= _r) && (_r <= ((((("z" : GoString))).code : GoRune)))) {
                return false;
            } else if ((((((("A" : GoString))).code : GoRune)) <= _r) && (_r <= ((((("Z" : GoString))).code : GoRune)))) {
                return false;
            } else if (_r == ((((("_" : GoString))).code : GoRune))) {
                return false;
            };
            return true;
        };
        if (stdgo.unicode.Unicode.isLetter(_r) || stdgo.unicode.Unicode.isDigit(_r)) {
            return false;
        };
        return stdgo.unicode.Unicode.isSpace(_r);
    }
/**
    // Title treats s as UTF-8-encoded bytes and returns a copy with all Unicode letters that begin
    // words mapped to their title case.
    //
    // Deprecated: The rule Title uses for word boundaries does not handle Unicode
    // punctuation properly. Use golang.org/x/text/cases instead.
**/
function title(_s:Slice<GoByte>):Slice<GoByte> {
        var _prev:GoInt32 = (((((" " : GoString))).code : GoRune));
        return map(function(_r:GoRune):GoRune {
            if (_isSeparator(_prev)) {
                _prev = _r;
                return stdgo.unicode.Unicode.toTitle(_r);
            };
            _prev = _r;
            return _r;
        }, _s);
    }
/**
    // TrimLeftFunc treats s as UTF-8-encoded bytes and returns a subslice of s by slicing off
    // all leading UTF-8-encoded code points c that satisfy f(c).
**/
function trimLeftFunc(_s:Slice<GoByte>, _f:(_r:GoRune) -> Bool):Slice<GoByte> {
        var _i:GoInt = _indexFunc(_s, _f, false);
        if (_i == ((-1 : GoInt))) {
            return ((null : Slice<GoUInt8>));
        };
        return ((_s.__slice__(_i) : Slice<GoUInt8>));
    }
/**
    // TrimRightFunc returns a subslice of s by slicing off all trailing
    // UTF-8-encoded code points c that satisfy f(c).
**/
function trimRightFunc(_s:Slice<GoByte>, _f:(_r:GoRune) -> Bool):Slice<GoByte> {
        var _i:GoInt = _lastIndexFunc(_s, _f, false);
        if ((_i >= ((0 : GoInt))) && ((_s != null ? _s[_i] : ((0 : GoUInt8))) >= ((128 : GoUInt8)))) {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_s.__slice__(_i) : Slice<GoUInt8>))), _0:GoInt32 = __tmp__._0, _wid:GoInt = __tmp__._1;
            _i = _i + (_wid);
        } else {
            _i++;
        };
        return ((_s.__slice__(((0 : GoInt)), _i) : Slice<GoUInt8>));
    }
/**
    // TrimFunc returns a subslice of s by slicing off all leading and trailing
    // UTF-8-encoded code points c that satisfy f(c).
**/
function trimFunc(_s:Slice<GoByte>, _f:(_r:GoRune) -> Bool):Slice<GoByte> {
        return trimRightFunc(trimLeftFunc(_s, _f), _f);
    }
/**
    // TrimPrefix returns s without the provided leading prefix string.
    // If s doesn't start with prefix, s is returned unchanged.
**/
function trimPrefix(_s:Slice<GoByte>, _prefix:Slice<GoByte>):Slice<GoByte> {
        if (hasPrefix(_s, _prefix)) {
            return ((_s.__slice__((_prefix != null ? _prefix.length : ((0 : GoInt)))) : Slice<GoUInt8>));
        };
        return _s;
    }
/**
    // TrimSuffix returns s without the provided trailing suffix string.
    // If s doesn't end with suffix, s is returned unchanged.
**/
function trimSuffix(_s:Slice<GoByte>, _suffix:Slice<GoByte>):Slice<GoByte> {
        if (hasSuffix(_s, _suffix)) {
            return ((_s.__slice__(0, (_s != null ? _s.length : ((0 : GoInt))) - (_suffix != null ? _suffix.length : ((0 : GoInt)))) : Slice<GoUInt8>));
        };
        return _s;
    }
/**
    // IndexFunc interprets s as a sequence of UTF-8-encoded code points.
    // It returns the byte index in s of the first Unicode
    // code point satisfying f(c), or -1 if none do.
**/
function indexFunc(_s:Slice<GoByte>, _f:(_r:GoRune) -> Bool):GoInt {
        return _indexFunc(_s, _f, true);
    }
/**
    // LastIndexFunc interprets s as a sequence of UTF-8-encoded code points.
    // It returns the byte index in s of the last Unicode
    // code point satisfying f(c), or -1 if none do.
**/
function lastIndexFunc(_s:Slice<GoByte>, _f:(_r:GoRune) -> Bool):GoInt {
        return _lastIndexFunc(_s, _f, true);
    }
/**
    // indexFunc is the same as IndexFunc except that if
    // truth==false, the sense of the predicate function is
    // inverted.
**/
function _indexFunc(_s:Slice<GoByte>, _f:(_r:GoRune) -> Bool, _truth:Bool):GoInt {
        var _start:GoInt = ((0 : GoInt));
        while (_start < (_s != null ? _s.length : ((0 : GoInt)))) {
            var _wid:GoInt = ((1 : GoInt));
            var _r:GoInt32 = (((_s != null ? _s[_start] : ((0 : GoUInt8))) : GoRune));
            if (_r >= ((128 : GoInt32))) {
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_s.__slice__(_start) : Slice<GoUInt8>)));
                    _r = __tmp__._0;
                    _wid = __tmp__._1;
                };
            };
            if (_f(_r) == _truth) {
                return _start;
            };
            _start = _start + (_wid);
        };
        return ((-1 : GoInt));
    }
/**
    // lastIndexFunc is the same as LastIndexFunc except that if
    // truth==false, the sense of the predicate function is
    // inverted.
**/
function _lastIndexFunc(_s:Slice<GoByte>, _f:(_r:GoRune) -> Bool, _truth:Bool):GoInt {
        {
            var _i:GoInt = (_s != null ? _s.length : ((0 : GoInt)));
            while (_i > ((0 : GoInt))) {
                var _r:GoInt32 = (((_s != null ? _s[_i - ((1 : GoInt))] : ((0 : GoUInt8))) : GoRune)), _size:GoInt = ((1 : GoInt));
                if (_r >= ((128 : GoInt32))) {
                    {
                        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRune(((_s.__slice__(((0 : GoInt)), _i) : Slice<GoUInt8>)));
                        _r = __tmp__._0;
                        _size = __tmp__._1;
                    };
                };
                _i = _i - (_size);
                if (_f(_r) == _truth) {
                    return _i;
                };
            };
        };
        return ((-1 : GoInt));
    }
/**
    // makeASCIISet creates a set of ASCII characters and reports whether all
    // characters in chars are ASCII.
**/
function _makeASCIISet(_chars:GoString):{ var _0 : T_asciiSet; var _1 : Bool; } {
        var _as:T_asciiSet = new T_asciiSet(), _ok:Bool = false;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (_chars != null ? _chars.length : ((0 : GoInt))), _i++, {
                var _c:GoUInt8 = (_chars != null ? _chars[_i] : ((0 : GoUInt8)));
                if (_c >= ((128 : GoUInt8))) {
                    return { _0 : (_as == null ? null : _as.__copy__()), _1 : false };
                };
                if (_as != null) (_as != null ? _as[_c / ((32 : GoUInt8))] : ((0 : GoUInt32))) | (((1 : GoUInt32)) << (_c % ((32 : GoUInt8))));
            });
        };
        return { _0 : (_as == null ? null : _as.__copy__()), _1 : true };
    }
/**
    // containsRune is a simplified version of strings.ContainsRune
    // to avoid importing the strings package.
    // We avoid bytes.ContainsRune to avoid allocating a temporary copy of s.
**/
function _containsRune(_s:GoString, _r:GoRune):Bool {
        for (_0 => _c in _s) {
            if (_c == _r) {
                return true;
            };
        };
        return false;
    }
/**
    // Trim returns a subslice of s by slicing off all leading and
    // trailing UTF-8-encoded code points contained in cutset.
**/
function trim(_s:Slice<GoByte>, _cutset:GoString):Slice<GoByte> {
        if ((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return ((null : Slice<GoUInt8>));
        };
        if (_cutset == ((("" : GoString)))) {
            return _s;
        };
        if (((_cutset != null ? _cutset.length : ((0 : GoInt))) == ((1 : GoInt))) && ((_cutset != null ? _cutset[((0 : GoInt))] : ((0 : GoUInt8))) < ((128 : GoUInt8)))) {
            return _trimLeftByte(_trimRightByte(_s, (_cutset != null ? _cutset[((0 : GoInt))] : ((0 : GoUInt8)))), (_cutset != null ? _cutset[((0 : GoInt))] : ((0 : GoUInt8))));
        };
        {
            var __tmp__ = _makeASCIISet(_cutset), _as:T_asciiSet = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _trimLeftASCII(_trimRightASCII(_s, _as), _as);
            };
        };
        return _trimLeftUnicode(_trimRightUnicode(_s, _cutset), _cutset);
    }
/**
    // TrimLeft returns a subslice of s by slicing off all leading
    // UTF-8-encoded code points contained in cutset.
**/
function trimLeft(_s:Slice<GoByte>, _cutset:GoString):Slice<GoByte> {
        if ((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return ((null : Slice<GoUInt8>));
        };
        if (_cutset == ((("" : GoString)))) {
            return _s;
        };
        if (((_cutset != null ? _cutset.length : ((0 : GoInt))) == ((1 : GoInt))) && ((_cutset != null ? _cutset[((0 : GoInt))] : ((0 : GoUInt8))) < ((128 : GoUInt8)))) {
            return _trimLeftByte(_s, (_cutset != null ? _cutset[((0 : GoInt))] : ((0 : GoUInt8))));
        };
        {
            var __tmp__ = _makeASCIISet(_cutset), _as:T_asciiSet = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _trimLeftASCII(_s, _as);
            };
        };
        return _trimLeftUnicode(_s, _cutset);
    }
function _trimLeftByte(_s:Slice<GoByte>, _c:GoByte):Slice<GoByte> {
        while (((_s != null ? _s.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) == _c)) {
            _s = ((_s.__slice__(((1 : GoInt))) : Slice<GoUInt8>));
        };
        if ((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return ((null : Slice<GoUInt8>));
        };
        return _s;
    }
function _trimLeftASCII(_s:Slice<GoByte>, _as:T_asciiSet):Slice<GoByte> {
        while ((_s != null ? _s.length : ((0 : GoInt))) > ((0 : GoInt))) {
            if (!_as._contains((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))))) {
                break;
            };
            _s = ((_s.__slice__(((1 : GoInt))) : Slice<GoUInt8>));
        };
        if ((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return ((null : Slice<GoUInt8>));
        };
        return _s;
    }
function _trimLeftUnicode(_s:Slice<GoByte>, _cutset:GoString):Slice<GoByte> {
        while ((_s != null ? _s.length : ((0 : GoInt))) > ((0 : GoInt))) {
            var _r:GoInt32 = (((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) : GoRune)), _n:GoInt = ((1 : GoInt));
            if (_r >= ((128 : GoInt32))) {
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_s);
                    _r = __tmp__._0;
                    _n = __tmp__._1;
                };
            };
            if (!_containsRune(_cutset, _r)) {
                break;
            };
            _s = ((_s.__slice__(_n) : Slice<GoUInt8>));
        };
        if ((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return ((null : Slice<GoUInt8>));
        };
        return _s;
    }
/**
    // TrimRight returns a subslice of s by slicing off all trailing
    // UTF-8-encoded code points that are contained in cutset.
**/
function trimRight(_s:Slice<GoByte>, _cutset:GoString):Slice<GoByte> {
        if (((_s != null ? _s.length : ((0 : GoInt))) == ((0 : GoInt))) || (_cutset == ((("" : GoString))))) {
            return _s;
        };
        if (((_cutset != null ? _cutset.length : ((0 : GoInt))) == ((1 : GoInt))) && ((_cutset != null ? _cutset[((0 : GoInt))] : ((0 : GoUInt8))) < ((128 : GoUInt8)))) {
            return _trimRightByte(_s, (_cutset != null ? _cutset[((0 : GoInt))] : ((0 : GoUInt8))));
        };
        {
            var __tmp__ = _makeASCIISet(_cutset), _as:T_asciiSet = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _trimRightASCII(_s, _as);
            };
        };
        return _trimRightUnicode(_s, _cutset);
    }
function _trimRightByte(_s:Slice<GoByte>, _c:GoByte):Slice<GoByte> {
        while (((_s != null ? _s.length : ((0 : GoInt))) > ((0 : GoInt))) && ((_s != null ? _s[(_s != null ? _s.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) == _c)) {
            _s = ((_s.__slice__(0, (_s != null ? _s.length : ((0 : GoInt))) - ((1 : GoInt))) : Slice<GoUInt8>));
        };
        return _s;
    }
function _trimRightASCII(_s:Slice<GoByte>, _as:T_asciiSet):Slice<GoByte> {
        while ((_s != null ? _s.length : ((0 : GoInt))) > ((0 : GoInt))) {
            if (!_as._contains((_s != null ? _s[(_s != null ? _s.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))))) {
                break;
            };
            _s = ((_s.__slice__(0, (_s != null ? _s.length : ((0 : GoInt))) - ((1 : GoInt))) : Slice<GoUInt8>));
        };
        return _s;
    }
function _trimRightUnicode(_s:Slice<GoByte>, _cutset:GoString):Slice<GoByte> {
        while ((_s != null ? _s.length : ((0 : GoInt))) > ((0 : GoInt))) {
            var _r:GoInt32 = (((_s != null ? _s[(_s != null ? _s.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8))) : GoRune)), _n:GoInt = ((1 : GoInt));
            if (_r >= ((128 : GoInt32))) {
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRune(_s);
                    _r = __tmp__._0;
                    _n = __tmp__._1;
                };
            };
            if (!_containsRune(_cutset, _r)) {
                break;
            };
            _s = ((_s.__slice__(0, (_s != null ? _s.length : ((0 : GoInt))) - _n) : Slice<GoUInt8>));
        };
        return _s;
    }
/**
    // TrimSpace returns a subslice of s by slicing off all leading and
    // trailing white space, as defined by Unicode.
**/
function trimSpace(_s:Slice<GoByte>):Slice<GoByte> {
        var _start:GoInt = ((0 : GoInt));
        Go.cfor(_start < (_s != null ? _s.length : ((0 : GoInt))), _start++, {
            var _c:GoUInt8 = (_s != null ? _s[_start] : ((0 : GoUInt8)));
            if (_c >= ((128 : GoUInt8))) {
                return trimFunc(((_s.__slice__(_start) : Slice<GoUInt8>)), stdgo.unicode.Unicode.isSpace);
            };
            if ((_asciiSpace != null ? _asciiSpace[_c] : ((0 : GoUInt8))) == ((0 : GoUInt8))) {
                break;
            };
        });
        var _stop:GoInt = (_s != null ? _s.length : ((0 : GoInt)));
        Go.cfor(_stop > _start, _stop--, {
            var _c:GoUInt8 = (_s != null ? _s[_stop - ((1 : GoInt))] : ((0 : GoUInt8)));
            if (_c >= ((128 : GoUInt8))) {
                return trimFunc(((_s.__slice__(_start, _stop) : Slice<GoUInt8>)), stdgo.unicode.Unicode.isSpace);
            };
            if ((_asciiSpace != null ? _asciiSpace[_c] : ((0 : GoUInt8))) == ((0 : GoUInt8))) {
                break;
            };
        });
        if (_start == _stop) {
            return ((null : Slice<GoUInt8>));
        };
        return ((_s.__slice__(_start, _stop) : Slice<GoUInt8>));
    }
/**
    // Runes interprets s as a sequence of UTF-8-encoded code points.
    // It returns a slice of runes (Unicode code points) equivalent to s.
**/
function runes(_s:Slice<GoByte>):Slice<GoRune> {
        var _t = new Slice<GoInt32>(...[for (i in 0 ... ((stdgo.unicode.utf8.Utf8.runeCount(_s) : GoInt)).toBasic()) ((0 : GoInt32))]);
        var _i:GoInt = ((0 : GoInt));
        while ((_s != null ? _s.length : ((0 : GoInt))) > ((0 : GoInt))) {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_s), _r:GoInt32 = __tmp__._0, _l:GoInt = __tmp__._1;
            if (_t != null) _t[_i] = _r;
            _i++;
            _s = ((_s.__slice__(_l) : Slice<GoUInt8>));
        };
        return _t;
    }
/**
    // Replace returns a copy of the slice s with the first n
    // non-overlapping instances of old replaced by new.
    // If old is empty, it matches at the beginning of the slice
    // and after each UTF-8 sequence, yielding up to k+1 replacements
    // for a k-rune slice.
    // If n < 0, there is no limit on the number of replacements.
**/
function replace(_s:Slice<GoByte>, _old:Slice<GoByte>, _new:Slice<GoByte>, _n:GoInt):Slice<GoByte> {
        var _m:GoInt = ((0 : GoInt));
        if (_n != ((0 : GoInt))) {
            _m = count(_s, _old);
        };
        if (_m == ((0 : GoInt))) {
            return (((((null : Slice<GoUInt8>)) : Slice<GoByte>)) != null ? ((((null : Slice<GoUInt8>)) : Slice<GoByte>)).__append__(..._s.__toArray__()) : new Slice<GoUInt8>(..._s.__toArray__()));
        };
        if ((_n < ((0 : GoInt))) || (_m < _n)) {
            _n = _m;
        };
        var _t = new Slice<GoUInt8>(...[for (i in 0 ... (((_s != null ? _s.length : ((0 : GoInt))) + (_n * ((_new != null ? _new.length : ((0 : GoInt))) - (_old != null ? _old.length : ((0 : GoInt))))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _w:GoInt = ((0 : GoInt));
        var _start:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                var _j:GoInt = _start;
                if ((_old != null ? _old.length : ((0 : GoInt))) == ((0 : GoInt))) {
                    if (_i > ((0 : GoInt))) {
                        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_s.__slice__(_start) : Slice<GoUInt8>))), _0:GoInt32 = __tmp__._0, _wid:GoInt = __tmp__._1;
                        _j = _j + (_wid);
                    };
                } else {
                    _j = _j + (index(((_s.__slice__(_start) : Slice<GoUInt8>)), _old));
                };
                _w = _w + (Go.copySlice(((_t.__slice__(_w) : Slice<GoUInt8>)), ((_s.__slice__(_start, _j) : Slice<GoUInt8>))));
                _w = _w + (Go.copySlice(((_t.__slice__(_w) : Slice<GoUInt8>)), _new));
                _start = _j + (_old != null ? _old.length : ((0 : GoInt)));
            });
        };
        _w = _w + (Go.copySlice(((_t.__slice__(_w) : Slice<GoUInt8>)), ((_s.__slice__(_start) : Slice<GoUInt8>))));
        return ((_t.__slice__(((0 : GoInt)), _w) : Slice<GoUInt8>));
    }
/**
    // ReplaceAll returns a copy of the slice s with all
    // non-overlapping instances of old replaced by new.
    // If old is empty, it matches at the beginning of the slice
    // and after each UTF-8 sequence, yielding up to k+1 replacements
    // for a k-rune slice.
**/
function replaceAll(_s:Slice<GoByte>, _old:Slice<GoByte>, _new:Slice<GoByte>):Slice<GoByte> {
        return replace(_s, _old, _new, ((-1 : GoInt)));
    }
/**
    // EqualFold reports whether s and t, interpreted as UTF-8 strings,
    // are equal under Unicode case-folding, which is a more general
    // form of case-insensitivity.
**/
function equalFold(_s:Slice<GoByte>, _t:Slice<GoByte>):Bool {
        while (((_s != null ? _s.length : ((0 : GoInt))) != ((0 : GoInt))) && ((_t != null ? _t.length : ((0 : GoInt))) != ((0 : GoInt)))) {
            var _sr:GoRune = ((0 : GoInt32)), _tr:GoRune = ((0 : GoInt32));
            if ((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) < ((128 : GoUInt8))) {
                {
                    final __tmp__0 = (((_s != null ? _s[((0 : GoInt))] : ((0 : GoUInt8))) : GoRune));
                    final __tmp__1 = ((_s.__slice__(((1 : GoInt))) : Slice<GoUInt8>));
                    _sr = __tmp__0;
                    _s = __tmp__1;
                };
            } else {
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_s), _r:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
                {
                    final __tmp__0 = _r;
                    final __tmp__1 = ((_s.__slice__(_size) : Slice<GoUInt8>));
                    _sr = __tmp__0;
                    _s = __tmp__1;
                };
            };
            if ((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) < ((128 : GoUInt8))) {
                {
                    final __tmp__0 = (((_t != null ? _t[((0 : GoInt))] : ((0 : GoUInt8))) : GoRune));
                    final __tmp__1 = ((_t.__slice__(((1 : GoInt))) : Slice<GoUInt8>));
                    _tr = __tmp__0;
                    _t = __tmp__1;
                };
            } else {
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_t), _r:GoInt32 = __tmp__._0, _size:GoInt = __tmp__._1;
                {
                    final __tmp__0 = _r;
                    final __tmp__1 = ((_t.__slice__(_size) : Slice<GoUInt8>));
                    _tr = __tmp__0;
                    _t = __tmp__1;
                };
            };
            if (_tr == _sr) {
                continue;
            };
            if (_tr < _sr) {
                {
                    final __tmp__0 = _sr;
                    final __tmp__1 = _tr;
                    _tr = __tmp__0;
                    _sr = __tmp__1;
                };
            };
            if (_tr < ((128 : GoInt32))) {
                if (((((((("A" : GoString))).code : GoRune)) <= _sr) && (_sr <= ((((("Z" : GoString))).code : GoRune)))) && (_tr == ((_sr + ((((("a" : GoString))).code : GoRune))) - ((((("A" : GoString))).code : GoRune))))) {
                    continue;
                };
                return false;
            };
            var _r:GoInt32 = stdgo.unicode.Unicode.simpleFold(_sr);
            while ((_r != _sr) && (_r < _tr)) {
                _r = stdgo.unicode.Unicode.simpleFold(_r);
            };
            if (_r == _tr) {
                continue;
            };
            return false;
        };
        return (_s != null ? _s.length : ((0 : GoInt))) == (_t != null ? _t.length : ((0 : GoInt)));
    }
/**
    // Index returns the index of the first instance of sep in s, or -1 if sep is not present in s.
**/
function index(_s:Slice<GoByte>, _sep:Slice<GoByte>):GoInt {
        var _n:GoInt = (_sep != null ? _sep.length : ((0 : GoInt)));
        if (_n == ((0 : GoInt))) {
            return ((0 : GoInt));
        } else if (_n == ((1 : GoInt))) {
            return indexByte(_s, (_sep != null ? _sep[((0 : GoInt))] : ((0 : GoUInt8))));
        } else if (_n == (_s != null ? _s.length : ((0 : GoInt)))) {
            if (equal(_sep, _s)) {
                return ((0 : GoInt));
            };
            return ((-1 : GoInt));
        } else if (_n > (_s != null ? _s.length : ((0 : GoInt)))) {
            return ((-1 : GoInt));
        } else if (_n <= stdgo.internal.bytealg.Bytealg.maxLen) {
            if ((_s != null ? _s.length : ((0 : GoInt))) <= ((0 : GoInt))) {
                return stdgo.internal.bytealg.Bytealg.index(_s, _sep);
            };
            var _c0:GoUInt8 = (_sep != null ? _sep[((0 : GoInt))] : ((0 : GoUInt8)));
            var _c1:GoUInt8 = (_sep != null ? _sep[((1 : GoInt))] : ((0 : GoUInt8)));
            var _i:GoInt = ((0 : GoInt));
            var _t:GoInt = ((_s != null ? _s.length : ((0 : GoInt))) - _n) + ((1 : GoInt));
            var _fails:GoInt = ((0 : GoInt));
            while (_i < _t) {
                if ((_s != null ? _s[_i] : ((0 : GoUInt8))) != _c0) {
                    var _o:GoInt = indexByte(((_s.__slice__(_i + ((1 : GoInt)), _t) : Slice<GoUInt8>)), _c0);
                    if (_o < ((0 : GoInt))) {
                        return ((-1 : GoInt));
                    };
                    _i = _i + (_o + ((1 : GoInt)));
                };
                if (((_s != null ? _s[_i + ((1 : GoInt))] : ((0 : GoUInt8))) == _c1) && equal(((_s.__slice__(_i, _i + _n) : Slice<GoUInt8>)), _sep)) {
                    return _i;
                };
                _fails++;
                _i++;
                if (_fails > stdgo.internal.bytealg.Bytealg.cutover(_i)) {
                    var _r:GoInt = stdgo.internal.bytealg.Bytealg.index(((_s.__slice__(_i) : Slice<GoUInt8>)), _sep);
                    if (_r >= ((0 : GoInt))) {
                        return _r + _i;
                    };
                    return ((-1 : GoInt));
                };
            };
            return ((-1 : GoInt));
        };
        var _c0:GoUInt8 = (_sep != null ? _sep[((0 : GoInt))] : ((0 : GoUInt8)));
        var _c1:GoUInt8 = (_sep != null ? _sep[((1 : GoInt))] : ((0 : GoUInt8)));
        var _i:GoInt = ((0 : GoInt));
        var _fails:GoInt = ((0 : GoInt));
        var _t:GoInt = ((_s != null ? _s.length : ((0 : GoInt))) - _n) + ((1 : GoInt));
        while (_i < _t) {
            if ((_s != null ? _s[_i] : ((0 : GoUInt8))) != _c0) {
                var _o:GoInt = indexByte(((_s.__slice__(_i + ((1 : GoInt)), _t) : Slice<GoUInt8>)), _c0);
                if (_o < ((0 : GoInt))) {
                    break;
                };
                _i = _i + (_o + ((1 : GoInt)));
            };
            if (((_s != null ? _s[_i + ((1 : GoInt))] : ((0 : GoUInt8))) == _c1) && equal(((_s.__slice__(_i, _i + _n) : Slice<GoUInt8>)), _sep)) {
                return _i;
            };
            _i++;
            _fails++;
            if ((_fails >= (((4 : GoInt)) + (_i >> ((4 : GoUnTypedInt))))) && (_i < _t)) {
                var _j:GoInt = stdgo.internal.bytealg.Bytealg.indexRabinKarpBytes(((_s.__slice__(_i) : Slice<GoUInt8>)), _sep);
                if (_j < ((0 : GoInt))) {
                    return ((-1 : GoInt));
                };
                return _i + _j;
            };
        };
        return ((-1 : GoInt));
    }
/**
    // Cut slices s around the first instance of sep,
    // returning the text before and after sep.
    // The found result reports whether sep appears in s.
    // If sep does not appear in s, cut returns s, nil, false.
    //
    // Cut returns slices of the original slice s, not copies.
**/
function cut(_s:Slice<GoByte>, _sep:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : Slice<GoByte>; var _2 : Bool; } {
        var _before:Slice<GoByte> = ((null : Slice<GoUInt8>)), _after:Slice<GoByte> = ((null : Slice<GoUInt8>)), _found:Bool = false;
        {
            var _i:GoInt = index(_s, _sep);
            if (_i >= ((0 : GoInt))) {
                return { _0 : ((_s.__slice__(0, _i) : Slice<GoUInt8>)), _1 : ((_s.__slice__(_i + (_sep != null ? _sep.length : ((0 : GoInt)))) : Slice<GoUInt8>)), _2 : true };
            };
        };
        return { _0 : _s, _1 : ((null : Slice<GoUInt8>)), _2 : false };
    }
/**
    // NewReader returns a new Reader reading from b.
**/
function newReader(_b:Slice<GoByte>):Reader {
        return ((new Reader(_b, ((0 : GoInt64)), ((-1 : GoInt))) : Reader));
    }
@:keep class Buffer_static_extension {
    /**
        // ReadString reads until the first occurrence of delim in the input,
        // returning a string containing the data up to and including the delimiter.
        // If ReadString encounters an error before finding a delimiter,
        // it returns the data read before the error and the error itself (often io.EOF).
        // ReadString returns err != nil if and only if the returned data does not end
        // in delim.
    **/
    @:keep
    public static function readString( _b:Buffer, _delim:GoByte):{ var _0 : GoString; var _1 : Error; } {
        var _line:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        var __tmp__ = _b._readSlice(_delim), _slice:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : ((_slice : GoString)), _1 : _err };
    }
    /**
        // readSlice is like ReadBytes but returns a reference to internal buffer data.
    **/
    @:keep
    public static function _readSlice( _b:Buffer, _delim:GoByte):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _line:Slice<GoByte> = ((null : Slice<GoUInt8>)), _err:Error = ((null : stdgo.Error));
        var _i:GoInt = indexByte(((_b._buf.__slice__(_b._off) : Slice<GoUInt8>)), _delim);
        var _end:GoInt = (_b._off + _i) + ((1 : GoInt));
        if (_i < ((0 : GoInt))) {
            _end = (_b._buf != null ? _b._buf.length : ((0 : GoInt)));
            _err = stdgo.io.Io.eof;
        };
        _line = ((_b._buf.__slice__(_b._off, _end) : Slice<GoUInt8>));
        _b._off = _end;
        _b._lastRead = ((-1 : GoInt8));
        return { _0 : _line, _1 : _err };
    }
    /**
        // ReadBytes reads until the first occurrence of delim in the input,
        // returning a slice containing the data up to and including the delimiter.
        // If ReadBytes encounters an error before finding a delimiter,
        // it returns the data read before the error and the error itself (often io.EOF).
        // ReadBytes returns err != nil if and only if the returned data does not end in
        // delim.
    **/
    @:keep
    public static function readBytes( _b:Buffer, _delim:GoByte):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _line:Slice<GoByte> = ((null : Slice<GoUInt8>)), _err:Error = ((null : stdgo.Error));
        var __tmp__ = _b._readSlice(_delim), _slice:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        _line = (_line != null ? _line.__append__(..._slice.__toArray__()) : new Slice<GoUInt8>(..._slice.__toArray__()));
        return { _0 : _line, _1 : _err };
    }
    /**
        // UnreadByte unreads the last byte returned by the most recent successful
        // read operation that read at least one byte. If a write has happened since
        // the last read, if the last read returned an error, or if the read read zero
        // bytes, UnreadByte returns an error.
    **/
    @:keep
    public static function unreadByte( _b:Buffer):Error {
        if (_b._lastRead == ((0 : GoInt8))) {
            return _errUnreadByte;
        };
        _b._lastRead = ((0 : GoInt8));
        if (_b._off > ((0 : GoInt))) {
            _b._off--;
        };
        return ((null : stdgo.Error));
    }
    /**
        // UnreadRune unreads the last rune returned by ReadRune.
        // If the most recent read or write operation on the buffer was
        // not a successful ReadRune, UnreadRune returns an error.  (In this regard
        // it is stricter than UnreadByte, which will unread the last byte
        // from any read operation.)
    **/
    @:keep
    public static function unreadRune( _b:Buffer):Error {
        if (_b._lastRead <= ((0 : GoInt8))) {
            return stdgo.errors.Errors.new_(((("bytes.Buffer: UnreadRune: previous operation was not a successful ReadRune" : GoString))));
        };
        if (_b._off >= ((_b._lastRead : GoInt))) {
            _b._off = _b._off - (((_b._lastRead : GoInt)));
        };
        _b._lastRead = ((0 : GoInt8));
        return ((null : stdgo.Error));
    }
    /**
        // ReadRune reads and returns the next UTF-8-encoded
        // Unicode code point from the buffer.
        // If no bytes are available, the error returned is io.EOF.
        // If the bytes are an erroneous UTF-8 encoding, it
        // consumes one byte and returns U+FFFD, 1.
    **/
    @:keep
    public static function readRune( _b:Buffer):{ var _0 : GoRune; var _1 : GoInt; var _2 : Error; } {
        var _r:GoRune = ((0 : GoInt32)), _size:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_b._empty()) {
            _b.reset();
            return { _0 : ((0 : GoInt32)), _1 : ((0 : GoInt)), _2 : stdgo.io.Io.eof };
        };
        var _c:GoUInt8 = (_b._buf != null ? _b._buf[_b._off] : ((0 : GoUInt8)));
        if (_c < ((128 : GoUInt8))) {
            _b._off++;
            _b._lastRead = ((1 : GoInt8));
            return { _0 : ((_c : GoRune)), _1 : ((1 : GoInt)), _2 : ((null : stdgo.Error)) };
        };
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_b._buf.__slice__(_b._off) : Slice<GoUInt8>))), _r:GoInt32 = __tmp__._0, _n:GoInt = __tmp__._1;
        _b._off = _b._off + (_n);
        _b._lastRead = ((_n : T_readOp));
        return { _0 : _r, _1 : _n, _2 : ((null : stdgo.Error)) };
    }
    /**
        // ReadByte reads and returns the next byte from the buffer.
        // If no byte is available, it returns error io.EOF.
    **/
    @:keep
    public static function readByte( _b:Buffer):{ var _0 : GoByte; var _1 : Error; } {
        if (_b._empty()) {
            _b.reset();
            return { _0 : ((0 : GoUInt8)), _1 : stdgo.io.Io.eof };
        };
        var _c:GoUInt8 = (_b._buf != null ? _b._buf[_b._off] : ((0 : GoUInt8)));
        _b._off++;
        _b._lastRead = ((-1 : GoInt8));
        return { _0 : _c, _1 : ((null : stdgo.Error)) };
    }
    /**
        // Next returns a slice containing the next n bytes from the buffer,
        // advancing the buffer as if the bytes had been returned by Read.
        // If there are fewer than n bytes in the buffer, Next returns the entire buffer.
        // The slice is only valid until the next call to a read or write method.
    **/
    @:keep
    public static function next( _b:Buffer, _n:GoInt):Slice<GoByte> {
        _b._lastRead = ((0 : GoInt8));
        var _m:GoInt = _b.len();
        if (_n > _m) {
            _n = _m;
        };
        var _data = ((_b._buf.__slice__(_b._off, _b._off + _n) : Slice<GoUInt8>));
        _b._off = _b._off + (_n);
        if (_n > ((0 : GoInt))) {
            _b._lastRead = ((-1 : GoInt8));
        };
        return _data;
    }
    /**
        // Read reads the next len(p) bytes from the buffer or until the buffer
        // is drained. The return value n is the number of bytes read. If the
        // buffer has no data to return, err is io.EOF (unless len(p) is zero);
        // otherwise it is nil.
    **/
    @:keep
    public static function read( _b:Buffer, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _b._lastRead = ((0 : GoInt8));
        if (_b._empty()) {
            _b.reset();
            if ((_p != null ? _p.length : ((0 : GoInt))) == ((0 : GoInt))) {
                return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
            };
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
        };
        _n = Go.copySlice(_p, ((_b._buf.__slice__(_b._off) : Slice<GoUInt8>)));
        _b._off = _b._off + (_n);
        if (_n > ((0 : GoInt))) {
            _b._lastRead = ((-1 : GoInt8));
        };
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    /**
        // WriteRune appends the UTF-8 encoding of Unicode code point r to the
        // buffer, returning its length and an error, which is always nil but is
        // included to match bufio.Writer's WriteRune. The buffer is grown as needed;
        // if it becomes too large, WriteRune will panic with ErrTooLarge.
    **/
    @:keep
    public static function writeRune( _b:Buffer, _r:GoRune):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (((_r : GoUInt32)) < ((128 : GoUInt32))) {
            _b.writeByte(((_r : GoByte)));
            return { _0 : ((1 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        _b._lastRead = ((0 : GoInt8));
        var __tmp__ = _b._tryGrowByReslice(((4 : GoInt))), _m:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = _b._grow(((4 : GoInt)));
        };
        _n = stdgo.unicode.utf8.Utf8.encodeRune(((_b._buf.__slice__(_m, _m + ((4 : GoInt))) : Slice<GoUInt8>)), _r);
        _b._buf = ((_b._buf.__slice__(0, _m + _n) : Slice<GoUInt8>));
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    /**
        // WriteByte appends the byte c to the buffer, growing the buffer as needed.
        // The returned error is always nil, but is included to match bufio.Writer's
        // WriteByte. If the buffer becomes too large, WriteByte will panic with
        // ErrTooLarge.
    **/
    @:keep
    public static function writeByte( _b:Buffer, _c:GoByte):Error {
        _b._lastRead = ((0 : GoInt8));
        var __tmp__ = _b._tryGrowByReslice(((1 : GoInt))), _m:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = _b._grow(((1 : GoInt)));
        };
        if (_b._buf != null) _b._buf[_m] = _c;
        return ((null : stdgo.Error));
    }
    /**
        // WriteTo writes data to w until the buffer is drained or an error occurs.
        // The return value n is the number of bytes written; it always fits into an
        // int, but it is int64 to match the io.WriterTo interface. Any error
        // encountered during the write is also returned.
    **/
    @:keep
    public static function writeTo( _b:Buffer, _w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        _b._lastRead = ((0 : GoInt8));
        {
            var _nBytes:GoInt = _b.len();
            if (_nBytes > ((0 : GoInt))) {
                var __tmp__ = _w.write(((_b._buf.__slice__(_b._off) : Slice<GoUInt8>))), _m:GoInt = __tmp__._0, _e:stdgo.Error = __tmp__._1;
                if (_m > _nBytes) {
                    throw Go.toInterface(((("bytes.Buffer.WriteTo: invalid Write count" : GoString))));
                };
                _b._off = _b._off + (_m);
                _n = ((_m : GoInt64));
                if (_e != null) {
                    return { _0 : _n, _1 : _e };
                };
                if (_m != _nBytes) {
                    return { _0 : _n, _1 : stdgo.io.Io.errShortWrite };
                };
            };
        };
        _b.reset();
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    /**
        // ReadFrom reads data from r until EOF and appends it to the buffer, growing
        // the buffer as needed. The return value n is the number of bytes read. Any
        // error except io.EOF encountered during the read is also returned. If the
        // buffer becomes too large, ReadFrom will panic with ErrTooLarge.
    **/
    @:keep
    public static function readFrom( _b:Buffer, _r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : Error; } {
        var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        _b._lastRead = ((0 : GoInt8));
        while (true) {
            var _i:GoInt = _b._grow(((512 : GoInt)));
            _b._buf = ((_b._buf.__slice__(0, _i) : Slice<GoUInt8>));
            var __tmp__ = _r.read(((_b._buf.__slice__(_i, (_b._buf != null ? _b._buf.cap() : ((0 : GoInt)))) : Slice<GoUInt8>))), _m:GoInt = __tmp__._0, _e:stdgo.Error = __tmp__._1;
            if (_m < ((0 : GoInt))) {
                throw Go.toInterface(_errNegativeRead);
            };
            _b._buf = ((_b._buf.__slice__(0, _i + _m) : Slice<GoUInt8>));
            _n = _n + (((_m : GoInt64)));
            if (_e == stdgo.io.Io.eof) {
                return { _0 : _n, _1 : ((null : stdgo.Error)) };
            };
            if (_e != null) {
                return { _0 : _n, _1 : _e };
            };
        };
    }
    /**
        // WriteString appends the contents of s to the buffer, growing the buffer as
        // needed. The return value n is the length of s; err is always nil. If the
        // buffer becomes too large, WriteString will panic with ErrTooLarge.
    **/
    @:keep
    public static function writeString( _b:Buffer, _s:GoString):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _b._lastRead = ((0 : GoInt8));
        var __tmp__ = _b._tryGrowByReslice((_s != null ? _s.length : ((0 : GoInt)))), _m:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = _b._grow((_s != null ? _s.length : ((0 : GoInt))));
        };
        return { _0 : Go.copySlice(((_b._buf.__slice__(_m) : Slice<GoUInt8>)), _s), _1 : ((null : stdgo.Error)) };
    }
    /**
        // Write appends the contents of p to the buffer, growing the buffer as
        // needed. The return value n is the length of p; err is always nil. If the
        // buffer becomes too large, Write will panic with ErrTooLarge.
    **/
    @:keep
    public static function write( _b:Buffer, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _b._lastRead = ((0 : GoInt8));
        var __tmp__ = _b._tryGrowByReslice((_p != null ? _p.length : ((0 : GoInt)))), _m:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _m = _b._grow((_p != null ? _p.length : ((0 : GoInt))));
        };
        return { _0 : Go.copySlice(((_b._buf.__slice__(_m) : Slice<GoUInt8>)), _p), _1 : ((null : stdgo.Error)) };
    }
    /**
        // Grow grows the buffer's capacity, if necessary, to guarantee space for
        // another n bytes. After Grow(n), at least n bytes can be written to the
        // buffer without another allocation.
        // If n is negative, Grow will panic.
        // If the buffer can't grow it will panic with ErrTooLarge.
    **/
    @:keep
    public static function grow( _b:Buffer, _n:GoInt):Void {
        if (_n < ((0 : GoInt))) {
            throw Go.toInterface(((("bytes.Buffer.Grow: negative count" : GoString))));
        };
        var _m:GoInt = _b._grow(_n);
        _b._buf = ((_b._buf.__slice__(0, _m) : Slice<GoUInt8>));
    }
    /**
        // grow grows the buffer to guarantee space for n more bytes.
        // It returns the index where bytes should be written.
        // If the buffer can't grow it will panic with ErrTooLarge.
    **/
    @:keep
    public static function _grow( _b:Buffer, _n:GoInt):GoInt {
        var _m:GoInt = _b.len();
        if ((_m == ((0 : GoInt))) && (_b._off != ((0 : GoInt)))) {
            _b.reset();
        };
        {
            var __tmp__ = _b._tryGrowByReslice(_n), _i:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _i;
            };
        };
        if ((_b._buf == null) && (_n <= ((64 : GoInt)))) {
            _b._buf = new Slice<GoUInt8>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((64 : GoInt)) : GoInt)).toBasic());
            return ((0 : GoInt));
        };
        var _c:GoInt = (_b._buf != null ? _b._buf.cap() : ((0 : GoInt)));
        if (_n <= ((_c / ((2 : GoInt))) - _m)) {
            Go.copySlice(_b._buf, ((_b._buf.__slice__(_b._off) : Slice<GoUInt8>)));
        } else if (_c > ((((2147483647 : GoInt)) - _c) - _n)) {
            throw Go.toInterface(errTooLarge);
        } else {
            var _buf = _makeSlice((((2 : GoInt)) * _c) + _n);
            Go.copySlice(_buf, ((_b._buf.__slice__(_b._off) : Slice<GoUInt8>)));
            _b._buf = _buf;
        };
        _b._off = ((0 : GoInt));
        _b._buf = ((_b._buf.__slice__(0, _m + _n) : Slice<GoUInt8>));
        return _m;
    }
    /**
        // tryGrowByReslice is a inlineable version of grow for the fast-case where the
        // internal buffer only needs to be resliced.
        // It returns the index where bytes should be written and whether it succeeded.
    **/
    @:keep
    public static function _tryGrowByReslice( _b:Buffer, _n:GoInt):{ var _0 : GoInt; var _1 : Bool; } {
        {
            var _l:GoInt = (_b._buf != null ? _b._buf.length : ((0 : GoInt)));
            if (_n <= ((_b._buf != null ? _b._buf.cap() : ((0 : GoInt))) - _l)) {
                _b._buf = ((_b._buf.__slice__(0, _l + _n) : Slice<GoUInt8>));
                return { _0 : _l, _1 : true };
            };
        };
        return { _0 : ((0 : GoInt)), _1 : false };
    }
    /**
        // Reset resets the buffer to be empty,
        // but it retains the underlying storage for use by future writes.
        // Reset is the same as Truncate(0).
    **/
    @:keep
    public static function reset( _b:Buffer):Void {
        _b._buf = ((_b._buf.__slice__(0, ((0 : GoInt))) : Slice<GoUInt8>));
        _b._off = ((0 : GoInt));
        _b._lastRead = ((0 : GoInt8));
    }
    /**
        // Truncate discards all but the first n unread bytes from the buffer
        // but continues to use the same allocated storage.
        // It panics if n is negative or greater than the length of the buffer.
    **/
    @:keep
    public static function truncate( _b:Buffer, _n:GoInt):Void {
        if (_n == ((0 : GoInt))) {
            _b.reset();
            return;
        };
        _b._lastRead = ((0 : GoInt8));
        if ((_n < ((0 : GoInt))) || (_n > _b.len())) {
            throw Go.toInterface(((("bytes.Buffer: truncation out of range" : GoString))));
        };
        _b._buf = ((_b._buf.__slice__(0, _b._off + _n) : Slice<GoUInt8>));
    }
    /**
        // Cap returns the capacity of the buffer's underlying byte slice, that is, the
        // total space allocated for the buffer's data.
    **/
    @:keep
    public static function cap_( _b:Buffer):GoInt {
        return (_b._buf != null ? _b._buf.cap() : ((0 : GoInt)));
    }
    /**
        // Len returns the number of bytes of the unread portion of the buffer;
        // b.Len() == len(b.Bytes()).
    **/
    @:keep
    public static function len( _b:Buffer):GoInt {
        return (_b._buf != null ? _b._buf.length : ((0 : GoInt))) - _b._off;
    }
    /**
        // empty reports whether the unread portion of the buffer is empty.
    **/
    @:keep
    public static function _empty( _b:Buffer):Bool {
        return (_b._buf != null ? _b._buf.length : ((0 : GoInt))) <= _b._off;
    }
    /**
        // String returns the contents of the unread portion of the buffer
        // as a string. If the Buffer is a nil pointer, it returns "<nil>".
        //
        // To build strings more efficiently, see the strings.Builder type.
    **/
    @:keep
    public static function toString( _b:Buffer):GoString {
        if (_b == null) {
            return ((("<nil>" : GoString)));
        };
        return ((((_b._buf.__slice__(_b._off) : Slice<GoUInt8>)) : GoString));
    }
    /**
        // Bytes returns a slice of length b.Len() holding the unread portion of the buffer.
        // The slice is valid for use only until the next buffer modification (that is,
        // only until the next call to a method like Read, Write, Reset, or Truncate).
        // The slice aliases the buffer content at least until the next buffer modification,
        // so immediate changes to the slice will affect the result of future reads.
    **/
    @:keep
    public static function bytes( _b:Buffer):Slice<GoByte> {
        return ((_b._buf.__slice__(_b._off) : Slice<GoUInt8>));
    }
}
class Buffer_wrapper {
    /**
        // ReadString reads until the first occurrence of delim in the input,
        // returning a string containing the data up to and including the delimiter.
        // If ReadString encounters an error before finding a delimiter,
        // it returns the data read before the error and the error itself (often io.EOF).
        // ReadString returns err != nil if and only if the returned data does not end
        // in delim.
    **/
    @:keep
    public var readString : GoByte -> { var _0 : GoString; var _1 : Error; } = null;
    /**
        // readSlice is like ReadBytes but returns a reference to internal buffer data.
    **/
    @:keep
    public var _readSlice : GoByte -> { var _0 : Slice<GoByte>; var _1 : Error; } = null;
    /**
        // ReadBytes reads until the first occurrence of delim in the input,
        // returning a slice containing the data up to and including the delimiter.
        // If ReadBytes encounters an error before finding a delimiter,
        // it returns the data read before the error and the error itself (often io.EOF).
        // ReadBytes returns err != nil if and only if the returned data does not end in
        // delim.
    **/
    @:keep
    public var readBytes : GoByte -> { var _0 : Slice<GoByte>; var _1 : Error; } = null;
    /**
        // UnreadByte unreads the last byte returned by the most recent successful
        // read operation that read at least one byte. If a write has happened since
        // the last read, if the last read returned an error, or if the read read zero
        // bytes, UnreadByte returns an error.
    **/
    @:keep
    public var unreadByte : () -> Error = null;
    /**
        // UnreadRune unreads the last rune returned by ReadRune.
        // If the most recent read or write operation on the buffer was
        // not a successful ReadRune, UnreadRune returns an error.  (In this regard
        // it is stricter than UnreadByte, which will unread the last byte
        // from any read operation.)
    **/
    @:keep
    public var unreadRune : () -> Error = null;
    /**
        // ReadRune reads and returns the next UTF-8-encoded
        // Unicode code point from the buffer.
        // If no bytes are available, the error returned is io.EOF.
        // If the bytes are an erroneous UTF-8 encoding, it
        // consumes one byte and returns U+FFFD, 1.
    **/
    @:keep
    public var readRune : () -> { var _0 : GoRune; var _1 : GoInt; var _2 : Error; } = null;
    /**
        // ReadByte reads and returns the next byte from the buffer.
        // If no byte is available, it returns error io.EOF.
    **/
    @:keep
    public var readByte : () -> { var _0 : GoByte; var _1 : Error; } = null;
    /**
        // Next returns a slice containing the next n bytes from the buffer,
        // advancing the buffer as if the bytes had been returned by Read.
        // If there are fewer than n bytes in the buffer, Next returns the entire buffer.
        // The slice is only valid until the next call to a read or write method.
    **/
    @:keep
    public var next : GoInt -> Slice<GoByte> = null;
    /**
        // Read reads the next len(p) bytes from the buffer or until the buffer
        // is drained. The return value n is the number of bytes read. If the
        // buffer has no data to return, err is io.EOF (unless len(p) is zero);
        // otherwise it is nil.
    **/
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    /**
        // WriteRune appends the UTF-8 encoding of Unicode code point r to the
        // buffer, returning its length and an error, which is always nil but is
        // included to match bufio.Writer's WriteRune. The buffer is grown as needed;
        // if it becomes too large, WriteRune will panic with ErrTooLarge.
    **/
    @:keep
    public var writeRune : GoRune -> { var _0 : GoInt; var _1 : Error; } = null;
    /**
        // WriteByte appends the byte c to the buffer, growing the buffer as needed.
        // The returned error is always nil, but is included to match bufio.Writer's
        // WriteByte. If the buffer becomes too large, WriteByte will panic with
        // ErrTooLarge.
    **/
    @:keep
    public var writeByte : GoByte -> Error = null;
    /**
        // WriteTo writes data to w until the buffer is drained or an error occurs.
        // The return value n is the number of bytes written; it always fits into an
        // int, but it is int64 to match the io.WriterTo interface. Any error
        // encountered during the write is also returned.
    **/
    @:keep
    public var writeTo : stdgo.io.Io.Writer -> { var _0 : GoInt64; var _1 : Error; } = null;
    /**
        // ReadFrom reads data from r until EOF and appends it to the buffer, growing
        // the buffer as needed. The return value n is the number of bytes read. Any
        // error except io.EOF encountered during the read is also returned. If the
        // buffer becomes too large, ReadFrom will panic with ErrTooLarge.
    **/
    @:keep
    public var readFrom : stdgo.io.Io.Reader -> { var _0 : GoInt64; var _1 : Error; } = null;
    /**
        // WriteString appends the contents of s to the buffer, growing the buffer as
        // needed. The return value n is the length of s; err is always nil. If the
        // buffer becomes too large, WriteString will panic with ErrTooLarge.
    **/
    @:keep
    public var writeString : GoString -> { var _0 : GoInt; var _1 : Error; } = null;
    /**
        // Write appends the contents of p to the buffer, growing the buffer as
        // needed. The return value n is the length of p; err is always nil. If the
        // buffer becomes too large, Write will panic with ErrTooLarge.
    **/
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    /**
        // Grow grows the buffer's capacity, if necessary, to guarantee space for
        // another n bytes. After Grow(n), at least n bytes can be written to the
        // buffer without another allocation.
        // If n is negative, Grow will panic.
        // If the buffer can't grow it will panic with ErrTooLarge.
    **/
    @:keep
    public var grow : GoInt -> Void = null;
    /**
        // grow grows the buffer to guarantee space for n more bytes.
        // It returns the index where bytes should be written.
        // If the buffer can't grow it will panic with ErrTooLarge.
    **/
    @:keep
    public var _grow : GoInt -> GoInt = null;
    /**
        // tryGrowByReslice is a inlineable version of grow for the fast-case where the
        // internal buffer only needs to be resliced.
        // It returns the index where bytes should be written and whether it succeeded.
    **/
    @:keep
    public var _tryGrowByReslice : GoInt -> { var _0 : GoInt; var _1 : Bool; } = null;
    /**
        // Reset resets the buffer to be empty,
        // but it retains the underlying storage for use by future writes.
        // Reset is the same as Truncate(0).
    **/
    @:keep
    public var reset : () -> Void = null;
    /**
        // Truncate discards all but the first n unread bytes from the buffer
        // but continues to use the same allocated storage.
        // It panics if n is negative or greater than the length of the buffer.
    **/
    @:keep
    public var truncate : GoInt -> Void = null;
    /**
        // Cap returns the capacity of the buffer's underlying byte slice, that is, the
        // total space allocated for the buffer's data.
    **/
    @:keep
    public var cap_ : () -> GoInt = null;
    /**
        // Len returns the number of bytes of the unread portion of the buffer;
        // b.Len() == len(b.Bytes()).
    **/
    @:keep
    public var len : () -> GoInt = null;
    /**
        // empty reports whether the unread portion of the buffer is empty.
    **/
    @:keep
    public var _empty : () -> Bool = null;
    /**
        // String returns the contents of the unread portion of the buffer
        // as a string. If the Buffer is a nil pointer, it returns "<nil>".
        //
        // To build strings more efficiently, see the strings.Builder type.
    **/
    @:keep
    public var toString : () -> GoString = null;
    /**
        // Bytes returns a slice of length b.Len() holding the unread portion of the buffer.
        // The slice is valid for use only until the next buffer modification (that is,
        // only until the next call to a method like Read, Write, Reset, or Truncate).
        // The slice aliases the buffer content at least until the next buffer modification,
        // so immediate changes to the slice will affect the result of future reads.
    **/
    @:keep
    public var bytes : () -> Slice<GoByte> = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Buffer;
}
@:keep class Reader_static_extension {
    /**
        // Reset resets the Reader to be reading from b.
    **/
    @:keep
    public static function reset( _r:Reader, _b:Slice<GoByte>):Void {
        {
            var __tmp__ = ((new Reader(_b, ((0 : GoInt64)), ((-1 : GoInt))) : Reader));
            _r._s = __tmp__._s;
            _r._i = __tmp__._i;
            _r._prevRune = __tmp__._prevRune;
        };
    }
    /**
        // WriteTo implements the io.WriterTo interface.
    **/
    @:keep
    public static function writeTo( _r:Reader, _w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : Error; } {
        var _n:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        _r._prevRune = ((-1 : GoInt));
        if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
            return { _0 : ((0 : GoInt64)), _1 : ((null : stdgo.Error)) };
        };
        var _b = ((_r._s.__slice__(_r._i) : Slice<GoUInt8>));
        var __tmp__ = _w.write(_b), _m:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_m > (_b != null ? _b.length : ((0 : GoInt)))) {
            throw Go.toInterface(((("bytes.Reader.WriteTo: invalid Write count" : GoString))));
        };
        _r._i = _r._i + (((_m : GoInt64)));
        _n = ((_m : GoInt64));
        if ((_m != (_b != null ? _b.length : ((0 : GoInt)))) && (_err == null)) {
            _err = stdgo.io.Io.errShortWrite;
        };
        return { _0 : _n, _1 : _err };
    }
    /**
        // Seek implements the io.Seeker interface.
    **/
    @:keep
    public static function seek( _r:Reader, _offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : Error; } {
        _r._prevRune = ((-1 : GoInt));
        var _abs:GoInt64 = ((0 : GoInt64));
        if (_whence == ((0 : GoInt))) {
            _abs = _offset;
        } else if (_whence == ((1 : GoInt))) {
            _abs = _r._i + _offset;
        } else if (_whence == ((2 : GoInt))) {
            _abs = (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64)) + _offset;
        } else {
            return { _0 : ((0 : GoInt64)), _1 : stdgo.errors.Errors.new_(((("bytes.Reader.Seek: invalid whence" : GoString)))) };
        };
        if (_abs < ((0 : GoInt64))) {
            return { _0 : ((0 : GoInt64)), _1 : stdgo.errors.Errors.new_(((("bytes.Reader.Seek: negative position" : GoString)))) };
        };
        _r._i = _abs;
        return { _0 : _abs, _1 : ((null : stdgo.Error)) };
    }
    /**
        // UnreadRune complements ReadRune in implementing the io.RuneScanner interface.
    **/
    @:keep
    public static function unreadRune( _r:Reader):Error {
        if (_r._i <= ((0 : GoInt64))) {
            return stdgo.errors.Errors.new_(((("bytes.Reader.UnreadRune: at beginning of slice" : GoString))));
        };
        if (_r._prevRune < ((0 : GoInt))) {
            return stdgo.errors.Errors.new_(((("bytes.Reader.UnreadRune: previous operation was not ReadRune" : GoString))));
        };
        _r._i = ((_r._prevRune : GoInt64));
        _r._prevRune = ((-1 : GoInt));
        return ((null : stdgo.Error));
    }
    /**
        // ReadRune implements the io.RuneReader interface.
    **/
    @:keep
    public static function readRune( _r:Reader):{ var _0 : GoRune; var _1 : GoInt; var _2 : Error; } {
        var _ch:GoRune = ((0 : GoInt32)), _size:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
            _r._prevRune = ((-1 : GoInt));
            return { _0 : ((0 : GoInt32)), _1 : ((0 : GoInt)), _2 : stdgo.io.Io.eof };
        };
        _r._prevRune = ((_r._i : GoInt));
        {
            var _c:GoUInt8 = (_r._s != null ? _r._s[_r._i] : ((0 : GoUInt8)));
            if (_c < ((128 : GoUInt8))) {
                _r._i++;
                return { _0 : ((_c : GoRune)), _1 : ((1 : GoInt)), _2 : ((null : stdgo.Error)) };
            };
        };
        {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(((_r._s.__slice__(_r._i) : Slice<GoUInt8>)));
            _ch = __tmp__._0;
            _size = __tmp__._1;
        };
        _r._i = _r._i + (((_size : GoInt64)));
        return { _0 : _ch, _1 : _size, _2 : _err };
    }
    /**
        // UnreadByte complements ReadByte in implementing the io.ByteScanner interface.
    **/
    @:keep
    public static function unreadByte( _r:Reader):Error {
        if (_r._i <= ((0 : GoInt64))) {
            return stdgo.errors.Errors.new_(((("bytes.Reader.UnreadByte: at beginning of slice" : GoString))));
        };
        _r._prevRune = ((-1 : GoInt));
        _r._i--;
        return ((null : stdgo.Error));
    }
    /**
        // ReadByte implements the io.ByteReader interface.
    **/
    @:keep
    public static function readByte( _r:Reader):{ var _0 : GoByte; var _1 : Error; } {
        _r._prevRune = ((-1 : GoInt));
        if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
            return { _0 : ((0 : GoUInt8)), _1 : stdgo.io.Io.eof };
        };
        var _b:GoUInt8 = (_r._s != null ? _r._s[_r._i] : ((0 : GoUInt8)));
        _r._i++;
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
    /**
        // ReadAt implements the io.ReaderAt interface.
    **/
    @:keep
    public static function readAt( _r:Reader, _b:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_off < ((0 : GoInt64))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_(((("bytes.Reader.ReadAt: negative offset" : GoString)))) };
        };
        if (_off >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
        };
        _n = Go.copySlice(_b, ((_r._s.__slice__(_off) : Slice<GoUInt8>)));
        if (_n < (_b != null ? _b.length : ((0 : GoInt)))) {
            _err = stdgo.io.Io.eof;
        };
        return { _0 : _n, _1 : _err };
    }
    /**
        // Read implements the io.Reader interface.
    **/
    @:keep
    public static function read( _r:Reader, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.io.Io.eof };
        };
        _r._prevRune = ((-1 : GoInt));
        _n = Go.copySlice(_b, ((_r._s.__slice__(_r._i) : Slice<GoUInt8>)));
        _r._i = _r._i + (((_n : GoInt64)));
        return { _0 : _n, _1 : _err };
    }
    /**
        // Size returns the original length of the underlying byte slice.
        // Size is the number of bytes available for reading via ReadAt.
        // The returned value is always the same and is not affected by calls
        // to any other method.
    **/
    @:keep
    public static function size( _r:Reader):GoInt64 {
        return (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64));
    }
    /**
        // Len returns the number of bytes of the unread portion of the
        // slice.
    **/
    @:keep
    public static function len( _r:Reader):GoInt {
        if (_r._i >= (((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64))) {
            return ((0 : GoInt));
        };
        return ((((((_r._s != null ? _r._s.length : ((0 : GoInt))) : GoInt64)) - _r._i) : GoInt));
    }
}
class Reader_wrapper {
    /**
        // Reset resets the Reader to be reading from b.
    **/
    @:keep
    public var reset : Slice<GoByte> -> Void = null;
    /**
        // WriteTo implements the io.WriterTo interface.
    **/
    @:keep
    public var writeTo : stdgo.io.Io.Writer -> { var _0 : GoInt64; var _1 : Error; } = null;
    /**
        // Seek implements the io.Seeker interface.
    **/
    @:keep
    public var seek : (GoInt64, GoInt) -> { var _0 : GoInt64; var _1 : Error; } = null;
    /**
        // UnreadRune complements ReadRune in implementing the io.RuneScanner interface.
    **/
    @:keep
    public var unreadRune : () -> Error = null;
    /**
        // ReadRune implements the io.RuneReader interface.
    **/
    @:keep
    public var readRune : () -> { var _0 : GoRune; var _1 : GoInt; var _2 : Error; } = null;
    /**
        // UnreadByte complements ReadByte in implementing the io.ByteScanner interface.
    **/
    @:keep
    public var unreadByte : () -> Error = null;
    /**
        // ReadByte implements the io.ByteReader interface.
    **/
    @:keep
    public var readByte : () -> { var _0 : GoByte; var _1 : Error; } = null;
    /**
        // ReadAt implements the io.ReaderAt interface.
    **/
    @:keep
    public var readAt : (Slice<GoByte>, GoInt64) -> { var _0 : GoInt; var _1 : Error; } = null;
    /**
        // Read implements the io.Reader interface.
    **/
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    /**
        // Size returns the original length of the underlying byte slice.
        // Size is the number of bytes available for reading via ReadAt.
        // The returned value is always the same and is not affected by calls
        // to any other method.
    **/
    @:keep
    public var size : () -> GoInt64 = null;
    /**
        // Len returns the number of bytes of the unread portion of the
        // slice.
    **/
    @:keep
    public var len : () -> GoInt = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Reader;
}
@:keep class T_asciiSet_static_extension {
    /**
        // contains reports whether c is inside the set.
    **/
    @:keep
    public static function _contains( _as:T_asciiSet, _c:GoByte):Bool {
        return ((_as != null ? _as[_c / ((32 : GoUInt8))] : ((0 : GoUInt32))) & (((1 : GoUInt32)) << (_c % ((32 : GoUInt8))))) != ((0 : GoUInt32));
    }
}
class T_asciiSet_wrapper {
    /**
        // contains reports whether c is inside the set.
    **/
    @:keep
    public var _contains : GoByte -> Bool = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_asciiSet;
}
