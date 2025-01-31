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
function _uninterlace(_m:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>):Void {
        var _nPix:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _dx = (@:check2r _m.bounds().dx() : stdgo.GoInt);
        var _dy = (@:check2r _m.bounds().dy() : stdgo.GoInt);
        _nPix = (new stdgo.Slice<stdgo.GoUInt8>((_dx * _dy : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _offset = (0 : stdgo.GoInt);
        for (__0 => _pass in stdgo._internal.image.gif.Gif__interlacing._interlacing) {
            var _nOffset = (_pass._start * _dx : stdgo.GoInt);
            {
                var _y = (_pass._start : stdgo.GoInt);
                while ((_y < _dy : Bool)) {
                    (_nPix.__slice__(_nOffset, (_nOffset + _dx : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _m ?? throw "null pointer dereference").pix.__slice__(_offset, (_offset + _dx : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
_offset = (_offset + (_dx) : stdgo.GoInt);
_nOffset = (_nOffset + ((_dx * _pass._skip : stdgo.GoInt)) : stdgo.GoInt);
                    _y = (_y + (_pass._skip) : stdgo.GoInt);
                };
            };
        };
        (@:checkr _m ?? throw "null pointer dereference").pix = _nPix;
    }
