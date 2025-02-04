package stdgo._internal.internal.coverage.encodemeta;
@:structInit @:using(stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetadatabuilder_static_extension.CoverageMetaDataBuilder_static_extension) class CoverageMetaDataBuilder {
    public var _stab : stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer = ({} : stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer);
    public var _funcs : stdgo.Slice<stdgo._internal.internal.coverage.encodemeta.Encodemeta_t_funcdesc.T_funcDesc> = (null : stdgo.Slice<stdgo._internal.internal.coverage.encodemeta.Encodemeta_t_funcdesc.T_funcDesc>);
    public var _tmp : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _h : stdgo._internal.hash.Hash_hash.Hash = (null : stdgo._internal.hash.Hash_hash.Hash);
    public var _pkgpath : stdgo.GoUInt32 = 0;
    public var _pkgname : stdgo.GoUInt32 = 0;
    public var _modpath : stdgo.GoUInt32 = 0;
    public var _debug : Bool = false;
    public var _werr : stdgo.Error = (null : stdgo.Error);
    public function new(?_stab:stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer, ?_funcs:stdgo.Slice<stdgo._internal.internal.coverage.encodemeta.Encodemeta_t_funcdesc.T_funcDesc>, ?_tmp:stdgo.Slice<stdgo.GoUInt8>, ?_h:stdgo._internal.hash.Hash_hash.Hash, ?_pkgpath:stdgo.GoUInt32, ?_pkgname:stdgo.GoUInt32, ?_modpath:stdgo.GoUInt32, ?_debug:Bool, ?_werr:stdgo.Error) {
        if (_stab != null) this._stab = _stab;
        if (_funcs != null) this._funcs = _funcs;
        if (_tmp != null) this._tmp = _tmp;
        if (_h != null) this._h = _h;
        if (_pkgpath != null) this._pkgpath = _pkgpath;
        if (_pkgname != null) this._pkgname = _pkgname;
        if (_modpath != null) this._modpath = _modpath;
        if (_debug != null) this._debug = _debug;
        if (_werr != null) this._werr = _werr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CoverageMetaDataBuilder(_stab, _funcs, _tmp, _h, _pkgpath, _pkgname, _modpath, _debug, _werr);
    }
}
