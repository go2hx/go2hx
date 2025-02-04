package stdgo._internal.internal.coverage.decodecounter;
@:structInit @:using(stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader_static_extension.CounterDataReader_static_extension) class CounterDataReader {
    public var _stab : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader> = (null : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader>);
    public var _args : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public var _osargs : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _goarch : stdgo.GoString = "";
    public var _goos : stdgo.GoString = "";
    public var _mr : stdgo._internal.io.Io_readseeker.ReadSeeker = (null : stdgo._internal.io.Io_readseeker.ReadSeeker);
    public var _hdr : stdgo._internal.internal.coverage.Coverage_counterfileheader.CounterFileHeader = ({} : stdgo._internal.internal.coverage.Coverage_counterfileheader.CounterFileHeader);
    public var _ftr : stdgo._internal.internal.coverage.Coverage_counterfilefooter.CounterFileFooter = ({} : stdgo._internal.internal.coverage.Coverage_counterfilefooter.CounterFileFooter);
    public var _shdr : stdgo._internal.internal.coverage.Coverage_countersegmentheader.CounterSegmentHeader = ({} : stdgo._internal.internal.coverage.Coverage_countersegmentheader.CounterSegmentHeader);
    public var _u32b : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _u8b : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _fcnCount : stdgo.GoUInt32 = 0;
    public var _segCount : stdgo.GoUInt32 = 0;
    public var _debug : Bool = false;
    public function new(?_stab:stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader>, ?_args:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_osargs:stdgo.Slice<stdgo.GoString>, ?_goarch:stdgo.GoString, ?_goos:stdgo.GoString, ?_mr:stdgo._internal.io.Io_readseeker.ReadSeeker, ?_hdr:stdgo._internal.internal.coverage.Coverage_counterfileheader.CounterFileHeader, ?_ftr:stdgo._internal.internal.coverage.Coverage_counterfilefooter.CounterFileFooter, ?_shdr:stdgo._internal.internal.coverage.Coverage_countersegmentheader.CounterSegmentHeader, ?_u32b:stdgo.Slice<stdgo.GoUInt8>, ?_u8b:stdgo.Slice<stdgo.GoUInt8>, ?_fcnCount:stdgo.GoUInt32, ?_segCount:stdgo.GoUInt32, ?_debug:Bool) {
        if (_stab != null) this._stab = _stab;
        if (_args != null) this._args = _args;
        if (_osargs != null) this._osargs = _osargs;
        if (_goarch != null) this._goarch = _goarch;
        if (_goos != null) this._goos = _goos;
        if (_mr != null) this._mr = _mr;
        if (_hdr != null) this._hdr = _hdr;
        if (_ftr != null) this._ftr = _ftr;
        if (_shdr != null) this._shdr = _shdr;
        if (_u32b != null) this._u32b = _u32b;
        if (_u8b != null) this._u8b = _u8b;
        if (_fcnCount != null) this._fcnCount = _fcnCount;
        if (_segCount != null) this._segCount = _segCount;
        if (_debug != null) this._debug = _debug;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CounterDataReader(
_stab,
_args,
_osargs,
_goarch,
_goos,
_mr,
_hdr,
_ftr,
_shdr,
_u32b,
_u8b,
_fcnCount,
_segCount,
_debug);
    }
}
