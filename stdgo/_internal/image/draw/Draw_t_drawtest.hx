package stdgo._internal.image.draw;
@:structInit @:using(stdgo._internal.image.draw.Draw_t_drawtest_static_extension.T_drawTest_static_extension) class T_drawTest {
    public var _desc : stdgo.GoString = "";
    public var _src : stdgo._internal.image.Image_image.Image = (null : stdgo._internal.image.Image_image.Image);
    public var _mask : stdgo._internal.image.Image_image.Image = (null : stdgo._internal.image.Image_image.Image);
    public var _op : stdgo._internal.image.draw.Draw_op.Op = ((0 : stdgo.GoInt) : stdgo._internal.image.draw.Draw_op.Op);
    public var _expected : stdgo._internal.image.color.Color_color.Color = (null : stdgo._internal.image.color.Color_color.Color);
    public function new(?_desc:stdgo.GoString, ?_src:stdgo._internal.image.Image_image.Image, ?_mask:stdgo._internal.image.Image_image.Image, ?_op:stdgo._internal.image.draw.Draw_op.Op, ?_expected:stdgo._internal.image.color.Color_color.Color) {
        if (_desc != null) this._desc = _desc;
        if (_src != null) this._src = _src;
        if (_mask != null) this._mask = _mask;
        if (_op != null) this._op = _op;
        if (_expected != null) this._expected = _expected;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_drawTest(_desc, _src, _mask, _op, _expected);
    }
}
