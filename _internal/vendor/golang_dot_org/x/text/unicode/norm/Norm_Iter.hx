package _internal.vendor.golang_dot_org.x.text.unicode.norm;
@:structInit @:using(_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter_static_extension.Iter_static_extension) class Iter {
    public var _rb : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer = ({} : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer);
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(128, 128, ...[for (i in 0 ... 128) (0 : stdgo.GoUInt8)]);
    public var _info : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties = ({} : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties);
    public var _next : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_iterFunc.T_iterFunc = (null : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_iterFunc.T_iterFunc);
    public var _asciiF : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_iterFunc.T_iterFunc = (null : _internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_iterFunc.T_iterFunc);
    public var _p : stdgo.GoInt = 0;
    public var _multiSeg : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_rb:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_reorderBuffer.T_reorderBuffer, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_info:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Properties.Properties, ?_next:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_iterFunc.T_iterFunc, ?_asciiF:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_iterFunc.T_iterFunc, ?_p:stdgo.GoInt, ?_multiSeg:stdgo.Slice<stdgo.GoUInt8>) {
        if (_rb != null) this._rb = _rb;
        if (_buf != null) this._buf = _buf;
        if (_info != null) this._info = _info;
        if (_next != null) this._next = _next;
        if (_asciiF != null) this._asciiF = _asciiF;
        if (_p != null) this._p = _p;
        if (_multiSeg != null) this._multiSeg = _multiSeg;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Iter(_rb, _buf, _info, _next, _asciiF, _p, _multiSeg);
    }
}
