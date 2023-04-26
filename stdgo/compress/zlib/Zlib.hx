package stdgo.compress.zlib;
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
    /|*
    Package zlib implements reading and writing of zlib format compressed data,
    as specified in RFC 1950.
    
    The implementation provides filters that uncompress during reading
    and compress during writing.  For example, to write compressed data
    to a buffer:
    
    	var b bytes.Buffer
    	w := zlib.NewWriter(&b)
    	w.Write([]byte("hello, world\n"))
    	w.Close()
    
    and to read that data back:
    
    	r, err := zlib.NewReader(&b)
    	io.Copy(os.Stdout, r)
    	r.Close()
    *|/
**/
private var __go2hxdoc__package : Bool;
/**
    // ErrChecksum is returned when reading ZLIB data that has an invalid checksum.
    
    
**/
var errChecksum = stdgo.errors.Errors.new_(("zlib: invalid checksum" : GoString));
/**
    // ErrDictionary is returned when reading ZLIB data that has an invalid dictionary.
    
    
**/
var errDictionary = stdgo.errors.Errors.new_(("zlib: invalid dictionary" : GoString));
/**
    // ErrHeader is returned when reading ZLIB data that has an invalid header.
    
    
**/
var errHeader = stdgo.errors.Errors.new_(("zlib: invalid header" : GoString));
/**
    
    
    
**/
private var _zlibTests = (new Slice<stdgo.compress.zlib.Zlib.T_zlibTest>(
14,
14,
(new stdgo.compress.zlib.Zlib.T_zlibTest(("truncated empty" : GoString), Go.str(), (new Slice<GoUInt8>(0, 0) : Slice<GoUInt8>), (null : Slice<GoUInt8>), stdgo.io.Io.errUnexpectedEOF) : stdgo.compress.zlib.Zlib.T_zlibTest),
(new stdgo.compress.zlib.Zlib.T_zlibTest(("truncated dict" : GoString), Go.str(), (new Slice<GoUInt8>(2, 2, (120 : GoUInt8), (187 : GoUInt8)) : Slice<GoUInt8>), (new Slice<GoUInt8>(1, 1, (0 : GoUInt8)) : Slice<GoUInt8>), stdgo.io.Io.errUnexpectedEOF) : stdgo.compress.zlib.Zlib.T_zlibTest),
(new stdgo.compress.zlib.Zlib.T_zlibTest(("truncated checksum" : GoString), Go.str(), (new Slice<GoUInt8>(
24,
24,
(120 : GoUInt8),
(187 : GoUInt8),
(0 : GoUInt8),
(1 : GoUInt8),
(0 : GoUInt8),
(1 : GoUInt8),
(202 : GoUInt8),
(72 : GoUInt8),
(205 : GoUInt8),
(201 : GoUInt8),
(201 : GoUInt8),
(215 : GoUInt8),
(81 : GoUInt8),
(40 : GoUInt8),
(207 : GoUInt8),
(47 : GoUInt8),
(202 : GoUInt8),
(73 : GoUInt8),
(1 : GoUInt8),
(4 : GoUInt8),
(0 : GoUInt8),
(0 : GoUInt8),
(255 : GoUInt8),
(255 : GoUInt8)) : Slice<GoUInt8>), (new Slice<GoUInt8>(1, 1, (0 : GoUInt8)) : Slice<GoUInt8>), stdgo.io.Io.errUnexpectedEOF) : stdgo.compress.zlib.Zlib.T_zlibTest),
(new stdgo.compress.zlib.Zlib.T_zlibTest(("empty" : GoString), Go.str(), (new Slice<GoUInt8>(8, 8, (120 : GoUInt8), (156 : GoUInt8), (3 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (1 : GoUInt8)) : Slice<GoUInt8>), (null : Slice<GoUInt8>), (null : Error)) : stdgo.compress.zlib.Zlib.T_zlibTest),
(new stdgo.compress.zlib.Zlib.T_zlibTest(("goodbye" : GoString), ("goodbye, world" : GoString), (new Slice<GoUInt8>(
22,
22,
(120 : GoUInt8),
(156 : GoUInt8),
(75 : GoUInt8),
(207 : GoUInt8),
(207 : GoUInt8),
(79 : GoUInt8),
(73 : GoUInt8),
(170 : GoUInt8),
(76 : GoUInt8),
(213 : GoUInt8),
(81 : GoUInt8),
(40 : GoUInt8),
(207 : GoUInt8),
(47 : GoUInt8),
(202 : GoUInt8),
(73 : GoUInt8),
(1 : GoUInt8),
(0 : GoUInt8),
(40 : GoUInt8),
(165 : GoUInt8),
(5 : GoUInt8),
(94 : GoUInt8)) : Slice<GoUInt8>), (null : Slice<GoUInt8>), (null : Error)) : stdgo.compress.zlib.Zlib.T_zlibTest),
(new stdgo.compress.zlib.Zlib.T_zlibTest(("bad header (CINFO)" : GoString), Go.str(), (new Slice<GoUInt8>(8, 8, (136 : GoUInt8), (152 : GoUInt8), (3 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (1 : GoUInt8)) : Slice<GoUInt8>), (null : Slice<GoUInt8>), errHeader) : stdgo.compress.zlib.Zlib.T_zlibTest),
(new stdgo.compress.zlib.Zlib.T_zlibTest(("bad header (FCHECK)" : GoString), Go.str(), (new Slice<GoUInt8>(8, 8, (120 : GoUInt8), (159 : GoUInt8), (3 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (1 : GoUInt8)) : Slice<GoUInt8>), (null : Slice<GoUInt8>), errHeader) : stdgo.compress.zlib.Zlib.T_zlibTest),
(new stdgo.compress.zlib.Zlib.T_zlibTest(("bad checksum" : GoString), Go.str(), (new Slice<GoUInt8>(8, 8, (120 : GoUInt8), (156 : GoUInt8), (3 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (255 : GoUInt8)) : Slice<GoUInt8>), (null : Slice<GoUInt8>), errChecksum) : stdgo.compress.zlib.Zlib.T_zlibTest),
(new stdgo.compress.zlib.Zlib.T_zlibTest(("not enough data" : GoString), Go.str(), (new Slice<GoUInt8>(6, 6, (120 : GoUInt8), (156 : GoUInt8), (3 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8), (0 : GoUInt8)) : Slice<GoUInt8>), (null : Slice<GoUInt8>), stdgo.io.Io.errUnexpectedEOF) : stdgo.compress.zlib.Zlib.T_zlibTest),
(new stdgo.compress.zlib.Zlib.T_zlibTest(("excess data is silently ignored" : GoString), Go.str(), (new Slice<GoUInt8>(
11,
11,
(120 : GoUInt8),
(156 : GoUInt8),
(3 : GoUInt8),
(0 : GoUInt8),
(0 : GoUInt8),
(0 : GoUInt8),
(0 : GoUInt8),
(1 : GoUInt8),
(120 : GoUInt8),
(156 : GoUInt8),
(255 : GoUInt8)) : Slice<GoUInt8>), (null : Slice<GoUInt8>), (null : Error)) : stdgo.compress.zlib.Zlib.T_zlibTest),
(new stdgo.compress.zlib.Zlib.T_zlibTest(("dictionary" : GoString), ("Hello, World!\n" : GoString), (new Slice<GoUInt8>(
19,
19,
(120 : GoUInt8),
(187 : GoUInt8),
(28 : GoUInt8),
(50 : GoUInt8),
(4 : GoUInt8),
(39 : GoUInt8),
(243 : GoUInt8),
(0 : GoUInt8),
(177 : GoUInt8),
(117 : GoUInt8),
(32 : GoUInt8),
(28 : GoUInt8),
(69 : GoUInt8),
(46 : GoUInt8),
(0 : GoUInt8),
(36 : GoUInt8),
(18 : GoUInt8),
(4 : GoUInt8),
(116 : GoUInt8)) : Slice<GoUInt8>), (new Slice<GoUInt8>(
12,
12,
(72 : GoUInt8),
(101 : GoUInt8),
(108 : GoUInt8),
(108 : GoUInt8),
(111 : GoUInt8),
(32 : GoUInt8),
(87 : GoUInt8),
(111 : GoUInt8),
(114 : GoUInt8),
(108 : GoUInt8),
(100 : GoUInt8),
(10 : GoUInt8)) : Slice<GoUInt8>), (null : Error)) : stdgo.compress.zlib.Zlib.T_zlibTest),
(new stdgo.compress.zlib.Zlib.T_zlibTest(("wrong dictionary" : GoString), Go.str(), (new Slice<GoUInt8>(
19,
19,
(120 : GoUInt8),
(187 : GoUInt8),
(28 : GoUInt8),
(50 : GoUInt8),
(4 : GoUInt8),
(39 : GoUInt8),
(243 : GoUInt8),
(0 : GoUInt8),
(177 : GoUInt8),
(117 : GoUInt8),
(32 : GoUInt8),
(28 : GoUInt8),
(69 : GoUInt8),
(46 : GoUInt8),
(0 : GoUInt8),
(36 : GoUInt8),
(18 : GoUInt8),
(4 : GoUInt8),
(116 : GoUInt8)) : Slice<GoUInt8>), (new Slice<GoUInt8>(4, 4, (72 : GoUInt8), (101 : GoUInt8), (108 : GoUInt8), (108 : GoUInt8)) : Slice<GoUInt8>), errDictionary) : stdgo.compress.zlib.Zlib.T_zlibTest),
(new stdgo.compress.zlib.Zlib.T_zlibTest(("truncated zlib stream amid raw-block" : GoString), ("hello" : GoString), (new Slice<GoUInt8>(
12,
12,
(120 : GoUInt8),
(156 : GoUInt8),
(0 : GoUInt8),
(12 : GoUInt8),
(0 : GoUInt8),
(243 : GoUInt8),
(255 : GoUInt8),
(104 : GoUInt8),
(101 : GoUInt8),
(108 : GoUInt8),
(108 : GoUInt8),
(111 : GoUInt8)) : Slice<GoUInt8>), (null : Slice<GoUInt8>), stdgo.io.Io.errUnexpectedEOF) : stdgo.compress.zlib.Zlib.T_zlibTest),
(new stdgo.compress.zlib.Zlib.T_zlibTest(("truncated zlib stream amid fixed-block" : GoString), ("He" : GoString), (new Slice<GoUInt8>(5, 5, (120 : GoUInt8), (156 : GoUInt8), (242 : GoUInt8), (72 : GoUInt8), (205 : GoUInt8)) : Slice<GoUInt8>), (null : Slice<GoUInt8>), stdgo.io.Io.errUnexpectedEOF) : stdgo.compress.zlib.Zlib.T_zlibTest)) : Slice<stdgo.compress.zlib.Zlib.T_zlibTest>);
/**
    
    
    
**/
private var _filenames = (new Slice<GoString>(3, 3, ("../testdata/gettysburg.txt" : GoString), ("../testdata/e.txt" : GoString), ("../testdata/pi.txt" : GoString)) : Slice<GoString>);
/**
    
    
    
**/
private var _data = (new Slice<GoString>(1, 1, ("test a reasonable sized string that can be compressed" : GoString)) : Slice<GoString>);
/**
    
    
    
**/
private final _zlibDeflate = (8i64 : GoUInt64);
/**
    
    
    
**/
private final _zlibMaxWindow = (7i64 : GoUInt64);
/**
    // These constants are copied from the flate package, so that code that imports
    // "compress/zlib" does not also have to import "compress/flate".
    
    
**/
final noCompression = (0i64 : GoUInt64);
/**
    // These constants are copied from the flate package, so that code that imports
    // "compress/zlib" does not also have to import "compress/flate".
    
    
**/
final bestSpeed = (1i64 : GoUInt64);
/**
    // These constants are copied from the flate package, so that code that imports
    // "compress/zlib" does not also have to import "compress/flate".
    
    
**/
final bestCompression = (9i64 : GoUInt64);
/**
    // These constants are copied from the flate package, so that code that imports
    // "compress/zlib" does not also have to import "compress/flate".
    
    
**/
final defaultCompression = (0i64 : GoUInt64);
/**
    // These constants are copied from the flate package, so that code that imports
    // "compress/zlib" does not also have to import "compress/flate".
    
    
**/
final huffmanOnly = (0i64 : GoUInt64);
/**
    // Resetter resets a ReadCloser returned by NewReader or NewReaderDict
    // to switch to a new underlying Reader. This permits reusing a ReadCloser
    // instead of allocating a new one.
    
    
**/
typedef Resetter = StructType & {
    /**
        // Reset discards any buffered data and resets the Resetter as if it was
        // newly initialized with the given reader.
        
        
    **/
    public dynamic function reset(_r:stdgo.io.Io.Reader, _dict:Slice<GoByte>):Error;
};
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.compress.zlib.Zlib.T_reader_static_extension) class T_reader {
    public var _r : stdgo.compress.flate.Flate.Reader = (null : stdgo.compress.flate.Flate.Reader);
    public var _decompressor : stdgo.io.Io.ReadCloser = (null : stdgo.io.Io.ReadCloser);
    public var _digest : stdgo.hash.Hash.Hash32 = (null : stdgo.hash.Hash.Hash32);
    public var _err : Error = (null : Error);
    public var _scratch : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) (0 : GoUInt8)]);
    public function new(?_r:stdgo.compress.flate.Flate.Reader, ?_decompressor:stdgo.io.Io.ReadCloser, ?_digest:stdgo.hash.Hash.Hash32, ?_err:Error, ?_scratch:GoArray<GoUInt8>) {
        if (_r != null) this._r = _r;
        if (_decompressor != null) this._decompressor = _decompressor;
        if (_digest != null) this._digest = _digest;
        if (_err != null) this._err = _err;
        if (_scratch != null) this._scratch = _scratch;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_reader(_r, _decompressor, _digest, _err, _scratch);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_zlibTest {
    public var _desc : GoString = "";
    public var _raw : GoString = "";
    public var _compressed : Slice<GoUInt8> = (null : Slice<GoUInt8>);
    public var _dict : Slice<GoUInt8> = (null : Slice<GoUInt8>);
    public var _err : Error = (null : Error);
    public function new(?_desc:GoString, ?_raw:GoString, ?_compressed:Slice<GoUInt8>, ?_dict:Slice<GoUInt8>, ?_err:Error) {
        if (_desc != null) this._desc = _desc;
        if (_raw != null) this._raw = _raw;
        if (_compressed != null) this._compressed = _compressed;
        if (_dict != null) this._dict = _dict;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_zlibTest(_desc, _raw, _compressed, _dict, _err);
    }
}
/**
    // A Writer takes data written to it and writes the compressed
    // form of that data to an underlying writer (see NewWriter).
    
    
**/
@:structInit @:using(stdgo.compress.zlib.Zlib.Writer_static_extension) class Writer {
    public var _w : stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);
    public var _level : GoInt = 0;
    public var _dict : Slice<GoUInt8> = (null : Slice<GoUInt8>);
    public var _compressor : Ref<stdgo.compress.flate.Flate.Writer> = (null : Ref<stdgo.compress.flate.Flate.Writer>);
    public var _digest : stdgo.hash.Hash.Hash32 = (null : stdgo.hash.Hash.Hash32);
    public var _err : Error = (null : Error);
    public var _scratch : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) (0 : GoUInt8)]);
    public var _wroteHeader : Bool = false;
    public function new(?_w:stdgo.io.Io.Writer, ?_level:GoInt, ?_dict:Slice<GoUInt8>, ?_compressor:Ref<stdgo.compress.flate.Flate.Writer>, ?_digest:stdgo.hash.Hash.Hash32, ?_err:Error, ?_scratch:GoArray<GoUInt8>, ?_wroteHeader:Bool) {
        if (_w != null) this._w = _w;
        if (_level != null) this._level = _level;
        if (_dict != null) this._dict = _dict;
        if (_compressor != null) this._compressor = _compressor;
        if (_digest != null) this._digest = _digest;
        if (_err != null) this._err = _err;
        if (_scratch != null) this._scratch = _scratch;
        if (_wroteHeader != null) this._wroteHeader = _wroteHeader;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Writer(_w, _level, _dict, _compressor, _digest, _err, _scratch, _wroteHeader);
    }
}
/**
    // NewReader creates a new ReadCloser.
    // Reads from the returned ReadCloser read and decompress data from r.
    // If r does not implement io.ByteReader, the decompressor may read more
    // data than necessary from r.
    // It is the caller's responsibility to call Close on the ReadCloser when done.
    //
    // The ReadCloser returned by NewReader also implements Resetter.
**/
function newReader(_r:stdgo.io.Io.Reader):{ var _0 : stdgo.io.Io.ReadCloser; var _1 : Error; } {
        return newReaderDict(_r, (null : Slice<GoUInt8>));
    }
