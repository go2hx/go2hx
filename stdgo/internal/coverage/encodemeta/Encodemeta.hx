package stdgo.internal.coverage.encodemeta;
@:structInit @:using(stdgo.internal.coverage.encodemeta.Encodemeta.CoverageMetaDataBuilder_static_extension) abstract CoverageMetaDataBuilder(stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder) from stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder to stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder {
    public var _stab(get, set) : stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer;
    function get__stab():stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer return this._stab;
    function set__stab(v:stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer):stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer {
        this._stab = v;
        return v;
    }
    public var _funcs(get, set) : Array<T_funcDesc>;
    function get__funcs():Array<T_funcDesc> return [for (i in this._funcs) i];
    function set__funcs(v:Array<T_funcDesc>):Array<T_funcDesc> {
        this._funcs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.coverage.encodemeta.Encodemeta_t_funcdesc.T_funcDesc>);
        return v;
    }
    public var _tmp(get, set) : Array<std.UInt>;
    function get__tmp():Array<std.UInt> return [for (i in this._tmp) i];
    function set__tmp(v:Array<std.UInt>):Array<std.UInt> {
        this._tmp = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _h(get, set) : stdgo._internal.hash.Hash_hash.Hash;
    function get__h():stdgo._internal.hash.Hash_hash.Hash return this._h;
    function set__h(v:stdgo._internal.hash.Hash_hash.Hash):stdgo._internal.hash.Hash_hash.Hash {
        this._h = v;
        return v;
    }
    public var _pkgpath(get, set) : std.UInt;
    function get__pkgpath():std.UInt return this._pkgpath;
    function set__pkgpath(v:std.UInt):std.UInt {
        this._pkgpath = (v : stdgo.GoUInt32);
        return v;
    }
    public var _pkgname(get, set) : std.UInt;
    function get__pkgname():std.UInt return this._pkgname;
    function set__pkgname(v:std.UInt):std.UInt {
        this._pkgname = (v : stdgo.GoUInt32);
        return v;
    }
    public var _modpath(get, set) : std.UInt;
    function get__modpath():std.UInt return this._modpath;
    function set__modpath(v:std.UInt):std.UInt {
        this._modpath = (v : stdgo.GoUInt32);
        return v;
    }
    public var _debug(get, set) : Bool;
    function get__debug():Bool return this._debug;
    function set__debug(v:Bool):Bool {
        this._debug = v;
        return v;
    }
    public var _werr(get, set) : stdgo.Error;
    function get__werr():stdgo.Error return this._werr;
    function set__werr(v:stdgo.Error):stdgo.Error {
        this._werr = (v : stdgo.Error);
        return v;
    }
    public function new(?_stab:stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer, ?_funcs:Array<T_funcDesc>, ?_tmp:Array<std.UInt>, ?_h:stdgo._internal.hash.Hash_hash.Hash, ?_pkgpath:std.UInt, ?_pkgname:std.UInt, ?_modpath:std.UInt, ?_debug:Bool, ?_werr:stdgo.Error) this = new stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder(_stab, ([for (i in _funcs) i] : stdgo.Slice<stdgo._internal.internal.coverage.encodemeta.Encodemeta_t_funcdesc.T_funcDesc>), ([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _h, (_pkgpath : stdgo.GoUInt32), (_pkgname : stdgo.GoUInt32), (_modpath : stdgo.GoUInt32), _debug, (_werr : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.coverage.encodemeta.Encodemeta.T_funcDesc_static_extension) @:dox(hide) abstract T_funcDesc(stdgo._internal.internal.coverage.encodemeta.Encodemeta_t_funcdesc.T_funcDesc) from stdgo._internal.internal.coverage.encodemeta.Encodemeta_t_funcdesc.T_funcDesc to stdgo._internal.internal.coverage.encodemeta.Encodemeta_t_funcdesc.T_funcDesc {
    public var _encoded(get, set) : Array<std.UInt>;
    function get__encoded():Array<std.UInt> return [for (i in this._encoded) i];
    function set__encoded(v:Array<std.UInt>):Array<std.UInt> {
        this._encoded = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_encoded:Array<std.UInt>) this = new stdgo._internal.internal.coverage.encodemeta.Encodemeta_t_funcdesc.T_funcDesc(([for (i in _encoded) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.coverage.encodemeta.Encodemeta.CoverageMetaFileWriter_static_extension) abstract CoverageMetaFileWriter(stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetafilewriter.CoverageMetaFileWriter) from stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetafilewriter.CoverageMetaFileWriter to stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetafilewriter.CoverageMetaFileWriter {
    public var _stab(get, set) : stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer;
    function get__stab():stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer return this._stab;
    function set__stab(v:stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer):stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer {
        this._stab = v;
        return v;
    }
    public var _mfname(get, set) : String;
    function get__mfname():String return this._mfname;
    function set__mfname(v:String):String {
        this._mfname = (v : stdgo.GoString);
        return v;
    }
    public var _w(get, set) : stdgo._internal.bufio.Bufio_writer.Writer;
    function get__w():stdgo._internal.bufio.Bufio_writer.Writer return this._w;
    function set__w(v:stdgo._internal.bufio.Bufio_writer.Writer):stdgo._internal.bufio.Bufio_writer.Writer {
        this._w = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
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
    public function new(?_stab:stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer, ?_mfname:String, ?_w:stdgo._internal.bufio.Bufio_writer.Writer, ?_tmp:Array<std.UInt>, ?_debug:Bool) this = new stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetafilewriter.CoverageMetaFileWriter(_stab, (_mfname : stdgo.GoString), (_w : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>), ([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _debug);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef CoverageMetaDataBuilderPointer = stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilderpointer.CoverageMetaDataBuilderPointer;
class CoverageMetaDataBuilder_static_extension {
    static public function emit(_b:CoverageMetaDataBuilder, _w:stdgo._internal.io.Io_writeseeker.WriteSeeker):stdgo.Tuple<haxe.ds.Vector<std.UInt>, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder>);
        return {
            final obj = stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder_static_extension.CoverageMetaDataBuilder_static_extension.emit(_b, _w);
            { _0 : haxe.ds.Vector.fromArrayCopy([for (i in obj._0) i]), _1 : obj._1 };
        };
    }
    static public function _wrUint32(_b:CoverageMetaDataBuilder, _w:stdgo._internal.io.Io_writeseeker.WriteSeeker, _v:std.UInt):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder>);
        final _v = (_v : stdgo.GoUInt32);
        stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder_static_extension.CoverageMetaDataBuilder_static_extension._wrUint32(_b, _w, _v);
    }
    static public function _reportWriteError(_b:CoverageMetaDataBuilder, _err:stdgo.Error):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder_static_extension.CoverageMetaDataBuilder_static_extension._reportWriteError(_b, _err);
    }
    static public function _emitFunc(_b:CoverageMetaDataBuilder, _w:stdgo._internal.io.Io_writeseeker.WriteSeeker, _off:haxe.Int64, _f:T_funcDesc):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder_static_extension.CoverageMetaDataBuilder_static_extension._emitFunc(_b, _w, _off, _f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _emitFuncOffsets(_b:CoverageMetaDataBuilder, _w:stdgo._internal.io.Io_writeseeker.WriteSeeker, _off:haxe.Int64):haxe.Int64 {
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder>);
        final _off = (_off : stdgo.GoInt64);
        return stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder_static_extension.CoverageMetaDataBuilder_static_extension._emitFuncOffsets(_b, _w, _off);
    }
    static public function addFunc(_b:CoverageMetaDataBuilder, _f:stdgo._internal.internal.coverage.Coverage_funcdesc.FuncDesc):std.UInt {
        final _b = (_b : stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder.CoverageMetaDataBuilder>);
        return stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder_static_extension.CoverageMetaDataBuilder_static_extension.addFunc(_b, _f);
    }
}
@:dox(hide) typedef T_funcDescPointer = stdgo._internal.internal.coverage.encodemeta.Encodemeta_t_funcdescpointer.T_funcDescPointer;
@:dox(hide) class T_funcDesc_static_extension {

}
typedef CoverageMetaFileWriterPointer = stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetafilewriterpointer.CoverageMetaFileWriterPointer;
class CoverageMetaFileWriter_static_extension {
    static public function write(_m:CoverageMetaFileWriter, _finalHash:haxe.ds.Vector<std.UInt>, _blobs:Array<Array<std.UInt>>, _mode:stdgo._internal.internal.coverage.Coverage_countermode.CounterMode, _granularity:stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity):stdgo.Error {
        final _m = (_m : stdgo.Ref<stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetafilewriter.CoverageMetaFileWriter>);
        final _finalHash = ([for (i in _finalHash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        final _blobs = ([for (i in _blobs) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        return stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetafilewriter_static_extension.CoverageMetaFileWriter_static_extension.write(_m, _finalHash, _blobs, _mode, _granularity);
    }
}
class Encodemeta {
    static public inline function newCoverageMetaDataBuilder(_pkgpath:String, _pkgname:String, _modulepath:String):stdgo.Tuple<CoverageMetaDataBuilder, stdgo.Error> {
        final _pkgpath = (_pkgpath : stdgo.GoString);
        final _pkgname = (_pkgname : stdgo.GoString);
        final _modulepath = (_modulepath : stdgo.GoString);
        return {
            final obj = stdgo._internal.internal.coverage.encodemeta.Encodemeta_newcoveragemetadatabuilder.newCoverageMetaDataBuilder(_pkgpath, _pkgname, _modulepath);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * HashFuncDesc computes an md5 sum of a coverage.FuncDesc and returns
        * a digest for it.
    **/
    static public inline function hashFuncDesc(_f:stdgo._internal.internal.coverage.Coverage_funcdesc.FuncDesc):haxe.ds.Vector<std.UInt> {
        final _f = (_f : stdgo.Ref<stdgo._internal.internal.coverage.Coverage_funcdesc.FuncDesc>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.internal.coverage.encodemeta.Encodemeta_hashfuncdesc.hashFuncDesc(_f)) i]);
    }
    static public inline function newCoverageMetaFileWriter(_mfname:String, _w:stdgo._internal.io.Io_writer.Writer):CoverageMetaFileWriter {
        final _mfname = (_mfname : stdgo.GoString);
        return stdgo._internal.internal.coverage.encodemeta.Encodemeta_newcoveragemetafilewriter.newCoverageMetaFileWriter(_mfname, _w);
    }
}
