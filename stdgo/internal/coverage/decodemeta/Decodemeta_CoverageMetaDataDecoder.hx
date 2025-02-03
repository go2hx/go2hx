package stdgo.internal.coverage.decodemeta;
@:structInit @:using(stdgo.internal.coverage.decodemeta.Decodemeta.CoverageMetaDataDecoder_static_extension) abstract CoverageMetaDataDecoder(stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaDataDecoder.CoverageMetaDataDecoder) from stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaDataDecoder.CoverageMetaDataDecoder to stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaDataDecoder.CoverageMetaDataDecoder {
    public var _r(get, set) : stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader;
    function get__r():stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader):stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader {
        this._r = (v : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader>);
        return v;
    }
    public var _hdr(get, set) : stdgo._internal.internal.coverage.Coverage_MetaSymbolHeader.MetaSymbolHeader;
    function get__hdr():stdgo._internal.internal.coverage.Coverage_MetaSymbolHeader.MetaSymbolHeader return this._hdr;
    function set__hdr(v:stdgo._internal.internal.coverage.Coverage_MetaSymbolHeader.MetaSymbolHeader):stdgo._internal.internal.coverage.Coverage_MetaSymbolHeader.MetaSymbolHeader {
        this._hdr = v;
        return v;
    }
    public var _strtab(get, set) : stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader;
    function get__strtab():stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader return this._strtab;
    function set__strtab(v:stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader):stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader {
        this._strtab = (v : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader>);
        return v;
    }
    public var _tmp(get, set) : Array<std.UInt>;
    function get__tmp():Array<std.UInt> return [for (i in this._tmp) i];
    function set__tmp(v:Array<std.UInt>):Array<std.UInt> {
        this._tmp = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _debug(get, set) : Bool;
    function get__debug():Bool return this._debug;
    function set__debug(v:Bool):Bool {
        this._debug = v;
        return v;
    }
    public function new(?_r:stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader, ?_hdr:stdgo._internal.internal.coverage.Coverage_MetaSymbolHeader.MetaSymbolHeader, ?_strtab:stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader, ?_tmp:Array<std.UInt>, ?_debug:Bool) this = new stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaDataDecoder.CoverageMetaDataDecoder((_r : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_Reader.Reader>), _hdr, (_strtab : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader>), ([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _debug);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