/**
    // NewReaderDict is like NewReader but uses a preset dictionary.
    // NewReaderDict ignores the dictionary if the compressed data does not refer to it.
    // If the compressed data refers to a different dictionary, NewReaderDict returns ErrDictionary.
    //
    // The ReadCloser returned by NewReaderDict also implements Resetter.
**/
function newReaderDict(_r:stdgo.io.Io.Reader, _dict:Slice<GoByte>):{ var _0 : stdgo.io.Io.ReadCloser; var _1 : Error; } {
        var _z = (Go.setRef(({} : stdgo.compress.zlib.Zlib.T_reader)) : Ref<stdgo.compress.zlib.Zlib.T_reader>);
        var _err:Error = _z.reset(_r, _dict);
        if (_err != null) {
            return { _0 : (null : stdgo.io.Io.ReadCloser), _1 : _err };
        };
        return { _0 : Go.asInterface(_z), _1 : (null : Error) };
    }
function testDecompressor(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _b = (Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : Ref<stdgo.bytes.Bytes.Buffer>);
            for (__0 => _tt in _zlibTests) {
                var _in = stdgo.bytes.Bytes.newReader(_tt._compressed);
                var __tmp__ = newReaderDict(Go.asInterface(_in), _tt._dict), _zr:stdgo.io.Io.ReadCloser = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    if (Go.toInterface(_err) != (Go.toInterface(_tt._err))) {
                        _t.errorf(("%s: NewReader: %s" : GoString), Go.toInterface(_tt._desc), Go.toInterface(_err));
                    };
                    continue;
                };
                __deferstack__.unshift(() -> _zr.close());
                _b.reset();
                var __tmp__ = stdgo.io.Io.copy(Go.asInterface(_b), _zr), _n:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    if (Go.toInterface(_err) != (Go.toInterface(_tt._err))) {
                        _t.errorf(("%s: io.Copy: %v want %v" : GoString), Go.toInterface(_tt._desc), Go.toInterface(_err), Go.toInterface(_tt._err));
                    };
                    continue;
                };
                var _s:GoString = (_b.string() : GoString);
                if (_s != (_tt._raw)) {
                    _t.errorf(("%s: got %d-byte %q want %d-byte %q" : GoString), Go.toInterface(_tt._desc), Go.toInterface(_n), Go.toInterface(_s), Go.toInterface((_tt._raw.length)), Go.toInterface(_tt._raw));
                };
                {
                    var __tmp__ = _zr.read((new Slice<GoUInt8>(1, 1, (0 : GoUInt8)) : Slice<GoUInt8>)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
                    if ((_n != (0 : GoInt)) || (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof))) {
                        _t.errorf(("%s: Read() = (%d, %v), want (0, io.EOF)" : GoString), Go.toInterface(_tt._desc), Go.toInterface(_n), Go.toInterface(_err));
                    };
                };
                {
                    var _err:Error = _zr.close();
                    if (_err != null) {
                        _t.errorf(("%s: Close() = %v, want nil" : GoString), Go.toInterface(_tt._desc), Go.toInterface(_err));
                    };
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
/**
    // NewWriter creates a new Writer.
    // Writes to the returned Writer are compressed and written to w.
    //
    // It is the caller's responsibility to call Close on the Writer when done.
    // Writes may be buffered and not flushed until Close.
**/
function newWriter(_w:stdgo.io.Io.Writer):Ref<Writer> {
        var __tmp__ = newWriterLevelDict(_w, (-1 : GoInt), (null : Slice<GoUInt8>)), _z:Ref<stdgo.compress.zlib.Zlib.Writer> = __tmp__._0, __0:Error = __tmp__._1;
        return _z;
    }
/**
    // NewWriterLevel is like NewWriter but specifies the compression level instead
    // of assuming DefaultCompression.
    //
    // The compression level can be DefaultCompression, NoCompression, HuffmanOnly
    // or any integer value between BestSpeed and BestCompression inclusive.
    // The error returned will be nil if the level is valid.
**/
function newWriterLevel(_w:stdgo.io.Io.Writer, _level:GoInt):{ var _0 : Ref<Writer>; var _1 : Error; } {
        return newWriterLevelDict(_w, _level, (null : Slice<GoUInt8>));
    }
/**
    // NewWriterLevelDict is like NewWriterLevel but specifies a dictionary to
    // compress with.
    //
    // The dictionary may be nil. If not, its contents should not be modified until
    // the Writer is closed.
**/
function newWriterLevelDict(_w:stdgo.io.Io.Writer, _level:GoInt, _dict:Slice<GoByte>):{ var _0 : Ref<Writer>; var _1 : Error; } {
        if ((_level < (-2 : GoInt)) || (_level > (9 : GoInt))) {
            return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(("zlib: invalid compression level: %d" : GoString), Go.toInterface(_level)) };
        };
        return { _0 : (Go.setRef(({ _w : _w, _level : _level, _dict : _dict } : Writer)) : Ref<stdgo.compress.zlib.Zlib.Writer>), _1 : (null : Error) };
    }
