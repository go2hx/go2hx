package _internal.vendor.golang_dot_org.x.text.transform;
@:structInit @:using(_internal.vendor.golang_dot_org.x.text.transform.Transform_Writer_static_extension.Writer_static_extension) class Writer {
    public var _w : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    public var _t : _internal.vendor.golang_dot_org.x.text.transform.Transform_Transformer.Transformer = (null : _internal.vendor.golang_dot_org.x.text.transform.Transform_Transformer.Transformer);
    public var _dst : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _src : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _n : stdgo.GoInt = 0;
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer, ?_t:_internal.vendor.golang_dot_org.x.text.transform.Transform_Transformer.Transformer, ?_dst:stdgo.Slice<stdgo.GoUInt8>, ?_src:stdgo.Slice<stdgo.GoUInt8>, ?_n:stdgo.GoInt) {
        if (_w != null) this._w = _w;
        if (_t != null) this._t = _t;
        if (_dst != null) this._dst = _dst;
        if (_src != null) this._src = _src;
        if (_n != null) this._n = _n;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Writer(_w, _t, _dst, _src, _n);
    }
}
