package stdgo._internal.strings;
@:keep @:allow(stdgo._internal.strings.Strings.Reader_asInterface) class Reader_static_extension {
    @:keep
    @:tdfield
    static public function reset( _r:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>, _s:stdgo.GoString):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader> = _r;
        {
            var __tmp__ = (new stdgo._internal.strings.Strings_reader.Reader(_s?.__copy__(), (0i64 : stdgo.GoInt64), (-1 : stdgo.GoInt)) : stdgo._internal.strings.Strings_reader.Reader);
            var x = (_r : stdgo._internal.strings.Strings_reader.Reader);
            x._s = __tmp__?._s;
            x._i = __tmp__?._i;
            x._prevRune = __tmp__?._prevRune;
        };
    }
    @:keep
    @:tdfield
    static public function writeTo( _r:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>, _w:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader> = _r;
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        (@:checkr _r ?? throw "null pointer dereference")._prevRune = (-1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L139"
        if (((@:checkr _r ?? throw "null pointer dereference")._i >= ((@:checkr _r ?? throw "null pointer dereference")._s.length : stdgo.GoInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L140"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _s = (((@:checkr _r ?? throw "null pointer dereference")._s.__slice__((@:checkr _r ?? throw "null pointer dereference")._i) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.io.Io_writestring.writeString(_w, _s?.__copy__()), _m:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L144"
        if ((_m > (_s.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L145"
            throw stdgo.Go.toInterface(("strings.Reader.WriteTo: invalid WriteString count" : stdgo.GoString));
        };
        (@:checkr _r ?? throw "null pointer dereference")._i = ((@:checkr _r ?? throw "null pointer dereference")._i + ((_m : stdgo.GoInt64)) : stdgo.GoInt64);
        _n = (_m : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L149"
        if (((_m != (_s.length)) && (_err == null) : Bool)) {
            _err = stdgo._internal.io.Io_errshortwrite.errShortWrite;
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L152"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function seek( _r:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._prevRune = (-1 : stdgo.GoInt);
        var _abs:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L119"
        {
            final __value__ = _whence;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _abs = _offset;
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                _abs = ((@:checkr _r ?? throw "null pointer dereference")._i + _offset : stdgo.GoInt64);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                _abs = (((@:checkr _r ?? throw "null pointer dereference")._s.length : stdgo.GoInt64) + _offset : stdgo.GoInt64);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L127"
                return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.errors.Errors_new_.new_(("strings.Reader.Seek: invalid whence" : stdgo.GoString)) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L129"
        if ((_abs < (0i64 : stdgo.GoInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L130"
            return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.errors.Errors_new_.new_(("strings.Reader.Seek: negative position" : stdgo.GoString)) };
        };
        (@:checkr _r ?? throw "null pointer dereference")._i = _abs;
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L133"
        return { _0 : _abs, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function unreadRune( _r:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L104"
        if (((@:checkr _r ?? throw "null pointer dereference")._i <= (0i64 : stdgo.GoInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L105"
            return stdgo._internal.errors.Errors_new_.new_(("strings.Reader.UnreadRune: at beginning of string" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L107"
        if (((@:checkr _r ?? throw "null pointer dereference")._prevRune < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L108"
            return stdgo._internal.errors.Errors_new_.new_(("strings.Reader.UnreadRune: previous operation was not ReadRune" : stdgo.GoString));
        };
        (@:checkr _r ?? throw "null pointer dereference")._i = ((@:checkr _r ?? throw "null pointer dereference")._prevRune : stdgo.GoInt64);
        (@:checkr _r ?? throw "null pointer dereference")._prevRune = (-1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L112"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function readRune( _r:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader> = _r;
        var _ch = (0 : stdgo.GoInt32), _size = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L88"
        if (((@:checkr _r ?? throw "null pointer dereference")._i >= ((@:checkr _r ?? throw "null pointer dereference")._s.length : stdgo.GoInt64) : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference")._prevRune = (-1 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L90"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.io.Io_eof.eOF };
                _ch = __tmp__._0;
                _size = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        (@:checkr _r ?? throw "null pointer dereference")._prevRune = ((@:checkr _r ?? throw "null pointer dereference")._i : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L93"
        {
            var _c = ((@:checkr _r ?? throw "null pointer dereference")._s[((@:checkr _r ?? throw "null pointer dereference")._i : stdgo.GoInt)] : stdgo.GoUInt8);
            if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L94"
                (@:checkr _r ?? throw "null pointer dereference")._i++;
                //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L95"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (_c : stdgo.GoInt32), _1 : (1 : stdgo.GoInt), _2 : (null : stdgo.Error) };
                    _ch = __tmp__._0;
                    _size = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(((@:checkr _r ?? throw "null pointer dereference")._s.__slice__((@:checkr _r ?? throw "null pointer dereference")._i) : stdgo.GoString)?.__copy__());
            _ch = @:tmpset0 __tmp__._0;
            _size = @:tmpset0 __tmp__._1;
        };
        (@:checkr _r ?? throw "null pointer dereference")._i = ((@:checkr _r ?? throw "null pointer dereference")._i + ((_size : stdgo.GoInt64)) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L99"
        return { _0 : _ch, _1 : _size, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function unreadByte( _r:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L78"
        if (((@:checkr _r ?? throw "null pointer dereference")._i <= (0i64 : stdgo.GoInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L79"
            return stdgo._internal.errors.Errors_new_.new_(("strings.Reader.UnreadByte: at beginning of string" : stdgo.GoString));
        };
        (@:checkr _r ?? throw "null pointer dereference")._prevRune = (-1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L82"
        (@:checkr _r ?? throw "null pointer dereference")._i--;
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L83"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function readByte( _r:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._prevRune = (-1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L68"
        if (((@:checkr _r ?? throw "null pointer dereference")._i >= ((@:checkr _r ?? throw "null pointer dereference")._s.length : stdgo.GoInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L69"
            return { _0 : (0 : stdgo.GoUInt8), _1 : stdgo._internal.io.Io_eof.eOF };
        };
        var _b = ((@:checkr _r ?? throw "null pointer dereference")._s[((@:checkr _r ?? throw "null pointer dereference")._i : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L72"
        (@:checkr _r ?? throw "null pointer dereference")._i++;
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L73"
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function readAt( _r:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>, _b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L52"
        if ((_off < (0i64 : stdgo.GoInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L53"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("strings.Reader.ReadAt: negative offset" : stdgo.GoString)) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L55"
        if ((_off >= ((@:checkr _r ?? throw "null pointer dereference")._s.length : stdgo.GoInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L56"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        _n = _b.__copyTo__(((@:checkr _r ?? throw "null pointer dereference")._s.__slice__(_off) : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L59"
        if ((_n < (_b.length) : Bool)) {
            _err = stdgo._internal.io.Io_eof.eOF;
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L62"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L40"
        if (((@:checkr _r ?? throw "null pointer dereference")._i >= ((@:checkr _r ?? throw "null pointer dereference")._s.length : stdgo.GoInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L41"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        (@:checkr _r ?? throw "null pointer dereference")._prevRune = (-1 : stdgo.GoInt);
        _n = _b.__copyTo__(((@:checkr _r ?? throw "null pointer dereference")._s.__slice__((@:checkr _r ?? throw "null pointer dereference")._i) : stdgo.GoString));
        (@:checkr _r ?? throw "null pointer dereference")._i = ((@:checkr _r ?? throw "null pointer dereference")._i + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L46"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function size( _r:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L36"
        return ((@:checkr _r ?? throw "null pointer dereference")._s.length : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function len( _r:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L26"
        if (((@:checkr _r ?? throw "null pointer dereference")._i >= ((@:checkr _r ?? throw "null pointer dereference")._s.length : stdgo.GoInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L27"
            return (0 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/reader.go#L29"
        return ((((@:checkr _r ?? throw "null pointer dereference")._s.length : stdgo.GoInt64) - (@:checkr _r ?? throw "null pointer dereference")._i : stdgo.GoInt64) : stdgo.GoInt);
    }
}
