package stdgo._internal.strings;
@:keep @:allow(stdgo._internal.strings.Strings.Reader_asInterface) class Reader_static_extension {
    @:keep
    static public function reset( _r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>, _s:stdgo.GoString):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader> = _r;
        {
            var __tmp__ = (new stdgo._internal.strings.Strings_Reader.Reader(_s?.__copy__(), (0i64 : stdgo.GoInt64), (-1 : stdgo.GoInt)) : stdgo._internal.strings.Strings_Reader.Reader);
            (_r : stdgo._internal.strings.Strings_Reader.Reader)._s = __tmp__._s;
            (_r : stdgo._internal.strings.Strings_Reader.Reader)._i = __tmp__._i;
            (_r : stdgo._internal.strings.Strings_Reader.Reader)._prevRune = __tmp__._prevRune;
        };
    }
    @:keep
    static public function writeTo( _r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>, _w:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader> = _r;
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        _r._prevRune = (-1 : stdgo.GoInt);
        if ((_r._i >= (_r._s.length : stdgo.GoInt64) : Bool)) {
            return { _0 : _n = (0i64 : stdgo.GoInt64), _1 : _err = (null : stdgo.Error) };
        };
        var _s = ((_r._s.__slice__(_r._i) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.io.Io_writeString.writeString(_w, _s?.__copy__()), _m:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_m > (_s.length) : Bool)) {
            throw stdgo.Go.toInterface(("strings.Reader.WriteTo: invalid WriteString count" : stdgo.GoString));
        };
        _r._i = (_r._i + ((_m : stdgo.GoInt64)) : stdgo.GoInt64);
        _n = (_m : stdgo.GoInt64);
        if (((_m != (_s.length)) && (_err == null) : Bool)) {
            _err = stdgo._internal.io.Io_errShortWrite.errShortWrite;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function seek( _r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader> = _r;
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
                return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.errors.Errors_new_.new_(("strings.Reader.Seek: invalid whence" : stdgo.GoString)) };
            };
        };
        if ((_abs < (0i64 : stdgo.GoInt64) : Bool)) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.errors.Errors_new_.new_(("strings.Reader.Seek: negative position" : stdgo.GoString)) };
        };
        _r._i = _abs;
        return { _0 : _abs, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function unreadRune( _r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader> = _r;
        if ((_r._i <= (0i64 : stdgo.GoInt64) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("strings.Reader.UnreadRune: at beginning of string" : stdgo.GoString));
        };
        if ((_r._prevRune < (0 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("strings.Reader.UnreadRune: previous operation was not ReadRune" : stdgo.GoString));
        };
        _r._i = (_r._prevRune : stdgo.GoInt64);
        _r._prevRune = (-1 : stdgo.GoInt);
        return (null : stdgo.Error);
    }
    @:keep
    static public function readRune( _r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader> = _r;
        var _ch = (0 : stdgo.GoInt32), _size = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_r._i >= (_r._s.length : stdgo.GoInt64) : Bool)) {
            _r._prevRune = (-1 : stdgo.GoInt);
            return { _0 : _ch = (0 : stdgo.GoInt32), _1 : _size = (0 : stdgo.GoInt), _2 : _err = stdgo._internal.io.Io_eof.eof };
        };
        _r._prevRune = (_r._i : stdgo.GoInt);
        {
            var _c = (_r._s[(_r._i : stdgo.GoInt)] : stdgo.GoUInt8);
            if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                _r._i++;
                return { _0 : _ch = (_c : stdgo.GoInt32), _1 : _size = (1 : stdgo.GoInt), _2 : _err = (null : stdgo.Error) };
            };
        };
        {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString((_r._s.__slice__(_r._i) : stdgo.GoString)?.__copy__());
            _ch = __tmp__._0;
            _size = __tmp__._1;
        };
        _r._i = (_r._i + ((_size : stdgo.GoInt64)) : stdgo.GoInt64);
        return { _0 : _ch, _1 : _size, _2 : _err };
    }
    @:keep
    static public function unreadByte( _r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader> = _r;
        if ((_r._i <= (0i64 : stdgo.GoInt64) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("strings.Reader.UnreadByte: at beginning of string" : stdgo.GoString));
        };
        _r._prevRune = (-1 : stdgo.GoInt);
        _r._i--;
        return (null : stdgo.Error);
    }
    @:keep
    static public function readByte( _r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader> = _r;
        _r._prevRune = (-1 : stdgo.GoInt);
        if ((_r._i >= (_r._s.length : stdgo.GoInt64) : Bool)) {
            return { _0 : (0 : stdgo.GoUInt8), _1 : stdgo._internal.io.Io_eof.eof };
        };
        var _b = (_r._s[(_r._i : stdgo.GoInt)] : stdgo.GoUInt8);
        _r._i++;
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function readAt( _r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>, _b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_off < (0i64 : stdgo.GoInt64) : Bool)) {
            return { _0 : _n = (0 : stdgo.GoInt), _1 : _err = stdgo._internal.errors.Errors_new_.new_(("strings.Reader.ReadAt: negative offset" : stdgo.GoString)) };
        };
        if ((_off >= (_r._s.length : stdgo.GoInt64) : Bool)) {
            return { _0 : _n = (0 : stdgo.GoInt), _1 : _err = stdgo._internal.io.Io_eof.eof };
        };
        _n = stdgo.Go.copySlice(_b, (_r._s.__slice__(_off) : stdgo.GoString));
        if ((_n < (_b.length) : Bool)) {
            _err = stdgo._internal.io.Io_eof.eof;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function read( _r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_r._i >= (_r._s.length : stdgo.GoInt64) : Bool)) {
            return { _0 : _n = (0 : stdgo.GoInt), _1 : _err = stdgo._internal.io.Io_eof.eof };
        };
        _r._prevRune = (-1 : stdgo.GoInt);
        _n = stdgo.Go.copySlice(_b, (_r._s.__slice__(_r._i) : stdgo.GoString));
        _r._i = (_r._i + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function size( _r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader> = _r;
        return (_r._s.length : stdgo.GoInt64);
    }
    @:keep
    static public function len( _r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader> = _r;
        if ((_r._i >= (_r._s.length : stdgo.GoInt64) : Bool)) {
            return (0 : stdgo.GoInt);
        };
        return (((_r._s.length : stdgo.GoInt64) - _r._i : stdgo.GoInt64) : stdgo.GoInt);
    }
}
