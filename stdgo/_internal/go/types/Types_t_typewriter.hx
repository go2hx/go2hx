package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_typewriter_static_extension.T_typeWriter_static_extension) class T_typeWriter {
    public var _buf : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = (null : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
    public var _seen : stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool> = (null : stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>);
    public var _qf : stdgo._internal.go.types.Types_qualifier.Qualifier = (null : stdgo._internal.go.types.Types_qualifier.Qualifier);
    public var _ctxt : stdgo.Ref<stdgo._internal.go.types.Types_context.Context> = (null : stdgo.Ref<stdgo._internal.go.types.Types_context.Context>);
    public var _tparams : stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList> = (null : stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>);
    public var _paramNames : Bool = false;
    public var _tpSubscripts : Bool = false;
    public var _pkgInfo : Bool = false;
    public function new(?_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, ?_seen:stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>, ?_qf:stdgo._internal.go.types.Types_qualifier.Qualifier, ?_ctxt:stdgo.Ref<stdgo._internal.go.types.Types_context.Context>, ?_tparams:stdgo.Ref<stdgo._internal.go.types.Types_typeparamlist.TypeParamList>, ?_paramNames:Bool, ?_tpSubscripts:Bool, ?_pkgInfo:Bool) {
        if (_buf != null) this._buf = _buf;
        if (_seen != null) this._seen = _seen;
        if (_qf != null) this._qf = _qf;
        if (_ctxt != null) this._ctxt = _ctxt;
        if (_tparams != null) this._tparams = _tparams;
        if (_paramNames != null) this._paramNames = _paramNames;
        if (_tpSubscripts != null) this._tpSubscripts = _tpSubscripts;
        if (_pkgInfo != null) this._pkgInfo = _pkgInfo;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_typeWriter(_buf, _seen, _qf, _ctxt, _tparams, _paramNames, _tpSubscripts, _pkgInfo);
    }
}
