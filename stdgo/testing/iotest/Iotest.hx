package stdgo.testing.iotest;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var errTimeout : stdgo.Error = stdgo.errors.Errors.new_(((((("timeout" : GoString))) : GoString)));
@:structInit @:using(stdgo.testing.iotest.Iotest.T_writeLogger_static_extension) class T_writeLogger {
    public var _prefix : GoString = "";
    public var _w : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public function new(?_prefix:GoString, ?_w:stdgo.io.Io.Writer) {
        if (_prefix != null) this._prefix = _prefix;
        if (_w != null) this._w = _w;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_writeLogger(_prefix, _w);
    }
}
@:structInit @:using(stdgo.testing.iotest.Iotest.T_readLogger_static_extension) class T_readLogger {
    public var _prefix : GoString = "";
    public var _r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public function new(?_prefix:GoString, ?_r:stdgo.io.Io.Reader) {
        if (_prefix != null) this._prefix = _prefix;
        if (_r != null) this._r = _r;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_readLogger(_prefix, _r);
    }
}
@:structInit @:using(stdgo.testing.iotest.Iotest.T_oneByteReader_static_extension) class T_oneByteReader {
    public var _r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public function new(?_r:stdgo.io.Io.Reader) {
        if (_r != null) this._r = _r;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_oneByteReader(_r);
    }
}
@:structInit @:using(stdgo.testing.iotest.Iotest.T_halfReader_static_extension) class T_halfReader {
    public var _r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public function new(?_r:stdgo.io.Io.Reader) {
        if (_r != null) this._r = _r;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_halfReader(_r);
    }
}
@:structInit @:using(stdgo.testing.iotest.Iotest.T_dataErrReader_static_extension) class T_dataErrReader {
    public var _r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var _unread : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _data : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public function new(?_r:stdgo.io.Io.Reader, ?_unread:Slice<GoUInt8>, ?_data:Slice<GoUInt8>) {
        if (_r != null) this._r = _r;
        if (_unread != null) this._unread = _unread;
        if (_data != null) this._data = _data;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_dataErrReader(_r, _unread, _data);
    }
}
@:structInit @:using(stdgo.testing.iotest.Iotest.T_timeoutReader_static_extension) class T_timeoutReader {
    public var _r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var _count : GoInt = 0;
    public function new(?_r:stdgo.io.Io.Reader, ?_count:GoInt) {
        if (_r != null) this._r = _r;
        if (_count != null) this._count = _count;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_timeoutReader(_r, _count);
    }
}
@:structInit @:using(stdgo.testing.iotest.Iotest.T_errReader_static_extension) class T_errReader {
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_errReader(_err);
    }
}
@:structInit @:using(stdgo.testing.iotest.Iotest.T_smallByteReader_static_extension) class T_smallByteReader {
    public var _r : stdgo.io.Io.Reader = ((null : stdgo.io.Io.Reader));
    public var _off : GoInt = 0;
    public var _n : GoInt = 0;
    public function new(?_r:stdgo.io.Io.Reader, ?_off:GoInt, ?_n:GoInt) {
        if (_r != null) this._r = _r;
        if (_off != null) this._off = _off;
        if (_n != null) this._n = _n;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_smallByteReader(_r, _off, _n);
    }
}
@:structInit @:using(stdgo.testing.iotest.Iotest.T_truncateWriter_static_extension) class T_truncateWriter {
    public var _w : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var _n : GoInt64 = 0;
    public function new(?_w:stdgo.io.Io.Writer, ?_n:GoInt64) {
        if (_w != null) this._w = _w;
        if (_n != null) this._n = _n;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_truncateWriter(_w, _n);
    }
}
/**
    // NewWriteLogger returns a writer that behaves like w except
    // that it logs (using log.Printf) each write to standard error,
    // printing the prefix and the hexadecimal data written.
**/
function newWriteLogger(_prefix:GoString, _w:stdgo.io.Io.Writer):stdgo.io.Io.Writer {
        return {
            final __self__ = new T_writeLogger_wrapper(((new T_writeLogger(_prefix, _w) : T_writeLogger)));
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new T_writeLogger(_prefix, _w) : T_writeLogger)).write(_p) #else null #end;
            __self__;
        };
    }
