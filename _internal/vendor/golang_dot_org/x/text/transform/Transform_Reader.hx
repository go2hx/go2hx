package _internal.vendor.golang_dot_org.x.text.transform;
@:structInit @:using(_internal.vendor.golang_dot_org.x.text.transform.Transform_Reader_static_extension.Reader_static_extension) class Reader {
    public var _r : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public var _t : _internal.vendor.golang_dot_org.x.text.transform.Transform_Transformer.Transformer = (null : _internal.vendor.golang_dot_org.x.text.transform.Transform_Transformer.Transformer);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _dst : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _dst0 : stdgo.GoInt = 0;
    public var _dst1 : stdgo.GoInt = 0;
    public var _src : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _src0 : stdgo.GoInt = 0;
    public var _src1 : stdgo.GoInt = 0;
    public var _transformComplete : Bool = false;
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_t:_internal.vendor.golang_dot_org.x.text.transform.Transform_Transformer.Transformer, ?_err:stdgo.Error, ?_dst:stdgo.Slice<stdgo.GoUInt8>, ?_dst0:stdgo.GoInt, ?_dst1:stdgo.GoInt, ?_src:stdgo.Slice<stdgo.GoUInt8>, ?_src0:stdgo.GoInt, ?_src1:stdgo.GoInt, ?_transformComplete:Bool) {
        if (_r != null) this._r = _r;
        if (_t != null) this._t = _t;
        if (_err != null) this._err = _err;
        if (_dst != null) this._dst = _dst;
        if (_dst0 != null) this._dst0 = _dst0;
        if (_dst1 != null) this._dst1 = _dst1;
        if (_src != null) this._src = _src;
        if (_src0 != null) this._src0 = _src0;
        if (_src1 != null) this._src1 = _src1;
        if (_transformComplete != null) this._transformComplete = _transformComplete;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reader(_r, _t, _err, _dst, _dst0, _dst1, _src, _src0, _src1, _transformComplete);
    }
}
