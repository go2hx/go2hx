package stdgo._internal.image.jpeg;
function encode(_w:stdgo._internal.io.Io_writer.Writer, _m:stdgo._internal.image.Image_image.Image, _o:stdgo.Ref<stdgo._internal.image.jpeg.Jpeg_options.Options>):stdgo.Error {
        var _b = (_m.bounds()?.__copy__() : stdgo._internal.image.Image_rectangle.Rectangle);
        if (((_b.dx() >= (65536 : stdgo.GoInt) : Bool) || (_b.dy() >= (65536 : stdgo.GoInt) : Bool) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(("jpeg: image is too large to encode" : stdgo.GoString));
        };
        var _e:stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder = ({} : stdgo._internal.image.jpeg.Jpeg_t_encoder.T_encoder);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo._internal.image.jpeg.Jpeg_t_writer.T_writer)) : stdgo._internal.image.jpeg.Jpeg_t_writer.T_writer), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.image.jpeg.Jpeg_t_writer.T_writer), _1 : false };
            }, _ww = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _e._w = _ww;
            } else {
                _e._w = stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newwriter.newWriter(_w));
            };
        };
        var _quality = (75 : stdgo.GoInt);
        if ((_o != null && ((_o : Dynamic).__nil__ == null || !(_o : Dynamic).__nil__))) {
            _quality = (@:checkr _o ?? throw "null pointer dereference").quality;
            if ((_quality < (1 : stdgo.GoInt) : Bool)) {
                _quality = (1 : stdgo.GoInt);
            } else if ((_quality > (100 : stdgo.GoInt) : Bool)) {
                _quality = (100 : stdgo.GoInt);
            };
        };
        var _scale:stdgo.GoInt = (0 : stdgo.GoInt);
        if ((_quality < (50 : stdgo.GoInt) : Bool)) {
            _scale = ((5000 : stdgo.GoInt) / _quality : stdgo.GoInt);
        } else {
            _scale = ((200 : stdgo.GoInt) - (_quality * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        };
        for (_i => _ in _e._quant) {
            for (_j => _ in _e._quant[(_i : stdgo.GoInt)]) {
                var _x = (stdgo._internal.image.jpeg.Jpeg__unscaledquant._unscaledQuant[(_i : stdgo.GoInt)][(_j : stdgo.GoInt)] : stdgo.GoInt);
                _x = ((((_x * _scale : stdgo.GoInt) + (50 : stdgo.GoInt) : stdgo.GoInt)) / (100 : stdgo.GoInt) : stdgo.GoInt);
                if ((_x < (1 : stdgo.GoInt) : Bool)) {
                    _x = (1 : stdgo.GoInt);
                } else if ((_x > (255 : stdgo.GoInt) : Bool)) {
                    _x = (255 : stdgo.GoInt);
                };
                _e._quant[(_i : stdgo.GoInt)][(_j : stdgo.GoInt)] = (_x : stdgo.GoUInt8);
            };
        };
        var _nComponent = (3 : stdgo.GoInt);
        {
            final __type__ = _m;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.image.Image_gray.Gray>))) {
                _nComponent = (1 : stdgo.GoInt);
            };
        };
        _e._buf[(0 : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
        _e._buf[(1 : stdgo.GoInt)] = (216 : stdgo.GoUInt8);
        @:check2 _e._write((_e._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        @:check2 _e._writeDQT();
        @:check2 _e._writeSOF0(_b.size()?.__copy__(), _nComponent);
        @:check2 _e._writeDHT(_nComponent);
        @:check2 _e._writeSOS(_m);
        _e._buf[(0 : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
        _e._buf[(1 : stdgo.GoInt)] = (217 : stdgo.GoUInt8);
        @:check2 _e._write((_e._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        @:check2 _e._flush();
        return _e._err;
    }
