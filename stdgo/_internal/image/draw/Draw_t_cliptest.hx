package stdgo._internal.image.draw;
@:structInit @:using(stdgo._internal.image.draw.Draw_t_cliptest_static_extension.T_clipTest_static_extension) class T_clipTest {
    public var _desc : stdgo.GoString = "";
    public var _r : stdgo._internal.image.Image_rectangle.Rectangle = ({} : stdgo._internal.image.Image_rectangle.Rectangle);
    public var _dr : stdgo._internal.image.Image_rectangle.Rectangle = ({} : stdgo._internal.image.Image_rectangle.Rectangle);
    public var _sr : stdgo._internal.image.Image_rectangle.Rectangle = ({} : stdgo._internal.image.Image_rectangle.Rectangle);
    public var _mr : stdgo._internal.image.Image_rectangle.Rectangle = ({} : stdgo._internal.image.Image_rectangle.Rectangle);
    public var _sp : stdgo._internal.image.Image_point.Point = ({} : stdgo._internal.image.Image_point.Point);
    public var _mp : stdgo._internal.image.Image_point.Point = ({} : stdgo._internal.image.Image_point.Point);
    public var _nilMask : Bool = false;
    public var _r0 : stdgo._internal.image.Image_rectangle.Rectangle = ({} : stdgo._internal.image.Image_rectangle.Rectangle);
    public var _sp0 : stdgo._internal.image.Image_point.Point = ({} : stdgo._internal.image.Image_point.Point);
    public var _mp0 : stdgo._internal.image.Image_point.Point = ({} : stdgo._internal.image.Image_point.Point);
    public function new(?_desc:stdgo.GoString, ?_r:stdgo._internal.image.Image_rectangle.Rectangle, ?_dr:stdgo._internal.image.Image_rectangle.Rectangle, ?_sr:stdgo._internal.image.Image_rectangle.Rectangle, ?_mr:stdgo._internal.image.Image_rectangle.Rectangle, ?_sp:stdgo._internal.image.Image_point.Point, ?_mp:stdgo._internal.image.Image_point.Point, ?_nilMask:Bool, ?_r0:stdgo._internal.image.Image_rectangle.Rectangle, ?_sp0:stdgo._internal.image.Image_point.Point, ?_mp0:stdgo._internal.image.Image_point.Point) {
        if (_desc != null) this._desc = _desc;
        if (_r != null) this._r = _r;
        if (_dr != null) this._dr = _dr;
        if (_sr != null) this._sr = _sr;
        if (_mr != null) this._mr = _mr;
        if (_sp != null) this._sp = _sp;
        if (_mp != null) this._mp = _mp;
        if (_nilMask != null) this._nilMask = _nilMask;
        if (_r0 != null) this._r0 = _r0;
        if (_sp0 != null) this._sp0 = _sp0;
        if (_mp0 != null) this._mp0 = _mp0;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_clipTest(
_desc,
_r,
_dr,
_sr,
_mr,
_sp,
_mp,
_nilMask,
_r0,
_sp0,
_mp0);
    }
}
