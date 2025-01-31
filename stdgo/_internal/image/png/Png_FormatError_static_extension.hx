package stdgo._internal.image.png;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.io.Io;
import stdgo._internal.image.color.Color;
import stdgo._internal.image.Image;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
@:keep @:allow(stdgo._internal.image.png.Png.FormatError_asInterface) class FormatError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.image.png.Png_FormatError.FormatError):stdgo.GoString {
        @:recv var _e:stdgo._internal.image.png.Png_FormatError.FormatError = _e;
        return (("png: invalid format: " : stdgo.GoString) + (_e : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
