package stdgo._internal.compress.flate;
@:structInit @:using(stdgo._internal.compress.flate.Flate_t_dictdecoder_static_extension.T_dictDecoder_static_extension) class T_dictDecoder {
    public var _hist : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _wrPos : stdgo.GoInt = 0;
    public var _rdPos : stdgo.GoInt = 0;
    public var _full : Bool = false;
    public function new(?_hist:stdgo.Slice<stdgo.GoUInt8>, ?_wrPos:stdgo.GoInt, ?_rdPos:stdgo.GoInt, ?_full:Bool) {
        if (_hist != null) this._hist = _hist;
        if (_wrPos != null) this._wrPos = _wrPos;
        if (_rdPos != null) this._rdPos = _rdPos;
        if (_full != null) this._full = _full;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dictDecoder(_hist, _wrPos, _rdPos, _full);
    }
}