/**
    // NewReadLogger returns a reader that behaves like r except
    // that it logs (using log.Printf) each read to standard error,
    // printing the prefix and the hexadecimal data read.
**/
function newReadLogger(_prefix:GoString, _r:stdgo.io.Io.Reader):stdgo.io.Io.Reader {
        return {
            final __self__ = new T_readLogger_wrapper(((new T_readLogger(_prefix, _r) : T_readLogger)));
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new T_readLogger(_prefix, _r) : T_readLogger)).read(_p) #else null #end;
            __self__;
        };
    }
/**
    // OneByteReader returns a Reader that implements
    // each non-empty Read by reading one byte from r.
**/
function oneByteReader(_r:stdgo.io.Io.Reader):stdgo.io.Io.Reader {
        return {
            final __self__ = new T_oneByteReader_wrapper(((new T_oneByteReader(_r) : T_oneByteReader)));
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new T_oneByteReader(_r) : T_oneByteReader)).read(_p) #else null #end;
            __self__;
        };
    }
/**
    // HalfReader returns a Reader that implements Read
    // by reading half as many requested bytes from r.
**/
function halfReader(_r:stdgo.io.Io.Reader):stdgo.io.Io.Reader {
        return {
            final __self__ = new T_halfReader_wrapper(((new T_halfReader(_r) : T_halfReader)));
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new T_halfReader(_r) : T_halfReader)).read(_p) #else null #end;
            __self__;
        };
    }
