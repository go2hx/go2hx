package stdgo.decodecounter;
@:structInit @:using(stdgo.internal.coverage.decodecounter.Decodecounter.CounterDataReader_static_extension) abstract CounterDataReader(stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader) from stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader to stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader {
    public var _stab(get, set) : stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader;
    function get__stab():stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader return this._stab;
    function set__stab(v:stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader):stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader {
        this._stab = (v : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader>);
        return v;
    }
    public var _args(get, set) : Map<String, String>;
    function get__args():Map<String, String> return {
        final __obj__:Map<String, String> = [];
        for (key => value in this._args) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__args(v:Map<String, String>):Map<String, String> {
        this._args = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
            };
            __obj__;
        };
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
    public var _mr(get, set) : stdgo._internal.io.Io_readseeker.ReadSeeker;
    function get__mr():stdgo._internal.io.Io_readseeker.ReadSeeker return this._mr;
    function set__mr(v:stdgo._internal.io.Io_readseeker.ReadSeeker):stdgo._internal.io.Io_readseeker.ReadSeeker {
        this._mr = v;
        return v;
    }
    public var _hdr(get, set) : stdgo._internal.internal.coverage.Coverage_counterfileheader.CounterFileHeader;
    function get__hdr():stdgo._internal.internal.coverage.Coverage_counterfileheader.CounterFileHeader return this._hdr;
    function set__hdr(v:stdgo._internal.internal.coverage.Coverage_counterfileheader.CounterFileHeader):stdgo._internal.internal.coverage.Coverage_counterfileheader.CounterFileHeader {
        this._hdr = v;
        return v;
    }
    public var _ftr(get, set) : stdgo._internal.internal.coverage.Coverage_counterfilefooter.CounterFileFooter;
    function get__ftr():stdgo._internal.internal.coverage.Coverage_counterfilefooter.CounterFileFooter return this._ftr;
    function set__ftr(v:stdgo._internal.internal.coverage.Coverage_counterfilefooter.CounterFileFooter):stdgo._internal.internal.coverage.Coverage_counterfilefooter.CounterFileFooter {
        this._ftr = v;
        return v;
    }
    public var _shdr(get, set) : stdgo._internal.internal.coverage.Coverage_countersegmentheader.CounterSegmentHeader;
    function get__shdr():stdgo._internal.internal.coverage.Coverage_countersegmentheader.CounterSegmentHeader return this._shdr;
    function set__shdr(v:stdgo._internal.internal.coverage.Coverage_countersegmentheader.CounterSegmentHeader):stdgo._internal.internal.coverage.Coverage_countersegmentheader.CounterSegmentHeader {
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
    public function new(?_stab:stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader, ?_args:Map<String, String>, ?_osargs:Array<String>, ?_goarch:String, ?_goos:String, ?_mr:stdgo._internal.io.Io_readseeker.ReadSeeker, ?_hdr:stdgo._internal.internal.coverage.Coverage_counterfileheader.CounterFileHeader, ?_ftr:stdgo._internal.internal.coverage.Coverage_counterfilefooter.CounterFileFooter, ?_shdr:stdgo._internal.internal.coverage.Coverage_countersegmentheader.CounterSegmentHeader, ?_u32b:Array<std.UInt>, ?_u8b:Array<std.UInt>, ?_fcnCount:std.UInt, ?_segCount:std.UInt, ?_debug:Bool) this = new stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader(
(_stab : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader>),
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
        for (key => value in _args) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
        };
        __obj__;
    },
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
@:structInit @:using(stdgo.internal.coverage.decodecounter.Decodecounter.FuncPayload_static_extension) abstract FuncPayload(stdgo._internal.internal.coverage.decodecounter.Decodecounter_funcpayload.FuncPayload) from stdgo._internal.internal.coverage.decodecounter.Decodecounter_funcpayload.FuncPayload to stdgo._internal.internal.coverage.decodecounter.Decodecounter_funcpayload.FuncPayload {
    public var pkgIdx(get, set) : std.UInt;
    function get_pkgIdx():std.UInt return this.pkgIdx;
    function set_pkgIdx(v:std.UInt):std.UInt {
        this.pkgIdx = (v : stdgo.GoUInt32);
        return v;
    }
    public var funcIdx(get, set) : std.UInt;
    function get_funcIdx():std.UInt return this.funcIdx;
    function set_funcIdx(v:std.UInt):std.UInt {
        this.funcIdx = (v : stdgo.GoUInt32);
        return v;
    }
    public var counters(get, set) : Array<std.UInt>;
    function get_counters():Array<std.UInt> return [for (i in this.counters) i];
    function set_counters(v:Array<std.UInt>):Array<std.UInt> {
        this.counters = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public function new(?pkgIdx:std.UInt, ?funcIdx:std.UInt, ?counters:Array<std.UInt>) this = new stdgo._internal.internal.coverage.decodecounter.Decodecounter_funcpayload.FuncPayload((pkgIdx : stdgo.GoUInt32), (funcIdx : stdgo.GoUInt32), ([for (i in counters) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef CounterDataReaderPointer = stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareaderpointer.CounterDataReaderPointer;
class CounterDataReader_static_extension {
    static public function nextFunc(_cdr:CounterDataReader, _p:FuncPayload):stdgo.Tuple<Bool, stdgo.Error> {
        final _cdr = (_cdr : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>);
        final _p = (_p : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_funcpayload.FuncPayload>);
        return {
            final obj = stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader_static_extension.CounterDataReader_static_extension.nextFunc(_cdr, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function numFunctionsInSegment(_cdr:CounterDataReader):std.UInt {
        final _cdr = (_cdr : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>);
        return stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader_static_extension.CounterDataReader_static_extension.numFunctionsInSegment(_cdr);
    }
    static public function beginNextSegment(_cdr:CounterDataReader):stdgo.Tuple<Bool, stdgo.Error> {
        final _cdr = (_cdr : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>);
        return {
            final obj = stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader_static_extension.CounterDataReader_static_extension.beginNextSegment(_cdr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function numSegments(_cdr:CounterDataReader):std.UInt {
        final _cdr = (_cdr : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>);
        return stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader_static_extension.CounterDataReader_static_extension.numSegments(_cdr);
    }
    static public function goarch(_cdr:CounterDataReader):String {
        final _cdr = (_cdr : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>);
        return stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader_static_extension.CounterDataReader_static_extension.goarch(_cdr);
    }
    static public function goos(_cdr:CounterDataReader):String {
        final _cdr = (_cdr : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>);
        return stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader_static_extension.CounterDataReader_static_extension.goos(_cdr);
    }
    static public function osArgs(_cdr:CounterDataReader):Array<String> {
        final _cdr = (_cdr : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>);
        return [for (i in stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader_static_extension.CounterDataReader_static_extension.osArgs(_cdr)) i];
    }
    static public function _readArgs(_cdr:CounterDataReader):stdgo.Error {
        final _cdr = (_cdr : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>);
        return stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader_static_extension.CounterDataReader_static_extension._readArgs(_cdr);
    }
    static public function _readStringTable(_cdr:CounterDataReader):stdgo.Error {
        final _cdr = (_cdr : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>);
        return stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader_static_extension.CounterDataReader_static_extension._readStringTable(_cdr);
    }
    static public function _readSegmentPreamble(_cdr:CounterDataReader):stdgo.Error {
        final _cdr = (_cdr : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>);
        return stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader_static_extension.CounterDataReader_static_extension._readSegmentPreamble(_cdr);
    }
    static public function _readFooter(_cdr:CounterDataReader):stdgo.Error {
        final _cdr = (_cdr : stdgo.Ref<stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader.CounterDataReader>);
        return stdgo._internal.internal.coverage.decodecounter.Decodecounter_counterdatareader_static_extension.CounterDataReader_static_extension._readFooter(_cdr);
    }
}
typedef FuncPayloadPointer = stdgo._internal.internal.coverage.decodecounter.Decodecounter_funcpayloadpointer.FuncPayloadPointer;
class FuncPayload_static_extension {

}
class Decodecounter {
    static public inline function newCounterDataReader(_fn:String, _rs:stdgo._internal.io.Io_readseeker.ReadSeeker):stdgo.Tuple<CounterDataReader, stdgo.Error> {
        final _fn = (_fn : stdgo.GoString);
        return {
            final obj = stdgo._internal.internal.coverage.decodecounter.Decodecounter_newcounterdatareader.newCounterDataReader(_fn, _rs);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
