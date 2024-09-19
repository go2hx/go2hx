package _internal.vendor.golang_dot_org.x.net.idna;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.idna.Idna_T_sparseBlocks_static_extension.T_sparseBlocks_static_extension) class T_sparseBlocks {
    public var _values : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_valueRange.T_valueRange> = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_valueRange.T_valueRange>);
    public var _offset : stdgo.Slice<stdgo.GoUInt16> = (null : stdgo.Slice<stdgo.GoUInt16>);
    public function new(?_values:stdgo.Slice<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_valueRange.T_valueRange>, ?_offset:stdgo.Slice<stdgo.GoUInt16>) {
        if (_values != null) this._values = _values;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sparseBlocks(_values, _offset);
    }
}
