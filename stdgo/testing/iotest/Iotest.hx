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
var _truncateWriterTests : Slice<T__struct_1> = ((new Slice<T__struct_1>(((new T__struct_1(((((("hello" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((-1 : GoInt64)), ((5 : GoInt))) : T__struct_1)), ((new T__struct_1(((((("world" : GoString))) : GoString)), ((((("" : GoString))) : GoString)), ((0 : GoInt64)), ((5 : GoInt))) : T__struct_1)), ((new T__struct_1(((((("abcde" : GoString))) : GoString)), ((((("abc" : GoString))) : GoString)), ((3 : GoInt64)), ((5 : GoInt))) : T__struct_1)), ((new T__struct_1(((((("edcba" : GoString))) : GoString)), ((((("edcba" : GoString))) : GoString)), ((7 : GoInt64)), ((5 : GoInt))) : T__struct_1))) : Slice<T__struct_1>));
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
@:structInit @:using(stdgo.testing.iotest.Iotest.T_errWriter_static_extension) class T_errWriter {
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_err:stdgo.Error) {
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_errWriter(_err);
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
@:structInit @:local class T__struct_0 {
    public var _name : GoString = "";
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function string():String return "{" + Go.string(_name) + " " + Go.string(_err) + "}";
    public function new(?_name:GoString, ?_err:stdgo.Error, ?string) {
        if (_name != null) this._name = _name;
        if (_err != null) this._err = _err;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0(_name, _err);
    }
}
@:structInit @:local class T__struct_1 {
    public var _in : GoString = "";
    public var _want : GoString = "";
    public var _trunc : GoInt64 = 0;
    public var _n : GoInt = 0;
    public function string():String return "{" + Go.string(_in) + " " + Go.string(_want) + " " + Go.string(_trunc) + " " + Go.string(_n) + "}";
    public function new(?_in:GoString, ?_want:GoString, ?_trunc:GoInt64, ?_n:GoInt, ?string) {
        if (_in != null) this._in = _in;
        if (_want != null) this._want = _want;
        if (_trunc != null) this._trunc = _trunc;
        if (_n != null) this._n = _n;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_1(_in, _want, _trunc, _n);
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
function testWriteLogger(_t:stdgo.testing.Testing.T):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _olw:stdgo.io.Io.Writer = stdgo.log.Log.writer();
            var _olf:GoInt = stdgo.log.Log.flags();
            var _olp:GoString = stdgo.log.Log.prefix();
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    stdgo.log.Log.setFlags(_olf);
                    stdgo.log.Log.setPrefix(_olp);
                    stdgo.log.Log.setOutput(_olw);
                };
                a();
            });
            var _lOut = new stdgo.bytes.Bytes.Buffer();
            stdgo.log.Log.setPrefix(((((("lw: " : GoString))) : GoString)));
            stdgo.log.Log.setOutput({
                final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_lOut);
                __self__.bytes = #if !macro function():Slice<GoUInt8> return _lOut.bytes() #else null #end;
                __self__.cap_ = #if !macro function():GoInt return _lOut.cap_() #else null #end;
                __self__.grow = #if !macro function(_n:GoInt):Void _lOut.grow(_n) #else null #end;
                __self__.len = #if !macro function():GoInt return _lOut.len() #else null #end;
                __self__.next = #if !macro function(_n:GoInt):Slice<GoUInt8> return _lOut.next(_n) #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _lOut.read(_p) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _lOut.readByte() #else null #end;
                __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _lOut.readBytes(_delim) #else null #end;
                __self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _lOut.readFrom(_r) #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _lOut.readRune() #else null #end;
                __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _lOut.readString(_delim) #else null #end;
                __self__.reset = #if !macro function():Void _lOut.reset() #else null #end;
                __self__.string = #if !macro function():GoString return _lOut.string() #else null #end;
                __self__.truncate = #if !macro function(_n:GoInt):Void _lOut.truncate(_n) #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _lOut.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _lOut.unreadRune() #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _lOut.write(_p) #else null #end;
                __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _lOut.writeByte(_c) #else null #end;
                __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _lOut.writeRune(_r) #else null #end;
                __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _lOut.writeString(_s) #else null #end;
                __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _lOut.writeTo(_w) #else null #end;
                __self__._empty = #if !macro function():Bool return _lOut._empty() #else null #end;
                __self__._grow = #if !macro function(_n:GoInt):GoInt return _lOut._grow(_n) #else null #end;
                __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _lOut._readSlice(_delim) #else null #end;
                __self__._tryGrowByReslice = #if !macro function(_n:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _lOut._tryGrowByReslice(_n) #else null #end;
                __self__;
            });
            stdgo.log.Log.setFlags(((0 : GoInt)));
            var _lw = new stdgo.bytes.Bytes.Buffer();
            var _wl:stdgo.io.Io.Writer = newWriteLogger(((((("write:" : GoString))) : GoString)), {
                final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_lw);
                __self__.bytes = #if !macro function():Slice<GoUInt8> return _lw.bytes() #else null #end;
                __self__.cap_ = #if !macro function():GoInt return _lw.cap_() #else null #end;
                __self__.grow = #if !macro function(_n:GoInt):Void _lw.grow(_n) #else null #end;
                __self__.len = #if !macro function():GoInt return _lw.len() #else null #end;
                __self__.next = #if !macro function(_n:GoInt):Slice<GoUInt8> return _lw.next(_n) #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _lw.read(_p) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _lw.readByte() #else null #end;
                __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _lw.readBytes(_delim) #else null #end;
                __self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _lw.readFrom(_r) #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _lw.readRune() #else null #end;
                __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _lw.readString(_delim) #else null #end;
                __self__.reset = #if !macro function():Void _lw.reset() #else null #end;
                __self__.string = #if !macro function():GoString return _lw.string() #else null #end;
                __self__.truncate = #if !macro function(_n:GoInt):Void _lw.truncate(_n) #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _lw.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _lw.unreadRune() #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _lw.write(_p) #else null #end;
                __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _lw.writeByte(_c) #else null #end;
                __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _lw.writeRune(_r) #else null #end;
                __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _lw.writeString(_s) #else null #end;
                __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _lw.writeTo(_w) #else null #end;
                __self__._empty = #if !macro function():Bool return _lw._empty() #else null #end;
                __self__._grow = #if !macro function(_n:GoInt):GoInt return _lw._grow(_n) #else null #end;
                __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _lw._readSlice(_delim) #else null #end;
                __self__._tryGrowByReslice = #if !macro function(_n:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _lw._tryGrowByReslice(_n) #else null #end;
                __self__;
            });
            {
                var __tmp__ = _wl.write(((((((("Hello, World!" : GoString))) : GoString)) : Slice<GoByte>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.fatalf(((((("Unexpectedly failed to write: %v" : GoString))) : GoString)), Go.toInterface(_err));
                };
            };
            {
                var _g:GoString = ((_lw.string() : GoString)), _w:GoString = ((((("Hello, World!" : GoString))) : GoString));
                if (_g != _w) {
                    _t.errorf(((((("WriteLogger mismatch\n\tgot:  %q\n\twant: %q" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
                };
            };
            var _wantLogWithHex:GoString = stdgo.fmt.Fmt.sprintf(((((("lw: write: %x\n" : GoString))) : GoString)), Go.toInterface(((((("Hello, World!" : GoString))) : GoString))));
            {
                var _g:GoString = ((_lOut.string() : GoString)), _w:GoString = _wantLogWithHex;
                if (_g != _w) {
                    _t.errorf(((((("WriteLogger mismatch\n\tgot:  %q\n\twant: %q" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            for (defer in __deferstack__) {
                defer();
            };
            if (__recover_exception__ != null) throw __recover_exception__;
            return;
        };
    }
function testWriteLogger_errorOnWrite(_t:stdgo.testing.Testing.T):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _olw:stdgo.io.Io.Writer = stdgo.log.Log.writer();
            var _olf:GoInt = stdgo.log.Log.flags();
            var _olp:GoString = stdgo.log.Log.prefix();
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    stdgo.log.Log.setFlags(_olf);
                    stdgo.log.Log.setPrefix(_olp);
                    stdgo.log.Log.setOutput(_olw);
                };
                a();
            });
            var _lOut = new stdgo.bytes.Bytes.Buffer();
            stdgo.log.Log.setPrefix(((((("lw: " : GoString))) : GoString)));
            stdgo.log.Log.setOutput({
                final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_lOut);
                __self__.bytes = #if !macro function():Slice<GoUInt8> return _lOut.bytes() #else null #end;
                __self__.cap_ = #if !macro function():GoInt return _lOut.cap_() #else null #end;
                __self__.grow = #if !macro function(_n:GoInt):Void _lOut.grow(_n) #else null #end;
                __self__.len = #if !macro function():GoInt return _lOut.len() #else null #end;
                __self__.next = #if !macro function(_n:GoInt):Slice<GoUInt8> return _lOut.next(_n) #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _lOut.read(_p) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _lOut.readByte() #else null #end;
                __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _lOut.readBytes(_delim) #else null #end;
                __self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _lOut.readFrom(_r) #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _lOut.readRune() #else null #end;
                __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _lOut.readString(_delim) #else null #end;
                __self__.reset = #if !macro function():Void _lOut.reset() #else null #end;
                __self__.string = #if !macro function():GoString return _lOut.string() #else null #end;
                __self__.truncate = #if !macro function(_n:GoInt):Void _lOut.truncate(_n) #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _lOut.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _lOut.unreadRune() #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _lOut.write(_p) #else null #end;
                __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _lOut.writeByte(_c) #else null #end;
                __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _lOut.writeRune(_r) #else null #end;
                __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _lOut.writeString(_s) #else null #end;
                __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _lOut.writeTo(_w) #else null #end;
                __self__._empty = #if !macro function():Bool return _lOut._empty() #else null #end;
                __self__._grow = #if !macro function(_n:GoInt):GoInt return _lOut._grow(_n) #else null #end;
                __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _lOut._readSlice(_delim) #else null #end;
                __self__._tryGrowByReslice = #if !macro function(_n:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _lOut._tryGrowByReslice(_n) #else null #end;
                __self__;
            });
            stdgo.log.Log.setFlags(((0 : GoInt)));
            var _lw:T_errWriter = (({ _err : stdgo.errors.Errors.new_(((((("Write Error!" : GoString))) : GoString))) } : T_errWriter));
            var _wl:stdgo.io.Io.Writer = newWriteLogger(((((("write:" : GoString))) : GoString)), {
                final __self__ = new T_errWriter_wrapper(_lw);
                __self__.write = #if !macro function(__0:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _lw.write(__0) #else null #end;
                __self__;
            });
            {
                var __tmp__ = _wl.write(((((((("Hello, World!" : GoString))) : GoString)) : Slice<GoByte>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _t.fatalf(((((("Unexpectedly succeeded to write: %v" : GoString))) : GoString)), Go.toInterface(_err));
                };
            };
            var _wantLogWithHex:GoString = stdgo.fmt.Fmt.sprintf(((((("lw: write: %x: %v\n" : GoString))) : GoString)), Go.toInterface(((((("" : GoString))) : GoString))), Go.toInterface(((((("Write Error!" : GoString))) : GoString))));
            {
                var _g:GoString = ((_lOut.string() : GoString)), _w:GoString = _wantLogWithHex;
                if (_g != _w) {
                    _t.errorf(((((("WriteLogger mismatch\n\tgot:  %q\n\twant: %q" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            for (defer in __deferstack__) {
                defer();
            };
            if (__recover_exception__ != null) throw __recover_exception__;
            return;
        };
    }
function testReadLogger(_t:stdgo.testing.Testing.T):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _olw:stdgo.io.Io.Writer = stdgo.log.Log.writer();
            var _olf:GoInt = stdgo.log.Log.flags();
            var _olp:GoString = stdgo.log.Log.prefix();
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    stdgo.log.Log.setFlags(_olf);
                    stdgo.log.Log.setPrefix(_olp);
                    stdgo.log.Log.setOutput(_olw);
                };
                a();
            });
            var _lOut = new stdgo.bytes.Bytes.Buffer();
            stdgo.log.Log.setPrefix(((((("lr: " : GoString))) : GoString)));
            stdgo.log.Log.setOutput({
                final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_lOut);
                __self__.bytes = #if !macro function():Slice<GoUInt8> return _lOut.bytes() #else null #end;
                __self__.cap_ = #if !macro function():GoInt return _lOut.cap_() #else null #end;
                __self__.grow = #if !macro function(_n:GoInt):Void _lOut.grow(_n) #else null #end;
                __self__.len = #if !macro function():GoInt return _lOut.len() #else null #end;
                __self__.next = #if !macro function(_n:GoInt):Slice<GoUInt8> return _lOut.next(_n) #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _lOut.read(_p) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _lOut.readByte() #else null #end;
                __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _lOut.readBytes(_delim) #else null #end;
                __self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _lOut.readFrom(_r) #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _lOut.readRune() #else null #end;
                __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _lOut.readString(_delim) #else null #end;
                __self__.reset = #if !macro function():Void _lOut.reset() #else null #end;
                __self__.string = #if !macro function():GoString return _lOut.string() #else null #end;
                __self__.truncate = #if !macro function(_n:GoInt):Void _lOut.truncate(_n) #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _lOut.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _lOut.unreadRune() #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _lOut.write(_p) #else null #end;
                __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _lOut.writeByte(_c) #else null #end;
                __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _lOut.writeRune(_r) #else null #end;
                __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _lOut.writeString(_s) #else null #end;
                __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _lOut.writeTo(_w) #else null #end;
                __self__._empty = #if !macro function():Bool return _lOut._empty() #else null #end;
                __self__._grow = #if !macro function(_n:GoInt):GoInt return _lOut._grow(_n) #else null #end;
                __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _lOut._readSlice(_delim) #else null #end;
                __self__._tryGrowByReslice = #if !macro function(_n:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _lOut._tryGrowByReslice(_n) #else null #end;
                __self__;
            });
            stdgo.log.Log.setFlags(((0 : GoInt)));
            var _data = ((((((("Hello, World!" : GoString))) : GoString)) : Slice<GoByte>));
            var _p = new Slice<GoUInt8>(...[for (i in 0 ... (((_data != null ? _data.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            var _lr = stdgo.bytes.Bytes.newReader(_data);
            var _rl:stdgo.io.Io.Reader = newReadLogger(((((("read:" : GoString))) : GoString)), {
                final __self__ = new stdgo.bytes.Bytes.Reader_wrapper(_lr);
                __self__.len = #if !macro function():GoInt return _lr.len() #else null #end;
                __self__.read = #if !macro function(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _lr.read(_b) #else null #end;
                __self__.readAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _lr.readAt(_b, _off) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _lr.readByte() #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _lr.readRune() #else null #end;
                __self__.reset = #if !macro function(_b:Slice<GoUInt8>):Void _lr.reset(_b) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _lr.seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return _lr.size() #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _lr.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _lr.unreadRune() #else null #end;
                __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _lr.writeTo(_w) #else null #end;
                __self__;
            });
            var __tmp__ = _rl.read(_p), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(((((("Unexpectedly failed to read: %v" : GoString))) : GoString)), Go.toInterface(_err));
            };
            {
                var _g = ((_p.__slice__(0, _n) : Slice<GoUInt8>)), _w = _data;
                if (!stdgo.bytes.Bytes.equal(_g, _w)) {
                    _t.errorf(((((("ReadLogger mismatch\n\tgot:  %q\n\twant: %q" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
                };
            };
            var _wantLogWithHex:GoString = stdgo.fmt.Fmt.sprintf(((((("lr: read: %x\n" : GoString))) : GoString)), Go.toInterface(((((("Hello, World!" : GoString))) : GoString))));
            {
                var _g:GoString = ((_lOut.string() : GoString)), _w:GoString = _wantLogWithHex;
                if (_g != _w) {
                    _t.errorf(((((("ReadLogger mismatch\n\tgot:  %q\n\twant: %q" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            for (defer in __deferstack__) {
                defer();
            };
            if (__recover_exception__ != null) throw __recover_exception__;
            return;
        };
    }
function testReadLogger_errorOnRead(_t:stdgo.testing.Testing.T):Void {
        var __recover_exception__:AnyInterface = null;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _olw:stdgo.io.Io.Writer = stdgo.log.Log.writer();
            var _olf:GoInt = stdgo.log.Log.flags();
            var _olp:GoString = stdgo.log.Log.prefix();
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    stdgo.log.Log.setFlags(_olf);
                    stdgo.log.Log.setPrefix(_olp);
                    stdgo.log.Log.setOutput(_olw);
                };
                a();
            });
            var _lOut = new stdgo.bytes.Bytes.Buffer();
            stdgo.log.Log.setPrefix(((((("lr: " : GoString))) : GoString)));
            stdgo.log.Log.setOutput({
                final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_lOut);
                __self__.bytes = #if !macro function():Slice<GoUInt8> return _lOut.bytes() #else null #end;
                __self__.cap_ = #if !macro function():GoInt return _lOut.cap_() #else null #end;
                __self__.grow = #if !macro function(_n:GoInt):Void _lOut.grow(_n) #else null #end;
                __self__.len = #if !macro function():GoInt return _lOut.len() #else null #end;
                __self__.next = #if !macro function(_n:GoInt):Slice<GoUInt8> return _lOut.next(_n) #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _lOut.read(_p) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _lOut.readByte() #else null #end;
                __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _lOut.readBytes(_delim) #else null #end;
                __self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _lOut.readFrom(_r) #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _lOut.readRune() #else null #end;
                __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _lOut.readString(_delim) #else null #end;
                __self__.reset = #if !macro function():Void _lOut.reset() #else null #end;
                __self__.string = #if !macro function():GoString return _lOut.string() #else null #end;
                __self__.truncate = #if !macro function(_n:GoInt):Void _lOut.truncate(_n) #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _lOut.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _lOut.unreadRune() #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _lOut.write(_p) #else null #end;
                __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _lOut.writeByte(_c) #else null #end;
                __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _lOut.writeRune(_r) #else null #end;
                __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _lOut.writeString(_s) #else null #end;
                __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _lOut.writeTo(_w) #else null #end;
                __self__._empty = #if !macro function():Bool return _lOut._empty() #else null #end;
                __self__._grow = #if !macro function(_n:GoInt):GoInt return _lOut._grow(_n) #else null #end;
                __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _lOut._readSlice(_delim) #else null #end;
                __self__._tryGrowByReslice = #if !macro function(_n:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _lOut._tryGrowByReslice(_n) #else null #end;
                __self__;
            });
            stdgo.log.Log.setFlags(((0 : GoInt)));
            var _data = ((((((("Hello, World!" : GoString))) : GoString)) : Slice<GoByte>));
            var _p = new Slice<GoUInt8>(...[for (i in 0 ... (((_data != null ? _data.length : ((0 : GoInt))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            var _lr:stdgo.io.Io.Reader = errReader(stdgo.errors.Errors.new_(((((("io failure" : GoString))) : GoString))));
            var _rl:stdgo.io.Io.Reader = newReadLogger(((((("read" : GoString))) : GoString)), _lr);
            var __tmp__ = _rl.read(_p), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.fatalf(((((("Unexpectedly succeeded to read: %v" : GoString))) : GoString)), Go.toInterface(_err));
            };
            var _wantLogWithHex:GoString = stdgo.fmt.Fmt.sprintf(((((("lr: read %x: io failure\n" : GoString))) : GoString)), Go.toInterface(((_p.__slice__(0, _n) : Slice<GoUInt8>))));
            {
                var _g:GoString = ((_lOut.string() : GoString)), _w:GoString = _wantLogWithHex;
                if (_g != _w) {
                    _t.errorf(((((("ReadLogger mismatch\n\tgot:  %q\n\twant: %q" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (__recover_exception__ != null) throw __recover_exception__;
                return;
            };
        } catch(__exception__) {
            if (!(__exception__.native is AnyInterfaceData)) throw __exception__;
            __recover_exception__ = __exception__.native;
            for (defer in __deferstack__) {
                defer();
            };
            if (__recover_exception__ != null) throw __recover_exception__;
            return;
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
function testOneByteReader_nonEmptyReader(_t:stdgo.testing.Testing.T):Void {
        var _msg:GoString = ((((("Hello, World!" : GoString))) : GoString));
        var _buf = new stdgo.bytes.Bytes.Buffer();
        _buf.writeString(_msg);
        var _obr:stdgo.io.Io.Reader = oneByteReader({
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_buf);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _buf.cap_() #else null #end;
            __self__.grow = #if !macro function(_n:GoInt):Void _buf.grow(_n) #else null #end;
            __self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
            __self__.next = #if !macro function(_n:GoInt):Slice<GoUInt8> return _buf.next(_n) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _buf.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf.readBytes(_delim) #else null #end;
            __self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.readFrom(_r) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _buf.readRune() #else null #end;
            __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _buf.readString(_delim) #else null #end;
            __self__.reset = #if !macro function():Void _buf.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _buf.string() #else null #end;
            __self__.truncate = #if !macro function(_n:GoInt):Void _buf.truncate(_n) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _buf.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _buf.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeRune(_r) #else null #end;
            __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeString(_s) #else null #end;
            __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return _buf._empty() #else null #end;
            __self__._grow = #if !macro function(_n:GoInt):GoInt return _buf._grow(_n) #else null #end;
            __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf._readSlice(_delim) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_n:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _buf._tryGrowByReslice(_n) #else null #end;
            __self__;
        });
        var _b:Slice<GoByte> = ((null : Slice<GoUInt8>));
        var __tmp__ = _obr.read(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) || (_n != ((0 : GoInt)))) {
            _t.errorf(((((("Empty buffer read returned n=%d err=%v" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_err));
        };
        _b = new Slice<GoUInt8>(...[for (i in 0 ... ((((3 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _got = new stdgo.bytes.Bytes.Buffer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(true, _i++, {
                {
                    var __tmp__ = _obr.read(_b);
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    break;
                };
                {
                    var _g:GoInt = _n, _w:GoInt = ((1 : GoInt));
                    if (_g != _w) {
                        _t.errorf(((((("Iteration #%d read %d bytes, want %d" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_g), Go.toInterface(_w));
                    };
                };
                _got.write(((_b.__slice__(0, _n) : Slice<GoUInt8>)));
            });
        };
        {
            var _g:stdgo.Error = _err, _w:stdgo.Error = stdgo.io.Io.eof;
            if (_g != _w) {
                _t.errorf(((((("Unexpected error after reading all bytes\n\tGot:  %v\n\tWant: %v" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
            };
        };
        {
            var _g:GoString = ((_got.string() : GoString)), _w:GoString = ((((("Hello, World!" : GoString))) : GoString));
            if (_g != _w) {
                _t.errorf(((((("Read mismatch\n\tGot:  %q\n\tWant: %q" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
            };
        };
    }
function testOneByteReader_emptyReader(_t:stdgo.testing.Testing.T):Void {
        var _r = new stdgo.bytes.Bytes.Buffer();
        var _obr:stdgo.io.Io.Reader = oneByteReader({
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_r);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _r.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _r.cap_() #else null #end;
            __self__.grow = #if !macro function(_n:GoInt):Void _r.grow(_n) #else null #end;
            __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
            __self__.next = #if !macro function(_n:GoInt):Slice<GoUInt8> return _r.next(_n) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _r.readBytes(_delim) #else null #end;
            __self__.readFrom = #if !macro function(_r_:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.readFrom(_r_) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
            __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _r.readString(_delim) #else null #end;
            __self__.reset = #if !macro function():Void _r.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _r.string() #else null #end;
            __self__.truncate = #if !macro function(_n:GoInt):Void _r.truncate(_n) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _r.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_r__:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.writeRune(_r__) #else null #end;
            __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.writeString(_s) #else null #end;
            __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return _r._empty() #else null #end;
            __self__._grow = #if !macro function(_n:GoInt):GoInt return _r._grow(_n) #else null #end;
            __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _r._readSlice(_delim) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_n:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _r._tryGrowByReslice(_n) #else null #end;
            __self__;
        });
        var _b:Slice<GoByte> = ((null : Slice<GoUInt8>));
        {
            var __tmp__ = _obr.read(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err != null) || (_n != ((0 : GoInt)))) {
                _t.errorf(((((("Empty buffer read returned n=%d err=%v" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        _b = new Slice<GoUInt8>(...[for (i in 0 ... ((((5 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = _obr.read(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        {
            var _g:stdgo.Error = _err, _w:stdgo.Error = stdgo.io.Io.eof;
            if (_g != _w) {
                _t.errorf(((((("Error mismatch\n\tGot:  %v\n\tWant: %v" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
            };
        };
        {
            var _g:GoInt = _n, _w:GoInt = ((0 : GoInt));
            if (_g != _w) {
                _t.errorf(((((("Unexpectedly read %d bytes, wanted %d" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
            };
        };
    }
function testHalfReader_nonEmptyReader(_t:stdgo.testing.Testing.T):Void {
        var _msg:GoString = ((((("Hello, World!" : GoString))) : GoString));
        var _buf = new stdgo.bytes.Bytes.Buffer();
        _buf.writeString(_msg);
        var _hr:stdgo.io.Io.Reader = halfReader({
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_buf);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _buf.cap_() #else null #end;
            __self__.grow = #if !macro function(_n:GoInt):Void _buf.grow(_n) #else null #end;
            __self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
            __self__.next = #if !macro function(_n:GoInt):Slice<GoUInt8> return _buf.next(_n) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _buf.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf.readBytes(_delim) #else null #end;
            __self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.readFrom(_r) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _buf.readRune() #else null #end;
            __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _buf.readString(_delim) #else null #end;
            __self__.reset = #if !macro function():Void _buf.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _buf.string() #else null #end;
            __self__.truncate = #if !macro function(_n:GoInt):Void _buf.truncate(_n) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _buf.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _buf.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeRune(_r) #else null #end;
            __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeString(_s) #else null #end;
            __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return _buf._empty() #else null #end;
            __self__._grow = #if !macro function(_n:GoInt):GoInt return _buf._grow(_n) #else null #end;
            __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf._readSlice(_delim) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_n:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _buf._tryGrowByReslice(_n) #else null #end;
            __self__;
        });
        var _b:Slice<GoByte> = ((null : Slice<GoUInt8>));
        var __tmp__ = _hr.read(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) || (_n != ((0 : GoInt)))) {
            _t.errorf(((((("Empty buffer read returned n=%d err=%v" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_err));
        };
        _b = new Slice<GoUInt8>(...[for (i in 0 ... ((((2 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _got = new stdgo.bytes.Bytes.Buffer();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(true, _i++, {
                {
                    var __tmp__ = _hr.read(_b);
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    break;
                };
                {
                    var _g:GoInt = _n, _w:GoInt = ((1 : GoInt));
                    if (_g != _w) {
                        _t.errorf(((((("Iteration #%d read %d bytes, want %d" : GoString))) : GoString)), Go.toInterface(_i), Go.toInterface(_g), Go.toInterface(_w));
                    };
                };
                _got.write(((_b.__slice__(0, _n) : Slice<GoUInt8>)));
            });
        };
        {
            var _g:stdgo.Error = _err, _w:stdgo.Error = stdgo.io.Io.eof;
            if (_g != _w) {
                _t.errorf(((((("Unexpected error after reading all bytes\n\tGot:  %v\n\tWant: %v" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
            };
        };
        {
            var _g:GoString = ((_got.string() : GoString)), _w:GoString = ((((("Hello, World!" : GoString))) : GoString));
            if (_g != _w) {
                _t.errorf(((((("Read mismatch\n\tGot:  %q\n\tWant: %q" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
            };
        };
    }
function testHalfReader_emptyReader(_t:stdgo.testing.Testing.T):Void {
        var _r = new stdgo.bytes.Bytes.Buffer();
        var _hr:stdgo.io.Io.Reader = halfReader({
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_r);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _r.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _r.cap_() #else null #end;
            __self__.grow = #if !macro function(_n:GoInt):Void _r.grow(_n) #else null #end;
            __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
            __self__.next = #if !macro function(_n:GoInt):Slice<GoUInt8> return _r.next(_n) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _r.readBytes(_delim) #else null #end;
            __self__.readFrom = #if !macro function(_r_:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.readFrom(_r_) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
            __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _r.readString(_delim) #else null #end;
            __self__.reset = #if !macro function():Void _r.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _r.string() #else null #end;
            __self__.truncate = #if !macro function(_n:GoInt):Void _r.truncate(_n) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _r.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_r__:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.writeRune(_r__) #else null #end;
            __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.writeString(_s) #else null #end;
            __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return _r._empty() #else null #end;
            __self__._grow = #if !macro function(_n:GoInt):GoInt return _r._grow(_n) #else null #end;
            __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _r._readSlice(_delim) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_n:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _r._tryGrowByReslice(_n) #else null #end;
            __self__;
        });
        var _b:Slice<GoByte> = ((null : Slice<GoUInt8>));
        {
            var __tmp__ = _hr.read(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err != null) || (_n != ((0 : GoInt)))) {
                _t.errorf(((((("Empty buffer read returned n=%d err=%v" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        _b = new Slice<GoUInt8>(...[for (i in 0 ... ((((5 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = _hr.read(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        {
            var _g:stdgo.Error = _err, _w:stdgo.Error = stdgo.io.Io.eof;
            if (_g != _w) {
                _t.errorf(((((("Error mismatch\n\tGot:  %v\n\tWant: %v" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
            };
        };
        {
            var _g:GoInt = _n, _w:GoInt = ((0 : GoInt));
            if (_g != _w) {
                _t.errorf(((((("Unexpectedly read %d bytes, wanted %d" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
            };
        };
    }
function testTimeOutReader_nonEmptyReader(_t:stdgo.testing.Testing.T):Void {
        var _msg:GoString = ((((("Hello, World!" : GoString))) : GoString));
        var _buf = new stdgo.bytes.Bytes.Buffer();
        _buf.writeString(_msg);
        var _tor:stdgo.io.Io.Reader = timeoutReader({
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_buf);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _buf.cap_() #else null #end;
            __self__.grow = #if !macro function(_n:GoInt):Void _buf.grow(_n) #else null #end;
            __self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
            __self__.next = #if !macro function(_n:GoInt):Slice<GoUInt8> return _buf.next(_n) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _buf.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf.readBytes(_delim) #else null #end;
            __self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.readFrom(_r) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _buf.readRune() #else null #end;
            __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _buf.readString(_delim) #else null #end;
            __self__.reset = #if !macro function():Void _buf.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _buf.string() #else null #end;
            __self__.truncate = #if !macro function(_n:GoInt):Void _buf.truncate(_n) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _buf.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _buf.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeRune(_r) #else null #end;
            __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeString(_s) #else null #end;
            __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return _buf._empty() #else null #end;
            __self__._grow = #if !macro function(_n:GoInt):GoInt return _buf._grow(_n) #else null #end;
            __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf._readSlice(_delim) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_n:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _buf._tryGrowByReslice(_n) #else null #end;
            __self__;
        });
        var _b:Slice<GoByte> = ((null : Slice<GoUInt8>));
        var __tmp__ = _tor.read(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_err != null) || (_n != ((0 : GoInt)))) {
            _t.errorf(((((("Empty buffer read returned n=%d err=%v" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_err));
        };
        {
            var __tmp__ = _tor.read(_b);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        {
            var _g:stdgo.Error = _err, _w:stdgo.Error = errTimeout;
            if (_g != _w) {
                _t.errorf(((((("Error mismatch\n\tGot:  %v\n\tWant: %v" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
            };
        };
        {
            var _g:GoInt = _n, _w:GoInt = ((0 : GoInt));
            if (_g != _w) {
                _t.errorf(((((("Unexpectedly read %d bytes, wanted %d" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
            };
        };
        var _tor2:stdgo.io.Io.Reader = timeoutReader({
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_buf);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _buf.cap_() #else null #end;
            __self__.grow = #if !macro function(_n_:GoInt):Void _buf.grow(_n_) #else null #end;
            __self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
            __self__.next = #if !macro function(_n__:GoInt):Slice<GoUInt8> return _buf.next(_n__) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _buf.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf.readBytes(_delim) #else null #end;
            __self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.readFrom(_r) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _buf.readRune() #else null #end;
            __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _buf.readString(_delim) #else null #end;
            __self__.reset = #if !macro function():Void _buf.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _buf.string() #else null #end;
            __self__.truncate = #if !macro function(_n___:GoInt):Void _buf.truncate(_n___) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _buf.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _buf.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeRune(_r) #else null #end;
            __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeString(_s) #else null #end;
            __self__.writeTo = #if !macro function(_w_:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.writeTo(_w_) #else null #end;
            __self__._empty = #if !macro function():Bool return _buf._empty() #else null #end;
            __self__._grow = #if !macro function(_n____:GoInt):GoInt return _buf._grow(_n____) #else null #end;
            __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf._readSlice(_delim) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_n_____:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _buf._tryGrowByReslice(_n_____) #else null #end;
            __self__;
        });
        _b = new Slice<GoUInt8>(...[for (i in 0 ... ((((3 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = _tor2.read(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err != null) || (_n == ((0 : GoInt)))) {
                _t.errorf(((((("Empty buffer read returned n=%d err=%v" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _tor2.read(_b);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        {
            var _g:stdgo.Error = _err, _w:stdgo.Error = errTimeout;
            if (_g != _w) {
                _t.errorf(((((("Error mismatch\n\tGot:  %v\n\tWant: %v" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
            };
        };
        {
            var _g:GoInt = _n, _w:GoInt = ((0 : GoInt));
            if (_g != _w) {
                _t.errorf(((((("Unexpectedly read %d bytes, wanted %d" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
            };
        };
    }
function testTimeOutReader_emptyReader(_t:stdgo.testing.Testing.T):Void {
        var _r = new stdgo.bytes.Bytes.Buffer();
        var _tor:stdgo.io.Io.Reader = timeoutReader({
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_r);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _r.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _r.cap_() #else null #end;
            __self__.grow = #if !macro function(_n:GoInt):Void _r.grow(_n) #else null #end;
            __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
            __self__.next = #if !macro function(_n:GoInt):Slice<GoUInt8> return _r.next(_n) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _r.readBytes(_delim) #else null #end;
            __self__.readFrom = #if !macro function(_r_:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.readFrom(_r_) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
            __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _r.readString(_delim) #else null #end;
            __self__.reset = #if !macro function():Void _r.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _r.string() #else null #end;
            __self__.truncate = #if !macro function(_n:GoInt):Void _r.truncate(_n) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _r.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_r__:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.writeRune(_r__) #else null #end;
            __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.writeString(_s) #else null #end;
            __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return _r._empty() #else null #end;
            __self__._grow = #if !macro function(_n:GoInt):GoInt return _r._grow(_n) #else null #end;
            __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _r._readSlice(_delim) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_n:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _r._tryGrowByReslice(_n) #else null #end;
            __self__;
        });
        var _b:Slice<GoByte> = ((null : Slice<GoUInt8>));
        {
            var __tmp__ = _tor.read(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err != null) || (_n != ((0 : GoInt)))) {
                _t.errorf(((((("Empty buffer read returned n=%d err=%v" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        var __tmp__ = _tor.read(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        {
            var _g:stdgo.Error = _err, _w:stdgo.Error = errTimeout;
            if (_g != _w) {
                _t.errorf(((((("Error mismatch\n\tGot:  %v\n\tWant: %v" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
            };
        };
        {
            var _g:GoInt = _n, _w:GoInt = ((0 : GoInt));
            if (_g != _w) {
                _t.errorf(((((("Unexpectedly read %d bytes, wanted %d" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
            };
        };
        var _tor2:stdgo.io.Io.Reader = timeoutReader({
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_r);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _r.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _r.cap_() #else null #end;
            __self__.grow = #if !macro function(_n_:GoInt):Void _r.grow(_n_) #else null #end;
            __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
            __self__.next = #if !macro function(_n__:GoInt):Slice<GoUInt8> return _r.next(_n__) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _r.readBytes(_delim) #else null #end;
            __self__.readFrom = #if !macro function(_r_:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.readFrom(_r_) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
            __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _r.readString(_delim) #else null #end;
            __self__.reset = #if !macro function():Void _r.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _r.string() #else null #end;
            __self__.truncate = #if !macro function(_n___:GoInt):Void _r.truncate(_n___) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _r.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_r__:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.writeRune(_r__) #else null #end;
            __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.writeString(_s) #else null #end;
            __self__.writeTo = #if !macro function(_w_:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w_) #else null #end;
            __self__._empty = #if !macro function():Bool return _r._empty() #else null #end;
            __self__._grow = #if !macro function(_n____:GoInt):GoInt return _r._grow(_n____) #else null #end;
            __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _r._readSlice(_delim) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_n_____:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _r._tryGrowByReslice(_n_____) #else null #end;
            __self__;
        });
        _b = new Slice<GoUInt8>(...[for (i in 0 ... ((((5 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        {
            var __tmp__ = _tor2.read(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err != stdgo.io.Io.eof) || (_n != ((0 : GoInt)))) {
                _t.errorf(((((("Empty buffer read returned n=%d err=%v" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = _tor2.read(_b);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        {
            var _g:stdgo.Error = _err, _w:stdgo.Error = errTimeout;
            if (_g != _w) {
                _t.errorf(((((("Error mismatch\n\tGot:  %v\n\tWant: %v" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
            };
        };
        {
            var _g:GoInt = _n, _w:GoInt = ((0 : GoInt));
            if (_g != _w) {
                _t.errorf(((((("Unexpectedly read %d bytes, wanted %d" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
            };
        };
    }
function testDataErrReader_nonEmptyReader(_t:stdgo.testing.Testing.T):Void {
        var _msg:GoString = ((((("Hello, World!" : GoString))) : GoString));
        var _buf = new stdgo.bytes.Bytes.Buffer();
        _buf.writeString(_msg);
        var _der:stdgo.io.Io.Reader = dataErrReader({
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_buf);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _buf.cap_() #else null #end;
            __self__.grow = #if !macro function(_n:GoInt):Void _buf.grow(_n) #else null #end;
            __self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
            __self__.next = #if !macro function(_n:GoInt):Slice<GoUInt8> return _buf.next(_n) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _buf.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf.readBytes(_delim) #else null #end;
            __self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.readFrom(_r) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _buf.readRune() #else null #end;
            __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _buf.readString(_delim) #else null #end;
            __self__.reset = #if !macro function():Void _buf.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _buf.string() #else null #end;
            __self__.truncate = #if !macro function(_n:GoInt):Void _buf.truncate(_n) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _buf.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _buf.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeRune(_r) #else null #end;
            __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeString(_s) #else null #end;
            __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return _buf._empty() #else null #end;
            __self__._grow = #if !macro function(_n:GoInt):GoInt return _buf._grow(_n) #else null #end;
            __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf._readSlice(_delim) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_n:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _buf._tryGrowByReslice(_n) #else null #end;
            __self__;
        });
        var _b = new Slice<GoUInt8>(...[for (i in 0 ... ((((3 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _got = new stdgo.bytes.Bytes.Buffer();
        var _n:GoInt = ((0 : GoInt));
        var _err:Error = ((null : stdgo.Error));
        while (true) {
            {
                var __tmp__ = _der.read(_b);
                _n = __tmp__._0;
                _err = __tmp__._1;
            };
            _got.write(((_b.__slice__(0, _n) : Slice<GoUInt8>)));
            if (_err != null) {
                break;
            };
        };
        if ((_err != stdgo.io.Io.eof) || (_n == ((0 : GoInt)))) {
            _t.errorf(((((("Last Read returned n=%d err=%v" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_err));
        };
        {
            var _g:GoString = ((_got.string() : GoString)), _w:GoString = ((((("Hello, World!" : GoString))) : GoString));
            if (_g != _w) {
                _t.errorf(((((("Read mismatch\n\tGot:  %q\n\tWant: %q" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
            };
        };
    }
function testDataErrReader_emptyReader(_t:stdgo.testing.Testing.T):Void {
        var _r = new stdgo.bytes.Bytes.Buffer();
        var _der:stdgo.io.Io.Reader = dataErrReader({
            final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_r);
            __self__.bytes = #if !macro function():Slice<GoUInt8> return _r.bytes() #else null #end;
            __self__.cap_ = #if !macro function():GoInt return _r.cap_() #else null #end;
            __self__.grow = #if !macro function(_n:GoInt):Void _r.grow(_n) #else null #end;
            __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
            __self__.next = #if !macro function(_n:GoInt):Slice<GoUInt8> return _r.next(_n) #else null #end;
            __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_p) #else null #end;
            __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
            __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _r.readBytes(_delim) #else null #end;
            __self__.readFrom = #if !macro function(_r_:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.readFrom(_r_) #else null #end;
            __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
            __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _r.readString(_delim) #else null #end;
            __self__.reset = #if !macro function():Void _r.reset() #else null #end;
            __self__.string = #if !macro function():GoString return _r.string() #else null #end;
            __self__.truncate = #if !macro function(_n:GoInt):Void _r.truncate(_n) #else null #end;
            __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
            __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
            __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.write(_p) #else null #end;
            __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _r.writeByte(_c) #else null #end;
            __self__.writeRune = #if !macro function(_r__:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.writeRune(_r__) #else null #end;
            __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.writeString(_s) #else null #end;
            __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
            __self__._empty = #if !macro function():Bool return _r._empty() #else null #end;
            __self__._grow = #if !macro function(_n:GoInt):GoInt return _r._grow(_n) #else null #end;
            __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _r._readSlice(_delim) #else null #end;
            __self__._tryGrowByReslice = #if !macro function(_n:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _r._tryGrowByReslice(_n) #else null #end;
            __self__;
        });
        var _b:Slice<GoByte> = ((null : Slice<GoUInt8>));
        {
            var __tmp__ = _der.read(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err != stdgo.io.Io.eof) || (_n != ((0 : GoInt)))) {
                _t.errorf(((((("Empty buffer read returned n=%d err=%v" : GoString))) : GoString)), Go.toInterface(_n), Go.toInterface(_err));
            };
        };
        _b = new Slice<GoUInt8>(...[for (i in 0 ... ((((5 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = _der.read(_b), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        {
            var _g:stdgo.Error = _err, _w:stdgo.Error = stdgo.io.Io.eof;
            if (_g != _w) {
                _t.errorf(((((("Error mismatch\n\tGot:  %v\n\tWant: %v" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
            };
        };
        {
            var _g:GoInt = _n, _w:GoInt = ((0 : GoInt));
            if (_g != _w) {
                _t.errorf(((((("Unexpectedly read %d bytes, wanted %d" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
            };
        };
    }
function testErrReader(_t:stdgo.testing.Testing.T):Void {
        var _cases = ((new Slice<T__struct_0>(((new T__struct_0(((((("nil error" : GoString))) : GoString)), ((null : stdgo.Error))) : T__struct_0)), ((new T__struct_0(((((("non-nil error" : GoString))) : GoString)), stdgo.errors.Errors.new_(((((("io failure" : GoString))) : GoString)))) : T__struct_0)), ((new T__struct_0(((((("io.EOF" : GoString))) : GoString)), stdgo.io.Io.eof) : T__struct_0))) : Slice<T__struct_0>));
        for (_0 => _tt in _cases) {
            var _tt:T__struct_0 = (_tt == null ? null : _tt.__copy__());
            _t.run(_tt._name, function(_t:stdgo.testing.Testing.T):Void {
                var __tmp__ = errReader(_tt._err).read(((null : Slice<GoUInt8>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != _tt._err) {
                    _t.fatalf(((((("Error mismatch\nGot:  %v\nWant: %v" : GoString))) : GoString)), Go.toInterface(_err), Go.toInterface(_tt._err));
                };
                if (_n != ((0 : GoInt))) {
                    _t.fatalf(((((("Byte count mismatch: got %d want 0" : GoString))) : GoString)), Go.toInterface(_n));
                };
            });
        };
    }
function testStringsReader(_t:stdgo.testing.Testing.T):Void {
        {};
        var _r = stdgo.strings.Strings.newReader(((((("Now is the time for all good gophers." : GoString))) : GoString)));
        {
            var _err:stdgo.Error = testReader({
                final __self__ = new stdgo.strings.Strings.Reader_wrapper(_r);
                __self__.len = #if !macro function():GoInt return _r.len() #else null #end;
                __self__.read = #if !macro function(_b:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.read(_b) #else null #end;
                __self__.readAt = #if !macro function(_b:Slice<GoUInt8>, _off:GoInt64):{ var _0 : GoInt; var _1 : stdgo.Error; } return _r.readAt(_b, _off) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _r.readByte() #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _r.readRune() #else null #end;
                __self__.reset = #if !macro function(_s:GoString):Void _r.reset(_s) #else null #end;
                __self__.seek = #if !macro function(_offset:GoInt64, _whence:GoInt):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.seek(_offset, _whence) #else null #end;
                __self__.size = #if !macro function():GoInt64 return _r.size() #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _r.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _r.unreadRune() #else null #end;
                __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _r.writeTo(_w) #else null #end;
                __self__;
            }, ((((((("Now is the time for all good gophers." : GoString))) : GoString)) : Slice<GoByte>)));
            if (_err != null) {
                _t.fatal(Go.toInterface(_err));
            };
        };
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
function testTruncateWriter(_t:stdgo.testing.Testing.T):Void {
        for (_0 => _tt in _truncateWriterTests) {
            var _buf = new stdgo.bytes.Bytes.Buffer();
            var _tw:stdgo.io.Io.Writer = truncateWriter({
                final __self__ = new stdgo.bytes.Bytes.Buffer_wrapper(_buf);
                __self__.bytes = #if !macro function():Slice<GoUInt8> return _buf.bytes() #else null #end;
                __self__.cap_ = #if !macro function():GoInt return _buf.cap_() #else null #end;
                __self__.grow = #if !macro function(_n:GoInt):Void _buf.grow(_n) #else null #end;
                __self__.len = #if !macro function():GoInt return _buf.len() #else null #end;
                __self__.next = #if !macro function(_n:GoInt):Slice<GoUInt8> return _buf.next(_n) #else null #end;
                __self__.read = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.read(_p) #else null #end;
                __self__.readByte = #if !macro function():{ var _0 : GoUInt8; var _1 : stdgo.Error; } return _buf.readByte() #else null #end;
                __self__.readBytes = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf.readBytes(_delim) #else null #end;
                __self__.readFrom = #if !macro function(_r:stdgo.io.Io.Reader):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.readFrom(_r) #else null #end;
                __self__.readRune = #if !macro function():{ var _0 : GoInt32; var _1 : GoInt; var _2 : stdgo.Error; } return _buf.readRune() #else null #end;
                __self__.readString = #if !macro function(_delim:GoUInt8):{ var _0 : GoString; var _1 : stdgo.Error; } return _buf.readString(_delim) #else null #end;
                __self__.reset = #if !macro function():Void _buf.reset() #else null #end;
                __self__.string = #if !macro function():GoString return _buf.string() #else null #end;
                __self__.truncate = #if !macro function(_n:GoInt):Void _buf.truncate(_n) #else null #end;
                __self__.unreadByte = #if !macro function():stdgo.Error return _buf.unreadByte() #else null #end;
                __self__.unreadRune = #if !macro function():stdgo.Error return _buf.unreadRune() #else null #end;
                __self__.write = #if !macro function(_p:Slice<GoUInt8>):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.write(_p) #else null #end;
                __self__.writeByte = #if !macro function(_c:GoUInt8):stdgo.Error return _buf.writeByte(_c) #else null #end;
                __self__.writeRune = #if !macro function(_r:GoInt32):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeRune(_r) #else null #end;
                __self__.writeString = #if !macro function(_s:GoString):{ var _0 : GoInt; var _1 : stdgo.Error; } return _buf.writeString(_s) #else null #end;
                __self__.writeTo = #if !macro function(_w:stdgo.io.Io.Writer):{ var _0 : GoInt64; var _1 : stdgo.Error; } return _buf.writeTo(_w) #else null #end;
                __self__._empty = #if !macro function():Bool return _buf._empty() #else null #end;
                __self__._grow = #if !macro function(_n:GoInt):GoInt return _buf._grow(_n) #else null #end;
                __self__._readSlice = #if !macro function(_delim:GoUInt8):{ var _0 : Slice<GoUInt8>; var _1 : stdgo.Error; } return _buf._readSlice(_delim) #else null #end;
                __self__._tryGrowByReslice = #if !macro function(_n:GoInt):{ var _0 : GoInt; var _1 : Bool; } return _buf._tryGrowByReslice(_n) #else null #end;
                __self__;
            }, _tt._trunc);
            var __tmp__ = _tw.write(((_tt._in : Slice<GoByte>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(((((("Unexpected error %v for\n\t%+v" : GoString))) : GoString)), Go.toInterface(_err), Go.toInterface(_tt));
            };
            {
                var _g:GoString = ((_buf.string() : GoString)), _w:GoString = _tt._want;
                if (_g != _w) {
                    _t.errorf(((((("got %q, expected %q" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w));
                };
            };
            {
                var _g:GoInt = _n, _w:GoInt = _tt._n;
                if (_g != _w) {
                    _t.errorf(((((("read %d bytes, but expected to have read %d bytes for\n\t%+v" : GoString))) : GoString)), Go.toInterface(_g), Go.toInterface(_w), Go.toInterface(_tt));
                };
            };
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
@:keep class T_errWriter_static_extension {
    @:keep
    static public function write( _w:T_errWriter, _0:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return { _0 : ((0 : GoInt)), _1 : _w._err };
    }
}
class T_errWriter_wrapper {
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_errWriter;
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
