package stdgo._internal.image.draw;
@:keep @:allow(stdgo._internal.image.draw.Draw.Op_asInterface) class Op_static_extension {
    @:keep
    @:tdfield
    static public function draw( _op:stdgo._internal.image.draw.Draw_op.Op, _dst:stdgo._internal.image.draw.Draw_image.Image, _r:stdgo._internal.image.Image_rectangle.Rectangle, _src:stdgo._internal.image.Image_image.Image, _sp:stdgo._internal.image.Image_point.Point):Void {
        @:recv var _op:stdgo._internal.image.draw.Draw_op.Op = _op;
        //"file:///home/runner/.go/go1.21.3/src/image/draw/draw.go#L56"
        stdgo._internal.image.draw.Draw_drawmask.drawMask(_dst, _r?.__copy__(), _src, _sp?.__copy__(), (null : stdgo._internal.image.Image_image.Image), (new stdgo._internal.image.Image_point.Point() : stdgo._internal.image.Image_point.Point), _op);
    }
}
