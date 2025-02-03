package stdgo.internal.coverage.decodecounter;
@:structInit @:using(stdgo.internal.coverage.decodecounter.Decodecounter.CounterDataReader_static_extension) abstract CounterDataReader(stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader.CounterDataReader) from stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader.CounterDataReader to stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader.CounterDataReader {
    public var _stab(get, set) : stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader;
    function get__stab():stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader return this._stab;
    function set__stab(v:stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader):stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader {
        this._stab = (v : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader>);
        return v;
    }
    public var _args(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get__args():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this._args;
    function set__args(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this._args = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        return v;
    }
    public var _osargs(get, set) : Array<String>;
    function get__osargs():Array<String> return [for (i in this._osargs) i];
    function set__osargs(v:Array<String>):Array<String> {
        this._osargs = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _goarch(get, set) : String;
    function get__goarch():String return this._goarch;
    function set__goarch(v:String):String {
        this._goarch = (v : stdgo.GoString);
        return v;
    }
    public var _goos(get, set) : String;
    function get__goos():String return this._goos;
    function set__goos(v:String):String {
        this._goos = (v : stdgo.GoString);
        return v;
    }
    public var _mr(get, set) : stdgo._internal.io.Io_ReadSeeker.ReadSeeker;
    function get__mr():stdgo._internal.io.Io_ReadSeeker.ReadSeeker return this._mr;
    function set__mr(v:stdgo._internal.io.Io_ReadSeeker.ReadSeeker):stdgo._internal.io.Io_ReadSeeker.ReadSeeker {
        this._mr = v;
        return v;
    }
    public var _hdr(get, set) : stdgo._internal.internal.coverage.Coverage_CounterFileHeader.CounterFileHeader;
    function get__hdr():stdgo._internal.internal.coverage.Coverage_CounterFileHeader.CounterFileHeader return this._hdr;
    function set__hdr(v:stdgo._internal.internal.coverage.Coverage_CounterFileHeader.CounterFileHeader):stdgo._internal.internal.coverage.Coverage_CounterFileHeader.CounterFileHeader {
        this._hdr = v;
        return v;
    }
    public var _ftr(get, set) : stdgo._internal.internal.coverage.Coverage_CounterFileFooter.CounterFileFooter;
    function get__ftr():stdgo._internal.internal.coverage.Coverage_CounterFileFooter.CounterFileFooter return this._ftr;
    function set__ftr(v:stdgo._internal.internal.coverage.Coverage_CounterFileFooter.CounterFileFooter):stdgo._internal.internal.coverage.Coverage_CounterFileFooter.CounterFileFooter {
        this._ftr = v;
        return v;
    }
    public var _shdr(get, set) : stdgo._internal.internal.coverage.Coverage_CounterSegmentHeader.CounterSegmentHeader;
    function get__shdr():stdgo._internal.internal.coverage.Coverage_CounterSegmentHeader.CounterSegmentHeader return this._shdr;
    function set__shdr(v:stdgo._internal.internal.coverage.Coverage_CounterSegmentHeader.CounterSegmentHeader):stdgo._internal.internal.coverage.Coverage_CounterSegmentHeader.CounterSegmentHeader {
        this._shdr = v;
        return v;
    }
    public var _u32b(get, set) : Array<std.UInt>;
    function get__u32b():Array<std.UInt> return [for (i in this._u32b) i];
    function set__u32b(v:Array<std.UInt>):Array<std.UInt> {
        this._u32b = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _u8b(get, set) : Array<std.UInt>;
    function get__u8b():Array<std.UInt> return [for (i in this._u8b) i];
    function set__u8b(v:Array<std.UInt>):Array<std.UInt> {
        this._u8b = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _fcnCount(get, set) : std.UInt;
    function get__fcnCount():std.UInt return this._fcnCount;
    function set__fcnCount(v:std.UInt):std.UInt {
        this._fcnCount = (v : stdgo.GoUInt32);
        return v;
    }
    public var _segCount(get, set) : std.UInt;
    function get__segCount():std.UInt return this._segCount;
    function set__segCount(v:std.UInt):std.UInt {
        this._segCount = (v : stdgo.GoUInt32);
        return v;
    }
    public var _debug(get, set) : Bool;
    function get__debug():Bool return this._debug;
    function set__debug(v:Bool):Bool {
        this._debug = v;
        return v;
    }
    public function new(?_stab:stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader, ?_args:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_osargs:Array<String>, ?_goarch:String, ?_goos:String, ?_mr:stdgo._internal.io.Io_ReadSeeker.ReadSeeker, ?_hdr:stdgo._internal.internal.coverage.Coverage_CounterFileHeader.CounterFileHeader, ?_ftr:stdgo._internal.internal.coverage.Coverage_CounterFileFooter.CounterFileFooter, ?_shdr:stdgo._internal.internal.coverage.Coverage_CounterSegmentHeader.CounterSegmentHeader, ?_u32b:Array<std.UInt>, ?_u8b:Array<std.UInt>, ?_fcnCount:std.UInt, ?_segCount:std.UInt, ?_debug:Bool) this = new stdgo._internal.internal.coverage.decodecounter.Decodecounter_CounterDataReader.CounterDataReader(
(_stab : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader>),
(_args : stdgo.GoMap<stdgo.GoString, stdgo.GoString>),
([for (i in _osargs) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
(_goarch : stdgo.GoString),
(_goos : stdgo.GoString),
_mr,
_hdr,
_ftr,
_shdr,
([for (i in _u32b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _u8b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_fcnCount : stdgo.GoUInt32),
(_segCount : stdgo.GoUInt32),
_debug);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
