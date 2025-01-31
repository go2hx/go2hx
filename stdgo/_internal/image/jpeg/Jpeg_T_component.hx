package stdgo._internal.image.jpeg;
import stdgo._internal.image.color.Color;
import stdgo._internal.image.Image;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.image.internal.imageutil.Imageutil;
@:structInit @:using(stdgo._internal.image.jpeg.Jpeg_T_component_static_extension.T_component_static_extension) class T_component {
    public var _h : stdgo.GoInt = 0;
    public var _v : stdgo.GoInt = 0;
    public var _c : stdgo.GoUInt8 = 0;
    public var _tq : stdgo.GoUInt8 = 0;
    public function new(?_h:stdgo.GoInt, ?_v:stdgo.GoInt, ?_c:stdgo.GoUInt8, ?_tq:stdgo.GoUInt8) {
        if (_h != null) this._h = _h;
        if (_v != null) this._v = _v;
        if (_c != null) this._c = _c;
        if (_tq != null) this._tq = _tq;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_component(_h, _v, _c, _tq);
    }
}