/**
    // Tests that compressing and then decompressing the given file at the given compression level and dictionary
    // yields equivalent bytes to the original file.
**/
private function _testFileLevelDict(_t:Ref<stdgo.testing.Testing.T>, _fn:GoString, _level:GoInt, _d:GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo.os.Os.open(_fn), _golden:Ref<stdgo.os.Os.File> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("%s (level=%d, dict=%q): %v" : GoString), Go.toInterface(_fn), Go.toInterface(_level), Go.toInterface(_d), Go.toInterface(_err));
                return;
            };
            __deferstack__.unshift(() -> _golden.close());
            var __tmp__ = stdgo.io.Io.readAll(Go.asInterface(_golden)), _b0:Slice<GoUInt8> = __tmp__._0, _err0:Error = __tmp__._1;
            if (_err0 != null) {
                _t.errorf(("%s (level=%d, dict=%q): %v" : GoString), Go.toInterface(_fn), Go.toInterface(_level), Go.toInterface(_d), Go.toInterface(_err0));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            _testLevelDict(_t, _fn, _b0, _level, _d);
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
private function _testLevelDict(_t:Ref<stdgo.testing.Testing.T>, _fn:GoString, _b0:Slice<GoByte>, _level:GoInt, _d:GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _dict:Slice<GoByte> = (null : Slice<GoUInt8>);
            if (_d != (Go.str())) {
                _dict = (_d : Slice<GoByte>);
            };
            var __tmp__ = stdgo.io.Io.pipe(), _piper:Ref<stdgo.io.Io.PipeReader> = __tmp__._0, _pipew:Ref<stdgo.io.Io.PipeWriter> = __tmp__._1;
            __deferstack__.unshift(() -> _piper.close());
            Go.routine(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> _pipew.close());
                        var __tmp__ = newWriterLevelDict(Go.asInterface(_pipew), _level, _dict), _zlibw:Ref<stdgo.compress.zlib.Zlib.Writer> = __tmp__._0, _err:Error = __tmp__._1;
                        if (_err != null) {
                            _t.errorf(("%s (level=%d, dict=%q): %v" : GoString), Go.toInterface(_fn), Go.toInterface(_level), Go.toInterface(_d), Go.toInterface(_err));
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return;
                            };
                        };
                        __deferstack__.unshift(() -> _zlibw.close());
                        {
                            var __tmp__ = _zlibw.write(_b0);
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            _t.errorf(("%s (level=%d, dict=%q): %v" : GoString), Go.toInterface(_fn), Go.toInterface(_level), Go.toInterface(_d), Go.toInterface(_err));
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return;
                            };
                        };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (Go.recover_exception != null) throw Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is AnyInterfaceData)) {
                            exe = Go.toInterface(__exception__.message);
                        };
                        Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (Go.recover_exception != null) throw Go.recover_exception;
                        return;
                    };
                };
                a();
            });
            var __tmp__ = newReaderDict(Go.asInterface(_piper), _dict), _zlibr:stdgo.io.Io.ReadCloser = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("%s (level=%d, dict=%q): %v" : GoString), Go.toInterface(_fn), Go.toInterface(_level), Go.toInterface(_d), Go.toInterface(_err));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            __deferstack__.unshift(() -> _zlibr.close());
            var __tmp__ = stdgo.io.Io.readAll(_zlibr), _b1:Slice<GoUInt8> = __tmp__._0, _err1:Error = __tmp__._1;
            if (_err1 != null) {
                _t.errorf(("%s (level=%d, dict=%q): %v" : GoString), Go.toInterface(_fn), Go.toInterface(_level), Go.toInterface(_d), Go.toInterface(_err1));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            if ((_b0.length) != ((_b1.length))) {
                _t.errorf(("%s (level=%d, dict=%q): length mismatch %d versus %d" : GoString), Go.toInterface(_fn), Go.toInterface(_level), Go.toInterface(_d), Go.toInterface((_b0.length)), Go.toInterface((_b1.length)));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (_b0.length), _i++, {
                    if (_b0[(_i : GoInt)] != (_b1[(_i : GoInt)])) {
                        _t.errorf(("%s (level=%d, dict=%q): mismatch at %d, 0x%02x versus 0x%02x\n" : GoString), Go.toInterface(_fn), Go.toInterface(_level), Go.toInterface(_d), Go.toInterface(_i), Go.toInterface(_b0[(_i : GoInt)]), Go.toInterface(_b1[(_i : GoInt)]));
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return;
                        };
                    };
                });
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
private function _testFileLevelDictReset(_t:Ref<stdgo.testing.Testing.T>, _fn:GoString, _level:GoInt, _dict:Slice<GoByte>):Void {
        var _b0:Slice<GoByte> = (null : Slice<GoUInt8>);
        var _err:Error = (null : Error);
        if (_fn != (Go.str())) {
            {
                var __tmp__ = stdgo.os.Os.readFile(_fn);
                _b0 = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.errorf(("%s (level=%d): %v" : GoString), Go.toInterface(_fn), Go.toInterface(_level), Go.toInterface(_err));
                return;
            };
        };
        var _buf = (Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : Ref<stdgo.bytes.Bytes.Buffer>);
        var _zlibw:Ref<Writer> = (null : Ref<stdgo.compress.zlib.Zlib.Writer>);
        if (_dict == null) {
            {
                var __tmp__ = newWriterLevel(Go.asInterface(_buf), _level);
                _zlibw = __tmp__._0;
                _err = __tmp__._1;
            };
        } else {
            {
                var __tmp__ = newWriterLevelDict(Go.asInterface(_buf), _level, _dict);
                _zlibw = __tmp__._0;
                _err = __tmp__._1;
            };
        };
        if (_err == null) {
            {
                var __tmp__ = _zlibw.write(_b0);
                _err = __tmp__._1;
            };
        };
        if (_err == null) {
            _err = _zlibw.close();
        };
        if (_err != null) {
            _t.errorf(("%s (level=%d): %v" : GoString), Go.toInterface(_fn), Go.toInterface(_level), Go.toInterface(_err));
            return;
        };
        var _out:GoString = (_buf.string() : GoString);
        var _buf2 = (Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : Ref<stdgo.bytes.Bytes.Buffer>);
        _zlibw.reset(Go.asInterface(_buf2));
        {
            var __tmp__ = _zlibw.write(_b0);
            _err = __tmp__._1;
        };
        if (_err == null) {
            _err = _zlibw.close();
        };
        if (_err != null) {
            _t.errorf(("%s (level=%d): %v" : GoString), Go.toInterface(_fn), Go.toInterface(_level), Go.toInterface(_err));
            return;
        };
        var _out2:GoString = (_buf2.string() : GoString);
        if (_out2 != (_out)) {
            _t.errorf(("%s (level=%d): different output after reset (got %d bytes, expected %d" : GoString), Go.toInterface(_fn), Go.toInterface(_level), Go.toInterface((_out2.length)), Go.toInterface((_out.length)));
        };
    }
