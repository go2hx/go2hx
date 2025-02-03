package stdgo.internal.coverage.encodemeta;
@:structInit @:using(stdgo.internal.coverage.encodemeta.Encodemeta.CoverageMetaDataBuilder_static_extension) abstract CoverageMetaDataBuilder(stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaDataBuilder.CoverageMetaDataBuilder) from stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaDataBuilder.CoverageMetaDataBuilder to stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaDataBuilder.CoverageMetaDataBuilder {
    public var _stab(get, set) : stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer;
    function get__stab():stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer return this._stab;
    function set__stab(v:stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer):stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer {
        this._stab = v;
        return v;
    }
    public var _funcs(get, set) : Array<T_funcDesc>;
    function get__funcs():Array<T_funcDesc> return [for (i in this._funcs) i];
    function set__funcs(v:Array<T_funcDesc>):Array<T_funcDesc> {
        this._funcs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.coverage.encodemeta.Encodemeta_T_funcDesc.T_funcDesc>);
        return v;
    }
    public var _tmp(get, set) : Array<std.UInt>;
    function get__tmp():Array<std.UInt> return [for (i in this._tmp) i];
    function set__tmp(v:Array<std.UInt>):Array<std.UInt> {
        this._tmp = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _h(get, set) : stdgo._internal.hash.Hash_Hash.Hash;
    function get__h():stdgo._internal.hash.Hash_Hash.Hash return this._h;
    function set__h(v:stdgo._internal.hash.Hash_Hash.Hash):stdgo._internal.hash.Hash_Hash.Hash {
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
    public function new(?_stab:stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer, ?_funcs:Array<T_funcDesc>, ?_tmp:Array<std.UInt>, ?_h:stdgo._internal.hash.Hash_Hash.Hash, ?_pkgpath:std.UInt, ?_pkgname:std.UInt, ?_modpath:std.UInt, ?_debug:Bool, ?_werr:stdgo.Error) this = new stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaDataBuilder.CoverageMetaDataBuilder(_stab, ([for (i in _funcs) i] : stdgo.Slice<stdgo._internal.internal.coverage.encodemeta.Encodemeta_T_funcDesc.T_funcDesc>), ([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _h, (_pkgpath : stdgo.GoUInt32), (_pkgname : stdgo.GoUInt32), (_modpath : stdgo.GoUInt32), _debug, (_werr : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
