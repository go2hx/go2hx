package _internal.vendor.golang_dot_org.x.net.http2.hpack;
@:structInit class T_undecodedString {
    public var _isHuff : Bool = false;
    public var _b : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_isHuff:Bool, ?_b:stdgo.Slice<stdgo.GoUInt8>) {
        if (_isHuff != null) this._isHuff = _isHuff;
        if (_b != null) this._b = _b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_undecodedString(_isHuff, _b);
    }
}
