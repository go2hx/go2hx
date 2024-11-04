package stdgo._internal.image.gif;
function _uninterlace(_m:stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>):Void {
        var _nPix:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _dx = (_m.bounds().dx() : stdgo.GoInt);
        var _dy = (_m.bounds().dy() : stdgo.GoInt);
        _nPix = (new stdgo.Slice<stdgo.GoUInt8>((_dx * _dy : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _offset = (0 : stdgo.GoInt);
        for (__0 => _pass in stdgo._internal.image.gif.Gif__interlacing._interlacing) {
            var _nOffset = (_pass._start * _dx : stdgo.GoInt);
            {
                var _y = (_pass._start : stdgo.GoInt);
                while ((_y < _dy : Bool)) {
                    stdgo.Go.copySlice((_nPix.__slice__(_nOffset, (_nOffset + _dx : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_m.pix.__slice__(_offset, (_offset + _dx : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
_offset = (_offset + (_dx) : stdgo.GoInt);
_nOffset = (_nOffset + ((_dx * _pass._skip : stdgo.GoInt)) : stdgo.GoInt);
                    _y = (_y + (_pass._skip) : stdgo.GoInt);
                };
            };
        };
        _m.pix = _nPix;
    }