function testWriter(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_i => _s in _data) {
            var _b = (_s : Slice<GoByte>);
            var _tag:GoString = stdgo.fmt.Fmt.sprintf(("#%d" : GoString), Go.toInterface(_i));
            _testLevelDict(_t, _tag, _b, (-1 : GoInt), Go.str());
            _testLevelDict(_t, _tag, _b, (0 : GoInt), Go.str());
            _testLevelDict(_t, _tag, _b, (-2 : GoInt), Go.str());
            {
                var _level:GoInt = (1 : GoInt);
                Go.cfor(_level <= (9 : GoInt), _level++, {
                    _testLevelDict(_t, _tag, _b, _level, Go.str());
                });
            };
        };
    }
function testWriterBig(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (_i => _fn in _filenames) {
            _testFileLevelDict(_t, _fn, (-1 : GoInt), Go.str());
            _testFileLevelDict(_t, _fn, (0 : GoInt), Go.str());
            _testFileLevelDict(_t, _fn, (-2 : GoInt), Go.str());
            {
                var _level:GoInt = (1 : GoInt);
                Go.cfor(_level <= (9 : GoInt), _level++, {
                    _testFileLevelDict(_t, _fn, _level, Go.str());
                    if (((_level >= (1 : GoInt)) && stdgo.testing.Testing.short()) && (stdgo.internal.testenv.Testenv.builder() == Go.str())) {
                        break;
                    };
                });
            };
            if (((_i == (0 : GoInt)) && stdgo.testing.Testing.short()) && (stdgo.internal.testenv.Testenv.builder() == Go.str())) {
                break;
            };
        };
    }
