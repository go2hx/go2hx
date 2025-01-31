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
function _opaque(_m:stdgo._internal.image.Image_Image.Image):Bool {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo._internal.image.png.Png_T_opaquer.T_opaquer)) : stdgo._internal.image.png.Png_T_opaquer.T_opaquer), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.image.png.Png_T_opaquer.T_opaquer), _1 : false };
            }, _o = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _o.opaque();
            };
        };
        var _b = (_m.bounds()?.__copy__() : stdgo._internal.image.Image_Rectangle.Rectangle);
        {
            var _y = (_b.min.y : stdgo.GoInt);
            while ((_y < _b.max.y : Bool)) {
                {
                    var _x = (_b.min.x : stdgo.GoInt);
                    while ((_x < _b.max.x : Bool)) {
                        var __tmp__ = _m.at(_x, _y).rGBA(), __0:stdgo.GoUInt32 = __tmp__._0, __1:stdgo.GoUInt32 = __tmp__._1, __2:stdgo.GoUInt32 = __tmp__._2, _a:stdgo.GoUInt32 = __tmp__._3;
if (_a != ((65535u32 : stdgo.GoUInt32))) {
                            return false;
                        };
                        _x++;
                    };
                };
                _y++;
            };
        };
        return true;
    }
