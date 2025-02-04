package stdgo._internal.internal.coverage.encodemeta;
@:structInit @:using(stdgo._internal.internal.coverage.encodemeta.Encodemeta_t_funcdesc_static_extension.T_funcDesc_static_extension) class T_funcDesc {
    public var _encoded : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_encoded:stdgo.Slice<stdgo.GoUInt8>) {
        if (_encoded != null) this._encoded = _encoded;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_funcDesc(_encoded);
    }
}