function testWriterDict(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        for (_i => _fn in _filenames) {
            _testFileLevelDict(_t, _fn, (-1 : GoInt), ("0123456789." : GoString));
            _testFileLevelDict(_t, _fn, (0 : GoInt), ("0123456789." : GoString));
            _testFileLevelDict(_t, _fn, (-2 : GoInt), ("0123456789." : GoString));
            {
                var _level:GoInt = (1 : GoInt);
                Go.cfor(_level <= (9 : GoInt), _level++, {
                    _testFileLevelDict(_t, _fn, _level, ("0123456789." : GoString));
                    if (((_level >= (1 : GoInt)) && stdgo.testing.Testing.short()) && (stdgo.internal.testenv.Testenv.builder() == Go.str())) {
                        break;
                    };
                });
            };
            if (((_i == (0 : GoInt)) && stdgo.testing.Testing.short()) && (stdgo.internal.testenv.Testenv.builder() == Go.str())) {
                break;
            };
        };
    }
function testWriterReset(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        for (__0 => _fn in _filenames) {
            _testFileLevelDictReset(_t, _fn, (0 : GoInt), (null : Slice<GoUInt8>));
            _testFileLevelDictReset(_t, _fn, (-1 : GoInt), (null : Slice<GoUInt8>));
            _testFileLevelDictReset(_t, _fn, (-2 : GoInt), (null : Slice<GoUInt8>));
            _testFileLevelDictReset(_t, _fn, (0 : GoInt), (("0123456789." : GoString) : Slice<GoByte>));
            _testFileLevelDictReset(_t, _fn, (-1 : GoInt), (("0123456789." : GoString) : Slice<GoByte>));
            _testFileLevelDictReset(_t, _fn, (-2 : GoInt), (("0123456789." : GoString) : Slice<GoByte>));
            if (stdgo.testing.Testing.short()) {
                break;
            };
            {
                var _level:GoInt = (1 : GoInt);
                Go.cfor(_level <= (9 : GoInt), _level++, {
                    _testFileLevelDictReset(_t, _fn, _level, (null : Slice<GoUInt8>));
                });
            };
        };
    }
