package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_encodet_static_extension.EncodeT_static_extension) class EncodeT {
    public var _x : stdgo.GoUInt64 = 0;
    public var _b : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_x:stdgo.GoUInt64, ?_b:stdgo.Slice<stdgo.GoUInt8>) {
        if (_x != null) this._x = _x;
        if (_b != null) this._b = _b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new EncodeT(_x, _b);
    }
}
