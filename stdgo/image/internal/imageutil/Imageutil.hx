package stdgo.image.internal.imageutil;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// DrawYCbCr draws the YCbCr source image on the RGBA destination image with
	// r.Min in dst aligned with sp in src. It reports whether the draw was
	// successful. If it returns false, no dst pixels were changed.
	//
	// This function assumes that r is entirely within dst's bounds and the
	// translation of r from dst coordinate space to src coordinate space is
	// entirely within src's bounds.
**/
function drawYCbCr(_dst:Pointer<stdgo.image.Image.RGBA>, _r:stdgo.image.Image.Rectangle, _src:Pointer<stdgo.image.Image.YCbCr>,
		_sp:stdgo.image.Image.Point):Bool {
	var _ok:Bool = false;
	var _x0:GoInt = (_r.min.x - _dst.value.rect.min.x) * ((4 : GoInt));
	var _x1:GoInt = (_r.max.x - _dst.value.rect.min.x) * ((4 : GoInt));
	var _y0:GoInt = _r.min.y - _dst.value.rect.min.y;
	var _y1:GoInt = _r.max.y - _dst.value.rect.min.y;
	if (_src.value.subsampleRatio.__t__ == stdgo.image.Image.ycbCrSubsampleRatio444.__t__) {
		{
			var _y:GoInt = _y0, _sy:GoInt = _sp.y;
			Go.cfor(_y != _y1, {
				final __tmp__0 = _y + ((1 : GoInt));
				final __tmp__1 = _sy + ((1 : GoInt));
				_y = __tmp__0;
				_sy = __tmp__1;
			}, {
				var _dpix:Slice<GoUInt8> = _dst.value.pix.__slice__(_y * _dst.value.stride);
				var _yi:GoInt = (_sy - _src.value.rect.min.y) * _src.value.ystride + (_sp.x - _src.value.rect.min.x);
				var _ci:GoInt = (_sy - _src.value.rect.min.y) * _src.value.cstride + (_sp.x - _src.value.rect.min.x);
				{
					var _x:GoInt = _x0;
					Go.cfor(_x != _x1, {
						final __tmp__0 = _x + ((4 : GoInt));
						final __tmp__1 = _yi + ((1 : GoInt));
						final __tmp__2 = _ci + ((1 : GoInt));
						_x = __tmp__0;
						_yi = __tmp__1;
						_ci = __tmp__2;
					}, {
						var _yy1:GoInt32 = ((_src.value.y[_yi] : GoInt32)) * ((65793 : GoInt32));
						var _cb1:GoInt32 = ((_src.value.cb[_ci] : GoInt32)) - ((128 : GoInt32));
						var _cr1:GoInt32 = ((_src.value.cr[_ci] : GoInt32)) - ((128 : GoInt32));
						var _r:GoInt32 = _yy1 + ((91881 : GoInt32)) * _cr1;
						if (((_r : GoUInt32)) & (("4278190080" : GoUInt32)) == ((0 : GoUInt32))) {
							_r = (_r >> (((16 : GoUnTypedInt))));
						} else {
							_r = -1 ^ ((_r >> ((31 : GoUnTypedInt))));
						};
						var _g:GoInt32 = _yy1 - ((22554 : GoInt32)) * _cb1 - ((46802 : GoInt32)) * _cr1;
						if (((_g : GoUInt32)) & (("4278190080" : GoUInt32)) == ((0 : GoUInt32))) {
							_g = (_g >> (((16 : GoUnTypedInt))));
						} else {
							_g = -1 ^ ((_g >> ((31 : GoUnTypedInt))));
						};
						var _b:GoInt32 = _yy1 + ((116130 : GoInt32)) * _cb1;
						if (((_b : GoUInt32)) & (("4278190080" : GoUInt32)) == ((0 : GoUInt32))) {
							_b = (_b >> (((16 : GoUnTypedInt))));
						} else {
							_b = -1 ^ ((_b >> ((31 : GoUnTypedInt))));
						};
						var _rgba:Slice<GoUInt8> = _dpix.__slice__(_x, _x + ((4 : GoInt))).setCap(((_dpix.length : GoInt)) - ((1 : GoInt)));
						_rgba[((0 : GoInt))] = ((_r : GoUInt8));
						_rgba[((1 : GoInt))] = ((_g : GoUInt8));
						_rgba[((2 : GoInt))] = ((_b : GoUInt8));
						_rgba[((3 : GoInt))] = ((255 : GoUInt8));
					});
				};
			});
		};
	} else if (_src.value.subsampleRatio.__t__ == stdgo.image.Image.ycbCrSubsampleRatio422.__t__) {
		{
			var _y:GoInt = _y0, _sy:GoInt = _sp.y;
			Go.cfor(_y != _y1, {
				final __tmp__0 = _y + ((1 : GoInt));
				final __tmp__1 = _sy + ((1 : GoInt));
				_y = __tmp__0;
				_sy = __tmp__1;
			}, {
				var _dpix:Slice<GoUInt8> = _dst.value.pix.__slice__(_y * _dst.value.stride);
				var _yi:GoInt = (_sy - _src.value.rect.min.y) * _src.value.ystride + (_sp.x - _src.value.rect.min.x);
				var _ciBase:GoInt = (_sy - _src.value.rect.min.y) * _src.value.cstride - _src.value.rect.min.x / ((2 : GoInt));
				{
					var _x:GoInt = _x0, _sx:GoInt = _sp.x;
					Go.cfor(_x != _x1, {
						final __tmp__0 = _x + ((4 : GoInt));
						final __tmp__1 = _sx + ((1 : GoInt));
						final __tmp__2 = _yi + ((1 : GoInt));
						_x = __tmp__0;
						_sx = __tmp__1;
						_yi = __tmp__2;
					}, {
						var _ci:GoInt = _ciBase + _sx / ((2 : GoInt));
						var _yy1:GoInt32 = ((_src.value.y[_yi] : GoInt32)) * ((65793 : GoInt32));
						var _cb1:GoInt32 = ((_src.value.cb[_ci] : GoInt32)) - ((128 : GoInt32));
						var _cr1:GoInt32 = ((_src.value.cr[_ci] : GoInt32)) - ((128 : GoInt32));
						var _r:GoInt32 = _yy1 + ((91881 : GoInt32)) * _cr1;
						if (((_r : GoUInt32)) & (("4278190080" : GoUInt32)) == ((0 : GoUInt32))) {
							_r = (_r >> (((16 : GoUnTypedInt))));
						} else {
							_r = -1 ^ ((_r >> ((31 : GoUnTypedInt))));
						};
						var _g:GoInt32 = _yy1 - ((22554 : GoInt32)) * _cb1 - ((46802 : GoInt32)) * _cr1;
						if (((_g : GoUInt32)) & (("4278190080" : GoUInt32)) == ((0 : GoUInt32))) {
							_g = (_g >> (((16 : GoUnTypedInt))));
						} else {
							_g = -1 ^ ((_g >> ((31 : GoUnTypedInt))));
						};
						var _b:GoInt32 = _yy1 + ((116130 : GoInt32)) * _cb1;
						if (((_b : GoUInt32)) & (("4278190080" : GoUInt32)) == ((0 : GoUInt32))) {
							_b = (_b >> (((16 : GoUnTypedInt))));
						} else {
							_b = -1 ^ ((_b >> ((31 : GoUnTypedInt))));
						};
						var _rgba:Slice<GoUInt8> = _dpix.__slice__(_x, _x + ((4 : GoInt))).setCap(((_dpix.length : GoInt)) - ((1 : GoInt)));
						_rgba[((0 : GoInt))] = ((_r : GoUInt8));
						_rgba[((1 : GoInt))] = ((_g : GoUInt8));
						_rgba[((2 : GoInt))] = ((_b : GoUInt8));
						_rgba[((3 : GoInt))] = ((255 : GoUInt8));
					});
				};
			});
		};
	} else if (_src.value.subsampleRatio.__t__ == stdgo.image.Image.ycbCrSubsampleRatio420.__t__) {
		{
			var _y:GoInt = _y0, _sy:GoInt = _sp.y;
			Go.cfor(_y != _y1, {
				final __tmp__0 = _y + ((1 : GoInt));
				final __tmp__1 = _sy + ((1 : GoInt));
				_y = __tmp__0;
				_sy = __tmp__1;
			}, {
				var _dpix:Slice<GoUInt8> = _dst.value.pix.__slice__(_y * _dst.value.stride);
				var _yi:GoInt = (_sy - _src.value.rect.min.y) * _src.value.ystride + (_sp.x - _src.value.rect.min.x);
				var _ciBase:GoInt = (_sy / ((2 : GoInt)) - _src.value.rect.min.y / ((2 : GoInt))) * _src.value.cstride - _src.value.rect.min.x / ((2 : GoInt));
				{
					var _x:GoInt = _x0, _sx:GoInt = _sp.x;
					Go.cfor(_x != _x1, {
						final __tmp__0 = _x + ((4 : GoInt));
						final __tmp__1 = _sx + ((1 : GoInt));
						final __tmp__2 = _yi + ((1 : GoInt));
						_x = __tmp__0;
						_sx = __tmp__1;
						_yi = __tmp__2;
					}, {
						var _ci:GoInt = _ciBase + _sx / ((2 : GoInt));
						var _yy1:GoInt32 = ((_src.value.y[_yi] : GoInt32)) * ((65793 : GoInt32));
						var _cb1:GoInt32 = ((_src.value.cb[_ci] : GoInt32)) - ((128 : GoInt32));
						var _cr1:GoInt32 = ((_src.value.cr[_ci] : GoInt32)) - ((128 : GoInt32));
						var _r:GoInt32 = _yy1 + ((91881 : GoInt32)) * _cr1;
						if (((_r : GoUInt32)) & (("4278190080" : GoUInt32)) == ((0 : GoUInt32))) {
							_r = (_r >> (((16 : GoUnTypedInt))));
						} else {
							_r = -1 ^ ((_r >> ((31 : GoUnTypedInt))));
						};
						var _g:GoInt32 = _yy1 - ((22554 : GoInt32)) * _cb1 - ((46802 : GoInt32)) * _cr1;
						if (((_g : GoUInt32)) & (("4278190080" : GoUInt32)) == ((0 : GoUInt32))) {
							_g = (_g >> (((16 : GoUnTypedInt))));
						} else {
							_g = -1 ^ ((_g >> ((31 : GoUnTypedInt))));
						};
						var _b:GoInt32 = _yy1 + ((116130 : GoInt32)) * _cb1;
						if (((_b : GoUInt32)) & (("4278190080" : GoUInt32)) == ((0 : GoUInt32))) {
							_b = (_b >> (((16 : GoUnTypedInt))));
						} else {
							_b = -1 ^ ((_b >> ((31 : GoUnTypedInt))));
						};
						var _rgba:Slice<GoUInt8> = _dpix.__slice__(_x, _x + ((4 : GoInt))).setCap(((_dpix.length : GoInt)) - ((1 : GoInt)));
						_rgba[((0 : GoInt))] = ((_r : GoUInt8));
						_rgba[((1 : GoInt))] = ((_g : GoUInt8));
						_rgba[((2 : GoInt))] = ((_b : GoUInt8));
						_rgba[((3 : GoInt))] = ((255 : GoUInt8));
					});
				};
			});
		};
	} else if (_src.value.subsampleRatio.__t__ == stdgo.image.Image.ycbCrSubsampleRatio440.__t__) {
		{
			var _y:GoInt = _y0, _sy:GoInt = _sp.y;
			Go.cfor(_y != _y1, {
				final __tmp__0 = _y + ((1 : GoInt));
				final __tmp__1 = _sy + ((1 : GoInt));
				_y = __tmp__0;
				_sy = __tmp__1;
			}, {
				var _dpix:Slice<GoUInt8> = _dst.value.pix.__slice__(_y * _dst.value.stride);
				var _yi:GoInt = (_sy - _src.value.rect.min.y) * _src.value.ystride + (_sp.x - _src.value.rect.min.x);
				var _ci:GoInt = (_sy / ((2 : GoInt)) - _src.value.rect.min.y / ((2 : GoInt))) * _src.value.cstride + (_sp.x - _src.value.rect.min.x);
				{
					var _x:GoInt = _x0;
					Go.cfor(_x != _x1, {
						final __tmp__0 = _x + ((4 : GoInt));
						final __tmp__1 = _yi + ((1 : GoInt));
						final __tmp__2 = _ci + ((1 : GoInt));
						_x = __tmp__0;
						_yi = __tmp__1;
						_ci = __tmp__2;
					}, {
						var _yy1:GoInt32 = ((_src.value.y[_yi] : GoInt32)) * ((65793 : GoInt32));
						var _cb1:GoInt32 = ((_src.value.cb[_ci] : GoInt32)) - ((128 : GoInt32));
						var _cr1:GoInt32 = ((_src.value.cr[_ci] : GoInt32)) - ((128 : GoInt32));
						var _r:GoInt32 = _yy1 + ((91881 : GoInt32)) * _cr1;
						if (((_r : GoUInt32)) & (("4278190080" : GoUInt32)) == ((0 : GoUInt32))) {
							_r = (_r >> (((16 : GoUnTypedInt))));
						} else {
							_r = -1 ^ ((_r >> ((31 : GoUnTypedInt))));
						};
						var _g:GoInt32 = _yy1 - ((22554 : GoInt32)) * _cb1 - ((46802 : GoInt32)) * _cr1;
						if (((_g : GoUInt32)) & (("4278190080" : GoUInt32)) == ((0 : GoUInt32))) {
							_g = (_g >> (((16 : GoUnTypedInt))));
						} else {
							_g = -1 ^ ((_g >> ((31 : GoUnTypedInt))));
						};
						var _b:GoInt32 = _yy1 + ((116130 : GoInt32)) * _cb1;
						if (((_b : GoUInt32)) & (("4278190080" : GoUInt32)) == ((0 : GoUInt32))) {
							_b = (_b >> (((16 : GoUnTypedInt))));
						} else {
							_b = -1 ^ ((_b >> ((31 : GoUnTypedInt))));
						};
						var _rgba:Slice<GoUInt8> = _dpix.__slice__(_x, _x + ((4 : GoInt))).setCap(((_dpix.length : GoInt)) - ((1 : GoInt)));
						_rgba[((0 : GoInt))] = ((_r : GoUInt8));
						_rgba[((1 : GoInt))] = ((_g : GoUInt8));
						_rgba[((2 : GoInt))] = ((_b : GoUInt8));
						_rgba[((3 : GoInt))] = ((255 : GoUInt8));
					});
				};
			});
		};
	} else {
		return false;
	};
	return true;
}