function testWriterDictIsUsed(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _input:Slice<GoUInt8> = (("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." : GoString) : Slice<GoByte>);
        var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer);
        var __tmp__ = newWriterLevelDict(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.bytes.Bytes.Buffer>)), (9 : GoInt), _input), _compressor:Ref<stdgo.compress.zlib.Zlib.Writer> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("error in NewWriterLevelDict: %s" : GoString), Go.toInterface(_err));
            return;
        };
        _compressor.write(_input);
        _compressor.close();
        {};
        var _output = _buf.bytes();
        if ((_output.length) > (25 : GoInt)) {
            _t.errorf(("result too large (got %d, want <= %d bytes). Is the dictionary being used?" : GoString), Go.toInterface((_output.length)), Go.toInterface((25 : GoInt)));
        };
    }
class T_reader_asInterface {
    @:keep
    public dynamic function reset(_r:stdgo.io.Io.Reader, _dict:Slice<GoByte>):Error return __self__.value.reset(_r, _dict);
    /**
        // Calling Close does not close the wrapped io.Reader originally passed to NewReader.
        // In order for the ZLIB checksum to be verified, the reader must be
        // fully consumed until the io.EOF.
    **/
    @:keep
    public dynamic function close():Error return __self__.value.close();
    @:keep
    public dynamic function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_reader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.compress.zlib.Zlib.T_reader_asInterface) class T_reader_static_extension {
    @:keep
    static public function reset( _z:Ref<T_reader>, _r:stdgo.io.Io.Reader, _dict:Slice<GoByte>):Error {
        {
            var __tmp__ = ({ _decompressor : _z._decompressor } : T_reader);
            _z._r = __tmp__._r;
            _z._decompressor = __tmp__._decompressor;
            _z._digest = __tmp__._digest;
            _z._err = __tmp__._err;
            _z._scratch = __tmp__._scratch;
        };
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_r) : stdgo.compress.flate.Flate.Reader)) : stdgo.compress.flate.Flate.Reader), ok : true };
            } catch(_) {
                { value : (null : stdgo.compress.flate.Flate.Reader), ok : false };
            }, _fr = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _z._r = _fr;
            } else {
                _z._r = Go.asInterface(stdgo.bufio.Bufio.newReader(_r));
            };
        };
        {
            var __tmp__ = stdgo.io.Io.readFull(_z._r, (_z._scratch.__slice__((0 : GoInt), (2 : GoInt)) : Slice<GoUInt8>));
            _z._err = __tmp__._1;
        };
        if (_z._err != null) {
            if (Go.toInterface(_z._err) == (Go.toInterface(stdgo.io.Io.eof))) {
                _z._err = stdgo.io.Io.errUnexpectedEOF;
            };
            return _z._err;
        };
        var _h:GoUInt = ((_z._scratch[(0 : GoInt)] : GoUInt) << (8i64 : GoUInt64)) | (_z._scratch[(1 : GoInt)] : GoUInt);
        if (((_z._scratch[(0 : GoInt)] & (15 : GoUInt8) != (8 : GoUInt8)) || ((_z._scratch[(0 : GoInt)] >> (4i64 : GoUInt64)) > (7 : GoUInt8))) || (_h % (31u32 : GoUInt) != (0u32 : GoUInt))) {
            _z._err = errHeader;
            return _z._err;
        };
        var _haveDict:Bool = _z._scratch[(1 : GoInt)] & (32 : GoUInt8) != ((0 : GoUInt8));
        if (_haveDict) {
            {
                var __tmp__ = stdgo.io.Io.readFull(_z._r, (_z._scratch.__slice__((0 : GoInt), (4 : GoInt)) : Slice<GoUInt8>));
                _z._err = __tmp__._1;
            };
            if (_z._err != null) {
                if (Go.toInterface(_z._err) == (Go.toInterface(stdgo.io.Io.eof))) {
                    _z._err = stdgo.io.Io.errUnexpectedEOF;
                };
                return _z._err;
            };
            var _checksum:GoUInt32 = ((((_z._scratch[(0 : GoInt)] : GoUInt32) << (24i64 : GoUInt64)) | ((_z._scratch[(1 : GoInt)] : GoUInt32) << (16i64 : GoUInt64))) | ((_z._scratch[(2 : GoInt)] : GoUInt32) << (8i64 : GoUInt64))) | (_z._scratch[(3 : GoInt)] : GoUInt32);
            if (_checksum != (stdgo.hash.adler32.Adler32.checksum(_dict))) {
                _z._err = errDictionary;
                return _z._err;
            };
        };
        if (_z._decompressor == null) {
            if (_haveDict) {
                _z._decompressor = stdgo.compress.flate.Flate.newReaderDict(_z._r, _dict);
            } else {
                _z._decompressor = stdgo.compress.flate.Flate.newReader(_z._r);
            };
        } else {
            (Go.typeAssert((Go.toInterface(_z._decompressor) : stdgo.compress.flate.Flate.Resetter)) : stdgo.compress.flate.Flate.Resetter).reset(_z._r, _dict);
        };
        _z._digest = stdgo.hash.adler32.Adler32.new_();
        return (null : Error);
    }
    /**
        // Calling Close does not close the wrapped io.Reader originally passed to NewReader.
        // In order for the ZLIB checksum to be verified, the reader must be
        // fully consumed until the io.EOF.
    **/
    @:keep
    static public function close( _z:Ref<T_reader>):Error {
        if ((_z._err != null) && (Go.toInterface(_z._err) != Go.toInterface(stdgo.io.Io.eof))) {
            return _z._err;
        };
        _z._err = _z._decompressor.close();
        return _z._err;
    }
    @:keep
    static public function read( _z:Ref<T_reader>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        if (_z._err != null) {
            return { _0 : (0 : GoInt), _1 : _z._err };
        };
        var _n:GoInt = (0 : GoInt);
        {
            var __tmp__ = _z._decompressor.read(_p);
            _n = __tmp__._0;
            _z._err = __tmp__._1;
        };
        _z._digest.write((_p.__slice__((0 : GoInt), _n) : Slice<GoUInt8>));
        if (Go.toInterface(_z._err) != (Go.toInterface(stdgo.io.Io.eof))) {
            return { _0 : _n, _1 : _z._err };
        };
        {
            var __tmp__ = stdgo.io.Io.readFull(_z._r, (_z._scratch.__slice__((0 : GoInt), (4 : GoInt)) : Slice<GoUInt8>)), __0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                if (Go.toInterface(_err) == (Go.toInterface(stdgo.io.Io.eof))) {
                    _err = stdgo.io.Io.errUnexpectedEOF;
                };
                _z._err = _err;
                return { _0 : _n, _1 : _z._err };
            };
        };
        var _checksum:GoUInt32 = ((((_z._scratch[(0 : GoInt)] : GoUInt32) << (24i64 : GoUInt64)) | ((_z._scratch[(1 : GoInt)] : GoUInt32) << (16i64 : GoUInt64))) | ((_z._scratch[(2 : GoInt)] : GoUInt32) << (8i64 : GoUInt64))) | (_z._scratch[(3 : GoInt)] : GoUInt32);
        if (_checksum != (_z._digest.sum32())) {
            _z._err = errChecksum;
            return { _0 : _n, _1 : _z._err };
        };
        return { _0 : _n, _1 : stdgo.io.Io.eof };
    }
}
class Writer_asInterface {
    /**
        // Close closes the Writer, flushing any unwritten data to the underlying
        // io.Writer, but does not close the underlying io.Writer.
    **/
    @:keep
    public dynamic function close():Error return __self__.value.close();
    /**
        // Flush flushes the Writer to its underlying io.Writer.
    **/
    @:keep
    public dynamic function flush():Error return __self__.value.flush();
    /**
        // Write writes a compressed form of p to the underlying io.Writer. The
        // compressed bytes are not necessarily flushed until the Writer is closed or
        // explicitly flushed.
    **/
    @:keep
    public dynamic function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __self__.value.write(_p);
    /**
        // writeHeader writes the ZLIB header.
    **/
    @:keep
    public dynamic function _writeHeader():Error return __self__.value._writeHeader();
    /**
        // Reset clears the state of the Writer z such that it is equivalent to its
        // initial state from NewWriterLevel or NewWriterLevelDict, but instead writing
        // to w.
    **/
    @:keep
    public dynamic function reset(_w:stdgo.io.Io.Writer):Void __self__.value.reset(_w);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Writer>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.compress.zlib.Zlib.Writer_asInterface) class Writer_static_extension {
    /**
        // Close closes the Writer, flushing any unwritten data to the underlying
        // io.Writer, but does not close the underlying io.Writer.
    **/
    @:keep
    static public function close( _z:Ref<Writer>):Error {
        if (!_z._wroteHeader) {
            _z._err = _z._writeHeader();
        };
        if (_z._err != null) {
            return _z._err;
        };
        _z._err = _z._compressor.close();
        if (_z._err != null) {
            return _z._err;
        };
        var _checksum:GoUInt32 = _z._digest.sum32();
        stdgo.encoding.binary.Binary.bigEndian.putUint32((_z._scratch.__slice__(0) : Slice<GoUInt8>), _checksum);
        {
            var __tmp__ = _z._w.write((_z._scratch.__slice__((0 : GoInt), (4 : GoInt)) : Slice<GoUInt8>));
            _z._err = __tmp__._1;
        };
        return _z._err;
    }
    /**
        // Flush flushes the Writer to its underlying io.Writer.
    **/
    @:keep
    static public function flush( _z:Ref<Writer>):Error {
        if (!_z._wroteHeader) {
            _z._err = _z._writeHeader();
        };
        if (_z._err != null) {
            return _z._err;
        };
        _z._err = _z._compressor.flush();
        return _z._err;
    }
    /**
        // Write writes a compressed form of p to the underlying io.Writer. The
        // compressed bytes are not necessarily flushed until the Writer is closed or
        // explicitly flushed.
    **/
    @:keep
    static public function write( _z:Ref<Writer>, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
        if (!_z._wroteHeader) {
            _z._err = _z._writeHeader();
        };
        if (_z._err != null) {
            return { _0 : (0 : GoInt), _1 : _z._err };
        };
        if ((_p.length) == ((0 : GoInt))) {
            return { _0 : (0 : GoInt), _1 : (null : Error) };
        };
        {
            var __tmp__ = _z._compressor.write(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _z._err = _err;
            return { _0 : _n, _1 : _err };
        };
        _z._digest.write(_p);
        return { _0 : _n, _1 : _err };
    }
    /**
        // writeHeader writes the ZLIB header.
    **/
    @:keep
    static public function _writeHeader( _z:Ref<Writer>):Error {
        var _err:Error = (null : Error);
        _z._wroteHeader = true;
        _z._scratch[(0 : GoInt)] = (120 : GoUInt8);
        {
            final __value__ = _z._level;
            if (__value__ == ((-2 : GoInt)) || __value__ == ((0 : GoInt)) || __value__ == ((1 : GoInt))) {
                _z._scratch[(1 : GoInt)] = (0 : GoUInt8);
            } else if (__value__ == ((2 : GoInt)) || __value__ == ((3 : GoInt)) || __value__ == ((4 : GoInt)) || __value__ == ((5 : GoInt))) {
                _z._scratch[(1 : GoInt)] = (64 : GoUInt8);
            } else if (__value__ == ((6 : GoInt)) || __value__ == ((-1 : GoInt))) {
                _z._scratch[(1 : GoInt)] = (128 : GoUInt8);
            } else if (__value__ == ((7 : GoInt)) || __value__ == ((8 : GoInt)) || __value__ == ((9 : GoInt))) {
                _z._scratch[(1 : GoInt)] = (192 : GoUInt8);
            } else {
                throw Go.toInterface(("unreachable" : GoString));
            };
        };
        if (_z._dict != null) {
            _z._scratch[(1 : GoInt)] = _z._scratch[(1 : GoInt)] | ((32 : GoUInt8));
        };
        _z._scratch[(1 : GoInt)] = _z._scratch[(1 : GoInt)] + (((31 : GoUInt16) - ((((_z._scratch[(0 : GoInt)] : GoUInt16) << (8i64 : GoUInt64)) + (_z._scratch[(1 : GoInt)] : GoUInt16)) % (31 : GoUInt16)) : GoUInt8));
        {
            {
                var __tmp__ = _z._w.write((_z._scratch.__slice__((0 : GoInt), (2 : GoInt)) : Slice<GoUInt8>));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        if (_z._dict != null) {
            stdgo.encoding.binary.Binary.bigEndian.putUint32((_z._scratch.__slice__(0) : Slice<GoUInt8>), stdgo.hash.adler32.Adler32.checksum(_z._dict));
            {
                {
                    var __tmp__ = _z._w.write((_z._scratch.__slice__((0 : GoInt), (4 : GoInt)) : Slice<GoUInt8>));
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return _err;
                };
            };
        };
        if (_z._compressor == null || (_z._compressor : Dynamic).__nil__) {
            {
                var __tmp__ = stdgo.compress.flate.Flate.newWriterDict(_z._w, _z._level, _z._dict);
                _z._compressor = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
            _z._digest = stdgo.hash.adler32.Adler32.new_();
        };
        return (null : Error);
    }
    /**
        // Reset clears the state of the Writer z such that it is equivalent to its
        // initial state from NewWriterLevel or NewWriterLevelDict, but instead writing
        // to w.
    **/
    @:keep
    static public function reset( _z:Ref<Writer>, _w:stdgo.io.Io.Writer):Void {
        _z._w = _w;
        if (_z._compressor != null && ((_z._compressor : Dynamic).__nil__ == null || !(_z._compressor : Dynamic).__nil__)) {
            _z._compressor.reset(_w);
        };
        if (_z._digest != null) {
            _z._digest.reset();
        };
        _z._err = (null : Error);
        _z._scratch = (new GoArray<GoUInt8>(...([].concat([for (i in 0 ... 4) (0 : GoUInt8)]))) : GoArray<GoUInt8>);
        _z._wroteHeader = false;
    }
}
