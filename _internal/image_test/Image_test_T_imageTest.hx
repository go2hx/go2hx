package _internal.image_test;
import stdgo._internal.image.jpeg.Jpeg;
import stdgo._internal.image.gif.Gif;
import stdgo._internal.image.jpeg.Jpeg;
import stdgo._internal.image.png.Png;
@:structInit class T_imageTest {
    public var _goldenFilename : stdgo.GoString = "";
    public var _filename : stdgo.GoString = "";
    public var _tolerance : stdgo.GoInt = 0;
    public function new(?_goldenFilename:stdgo.GoString, ?_filename:stdgo.GoString, ?_tolerance:stdgo.GoInt) {
        if (_goldenFilename != null) this._goldenFilename = _goldenFilename;
        if (_filename != null) this._filename = _filename;
        if (_tolerance != null) this._tolerance = _tolerance;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_imageTest(_goldenFilename, _filename, _tolerance);
    }
}
