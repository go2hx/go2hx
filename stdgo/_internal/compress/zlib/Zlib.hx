package stdgo._internal.compress.zlib;
private var __go2hxdoc__package : Bool;
var errChecksum : stdgo.Error = stdgo._internal.errors.Errors.new_(("zlib: invalid checksum" : stdgo.GoString));
var errDictionary : stdgo.Error = stdgo._internal.errors.Errors.new_(("zlib: invalid dictionary" : stdgo.GoString));
var errHeader : stdgo.Error = stdgo._internal.errors.Errors.new_(("zlib: invalid header" : stdgo.GoString));
var _zlibTests : stdgo.Slice<stdgo._internal.compress.zlib.Zlib.T_zlibTest> = (new stdgo.Slice<stdgo._internal.compress.zlib.Zlib.T_zlibTest>(
14,
14,
(new stdgo._internal.compress.zlib.Zlib.T_zlibTest(("truncated empty" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>(0, 0) : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.io.Io.errUnexpectedEOF) : stdgo._internal.compress.zlib.Zlib.T_zlibTest),
(new stdgo._internal.compress.zlib.Zlib.T_zlibTest(("truncated dict" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>(2, 2, (120 : stdgo.GoUInt8), (187 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, (0 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.io.Io.errUnexpectedEOF) : stdgo._internal.compress.zlib.Zlib.T_zlibTest),
(new stdgo._internal.compress.zlib.Zlib.T_zlibTest(("truncated checksum" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>(
24,
24,
(120 : stdgo.GoUInt8),
(187 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(202 : stdgo.GoUInt8),
(72 : stdgo.GoUInt8),
(205 : stdgo.GoUInt8),
(201 : stdgo.GoUInt8),
(201 : stdgo.GoUInt8),
(215 : stdgo.GoUInt8),
(81 : stdgo.GoUInt8),
(40 : stdgo.GoUInt8),
(207 : stdgo.GoUInt8),
(47 : stdgo.GoUInt8),
(202 : stdgo.GoUInt8),
(73 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, (0 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.io.Io.errUnexpectedEOF) : stdgo._internal.compress.zlib.Zlib.T_zlibTest),
(new stdgo._internal.compress.zlib.Zlib.T_zlibTest(("empty" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>(8, 8, (120 : stdgo.GoUInt8), (156 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Error)) : stdgo._internal.compress.zlib.Zlib.T_zlibTest),
(new stdgo._internal.compress.zlib.Zlib.T_zlibTest(("goodbye" : stdgo.GoString), ("goodbye, world" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(
22,
22,
(120 : stdgo.GoUInt8),
(156 : stdgo.GoUInt8),
(75 : stdgo.GoUInt8),
(207 : stdgo.GoUInt8),
(207 : stdgo.GoUInt8),
(79 : stdgo.GoUInt8),
(73 : stdgo.GoUInt8),
(170 : stdgo.GoUInt8),
(76 : stdgo.GoUInt8),
(213 : stdgo.GoUInt8),
(81 : stdgo.GoUInt8),
(40 : stdgo.GoUInt8),
(207 : stdgo.GoUInt8),
(47 : stdgo.GoUInt8),
(202 : stdgo.GoUInt8),
(73 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(40 : stdgo.GoUInt8),
(165 : stdgo.GoUInt8),
(5 : stdgo.GoUInt8),
(94 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Error)) : stdgo._internal.compress.zlib.Zlib.T_zlibTest),
(new stdgo._internal.compress.zlib.Zlib.T_zlibTest(("bad header (CINFO)" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>(8, 8, (136 : stdgo.GoUInt8), (152 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>), errHeader) : stdgo._internal.compress.zlib.Zlib.T_zlibTest),
(new stdgo._internal.compress.zlib.Zlib.T_zlibTest(("bad header (FCHECK)" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>(8, 8, (120 : stdgo.GoUInt8), (159 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>), errHeader) : stdgo._internal.compress.zlib.Zlib.T_zlibTest),
(new stdgo._internal.compress.zlib.Zlib.T_zlibTest(("bad checksum" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>(8, 8, (120 : stdgo.GoUInt8), (156 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>), errChecksum) : stdgo._internal.compress.zlib.Zlib.T_zlibTest),
(new stdgo._internal.compress.zlib.Zlib.T_zlibTest(("not enough data" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>(6, 6, (120 : stdgo.GoUInt8), (156 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.io.Io.errUnexpectedEOF) : stdgo._internal.compress.zlib.Zlib.T_zlibTest),
(new stdgo._internal.compress.zlib.Zlib.T_zlibTest(("excess data is silently ignored" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>(
11,
11,
(120 : stdgo.GoUInt8),
(156 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(120 : stdgo.GoUInt8),
(156 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Error)) : stdgo._internal.compress.zlib.Zlib.T_zlibTest),
(new stdgo._internal.compress.zlib.Zlib.T_zlibTest(("dictionary" : stdgo.GoString), ("Hello, World!\n" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(
19,
19,
(120 : stdgo.GoUInt8),
(187 : stdgo.GoUInt8),
(28 : stdgo.GoUInt8),
(50 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(39 : stdgo.GoUInt8),
(243 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(177 : stdgo.GoUInt8),
(117 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(28 : stdgo.GoUInt8),
(69 : stdgo.GoUInt8),
(46 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(36 : stdgo.GoUInt8),
(18 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(116 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(
12,
12,
(72 : stdgo.GoUInt8),
(101 : stdgo.GoUInt8),
(108 : stdgo.GoUInt8),
(108 : stdgo.GoUInt8),
(111 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(87 : stdgo.GoUInt8),
(111 : stdgo.GoUInt8),
(114 : stdgo.GoUInt8),
(108 : stdgo.GoUInt8),
(100 : stdgo.GoUInt8),
(10 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Error)) : stdgo._internal.compress.zlib.Zlib.T_zlibTest),
(new stdgo._internal.compress.zlib.Zlib.T_zlibTest(("wrong dictionary" : stdgo.GoString), stdgo.Go.str()?.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>(
19,
19,
(120 : stdgo.GoUInt8),
(187 : stdgo.GoUInt8),
(28 : stdgo.GoUInt8),
(50 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(39 : stdgo.GoUInt8),
(243 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(177 : stdgo.GoUInt8),
(117 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(28 : stdgo.GoUInt8),
(69 : stdgo.GoUInt8),
(46 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(36 : stdgo.GoUInt8),
(18 : stdgo.GoUInt8),
(4 : stdgo.GoUInt8),
(116 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(4, 4, (72 : stdgo.GoUInt8), (101 : stdgo.GoUInt8), (108 : stdgo.GoUInt8), (108 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), errDictionary) : stdgo._internal.compress.zlib.Zlib.T_zlibTest),
(new stdgo._internal.compress.zlib.Zlib.T_zlibTest(("truncated zlib stream amid raw-block" : stdgo.GoString), ("hello" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(
12,
12,
(120 : stdgo.GoUInt8),
(156 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(243 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(104 : stdgo.GoUInt8),
(101 : stdgo.GoUInt8),
(108 : stdgo.GoUInt8),
(108 : stdgo.GoUInt8),
(111 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.io.Io.errUnexpectedEOF) : stdgo._internal.compress.zlib.Zlib.T_zlibTest),
(new stdgo._internal.compress.zlib.Zlib.T_zlibTest(("truncated zlib stream amid fixed-block" : stdgo.GoString), ("He" : stdgo.GoString), (new stdgo.Slice<stdgo.GoUInt8>(5, 5, (120 : stdgo.GoUInt8), (156 : stdgo.GoUInt8), (242 : stdgo.GoUInt8), (72 : stdgo.GoUInt8), (205 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.io.Io.errUnexpectedEOF) : stdgo._internal.compress.zlib.Zlib.T_zlibTest)) : stdgo.Slice<stdgo._internal.compress.zlib.Zlib.T_zlibTest>);
var _filenames : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(3, 3, ("../testdata/gettysburg.txt" : stdgo.GoString), ("../testdata/e.txt" : stdgo.GoString), ("../testdata/pi.txt" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
var _data : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(1, 1, ("test a reasonable sized string that can be compressed" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
final _zlibDeflate : stdgo.GoUInt64 = (8i64 : stdgo.GoUInt64);
final _zlibMaxWindow : stdgo.GoUInt64 = (7i64 : stdgo.GoUInt64);
final noCompression : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final bestSpeed : stdgo.GoUInt64 = (1i64 : stdgo.GoUInt64);
final bestCompression : stdgo.GoUInt64 = (9i64 : stdgo.GoUInt64);
final defaultCompression : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
final huffmanOnly : stdgo.GoUInt64 = (0i64 : stdgo.GoUInt64);
typedef Resetter = stdgo.StructType & {
    /**
        // Reset discards any buffered data and resets the Resetter as if it was
        // newly initialized with the given reader.
        
        
    **/
    public dynamic function reset(_r:stdgo._internal.io.Io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):stdgo.Error;
};
@:structInit @:private @:using(stdgo._internal.compress.zlib.Zlib.T_reader_static_extension) class T_reader {
    public var _r : stdgo._internal.compress.flate.Flate.Reader = (null : stdgo._internal.compress.flate.Flate.Reader);
    public var _decompressor : stdgo._internal.io.Io.ReadCloser = (null : stdgo._internal.io.Io.ReadCloser);
    public var _digest : stdgo._internal.hash.Hash.Hash32 = (null : stdgo._internal.hash.Hash.Hash32);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _scratch : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
    public function new(?_r:stdgo._internal.compress.flate.Flate.Reader, ?_decompressor:stdgo._internal.io.Io.ReadCloser, ?_digest:stdgo._internal.hash.Hash.Hash32, ?_err:stdgo.Error, ?_scratch:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_r != null) this._r = _r;
        if (_decompressor != null) this._decompressor = _decompressor;
        if (_digest != null) this._digest = _digest;
        if (_err != null) this._err = _err;
        if (_scratch != null) this._scratch = _scratch;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_reader(_r, _decompressor, _digest, _err, _scratch);
    }
}
@:structInit @:private class T_zlibTest {
    public var _desc : stdgo.GoString = "";
    public var _raw : stdgo.GoString = "";
    public var _compressed : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _dict : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_desc:stdgo.GoString, ?_raw:stdgo.GoString, ?_compressed:stdgo.Slice<stdgo.GoUInt8>, ?_dict:stdgo.Slice<stdgo.GoUInt8>, ?_err:stdgo.Error) {
        if (_desc != null) this._desc = _desc;
        if (_raw != null) this._raw = _raw;
        if (_compressed != null) this._compressed = _compressed;
        if (_dict != null) this._dict = _dict;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_zlibTest(_desc, _raw, _compressed, _dict, _err);
    }
}
@:structInit @:using(stdgo._internal.compress.zlib.Zlib.Writer_static_extension) class Writer {
    public var _w : stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
    public var _level : stdgo.GoInt = 0;
    public var _dict : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _compressor : stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer> = (null : stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer>);
    public var _digest : stdgo._internal.hash.Hash.Hash32 = (null : stdgo._internal.hash.Hash.Hash32);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _scratch : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
    public var _wroteHeader : Bool = false;
    public function new(?_w:stdgo._internal.io.Io.Writer, ?_level:stdgo.GoInt, ?_dict:stdgo.Slice<stdgo.GoUInt8>, ?_compressor:stdgo.Ref<stdgo._internal.compress.flate.Flate.Writer>, ?_digest:stdgo._internal.hash.Hash.Hash32, ?_err:stdgo.Error, ?_scratch:stdgo.GoArray<stdgo.GoUInt8>, ?_wroteHeader:Bool) {
        if (_w != null) this._w = _w;
        if (_level != null) this._level = _level;
        if (_dict != null) this._dict = _dict;
        if (_compressor != null) this._compressor = _compressor;
        if (_digest != null) this._digest = _digest;
        if (_err != null) this._err = _err;
        if (_scratch != null) this._scratch = _scratch;
        if (_wroteHeader != null) this._wroteHeader = _wroteHeader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Writer(_w, _level, _dict, _compressor, _digest, _err, _scratch, _wroteHeader);
    }
}
function newReader(_r:stdgo._internal.io.Io.Reader):{ var _0 : stdgo._internal.io.Io.ReadCloser; var _1 : stdgo.Error; } {
        return newReaderDict(_r, (null : stdgo.Slice<stdgo.GoUInt8>));
    }
function newReaderDict(_r:stdgo._internal.io.Io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo._internal.io.Io.ReadCloser; var _1 : stdgo.Error; } {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.compress.zlib.Zlib.T_reader)) : stdgo.Ref<stdgo._internal.compress.zlib.Zlib.T_reader>);
        var _err:stdgo.Error = _z.reset(_r, _dict);
        if (_err != null) {
            return { _0 : (null : stdgo._internal.io.Io.ReadCloser), _1 : _err };
        };
        return { _0 : stdgo.Go.asInterface(_z), _1 : (null : stdgo.Error) };
    }
function testDecompressor(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
            for (__0 => _tt in _zlibTests) {
                var _in = stdgo._internal.bytes.Bytes.newReader(_tt._compressed);
                var __tmp__ = newReaderDict(stdgo.Go.asInterface(_in), _tt._dict), _zr:stdgo._internal.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_tt._err))) {
                        _t.errorf(("%s: NewReader: %s" : stdgo.GoString), stdgo.Go.toInterface(_tt._desc), stdgo.Go.toInterface(_err));
                    };
                    continue;
                };
                __deferstack__.unshift(() -> _zr.close());
                _b.reset();
                var __tmp__ = stdgo._internal.io.Io.copy(stdgo.Go.asInterface(_b), _zr), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_tt._err))) {
                        _t.errorf(("%s: io.Copy: %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._desc), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._err));
                    };
                    continue;
                };
                var _s:stdgo.GoString = (_b.string() : stdgo.GoString)?.__copy__();
                if (_s != (_tt._raw)) {
                    _t.errorf(("%s: got %d-byte %q want %d-byte %q" : stdgo.GoString), stdgo.Go.toInterface(_tt._desc), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_s), stdgo.Go.toInterface((_tt._raw.length)), stdgo.Go.toInterface(_tt._raw));
                };
                {
                    var __tmp__ = _zr.read((new stdgo.Slice<stdgo.GoUInt8>(1, 1, (0 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_n != (0 : stdgo.GoInt)) || (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) : Bool)) {
                        _t.errorf(("%s: Read() = (%d, %v), want (0, io.EOF)" : stdgo.GoString), stdgo.Go.toInterface(_tt._desc), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
                    };
                };
                {
                    var _err:stdgo.Error = _zr.close();
                    if (_err != null) {
                        _t.errorf(("%s: Close() = %v, want nil" : stdgo.GoString), stdgo.Go.toInterface(_tt._desc), stdgo.Go.toInterface(_err));
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function newWriter(_w:stdgo._internal.io.Io.Writer):stdgo.Ref<Writer> {
        var __tmp__ = newWriterLevelDict(_w, (-1 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoUInt8>)), _z:stdgo.Ref<stdgo._internal.compress.zlib.Zlib.Writer> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        return _z;
    }
function newWriterLevel(_w:stdgo._internal.io.Io.Writer, _level:stdgo.GoInt):{ var _0 : stdgo.Ref<Writer>; var _1 : stdgo.Error; } {
        return newWriterLevelDict(_w, _level, (null : stdgo.Slice<stdgo.GoUInt8>));
    }
function newWriterLevelDict(_w:stdgo._internal.io.Io.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.Ref<Writer>; var _1 : stdgo.Error; } {
        if (((_level < (-2 : stdgo.GoInt) : Bool) || (_level > (9 : stdgo.GoInt) : Bool) : Bool)) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt.errorf(("zlib: invalid compression level: %d" : stdgo.GoString), stdgo.Go.toInterface(_level)) };
        };
        return { _0 : (stdgo.Go.setRef(({ _w : _w, _level : _level, _dict : _dict } : stdgo._internal.compress.zlib.Zlib.Writer)) : stdgo.Ref<stdgo._internal.compress.zlib.Zlib.Writer>), _1 : (null : stdgo.Error) };
    }
function _testFileLevelDict(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _fn:stdgo.GoString, _level:stdgo.GoInt, _d:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os.open(_fn?.__copy__()), _golden:stdgo.Ref<stdgo._internal.os.Os.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("%s (level=%d, dict=%q): %v" : stdgo.GoString), stdgo.Go.toInterface(_fn), stdgo.Go.toInterface(_level), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_err));
                return;
            };
            __deferstack__.unshift(() -> _golden.close());
            var __tmp__ = stdgo._internal.io.Io.readAll(stdgo.Go.asInterface(_golden)), _b0:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err0:stdgo.Error = __tmp__._1;
            if (_err0 != null) {
                _t.errorf(("%s (level=%d, dict=%q): %v" : stdgo.GoString), stdgo.Go.toInterface(_fn), stdgo.Go.toInterface(_level), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_err0));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            _testLevelDict(_t, _fn?.__copy__(), _b0, _level, _d?.__copy__());
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function _testLevelDict(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _fn:stdgo.GoString, _b0:stdgo.Slice<stdgo.GoByte>, _level:stdgo.GoInt, _d:stdgo.GoString):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _dict:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
            if (_d != (stdgo.Go.str())) {
                _dict = (_d : stdgo.Slice<stdgo.GoByte>);
            };
            var __tmp__ = stdgo._internal.io.Io.pipe(), _piper:stdgo.Ref<stdgo._internal.io.Io.PipeReader> = __tmp__._0, _pipew:stdgo.Ref<stdgo._internal.io.Io.PipeWriter> = __tmp__._1;
            __deferstack__.unshift(() -> _piper.close());
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> _pipew.close());
                        var __tmp__ = newWriterLevelDict(stdgo.Go.asInterface(_pipew), _level, _dict), _zlibw:stdgo.Ref<stdgo._internal.compress.zlib.Zlib.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            _t.errorf(("%s (level=%d, dict=%q): %v" : stdgo.GoString), stdgo.Go.toInterface(_fn), stdgo.Go.toInterface(_level), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_err));
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
                            _t.errorf(("%s (level=%d, dict=%q): %v" : stdgo.GoString), stdgo.Go.toInterface(_fn), stdgo.Go.toInterface(_level), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_err));
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return;
                            };
                        };
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                };
                a();
            });
            var __tmp__ = newReaderDict(stdgo.Go.asInterface(_piper), _dict), _zlibr:stdgo._internal.io.Io.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("%s (level=%d, dict=%q): %v" : stdgo.GoString), stdgo.Go.toInterface(_fn), stdgo.Go.toInterface(_level), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_err));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            __deferstack__.unshift(() -> _zlibr.close());
            var __tmp__ = stdgo._internal.io.Io.readAll(_zlibr), _b1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
            if (_err1 != null) {
                _t.errorf(("%s (level=%d, dict=%q): %v" : stdgo.GoString), stdgo.Go.toInterface(_fn), stdgo.Go.toInterface(_level), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_err1));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            if ((_b0.length) != ((_b1.length))) {
                _t.errorf(("%s (level=%d, dict=%q): length mismatch %d versus %d" : stdgo.GoString), stdgo.Go.toInterface(_fn), stdgo.Go.toInterface(_level), stdgo.Go.toInterface(_d), stdgo.Go.toInterface((_b0.length)), stdgo.Go.toInterface((_b1.length)));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return;
                };
            };
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_b0.length) : Bool), _i++, {
                    if (_b0[(_i : stdgo.GoInt)] != (_b1[(_i : stdgo.GoInt)])) {
                        _t.errorf(("%s (level=%d, dict=%q): mismatch at %d, 0x%02x versus 0x%02x\n" : stdgo.GoString), stdgo.Go.toInterface(_fn), stdgo.Go.toInterface(_level), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_b0[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_b1[(_i : stdgo.GoInt)]));
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return;
                        };
                    };
                });
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function _testFileLevelDictReset(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _fn:stdgo.GoString, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoByte>):Void {
        var _b0:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _err:stdgo.Error = (null : stdgo.Error);
        if (_fn != (stdgo.Go.str())) {
            {
                var __tmp__ = stdgo._internal.os.Os.readFile(_fn?.__copy__());
                _b0 = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.errorf(("%s (level=%d): %v" : stdgo.GoString), stdgo.Go.toInterface(_fn), stdgo.Go.toInterface(_level), stdgo.Go.toInterface(_err));
                return;
            };
        };
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _zlibw:stdgo.Ref<Writer> = (null : stdgo.Ref<stdgo._internal.compress.zlib.Zlib.Writer>);
        if (_dict == null) {
            {
                var __tmp__ = newWriterLevel(stdgo.Go.asInterface(_buf), _level);
                _zlibw = __tmp__._0;
                _err = __tmp__._1;
            };
        } else {
            {
                var __tmp__ = newWriterLevelDict(stdgo.Go.asInterface(_buf), _level, _dict);
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
            _t.errorf(("%s (level=%d): %v" : stdgo.GoString), stdgo.Go.toInterface(_fn), stdgo.Go.toInterface(_level), stdgo.Go.toInterface(_err));
            return;
        };
        var _out:stdgo.GoString = (_buf.string() : stdgo.GoString)?.__copy__();
        var _buf2 = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        _zlibw.reset(stdgo.Go.asInterface(_buf2));
        {
            var __tmp__ = _zlibw.write(_b0);
            _err = __tmp__._1;
        };
        if (_err == null) {
            _err = _zlibw.close();
        };
        if (_err != null) {
            _t.errorf(("%s (level=%d): %v" : stdgo.GoString), stdgo.Go.toInterface(_fn), stdgo.Go.toInterface(_level), stdgo.Go.toInterface(_err));
            return;
        };
        var _out2:stdgo.GoString = (_buf2.string() : stdgo.GoString)?.__copy__();
        if (_out2 != (_out)) {
            _t.errorf(("%s (level=%d): different output after reset (got %d bytes, expected %d" : stdgo.GoString), stdgo.Go.toInterface(_fn), stdgo.Go.toInterface(_level), stdgo.Go.toInterface((_out2.length)), stdgo.Go.toInterface((_out.length)));
        };
    }
function testWriter(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_i => _s in _data) {
            var _b = (_s : stdgo.Slice<stdgo.GoByte>);
            var _tag:stdgo.GoString = stdgo._internal.fmt.Fmt.sprintf(("#%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__();
            _testLevelDict(_t, _tag?.__copy__(), _b, (-1 : stdgo.GoInt), stdgo.Go.str()?.__copy__());
            _testLevelDict(_t, _tag?.__copy__(), _b, (0 : stdgo.GoInt), stdgo.Go.str()?.__copy__());
            _testLevelDict(_t, _tag?.__copy__(), _b, (-2 : stdgo.GoInt), stdgo.Go.str()?.__copy__());
            {
                var _level:stdgo.GoInt = (1 : stdgo.GoInt);
                stdgo.Go.cfor((_level <= (9 : stdgo.GoInt) : Bool), _level++, {
                    _testLevelDict(_t, _tag?.__copy__(), _b, _level, stdgo.Go.str()?.__copy__());
                });
            };
        };
    }
function testWriterBig(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (_i => _fn in _filenames) {
            _testFileLevelDict(_t, _fn?.__copy__(), (-1 : stdgo.GoInt), stdgo.Go.str()?.__copy__());
            _testFileLevelDict(_t, _fn?.__copy__(), (0 : stdgo.GoInt), stdgo.Go.str()?.__copy__());
            _testFileLevelDict(_t, _fn?.__copy__(), (-2 : stdgo.GoInt), stdgo.Go.str()?.__copy__());
            {
                var _level:stdgo.GoInt = (1 : stdgo.GoInt);
                stdgo.Go.cfor((_level <= (9 : stdgo.GoInt) : Bool), _level++, {
                    _testFileLevelDict(_t, _fn?.__copy__(), _level, stdgo.Go.str()?.__copy__());
                    if ((((_level >= (1 : stdgo.GoInt) : Bool) && stdgo._internal.testing.Testing.short() : Bool) && (stdgo._internal.internal.testenv.Testenv.builder() == stdgo.Go.str()) : Bool)) {
                        break;
                    };
                });
            };
            if (((_i == ((0 : stdgo.GoInt)) && stdgo._internal.testing.Testing.short() : Bool) && (stdgo._internal.internal.testenv.Testenv.builder() == stdgo.Go.str()) : Bool)) {
                break;
            };
        };
    }
function testWriterDict(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        for (_i => _fn in _filenames) {
            _testFileLevelDict(_t, _fn?.__copy__(), (-1 : stdgo.GoInt), ("0123456789." : stdgo.GoString));
            _testFileLevelDict(_t, _fn?.__copy__(), (0 : stdgo.GoInt), ("0123456789." : stdgo.GoString));
            _testFileLevelDict(_t, _fn?.__copy__(), (-2 : stdgo.GoInt), ("0123456789." : stdgo.GoString));
            {
                var _level:stdgo.GoInt = (1 : stdgo.GoInt);
                stdgo.Go.cfor((_level <= (9 : stdgo.GoInt) : Bool), _level++, {
                    _testFileLevelDict(_t, _fn?.__copy__(), _level, ("0123456789." : stdgo.GoString));
                    if ((((_level >= (1 : stdgo.GoInt) : Bool) && stdgo._internal.testing.Testing.short() : Bool) && (stdgo._internal.internal.testenv.Testenv.builder() == stdgo.Go.str()) : Bool)) {
                        break;
                    };
                });
            };
            if (((_i == ((0 : stdgo.GoInt)) && stdgo._internal.testing.Testing.short() : Bool) && (stdgo._internal.internal.testenv.Testenv.builder() == stdgo.Go.str()) : Bool)) {
                break;
            };
        };
    }
function testWriterReset(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        for (__0 => _fn in _filenames) {
            _testFileLevelDictReset(_t, _fn?.__copy__(), (0 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoUInt8>));
            _testFileLevelDictReset(_t, _fn?.__copy__(), (-1 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoUInt8>));
            _testFileLevelDictReset(_t, _fn?.__copy__(), (-2 : stdgo.GoInt), (null : stdgo.Slice<stdgo.GoUInt8>));
            _testFileLevelDictReset(_t, _fn?.__copy__(), (0 : stdgo.GoInt), (("0123456789." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
            _testFileLevelDictReset(_t, _fn?.__copy__(), (-1 : stdgo.GoInt), (("0123456789." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
            _testFileLevelDictReset(_t, _fn?.__copy__(), (-2 : stdgo.GoInt), (("0123456789." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>));
            if (stdgo._internal.testing.Testing.short()) {
                break;
            };
            {
                var _level:stdgo.GoInt = (1 : stdgo.GoInt);
                stdgo.Go.cfor((_level <= (9 : stdgo.GoInt) : Bool), _level++, {
                    _testFileLevelDictReset(_t, _fn?.__copy__(), _level, (null : stdgo.Slice<stdgo.GoUInt8>));
                });
            };
        };
    }
function testWriterDictIsUsed(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _input:stdgo.Slice<stdgo.GoUInt8> = (("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _buf:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer);
        var __tmp__ = newWriterLevelDict(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), (9 : stdgo.GoInt), _input), _compressor:stdgo.Ref<stdgo._internal.compress.zlib.Zlib.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.errorf(("error in NewWriterLevelDict: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            return;
        };
        _compressor.write(_input);
        _compressor.close();
        {};
        var _output = _buf.bytes();
        if (((_output.length) > (25 : stdgo.GoInt) : Bool)) {
            _t.errorf(("result too large (got %d, want <= %d bytes). Is the dictionary being used?" : stdgo.GoString), stdgo.Go.toInterface((_output.length)), stdgo.Go.toInterface((25 : stdgo.GoInt)));
        };
    }
class T_reader_asInterface {
    @:keep
    public dynamic function reset(_r:stdgo._internal.io.Io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):stdgo.Error return __self__.value.reset(_r, _dict);
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_reader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.zlib.Zlib.T_reader_asInterface) class T_reader_static_extension {
    @:keep
    static public function reset( _z:stdgo.Ref<T_reader>, _r:stdgo._internal.io.Io.Reader, _dict:stdgo.Slice<stdgo.GoByte>):stdgo.Error {
        @:recv var _z:stdgo.Ref<T_reader> = _z;
        {
            var __tmp__ = ({ _decompressor : _z._decompressor } : stdgo._internal.compress.zlib.Zlib.T_reader);
            _z._r = __tmp__._r;
            _z._decompressor = __tmp__._decompressor;
            _z._digest = __tmp__._digest;
            _z._err = __tmp__._err;
            _z._scratch = __tmp__._scratch;
        };
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.compress.flate.Flate.Reader)) : stdgo._internal.compress.flate.Flate.Reader), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.compress.flate.Flate.Reader), _1 : false };
            }, _fr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _z._r = _fr;
            } else {
                _z._r = stdgo.Go.asInterface(stdgo._internal.bufio.Bufio.newReader(_r));
            };
        };
        {
            var __tmp__ = stdgo._internal.io.Io.readFull(_z._r, (_z._scratch.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _z._err = __tmp__._1;
        };
        if (_z._err != null) {
            if (stdgo.Go.toInterface(_z._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                _z._err = stdgo._internal.io.Io.errUnexpectedEOF;
            };
            return _z._err;
        };
        var _h:stdgo.GoUInt16 = stdgo._internal.encoding.binary.Binary.bigEndian.uint16((_z._scratch.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        if (((((_z._scratch[(0 : stdgo.GoInt)] & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) != (8 : stdgo.GoUInt8)) || (((_z._scratch[(0 : stdgo.GoInt)] >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) > (7 : stdgo.GoUInt8) : Bool)) : Bool) || ((_h % (31 : stdgo.GoUInt16) : stdgo.GoUInt16) != (0 : stdgo.GoUInt16)) : Bool)) {
            _z._err = errHeader;
            return _z._err;
        };
        var _haveDict:Bool = (_z._scratch[(1 : stdgo.GoInt)] & (32 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
        if (_haveDict) {
            {
                var __tmp__ = stdgo._internal.io.Io.readFull(_z._r, (_z._scratch.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _z._err = __tmp__._1;
            };
            if (_z._err != null) {
                if (stdgo.Go.toInterface(_z._err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                    _z._err = stdgo._internal.io.Io.errUnexpectedEOF;
                };
                return _z._err;
            };
            var _checksum:stdgo.GoUInt32 = stdgo._internal.encoding.binary.Binary.bigEndian.uint32((_z._scratch.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            if (_checksum != (stdgo._internal.hash.adler32.Adler32.checksum(_dict))) {
                _z._err = errDictionary;
                return _z._err;
            };
        };
        if (_z._decompressor == null) {
            if (_haveDict) {
                _z._decompressor = stdgo._internal.compress.flate.Flate.newReaderDict(_z._r, _dict);
            } else {
                _z._decompressor = stdgo._internal.compress.flate.Flate.newReader(_z._r);
            };
        } else {
            (stdgo.Go.typeAssert((stdgo.Go.toInterface(_z._decompressor) : stdgo._internal.compress.flate.Flate.Resetter)) : stdgo._internal.compress.flate.Flate.Resetter).reset(_z._r, _dict);
        };
        _z._digest = stdgo._internal.hash.adler32.Adler32.new_();
        return (null : stdgo.Error);
    }
    @:keep
    static public function close( _z:stdgo.Ref<T_reader>):stdgo.Error {
        @:recv var _z:stdgo.Ref<T_reader> = _z;
        if (((_z._err != null) && (stdgo.Go.toInterface(_z._err) != stdgo.Go.toInterface(stdgo._internal.io.Io.eof)) : Bool)) {
            return _z._err;
        };
        _z._err = _z._decompressor.close();
        return _z._err;
    }
    @:keep
    static public function read( _z:stdgo.Ref<T_reader>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<T_reader> = _z;
        if (_z._err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : _z._err };
        };
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = _z._decompressor.read(_p);
            _n = __tmp__._0;
            _z._err = __tmp__._1;
        };
        _z._digest.write((_p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>));
        if (stdgo.Go.toInterface(_z._err) != (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
            return { _0 : _n, _1 : _z._err };
        };
        {
            var __tmp__ = stdgo._internal.io.Io.readFull(_z._r, (_z._scratch.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io.eof))) {
                    _err = stdgo._internal.io.Io.errUnexpectedEOF;
                };
                _z._err = _err;
                return { _0 : _n, _1 : _z._err };
            };
        };
        var _checksum:stdgo.GoUInt32 = stdgo._internal.encoding.binary.Binary.bigEndian.uint32((_z._scratch.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        if (_checksum != (_z._digest.sum32())) {
            _z._err = errChecksum;
            return { _0 : _n, _1 : _z._err };
        };
        return { _0 : _n, _1 : stdgo._internal.io.Io.eof };
    }
}
class Writer_asInterface {
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function flush():stdgo.Error return __self__.value.flush();
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:keep
    public dynamic function _writeHeader():stdgo.Error return __self__.value._writeHeader();
    @:keep
    public dynamic function reset(_w:stdgo._internal.io.Io.Writer):Void __self__.value.reset(_w);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Writer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.compress.zlib.Zlib.Writer_asInterface) class Writer_static_extension {
    @:keep
    static public function close( _z:stdgo.Ref<Writer>):stdgo.Error {
        @:recv var _z:stdgo.Ref<Writer> = _z;
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
        var _checksum:stdgo.GoUInt32 = _z._digest.sum32();
        stdgo._internal.encoding.binary.Binary.bigEndian.putUint32((_z._scratch.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _checksum);
        {
            var __tmp__ = _z._w.write((_z._scratch.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _z._err = __tmp__._1;
        };
        return _z._err;
    }
    @:keep
    static public function flush( _z:stdgo.Ref<Writer>):stdgo.Error {
        @:recv var _z:stdgo.Ref<Writer> = _z;
        if (!_z._wroteHeader) {
            _z._err = _z._writeHeader();
        };
        if (_z._err != null) {
            return _z._err;
        };
        _z._err = _z._compressor.flush();
        return _z._err;
    }
    @:keep
    static public function write( _z:stdgo.Ref<Writer>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _z:stdgo.Ref<Writer> = _z;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if (!_z._wroteHeader) {
            _z._err = _z._writeHeader();
        };
        if (_z._err != null) {
            return { _0 : (0 : stdgo.GoInt), _1 : _z._err };
        };
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
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
    @:keep
    static public function _writeHeader( _z:stdgo.Ref<Writer>):stdgo.Error {
        @:recv var _z:stdgo.Ref<Writer> = _z;
        var _err:stdgo.Error = (null : stdgo.Error);
        _z._wroteHeader = true;
        _z._scratch[(0 : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
        {
            final __value__ = _z._level;
            if (__value__ == ((-2 : stdgo.GoInt)) || __value__ == ((0 : stdgo.GoInt)) || __value__ == ((1 : stdgo.GoInt))) {
                _z._scratch[(1 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            } else if (__value__ == ((2 : stdgo.GoInt)) || __value__ == ((3 : stdgo.GoInt)) || __value__ == ((4 : stdgo.GoInt)) || __value__ == ((5 : stdgo.GoInt))) {
                _z._scratch[(1 : stdgo.GoInt)] = (64 : stdgo.GoUInt8);
            } else if (__value__ == ((6 : stdgo.GoInt)) || __value__ == ((-1 : stdgo.GoInt))) {
                _z._scratch[(1 : stdgo.GoInt)] = (128 : stdgo.GoUInt8);
            } else if (__value__ == ((7 : stdgo.GoInt)) || __value__ == ((8 : stdgo.GoInt)) || __value__ == ((9 : stdgo.GoInt))) {
                _z._scratch[(1 : stdgo.GoInt)] = (192 : stdgo.GoUInt8);
            } else {
                throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
            };
        };
        if (_z._dict != null) {
            _z._scratch[(1 : stdgo.GoInt)] = (_z._scratch[(1 : stdgo.GoInt)] | ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        _z._scratch[(1 : stdgo.GoInt)] = (_z._scratch[(1 : stdgo.GoInt)] + ((((31 : stdgo.GoUInt16) - (stdgo._internal.encoding.binary.Binary.bigEndian.uint16((_z._scratch.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) % (31 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        {
            {
                var __tmp__ = _z._w.write((_z._scratch.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        if (_z._dict != null) {
            stdgo._internal.encoding.binary.Binary.bigEndian.putUint32((_z._scratch.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.hash.adler32.Adler32.checksum(_z._dict));
            {
                {
                    var __tmp__ = _z._w.write((_z._scratch.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return _err;
                };
            };
        };
        if (_z._compressor == null || (_z._compressor : Dynamic).__nil__) {
            {
                var __tmp__ = stdgo._internal.compress.flate.Flate.newWriterDict(_z._w, _z._level, _z._dict);
                _z._compressor = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
            _z._digest = stdgo._internal.hash.adler32.Adler32.new_();
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function reset( _z:stdgo.Ref<Writer>, _w:stdgo._internal.io.Io.Writer):Void {
        @:recv var _z:stdgo.Ref<Writer> = _z;
        _z._w = _w;
        if (_z._compressor != null && ((_z._compressor : Dynamic).__nil__ == null || !(_z._compressor : Dynamic).__nil__)) {
            _z._compressor.reset(_w);
        };
        if (_z._digest != null) {
            _z._digest.reset();
        };
        _z._err = (null : stdgo.Error);
        _z._scratch = (new stdgo.GoArray<stdgo.GoUInt8>(...([].concat([for (i in 0 ... 4) (0 : stdgo.GoUInt8)]))) : stdgo.GoArray<stdgo.GoUInt8>);
        _z._wroteHeader = false;
    }
}