/**
    // DataErrReader changes the way errors are handled by a Reader. Normally, a
    // Reader returns an error (typically EOF) from the first Read call after the
    // last piece of data is read. DataErrReader wraps a Reader and changes its
    // behavior so the final error is returned along with the final data, instead
    // of in the first call after the final data.
**/
function dataErrReader(_r:stdgo.io.Io.Reader):stdgo.io.Io.Reader {
        return {
            final __self__ = new T_dataErrReader_wrapper(((new T_dataErrReader(_r, ((null : Slice<GoUInt8>)), new Slice<GoUInt8>(...[for (i in 0 ... ((((1024 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])) : T_dataErrReader)));
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new T_dataErrReader(_r, ((null : Slice<GoUInt8>)), new Slice<GoUInt8>(...[for (i in 0 ... ((((1024 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])) : T_dataErrReader)).read(_p) #else null #end;
            __self__;
        };
    }
/**
    // TimeoutReader returns ErrTimeout on the second read
    // with no data. Subsequent calls to read succeed.
**/
function timeoutReader(_r:stdgo.io.Io.Reader):stdgo.io.Io.Reader {
        return {
            final __self__ = new T_timeoutReader_wrapper(((new T_timeoutReader(_r, ((0 : GoInt))) : T_timeoutReader)));
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new T_timeoutReader(_r, ((0 : GoInt))) : T_timeoutReader)).read(_p) #else null #end;
            __self__;
        };
    }
/**
    // ErrReader returns an io.Reader that returns 0, err from all Read calls.
**/
function errReader(_err:Error):stdgo.io.Io.Reader {
        return {
            final __self__ = new T_errReader_wrapper((({ _err : _err } : T_errReader)));
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return (({ _err : _err } : T_errReader)).read(_p) #else null #end;
            __self__;
        };
    }
/**
    // TestReader tests that reading from r returns the expected file content.
    // It does reads of different sizes, until EOF.
    // If r implements io.ReaderAt or io.Seeker, TestReader also checks
    // that those operations behave as they should.
    //
    // If TestReader finds any misbehaviors, it returns an error reporting them.
    // The error text may span multiple lines.
**/
function testReader(_r:stdgo.io.Io.Reader, _content:Slice<GoByte>):Error {
        if ((_content != null ? _content.length : ((0 : GoInt))) > ((0 : GoInt))) {
            var __tmp__ = _r.read(((null : Slice<GoUInt8>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_n != ((0 : GoInt))) || (_err != null)) {
                return stdgo.fmt.Fmt.errorf(((((("Read(0) = %d, %v, want 0, nil" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        var __tmp__ = stdgo.io.Io.readAll({
            final __self__ = new T_smallByteReader_wrapper((({ _r : _r } : T_smallByteReader)));
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return (({ _r : _r } : T_smallByteReader)).read(_p) #else null #end;
            __self__;
        }), _data:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        if (!stdgo.bytes.Bytes.equal(_data, _content)) {
            return stdgo.fmt.Fmt.errorf(((((("ReadAll(small amounts) = %q\n\twant %q" : GoString))) : GoString)), Go.toInterface(_data), Go.toInterface(_content));
        };
        var __tmp__ = _r.read(new Slice<GoUInt8>(...[for (i in 0 ... ((((10 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))])), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_n != ((0 : GoInt))) || (_err != stdgo.io.Io.eof)) {
            return stdgo.fmt.Fmt.errorf(((((("Read(10) at EOF = %v, %v, want 0, EOF" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_err));
        };
        {
            var __tmp__ = try {
                { value : ((((_r.__underlying__().value : Dynamic)) : stdgo.io.Io.ReadSeeker)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.io.Io.ReadSeeker)), ok : false };
            }, _r = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                {
                    var __tmp__ = _r.seek(((0 : GoInt64)), ((1 : GoInt))), _off:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if ((_off != (((_content != null ? _content.length : ((0 : GoInt))) : GoInt64))) || (_err != null)) {
                        return stdgo.fmt.Fmt.errorf(((((("Seek(0, 1) from EOF = %d, %v, want %d, nil" : GoString))) : GoString)), Go.toInterface(_off), Go.toInterface(_err), Go.toInterface((_content != null ? _content.length : ((0 : GoInt)))));
                    };
                };
                var _middle:GoInt = (_content != null ? _content.length : ((0 : GoInt))) - ((_content != null ? _content.length : ((0 : GoInt))) / ((3 : GoInt)));
                if (_middle > ((0 : GoInt))) {
                    {
                        var __tmp__ = _r.seek(((-1 : GoInt64)), ((1 : GoInt))), _off:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if ((_off != ((((_content != null ? _content.length : ((0 : GoInt))) - ((1 : GoInt))) : GoInt64))) || (_err != null)) {
                            return stdgo.fmt.Fmt.errorf(((((("Seek(-1, 1) from EOF = %d, %v, want %d, nil" : GoString))) : GoString)), Go.toInterface(-_off), Go.toInterface(_err), Go.toInterface((_content != null ? _content.length : ((0 : GoInt))) - ((1 : GoInt))));
                        };
                    };
                    {
                        var __tmp__ = _r.seek((((-(_content != null ? _content.length : ((0 : GoInt))) / ((3 : GoInt))) : GoInt64)), ((1 : GoInt))), _off:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if ((_off != (((_middle - ((1 : GoInt))) : GoInt64))) || (_err != null)) {
                            return stdgo.fmt.Fmt.errorf(((((("Seek(%d, 1) from %d = %d, %v, want %d, nil" : GoString))) : GoString)), Go.toInterface(-(_content != null ? _content.length : ((0 : GoInt))) / ((3 : GoInt))), Go.toInterface((_content != null ? _content.length : ((0 : GoInt))) - ((1 : GoInt))), Go.toInterface(_off), Go.toInterface(_err), Go.toInterface(_middle - ((1 : GoInt))));
                        };
                    };
                    {
                        var __tmp__ = _r.seek(((1 : GoInt64)), ((1 : GoInt))), _off:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if ((_off != ((_middle : GoInt64))) || (_err != null)) {
                            return stdgo.fmt.Fmt.errorf(((((("Seek(+1, 1) from %d = %d, %v, want %d, nil" : GoString))) : GoString)), Go.toInterface(_middle - ((1 : GoInt))), Go.toInterface(_off), Go.toInterface(_err), Go.toInterface(_middle));
                        };
                    };
                };
                {
                    var __tmp__ = _r.seek(((0 : GoInt64)), ((1 : GoInt))), _off:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if ((_off != ((_middle : GoInt64))) || (_err != null)) {
                        return stdgo.fmt.Fmt.errorf(((((("Seek(0, 1) from %d = %d, %v, want %d, nil" : GoString))) : GoString)), Go.toInterface(_middle), Go.toInterface(_off), Go.toInterface(_err), Go.toInterface(_middle));
                    };
                };
                var __tmp__ = stdgo.io.Io.readAll({
                    final __self__ = new T_smallByteReader_wrapper((({ _r : _r } : T_smallByteReader)));
                    __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return (({ _r : _r } : T_smallByteReader)).read(_p) #else null #end;
                    __self__;
                }), _data:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return stdgo.fmt.Fmt.errorf(((((("ReadAll from offset %d: %v" : GoString))) : GoString)), Go.toInterface(_middle), Go.toInterface(_err));
                };
                if (!stdgo.bytes.Bytes.equal(_data, ((_content.__slice__(_middle) : Slice<GoUInt8>)))) {
                    return stdgo.fmt.Fmt.errorf(((((("ReadAll from offset %d = %q\n\twant %q" : GoString))) : GoString)), Go.toInterface(_middle), Go.toInterface(_data), Go.toInterface(((_content.__slice__(_middle) : Slice<GoUInt8>))));
                };
                {
                    var __tmp__ = _r.seek((((_middle / ((2 : GoInt))) : GoInt64)), ((0 : GoInt))), _off:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if ((_off != (((_middle / ((2 : GoInt))) : GoInt64))) || (_err != null)) {
                        return stdgo.fmt.Fmt.errorf(((((("Seek(%d, 0) from EOF = %d, %v, want %d, nil" : GoString))) : GoString)), Go.toInterface(_middle / ((2 : GoInt))), Go.toInterface(_off), Go.toInterface(_err), Go.toInterface(_middle / ((2 : GoInt))));
                    };
                };
                {
                    var __tmp__ = _r.seek((((-(_content != null ? _content.length : ((0 : GoInt))) / ((3 : GoInt))) : GoInt64)), ((2 : GoInt))), _off:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if ((_off != ((_middle : GoInt64))) || (_err != null)) {
                        return stdgo.fmt.Fmt.errorf(((((("Seek(%d, 2) from %d = %d, %v, want %d, nil" : GoString))) : GoString)), Go.toInterface(-(_content != null ? _content.length : ((0 : GoInt))) / ((3 : GoInt))), Go.toInterface(_middle / ((2 : GoInt))), Go.toInterface(_off), Go.toInterface(_err), Go.toInterface(_middle));
                    };
                };
                {
                    var __tmp__ = stdgo.io.Io.readAll({
                        final __self__ = new T_smallByteReader_wrapper((({ _r : _r } : T_smallByteReader)));
                        __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return (({ _r : _r } : T_smallByteReader)).read(_p) #else null #end;
                        __self__;
                    });
                    _data = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return stdgo.fmt.Fmt.errorf(((((("ReadAll from offset %d: %v" : GoString))) : GoString)), Go.toInterface(_middle), Go.toInterface(_err));
                };
                if (!stdgo.bytes.Bytes.equal(_data, ((_content.__slice__(_middle) : Slice<GoUInt8>)))) {
                    return stdgo.fmt.Fmt.errorf(((((("ReadAll from offset %d = %q\n\twant %q" : GoString))) : GoString)), Go.toInterface(_middle), Go.toInterface(_data), Go.toInterface(((_content.__slice__(_middle) : Slice<GoUInt8>))));
                };
                {
                    var __tmp__ = _r.seek((((_middle / ((2 : GoInt))) : GoInt64)), ((0 : GoInt))), _off:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if ((_off != (((_middle / ((2 : GoInt))) : GoInt64))) || (_err != null)) {
                        return stdgo.fmt.Fmt.errorf(((((("Seek(%d, 0) from EOF = %d, %v, want %d, nil" : GoString))) : GoString)), Go.toInterface(_middle / ((2 : GoInt))), Go.toInterface(_off), Go.toInterface(_err), Go.toInterface(_middle / ((2 : GoInt))));
                    };
                };
                {
                    var __tmp__ = stdgo.io.Io.readAll(_r);
                    _data = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return stdgo.fmt.Fmt.errorf(((((("ReadAll from offset %d: %v" : GoString))) : GoString)), Go.toInterface(_middle / ((2 : GoInt))), Go.toInterface(_err));
                };
                if (!stdgo.bytes.Bytes.equal(_data, ((_content.__slice__(_middle / ((2 : GoInt))) : Slice<GoUInt8>)))) {
                    return stdgo.fmt.Fmt.errorf(((((("ReadAll from offset %d = %q\n\twant %q" : GoString))) : GoString)), Go.toInterface(_middle / ((2 : GoInt))), Go.toInterface(_data), Go.toInterface(((_content.__slice__(_middle / ((2 : GoInt))) : Slice<GoUInt8>))));
                };
            };
        };
        {
            var __tmp__ = try {
                { value : ((((_r.__underlying__().value : Dynamic)) : stdgo.io.Io.ReaderAt)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.io.Io.ReaderAt)), ok : false };
            }, _r = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                var _data = new Slice<GoUInt8>(...[for (i in 0 ... (((_content != null ? _content.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__((((_content != null ? _content.length : ((0 : GoInt))) + ((1 : GoInt)) : GoInt)).toBasic());
                for (_i => _ in _data) {
                    if (_data != null) _data[_i] = ((254 : GoUInt8));
                };
                var __tmp__ = _r.readAt(_data, ((0 : GoInt64))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if ((_n != (_data != null ? _data.length : ((0 : GoInt)))) || ((_err != null) && (_err != stdgo.io.Io.eof))) {
                    return stdgo.fmt.Fmt.errorf(((((("ReadAt(%d, 0) = %v, %v, want %d, nil or EOF" : GoString))) : GoString)), Go.toInterface((_data != null ? _data.length : ((0 : GoInt)))), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface((_data != null ? _data.length : ((0 : GoInt)))));
                };
                if (!stdgo.bytes.Bytes.equal(_data, _content)) {
                    return stdgo.fmt.Fmt.errorf(((((("ReadAt(%d, 0) = %q\n\twant %q" : GoString))) : GoString)), Go.toInterface((_data != null ? _data.length : ((0 : GoInt)))), Go.toInterface(_data), Go.toInterface(_content));
                };
                {
                    var __tmp__ = _r.readAt(((_data.__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>)), (((_data != null ? _data.length : ((0 : GoInt))) : GoInt64)));
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
                if ((_n != ((0 : GoInt))) || (_err != stdgo.io.Io.eof)) {
                    return stdgo.fmt.Fmt.errorf(((((("ReadAt(1, %d) = %v, %v, want 0, EOF" : GoString))) : GoString)), Go.toInterface((_data != null ? _data.length : ((0 : GoInt)))), Go.toInterface(_n), Go.toInterface(_err));
                };
                for (_i => _ in _data) {
                    if (_data != null) _data[_i] = ((254 : GoUInt8));
                };
                {
                    var __tmp__ = _r.readAt(((_data.__slice__(0, (_data != null ? _data.cap() : ((0 : GoInt)))) : Slice<GoUInt8>)), ((0 : GoInt64)));
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
                if ((_n != (_data != null ? _data.length : ((0 : GoInt)))) || (_err != stdgo.io.Io.eof)) {
                    return stdgo.fmt.Fmt.errorf(((((("ReadAt(%d, 0) = %v, %v, want %d, EOF" : GoString))) : GoString)), Go.toInterface((_data != null ? _data.cap() : ((0 : GoInt)))), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface((_data != null ? _data.length : ((0 : GoInt)))));
                };
                if (!stdgo.bytes.Bytes.equal(_data, _content)) {
                    return stdgo.fmt.Fmt.errorf(((((("ReadAt(%d, 0) = %q\n\twant %q" : GoString))) : GoString)), Go.toInterface((_data != null ? _data.length : ((0 : GoInt)))), Go.toInterface(_data), Go.toInterface(_content));
                };
                for (_i => _ in _data) {
                    if (_data != null) _data[_i] = ((254 : GoUInt8));
                };
                for (_i => _ in _data) {
                    {
                        var __tmp__ = _r.readAt(((_data.__slice__(_i, _i + ((1 : GoInt))) : Slice<GoUInt8>)), ((_i : GoInt64)));
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if ((_n != ((1 : GoInt))) || ((_err != null) && ((_i != ((_data != null ? _data.length : ((0 : GoInt))) - ((1 : GoInt)))) || (_err != stdgo.io.Io.eof)))) {
                        var _want:GoString = ((((("nil" : GoString))) : GoString));
                        if (_i == ((_data != null ? _data.length : ((0 : GoInt))) - ((1 : GoInt)))) {
                            _want = ((((("nil or EOF" : GoString))) : GoString));
                        };
                        return stdgo.fmt.Fmt.errorf(((((("ReadAt(1, %d) = %v, %v, want 1, %s" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_n), Go.toInterface(_err), Go.toInterface(_want));
                    };
                    if ((_data != null ? _data[_i] : ((0 : GoUInt8))) != (_content != null ? _content[_i] : ((0 : GoUInt8)))) {
                        return stdgo.fmt.Fmt.errorf(((((("ReadAt(1, %d) = %q want %q" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(((_data.__slice__(_i, _i + ((1 : GoInt))) : Slice<GoUInt8>))), Go.toInterface(((_content.__slice__(_i, _i + ((1 : GoInt))) : Slice<GoUInt8>))));
                    };
                };
            };
        };
        return ((null : stdgo.Error));
    }
/**
    // TruncateWriter returns a Writer that writes to w
    // but stops silently after n bytes.
**/
function truncateWriter(_w:stdgo.io.Io.Writer, _n:GoInt64):stdgo.io.Io.Writer {
        return {
            final __self__ = new T_truncateWriter_wrapper(((new T_truncateWriter(_w, _n) : T_truncateWriter)));
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return ((new T_truncateWriter(_w, _n) : T_truncateWriter)).write(_p) #else null #end;
            __self__;
        };
    }
@:keep class T_writeLogger_static_extension {
    @:keep
    static public function write( _l:T_writeLogger, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = _l._w.write(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            stdgo.log.Log.printf(((((("%s %x: %v" : GoString))) : GoString)), Go.toInterface(_l._prefix), Go.toInterface(((_p.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>))), Go.toInterface(_err));
        } else {
            stdgo.log.Log.printf(((((("%s %x" : GoString))) : GoString)), Go.toInterface(_l._prefix), Go.toInterface(((_p.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>))));
        };
        return { _0 : _n, _1 : _err };
    }
}
class T_writeLogger_wrapper {
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_writeLogger;
}
@:keep class T_readLogger_static_extension {
    @:keep
    static public function read( _l:T_readLogger, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        {
            var __tmp__ = _l._r.read(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            stdgo.log.Log.printf(((((("%s %x: %v" : GoString))) : GoString)), Go.toInterface(_l._prefix), Go.toInterface(((_p.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>))), Go.toInterface(_err));
        } else {
            stdgo.log.Log.printf(((((("%s %x" : GoString))) : GoString)), Go.toInterface(_l._prefix), Go.toInterface(((_p.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>))));
        };
        return { _0 : _n, _1 : _err };
    }
}
class T_readLogger_wrapper {
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_readLogger;
}
@:keep class T_oneByteReader_static_extension {
    @:keep
    static public function read( _r:T_oneByteReader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        if ((_p != null ? _p.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        return _r._r.read(((_p.__slice__(((0 : GoInt)), ((1 : GoInt))) : Slice<GoUInt8>)));
    }
}
class T_oneByteReader_wrapper {
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_oneByteReader;
}
@:keep class T_halfReader_static_extension {
    @:keep
    static public function read( _r:T_halfReader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return _r._r.read(((_p.__slice__(((0 : GoInt)), ((_p != null ? _p.length : ((0 : GoInt))) + ((1 : GoInt))) / ((2 : GoInt))) : Slice<GoUInt8>)));
    }
}
class T_halfReader_wrapper {
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_halfReader;
}
@:keep class T_dataErrReader_static_extension {
    @:keep
    static public function read( _r:T_dataErrReader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        while (true) {
            if ((_r._unread != null ? _r._unread.length : ((0 : GoInt))) == ((0 : GoInt))) {
                var __tmp__ = _r._r.read(_r._data), _n1:GoInt = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                _r._unread = ((_r._data.__slice__(((0 : GoInt)), _n1) : Slice<GoUInt8>));
                _err = _err1;
            };
            if ((_n > ((0 : GoInt))) || (_err != null)) {
                break;
            };
            _n = Go.copySlice(_p, _r._unread);
            _r._unread = ((_r._unread.__slice__(_n) : Slice<GoUInt8>));
        };
        return { _0 : _n, _1 : _err };
    }
}
class T_dataErrReader_wrapper {
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_dataErrReader;
}
@:keep class T_timeoutReader_static_extension {
    @:keep
    static public function read( _r:T_timeoutReader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        _r._count++;
        if (_r._count == ((2 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : errTimeout };
        };
        return _r._r.read(_p);
    }
}
class T_timeoutReader_wrapper {
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_timeoutReader;
}
@:keep class T_errReader_static_extension {
    @:keep
    static public function read( _r:T_errReader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return { _0 : ((0 : GoInt)), _1 : _r._err };
    }
}
class T_errReader_wrapper {
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_errReader;
}
@:keep class T_smallByteReader_static_extension {
    @:keep
    static public function read( _r:T_smallByteReader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        if ((_p != null ? _p.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        _r._n = (_r._n % ((3 : GoInt))) + ((1 : GoInt));
        var _n:GoInt = _r._n;
        if (_n > (_p != null ? _p.length : ((0 : GoInt)))) {
            _n = (_p != null ? _p.length : ((0 : GoInt)));
        };
        var __tmp__ = _r._r.read(((_p.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) && (_err != stdgo.io.Io.eof)) {
            _err = stdgo.fmt.Fmt.errorf(((((("Read(%d bytes at offset %d): %v" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_r._off), Go.toInterface(_err));
        };
        _r._off = _r._off + (_n);
        return { _0 : _n, _1 : _err };
    }
}
class T_smallByteReader_wrapper {
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_smallByteReader;
}
@:keep class T_truncateWriter_static_extension {
    @:keep
    static public function write( _t:T_truncateWriter, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_t._n <= ((0 : GoInt64))) {
            return { _0 : (_p != null ? _p.length : ((0 : GoInt))), _1 : ((null : stdgo.Error)) };
        };
        _n = (_p != null ? _p.length : ((0 : GoInt)));
        if (((_n : GoInt64)) > _t._n) {
            _n = ((_t._n : GoInt));
        };
        {
            var __tmp__ = _t._w.write(((_p.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        _t._n = _t._n - (((_n : GoInt64)));
        if (_err == null) {
            _n = (_p != null ? _p.length : ((0 : GoInt)));
        };
        return { _0 : _n, _1 : _err };
    }
}
class T_truncateWriter_wrapper {
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_truncateWriter;
}
