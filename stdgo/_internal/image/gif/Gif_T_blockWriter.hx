package stdgo._internal.image.gif;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.image.Image;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.image.draw.Draw;
import stdgo._internal.image.color.palette.Palette;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.compress.lzw.Lzw;
import stdgo._internal.bytes.Bytes;
@:structInit @:using(stdgo._internal.image.gif.Gif_T_blockWriter_static_extension.T_blockWriter_static_extension) class T_blockWriter {
    public var _e : stdgo.Ref<stdgo._internal.image.gif.Gif_T_encoder.T_encoder> = (null : stdgo.Ref<stdgo._internal.image.gif.Gif_T_encoder.T_encoder>);
    public function new(?_e:stdgo.Ref<stdgo._internal.image.gif.Gif_T_encoder.T_encoder>) {
        if (_e != null) this._e = _e;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_blockWriter(_e);
    }
}
