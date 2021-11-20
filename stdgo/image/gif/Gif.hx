package stdgo.image.gif;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
typedef T_reader = StructType & {
    > stdgo.io.Io.Reader,
    > stdgo.io.Io.ByteReader,
};
typedef T_writer = StructType & {
    > stdgo.io.Io.Writer,
    > stdgo.io.Io.ByteWriter,
    public function flush():Error;
};
@:structInit class T_decoder {
    public function _readBlock():{ var _0 : GoInt; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _readByte(_d.value._r), _n:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n == ((0 : GoUInt8)) || _err != null) {
            return { _0 : ((0 : GoInt)), _1 : _err };
        };
        {
            var _err:stdgo.Error = _readFull(_d.value._r, _d.value._tmp.__slice__(0, _n));
            if (_err != null) {
                return { _0 : ((0 : GoInt)), _1 : _err };
            };
        };
        return { _0 : ((_n : GoInt)), _1 : ((null : stdgo.Error)) };
    }
    public function _newImageFromDescriptor():{ var _0 : Pointer<stdgo.image.Image.Paletted>; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _readFull(_d.value._r, _d.value._tmp.__slice__(0, ((9 : GoInt))));
            if (_err != null) {
                return { _0 : new Pointer<stdgo.image.Image.Paletted>().nil(), _1 : stdgo.fmt.Fmt.errorf("gif: can\'t read image descriptor: %s", Go.toInterface(_err)) };
            };
        };
        var _left:GoInt = ((_d.value._tmp[((0 : GoInt))] : GoInt)) + (((_d.value._tmp[((1 : GoInt))] : GoInt)) << ((8 : GoUnTypedInt)));
        var _top:GoInt = ((_d.value._tmp[((2 : GoInt))] : GoInt)) + (((_d.value._tmp[((3 : GoInt))] : GoInt)) << ((8 : GoUnTypedInt)));
        var _width:GoInt = ((_d.value._tmp[((4 : GoInt))] : GoInt)) + (((_d.value._tmp[((5 : GoInt))] : GoInt)) << ((8 : GoUnTypedInt)));
        var _height:GoInt = ((_d.value._tmp[((6 : GoInt))] : GoInt)) + (((_d.value._tmp[((7 : GoInt))] : GoInt)) << ((8 : GoUnTypedInt)));
        _d.value._imageFields = _d.value._tmp[((8 : GoInt))];
        if (_left + _width > _d.value._width || _top + _height > _d.value._height) {
            return { _0 : new Pointer<stdgo.image.Image.Paletted>().nil(), _1 : stdgo.errors.Errors.new_("gif: frame bounds larger than image bounds") };
        };
        return { _0 : stdgo.image.Image.newPaletted((({ min : new stdgo.image.Image.Point(_left, _top).__copy__(), max : new stdgo.image.Image.Point(new stdgo.image.Image.Point(_left + _width, _top + _height).__copy__().__copy__()) } : stdgo.image.Image.Rectangle)).__copy__(), new stdgo.image.color.Color.Palette()), _1 : ((null : stdgo.Error)) };
    }
    public function _readImageDescriptor(_keepAllFrames:Bool):Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var __tmp__ = _d.value._newImageFromDescriptor(), _m:Pointer<stdgo.image.Image.Paletted> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        try {
            if (_err != null) {
                return _err;
            };
            var _useLocalColorTable:Bool = _d.value._imageFields & _fColorTable != ((0 : GoUInt8));
            if (_useLocalColorTable) {
                {
                    var __tmp__ = _d.value._readColorTable(_d.value._imageFields);
                    _m.value.palette = __tmp__._0.__copy__();
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return _err;
                };
            } else {
                if (_d.value._globalColorTable.__t__ == null || _d.value._globalColorTable.__t__.isNil()) {
                    return stdgo.errors.Errors.new_("gif: no color table");
                };
                _m.value.palette = _d.value._globalColorTable.__copy__();
            };
            if (_d.value._hasTransparentIndex) {
                if (!_useLocalColorTable) {
                    _m.value.palette = ((new stdgo.image.color.Color.Palette() : stdgo.image.color.Color.Palette)).__append__(..._d.value._globalColorTable.__t__.toArray()).__copy__();
                };
                {
                    var _ti:GoInt = ((_d.value._transparentIndex : GoInt));
                    if (_ti < _m.value.palette.__t__.length) {
                        _m.value.palette.__t__[_ti] = new stdgo.image.color.Color.RGBA().__copy__();
                    } else {
                        var _p:stdgo.image.color.Color.Palette = new stdgo.image.color.Color.Palette(new Slice<stdgo.image.color.Color.Color>(...[for (i in 0 ... ((_ti + ((1 : GoInt)) : GoInt)).toBasic()) ((null : stdgo.image.color.Color.Color))])).__copy__();
                        Go.copy(_p, _m.value.palette);
                        {
                            var _i:GoInt = _m.value.palette.__t__.length;
                            Go.cfor(_i < _p.__t__.length, _i++, {
                                _p.__t__[_i] = new stdgo.image.color.Color.RGBA().__copy__();
                            });
                        };
                        _m.value.palette = _p.__copy__();
                    };
                };
            };
            var __tmp__ = _readByte(_d.value._r), _litWidth:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return stdgo.fmt.Fmt.errorf("gif: reading image data: %v", Go.toInterface(_err));
            };
            if (_litWidth < ((2 : GoUInt8)) || _litWidth > ((8 : GoUInt8))) {
                return stdgo.fmt.Fmt.errorf("gif: pixel size in decode out of range: %d", Go.toInterface(_litWidth));
            };
            var _br:Pointer<T_blockReader> = Go.pointer((({ _d : _d, _i : 0, _j : 0, _err : ((null : stdgo.Error)) } : T_blockReader)));
            var _lzwr:stdgo.io.Io.ReadCloser = stdgo.compress.lzw.Lzw.newReader(_br.value, stdgo.compress.lzw.Lzw.lsb, ((_litWidth : GoInt)));
            deferstack.unshift(() -> _lzwr.close());
            {
                _err = _readFull(_lzwr, _m.value.pix);
                if (_err != null) {
                    if (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.errUnexpectedEOF)) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return stdgo.fmt.Fmt.errorf("gif: reading image data: %v", Go.toInterface(_err));
                        };
                    };
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return _errNotEnough;
                    };
                };
            };
            {
                var __tmp__ = _lzwr.read(_d.value._tmp.__slice__(((256 : GoInt)), ((257 : GoInt)))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_n != ((0 : GoInt)) || (Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.eof) && Go.toInterface(_err) != Go.toInterface(stdgo.io.Io.errUnexpectedEOF))) {
                    if (_err != null) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return stdgo.fmt.Fmt.errorf("gif: reading image data: %v", Go.toInterface(_err));
                        };
                    };
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return _errTooMuch;
                    };
                };
            };
            {
                var _err:stdgo.Error = _br.value._close();
                if (Go.toInterface(_err) == Go.toInterface(_errTooMuch)) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return _errTooMuch;
                    };
                } else if (_err != null) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return stdgo.fmt.Fmt.errorf("gif: reading image data: %v", Go.toInterface(_err));
                    };
                };
            };
            if (_m.value.palette.__t__.length < ((256 : GoInt))) {
                for (_pixel in _m.value.pix) {
                    if (((_pixel : GoInt)) >= _m.value.palette.__t__.length) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return _errBadPixel;
                        };
                    };
                };
            };
            if (_d.value._imageFields & _fInterlace != ((0 : GoUInt8))) {
                _uninterlace(_m);
            };
            if (_keepAllFrames || _d.value._image.length == ((0 : GoInt))) {
                _d.value._image = _d.value._image.__append__(_m);
                _d.value._delay = _d.value._delay.__append__(_d.value._delayTime);
                _d.value._disposal = _d.value._disposal.__append__(_d.value._disposalMethod);
            };
            _d.value._delayTime = ((0 : GoInt));
            _d.value._hasTransparentIndex = false;
            {
                for (defer in deferstack) {
                    defer();
                };
                return ((null : stdgo.Error));
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
    public function _readGraphicControl():Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _readFull(_d.value._r, _d.value._tmp.__slice__(0, ((6 : GoInt))));
            if (_err != null) {
                return stdgo.fmt.Fmt.errorf("gif: can\'t read graphic control: %s", Go.toInterface(_err));
            };
        };
        if (_d.value._tmp[((0 : GoInt))] != ((4 : GoUInt8))) {
            return stdgo.fmt.Fmt.errorf("gif: invalid graphic control extension block size: %d", Go.toInterface(_d.value._tmp[((0 : GoInt))]));
        };
        var _flags:GoUInt8 = _d.value._tmp[((1 : GoInt))];
        _d.value._disposalMethod = ((_flags & _gcDisposalMethodMask) >> ((2 : GoUnTypedInt)));
        _d.value._delayTime = ((_d.value._tmp[((2 : GoInt))] : GoInt)) | (((_d.value._tmp[((3 : GoInt))] : GoInt)) << ((8 : GoUnTypedInt)));
        if (_flags & _gcTransparentColorSet != ((0 : GoUInt8))) {
            _d.value._transparentIndex = _d.value._tmp[((4 : GoInt))];
            _d.value._hasTransparentIndex = true;
        };
        if (_d.value._tmp[((5 : GoInt))] != ((0 : GoUInt8))) {
            return stdgo.fmt.Fmt.errorf("gif: invalid graphic control extension block terminator: %d", Go.toInterface(_d.value._tmp[((5 : GoInt))]));
        };
        return ((null : stdgo.Error));
    }
    public function _readExtension():Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _readByte(_d.value._r), _extension:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo.fmt.Fmt.errorf("gif: reading extension: %v", Go.toInterface(_err));
        };
        var _size:GoInt = ((0 : GoInt));
        if (_extension == _eText) {
            _size = ((13 : GoInt));
        } else if (_extension == _eGraphicControl) {
            return _d.value._readGraphicControl();
        } else if (_extension == _eComment) {} else if (_extension == _eApplication) {
            var __tmp__ = _readByte(_d.value._r), _b:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return stdgo.fmt.Fmt.errorf("gif: reading extension: %v", Go.toInterface(_err));
            };
            _size = ((_b : GoInt));
        } else {
            return stdgo.fmt.Fmt.errorf("gif: unknown extension 0x%.2x", Go.toInterface(_extension));
        };
        if (_size > ((0 : GoInt))) {
            {
                var _err:stdgo.Error = _readFull(_d.value._r, _d.value._tmp.__slice__(0, _size));
                if (_err != null) {
                    return stdgo.fmt.Fmt.errorf("gif: reading extension: %v", Go.toInterface(_err));
                };
            };
        };
        if (_extension == _eApplication && ((_d.value._tmp.__slice__(0, _size) : GoString)) == (("NETSCAPE2.0" : GoString))) {
            var __tmp__ = _d.value._readBlock(), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return stdgo.fmt.Fmt.errorf("gif: reading extension: %v", Go.toInterface(_err));
            };
            if (_n == ((0 : GoInt))) {
                return ((null : stdgo.Error));
            };
            if (_n == ((3 : GoInt)) && _d.value._tmp[((0 : GoInt))] == ((1 : GoUInt8))) {
                _d.value._loopCount = ((_d.value._tmp[((1 : GoInt))] : GoInt)) | (((_d.value._tmp[((2 : GoInt))] : GoInt)) << ((8 : GoUnTypedInt)));
            };
        };
        while (true) {
            var __tmp__ = _d.value._readBlock(), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return stdgo.fmt.Fmt.errorf("gif: reading extension: %v", Go.toInterface(_err));
            };
            if (_n == ((0 : GoInt))) {
                return ((null : stdgo.Error));
            };
        };
    }
    public function _readColorTable(_fields:GoByte):{ var _0 : stdgo.image.color.Color.Palette; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = (((1 : GoInt)) << (((1 : GoUInt)) + (((_fields & _fColorTableBitsMask) : GoUInt))));
        var _err:stdgo.Error = _readFull(_d.value._r, _d.value._tmp.__slice__(0, ((3 : GoInt)) * _n));
        if (_err != null) {
            return { _0 : new stdgo.image.color.Color.Palette(), _1 : stdgo.fmt.Fmt.errorf("gif: reading color table: %s", Go.toInterface(_err)) };
        };
        var _j:GoInt = ((0 : GoInt)), _p:stdgo.image.color.Color.Palette = new stdgo.image.color.Color.Palette(new Slice<stdgo.image.color.Color.Color>(...[for (i in 0 ... ((_n : GoInt)).toBasic()) ((null : stdgo.image.color.Color.Color))])).__copy__();
        {
            var _i;
            for (_obj in _p.__t__.keyValueIterator()) {
                _i = _obj.key;
                _p.__t__[_i] = new stdgo.image.color.Color.RGBA(_d.value._tmp[_j + ((0 : GoInt))], _d.value._tmp[_j + ((1 : GoInt))], _d.value._tmp[_j + ((2 : GoInt))], ((255 : GoUInt8))).__copy__();
                _j = _j + (((3 : GoInt)));
            };
        };
        return { _0 : _p.__copy__(), _1 : ((null : stdgo.Error)) };
    }
    public function _readHeaderAndScreenDescriptor():Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _err:stdgo.Error = _readFull(_d.value._r, _d.value._tmp.__slice__(0, ((13 : GoInt))));
        if (_err != null) {
            return stdgo.fmt.Fmt.errorf("gif: reading header: %v", Go.toInterface(_err));
        };
        _d.value._vers = ((_d.value._tmp.__slice__(0, ((6 : GoInt))) : GoString));
        if (_d.value._vers != (("GIF87a" : GoString)) && _d.value._vers != (("GIF89a" : GoString))) {
            return stdgo.fmt.Fmt.errorf("gif: can\'t recognize format %q", Go.toInterface(_d.value._vers));
        };
        _d.value._width = ((_d.value._tmp[((6 : GoInt))] : GoInt)) + (((_d.value._tmp[((7 : GoInt))] : GoInt)) << ((8 : GoUnTypedInt)));
        _d.value._height = ((_d.value._tmp[((8 : GoInt))] : GoInt)) + (((_d.value._tmp[((9 : GoInt))] : GoInt)) << ((8 : GoUnTypedInt)));
        {
            var _fields:GoUInt8 = _d.value._tmp[((10 : GoInt))];
            if (_fields & _fColorTable != ((0 : GoUInt8))) {
                _d.value._backgroundIndex = _d.value._tmp[((11 : GoInt))];
                {
                    {
                        var __tmp__ = _d.value._readColorTable(_fields);
                        _d.value._globalColorTable = __tmp__._0.__copy__();
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return _err;
                    };
                };
            };
        };
        return ((null : stdgo.Error));
    }
    public function _decode(_r:stdgo.io.Io.Reader, _configOnly:Bool, _keepAllFrames:Bool):Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = try {
                { value : ((_r.__underlying__().value : T_reader)), ok : true };
            } catch(_) {
                { value : ((null : T_reader)), ok : false };
            }, _rr = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _d.value._r = _rr;
            } else {
                _d.value._r = bufio.Bufio.newReader(_r).value;
            };
        };
        _d.value._loopCount = -((1 : GoUnTypedInt));
        var _err:stdgo.Error = _d.value._readHeaderAndScreenDescriptor();
        if (_err != null) {
            return _err;
        };
        if (_configOnly) {
            return ((null : stdgo.Error));
        };
        while (true) {
            var __tmp__ = _readByte(_d.value._r), _c:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return stdgo.fmt.Fmt.errorf("gif: reading frames: %v", Go.toInterface(_err));
            };
            if (_c == _sExtension) {
                {
                    _err = _d.value._readExtension();
                    if (_err != null) {
                        return _err;
                    };
                };
            } else if (_c == _sImageDescriptor) {
                {
                    _err = _d.value._readImageDescriptor(_keepAllFrames);
                    if (_err != null) {
                        return _err;
                    };
                };
            } else if (_c == _sTrailer) {
                if (_d.value._image.length == ((0 : GoInt))) {
                    return stdgo.fmt.Fmt.errorf("gif: missing image data");
                };
                return ((null : stdgo.Error));
            } else {
                return stdgo.fmt.Fmt.errorf("gif: unknown block type: 0x%.2x", Go.toInterface(_c));
            };
        };
    }
    public var _r : T_reader = ((null : T_reader));
    public var _vers : GoString = (("" : GoString));
    public var _width : GoInt = ((0 : GoInt));
    public var _height : GoInt = ((0 : GoInt));
    public var _loopCount : GoInt = ((0 : GoInt));
    public var _delayTime : GoInt = ((0 : GoInt));
    public var _backgroundIndex : GoUInt8 = ((0 : GoUInt8));
    public var _disposalMethod : GoUInt8 = ((0 : GoUInt8));
    public var _imageFields : GoUInt8 = ((0 : GoUInt8));
    public var _transparentIndex : GoUInt8 = ((0 : GoUInt8));
    public var _hasTransparentIndex : Bool = false;
    public var _globalColorTable : stdgo.image.color.Color.Palette = new stdgo.image.color.Color.Palette();
    public var _delay : Slice<GoInt> = new Slice<GoInt>().nil();
    public var _disposal : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var _image : Slice<Pointer<stdgo.image.Image.Paletted>> = new Slice<Pointer<stdgo.image.Image.Paletted>>().nil();
    public var _tmp : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 1024) ((0 : GoUInt8))]);
    public function new(?_r:T_reader, ?_vers:GoString, ?_width:GoInt, ?_height:GoInt, ?_loopCount:GoInt, ?_delayTime:GoInt, ?_backgroundIndex:GoUInt8, ?_disposalMethod:GoUInt8, ?_imageFields:GoUInt8, ?_transparentIndex:GoUInt8, ?_hasTransparentIndex:Bool, ?_globalColorTable:stdgo.image.color.Color.Palette, ?_delay:Slice<GoInt>, ?_disposal:Slice<GoUInt8>, ?_image:Slice<Pointer<stdgo.image.Image.Paletted>>, ?_tmp:GoArray<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_r) + " " + Go.string(_vers) + " " + Go.string(_width) + " " + Go.string(_height) + " " + Go.string(_loopCount) + " " + Go.string(_delayTime) + " " + Go.string(_backgroundIndex) + " " + Go.string(_disposalMethod) + " " + Go.string(_imageFields) + " " + Go.string(_transparentIndex) + " " + Go.string(_hasTransparentIndex) + " " + Go.string(_globalColorTable) + " " + Go.string(_delay) + " " + Go.string(_disposal) + " " + Go.string(_image) + " " + Go.string(_tmp) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_decoder(
_r,
_vers,
_width,
_height,
_loopCount,
_delayTime,
_backgroundIndex,
_disposalMethod,
_imageFields,
_transparentIndex,
_hasTransparentIndex,
_globalColorTable,
_delay,
_disposal,
_image,
_tmp);
    }
    public function __set__(__tmp__) {
        this._r = __tmp__._r;
        this._vers = __tmp__._vers;
        this._width = __tmp__._width;
        this._height = __tmp__._height;
        this._loopCount = __tmp__._loopCount;
        this._delayTime = __tmp__._delayTime;
        this._backgroundIndex = __tmp__._backgroundIndex;
        this._disposalMethod = __tmp__._disposalMethod;
        this._imageFields = __tmp__._imageFields;
        this._transparentIndex = __tmp__._transparentIndex;
        this._hasTransparentIndex = __tmp__._hasTransparentIndex;
        this._globalColorTable = __tmp__._globalColorTable;
        this._delay = __tmp__._delay;
        this._disposal = __tmp__._disposal;
        this._image = __tmp__._image;
        this._tmp = __tmp__._tmp;
        return this;
    }
}
@:structInit class T_blockReader {
    public function _close():Error {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (Go.toInterface(_b.value._err) == Go.toInterface(stdgo.io.Io.eof)) {
            return ((null : stdgo.Error));
        } else if (_b.value._err != null) {
            return _b.value._err;
        };
        if (_b.value._i == _b.value._j) {
            _b.value._fill();
            if (Go.toInterface(_b.value._err) == Go.toInterface(stdgo.io.Io.eof)) {
                return ((null : stdgo.Error));
            } else if (_b.value._err != null) {
                return _b.value._err;
            } else if (_b.value._j > ((1 : GoUInt8))) {
                return _errTooMuch;
            };
        };
        _b.value._fill();
        if (Go.toInterface(_b.value._err) == Go.toInterface(stdgo.io.Io.eof)) {
            return ((null : stdgo.Error));
        } else if (_b.value._err != null) {
            return _b.value._err;
        };
        return _errTooMuch;
    }
    public function read(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_p.length == ((0 : GoInt)) || _b.value._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _b.value._err };
        };
        if (_b.value._i == _b.value._j) {
            _b.value._fill();
            if (_b.value._err != null) {
                return { _0 : ((0 : GoInt)), _1 : _b.value._err };
            };
        };
        var _n:GoInt = Go.copy(_p, _b.value._d.value._tmp.__slice__(_b.value._i, _b.value._j));
        _b.value._i = _b.value._i + (((_n : GoUInt8)));
        return { _0 : _n, _1 : ((null : stdgo.Error)) };
    }
    public function readByte():{ var _0 : GoByte; var _1 : Error; } {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.value._i == _b.value._j) {
            _b.value._fill();
            if (_b.value._err != null) {
                return { _0 : ((0 : GoUInt8)), _1 : _b.value._err };
            };
        };
        var _c:GoUInt8 = _b.value._d.value._tmp[_b.value._i];
        _b.value._i++;
        return { _0 : _c, _1 : ((null : stdgo.Error)) };
    }
    public function _fill():Void {
        var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.value._err != null) {
            return;
        };
        {
            var __tmp__ = _readByte(_b.value._d.value._r);
            _b.value._j = __tmp__._0;
            _b.value._err = __tmp__._1;
        };
        if (_b.value._j == ((0 : GoUInt8)) && _b.value._err == null) {
            _b.value._err = stdgo.io.Io.eof;
        };
        if (_b.value._err != null) {
            return;
        };
        _b.value._i = ((0 : GoUInt8));
        _b.value._err = _readFull(_b.value._d.value._r, _b.value._d.value._tmp.__slice__(0, _b.value._j));
        if (_b.value._err != null) {
            _b.value._j = ((0 : GoUInt8));
        };
    }
    public var _d : Pointer<T_decoder> = new Pointer<T_decoder>().nil();
    public var _i : GoUInt8 = ((0 : GoUInt8));
    public var _j : GoUInt8 = ((0 : GoUInt8));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?_d:Pointer<T_decoder>, ?_i:GoUInt8, ?_j:GoUInt8, ?_err:stdgo.Error) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_d) + " " + Go.string(_i) + " " + Go.string(_j) + " " + Go.string(_err) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_blockReader(_d, _i, _j, _err);
    }
    public function __set__(__tmp__) {
        this._d = __tmp__._d;
        this._i = __tmp__._i;
        this._j = __tmp__._j;
        this._err = __tmp__._err;
        return this;
    }
}
@:structInit class T_interlaceScan {
    public var _skip : GoInt = ((0 : GoInt));
    public var _start : GoInt = ((0 : GoInt));
    public function new(?_skip:GoInt, ?_start:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_skip) + " " + Go.string(_start) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_interlaceScan(_skip, _start);
    }
    public function __set__(__tmp__) {
        this._skip = __tmp__._skip;
        this._start = __tmp__._start;
        return this;
    }
}
@:structInit class GIF {
    public var image : Slice<Pointer<stdgo.image.Image.Paletted>> = new Slice<Pointer<stdgo.image.Image.Paletted>>().nil();
    public var delay : Slice<GoInt> = new Slice<GoInt>().nil();
    public var loopCount : GoInt = ((0 : GoInt));
    public var disposal : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var config : stdgo.image.Image.Config = new stdgo.image.Image.Config();
    public var backgroundIndex : GoUInt8 = ((0 : GoUInt8));
    public function new(?image:Slice<Pointer<stdgo.image.Image.Paletted>>, ?delay:Slice<GoInt>, ?loopCount:GoInt, ?disposal:Slice<GoUInt8>, ?config:stdgo.image.Image.Config, ?backgroundIndex:GoUInt8) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(image) + " " + Go.string(delay) + " " + Go.string(loopCount) + " " + Go.string(disposal) + " " + Go.string(config) + " " + Go.string(backgroundIndex) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new GIF(image, delay, loopCount, disposal, config, backgroundIndex);
    }
    public function __set__(__tmp__) {
        this.image = __tmp__.image;
        this.delay = __tmp__.delay;
        this.loopCount = __tmp__.loopCount;
        this.disposal = __tmp__.disposal;
        this.config = __tmp__.config;
        this.backgroundIndex = __tmp__.backgroundIndex;
        return this;
    }
}
@:structInit class T_encoder {
    public function _writeImageBlock(_pm:Pointer<stdgo.image.Image.Paletted>, _delay:GoInt, _disposal:GoByte):Void {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_e.value._err != null) {
            return;
        };
        if (_pm.value.palette.__t__.length == ((0 : GoInt))) {
            _e.value._err = stdgo.errors.Errors.new_("gif: cannot encode image block with empty palette");
            return;
        };
        var _b:stdgo.image.Image.Rectangle = _pm.value.bounds().__copy__();
        if (_b.min.x < ((0 : GoInt)) || _b.max.x >= (((1 : GoUnTypedInt)) << ((16 : GoUnTypedInt))) || _b.min.y < ((0 : GoInt)) || _b.max.y >= (((1 : GoUnTypedInt)) << ((16 : GoUnTypedInt)))) {
            _e.value._err = stdgo.errors.Errors.new_("gif: image block is too large to encode");
            return;
        };
        if (!_b.in_((({ max : new stdgo.image.Image.Point(new stdgo.image.Image.Point(_e.value._g.config.width, _e.value._g.config.height).__copy__().__copy__()), min : new stdgo.image.Image.Point() } : stdgo.image.Image.Rectangle)).__copy__())) {
            _e.value._err = stdgo.errors.Errors.new_("gif: image block is out of bounds");
            return;
        };
        var _transparentIndex:GoInt = -((1 : GoUnTypedInt));
        {
            var _i;
            var _c;
            for (_obj in _pm.value.palette.__t__.keyValueIterator()) {
                _i = _obj.key;
                _c = _obj.value;
                if (_c == null) {
                    _e.value._err = stdgo.errors.Errors.new_("gif: cannot encode color table with nil entries");
                    return;
                };
                {
                    var __tmp__ = _c.rgba(), _:GoUInt32 = __tmp__._0, _:GoUInt32 = __tmp__._1, _:GoUInt32 = __tmp__._2, _a:GoUInt32 = __tmp__._3;
                    if (_a == ((0 : GoUInt32))) {
                        _transparentIndex = _i;
                        break;
                    };
                };
            };
        };
        if (_delay > ((0 : GoInt)) || _disposal != ((0 : GoUInt8)) || _transparentIndex != -((1 : GoUnTypedInt))) {
            _e.value._buf[((0 : GoInt))] = _sExtension;
            _e.value._buf[((1 : GoInt))] = _gcLabel;
            _e.value._buf[((2 : GoInt))] = _gcBlockSize;
            if (_transparentIndex != -((1 : GoUnTypedInt))) {
                _e.value._buf[((3 : GoInt))] = ((1 : GoUInt8)) | (_disposal << ((2 : GoUnTypedInt)));
            } else {
                _e.value._buf[((3 : GoInt))] = ((0 : GoUInt8)) | (_disposal << ((2 : GoUnTypedInt)));
            };
            _writeUint16(_e.value._buf.__slice__(((4 : GoInt)), ((6 : GoInt))), ((_delay : GoUInt16)));
            if (_transparentIndex != -((1 : GoUnTypedInt))) {
                _e.value._buf[((6 : GoInt))] = ((_transparentIndex : GoUInt8));
            } else {
                _e.value._buf[((6 : GoInt))] = ((0 : GoUInt8));
            };
            _e.value._buf[((7 : GoInt))] = ((0 : GoUInt8));
            _e.value._write(_e.value._buf.__slice__(0, ((8 : GoInt))));
        };
        _e.value._buf[((0 : GoInt))] = _sImageDescriptor;
        _writeUint16(_e.value._buf.__slice__(((1 : GoInt)), ((3 : GoInt))), ((_b.min.x : GoUInt16)));
        _writeUint16(_e.value._buf.__slice__(((3 : GoInt)), ((5 : GoInt))), ((_b.min.y : GoUInt16)));
        _writeUint16(_e.value._buf.__slice__(((5 : GoInt)), ((7 : GoInt))), ((_b.dx() : GoUInt16)));
        _writeUint16(_e.value._buf.__slice__(((7 : GoInt)), ((9 : GoInt))), ((_b.dy() : GoUInt16)));
        _e.value._write(_e.value._buf.__slice__(0, ((9 : GoInt))));
        var _paddedSize:GoInt = _log2(_pm.value.palette.__t__.length);
        {
            var __tmp__ = try {
                { value : new stdgo.image.color.Color.Palette(_e.value._g.config.colorModel), ok : true };
            } catch(_) {
                { value : new stdgo.image.color.Color.Palette(), ok : false };
            }, _gp = __tmp__.value, _ok = __tmp__.ok;
            if (_ok && _pm.value.palette.__t__.length <= _gp.__t__.length && Go.pointer(_gp.__t__[((0 : GoInt))]) == Go.pointer(_pm.value.palette.__t__[((0 : GoInt))])) {
                _e.value._writeByte(((0 : GoUInt8)));
            } else {
                var __tmp__ = _encodeColorTable(_e.value._localColorTable.__slice__(0), _pm.value.palette.__copy__(), _paddedSize), _ct:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if (_e.value._err == null) {
                        _e.value._err = _err;
                    };
                    return;
                };
                if (_ct <= _e.value._globalCT && _e.value._colorTablesMatch(_pm.value.palette.__t__.length, _transparentIndex)) {
                    _e.value._writeByte(((0 : GoUInt8)));
                } else {
                    _e.value._writeByte(_fColorTable | ((_paddedSize : GoUInt8)));
                    _e.value._write(_e.value._localColorTable.__slice__(0, _ct));
                };
            };
        };
        var _litWidth:GoInt = _paddedSize + ((1 : GoInt));
        if (_litWidth < ((2 : GoInt))) {
            _litWidth = ((2 : GoInt));
        };
        _e.value._writeByte(((_litWidth : GoUInt8)));
        var _bw:T_blockWriter = (({ _e : _e } : T_blockWriter)).__copy__();
        _bw._setup();
        var _lzww:stdgo.io.Io.WriteCloser = stdgo.compress.lzw.Lzw.newWriter(_bw.__copy__(), stdgo.compress.lzw.Lzw.lsb, _litWidth);
        {
            var _dx:GoInt = _b.dx();
            if (_dx == _pm.value.stride) {
                {
                    var __tmp__ = _lzww.write(_pm.value.pix.__slice__(0, _dx * _b.dy()));
                    _e.value._err = __tmp__._1;
                };
                if (_e.value._err != null) {
                    _lzww.close();
                    return;
                };
            } else {
                {
                    var _i:GoInt = ((0 : GoInt)), _y:GoInt = _b.min.y;
                    Go.cfor(_y < _b.max.y, {
                        final __tmp__0 = _i + _pm.value.stride;
                        final __tmp__1 = _y + ((1 : GoInt));
                        _i = __tmp__0;
                        _y = __tmp__1;
                    }, {
                        {
                            var __tmp__ = _lzww.write(_pm.value.pix.__slice__(_i, _i + _dx));
                            _e.value._err = __tmp__._1;
                        };
                        if (_e.value._err != null) {
                            _lzww.close();
                            return;
                        };
                    });
                };
            };
        };
        _lzww.close();
        _bw._close();
    }
    public function _colorTablesMatch(_localLen:GoInt, _transparentIndex:GoInt):Bool {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _localSize:GoInt = ((3 : GoInt)) * _localLen;
        if (_transparentIndex >= ((0 : GoInt))) {
            var _trOff:GoInt = ((3 : GoInt)) * _transparentIndex;
            return stdgo.bytes.Bytes.equal(_e.value._globalColorTable.__slice__(0, _trOff), _e.value._localColorTable.__slice__(0, _trOff)) && stdgo.bytes.Bytes.equal(_e.value._globalColorTable.__slice__(_trOff + ((3 : GoInt)), _localSize), _e.value._localColorTable.__slice__(_trOff + ((3 : GoInt)), _localSize));
        };
        return stdgo.bytes.Bytes.equal(_e.value._globalColorTable.__slice__(0, _localSize), _e.value._localColorTable.__slice__(0, _localSize));
    }
    public function _writeHeader():Void {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_e.value._err != null) {
            return;
        };
        {
            var __tmp__ = stdgo.io.Io.writeString(_e.value._w, "GIF89a");
            _e.value._err = __tmp__._1;
        };
        if (_e.value._err != null) {
            return;
        };
        _writeUint16(_e.value._buf.__slice__(((0 : GoInt)), ((2 : GoInt))), ((_e.value._g.config.width : GoUInt16)));
        _writeUint16(_e.value._buf.__slice__(((2 : GoInt)), ((4 : GoInt))), ((_e.value._g.config.height : GoUInt16)));
        _e.value._write(_e.value._buf.__slice__(0, ((4 : GoInt))));
        {
            var __tmp__ = try {
                { value : new stdgo.image.color.Color.Palette(_e.value._g.config.colorModel), ok : true };
            } catch(_) {
                { value : new stdgo.image.color.Color.Palette(), ok : false };
            }, _p = __tmp__.value, _ok = __tmp__.ok;
            if (_ok && _p.__t__.length > ((0 : GoInt))) {
                var _paddedSize:GoInt = _log2(_p.__t__.length);
                _e.value._buf[((0 : GoInt))] = _fColorTable | ((_paddedSize : GoUInt8));
                _e.value._buf[((1 : GoInt))] = _e.value._g.backgroundIndex;
                _e.value._buf[((2 : GoInt))] = ((0 : GoUInt8));
                _e.value._write(_e.value._buf.__slice__(0, ((3 : GoInt))));
                var _err:Error = ((null : stdgo.Error));
                {
                    var __tmp__ = _encodeColorTable(_e.value._globalColorTable.__slice__(0), _p.__copy__(), _paddedSize);
                    _e.value._globalCT = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null && _e.value._err == null) {
                    _e.value._err = _err;
                    return;
                };
                _e.value._write(_e.value._globalColorTable.__slice__(0, _e.value._globalCT));
            } else {
                _e.value._buf[((0 : GoInt))] = ((0 : GoUInt8));
                _e.value._buf[((1 : GoInt))] = ((0 : GoUInt8));
                _e.value._buf[((2 : GoInt))] = ((0 : GoUInt8));
                _e.value._write(_e.value._buf.__slice__(0, ((3 : GoInt))));
            };
        };
        if (_e.value._g.image.length > ((1 : GoInt)) && _e.value._g.loopCount >= ((0 : GoInt))) {
            _e.value._buf[((0 : GoInt))] = ((33 : GoUInt8));
            _e.value._buf[((1 : GoInt))] = ((255 : GoUInt8));
            _e.value._buf[((2 : GoInt))] = ((11 : GoUInt8));
            _e.value._write(_e.value._buf.__slice__(0, ((3 : GoInt))));
            var __tmp__ = stdgo.io.Io.writeString(_e.value._w, "NETSCAPE2.0"), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null && _e.value._err == null) {
                _e.value._err = _err;
                return;
            };
            _e.value._buf[((0 : GoInt))] = ((3 : GoUInt8));
            _e.value._buf[((1 : GoInt))] = ((1 : GoUInt8));
            _writeUint16(_e.value._buf.__slice__(((2 : GoInt)), ((4 : GoInt))), ((_e.value._g.loopCount : GoUInt16)));
            _e.value._buf[((4 : GoInt))] = ((0 : GoUInt8));
            _e.value._write(_e.value._buf.__slice__(0, ((5 : GoInt))));
        };
    }
    public function _writeByte(_b:GoByte):Void {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_e.value._err != null) {
            return;
        };
        _e.value._err = _e.value._w.writeByte(_b);
    }
    public function _write(_p:Slice<GoByte>):Void {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_e.value._err != null) {
            return;
        };
        {
            var __tmp__ = _e.value._w.write(_p);
            _e.value._err = __tmp__._1;
        };
    }
    public function _flush():Void {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_e.value._err != null) {
            return;
        };
        _e.value._err = _e.value._w.flush();
    }
    public var _w : T_writer = ((null : T_writer));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _g : GIF = new GIF();
    public var _globalCT : GoInt = ((0 : GoInt));
    public var _buf : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 256) ((0 : GoUInt8))]);
    public var _globalColorTable : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 768) ((0 : GoUInt8))]);
    public var _localColorTable : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 768) ((0 : GoUInt8))]);
    public function new(?_w:T_writer, ?_err:stdgo.Error, ?_g:GIF, ?_globalCT:GoInt, ?_buf:GoArray<GoUInt8>, ?_globalColorTable:GoArray<GoUInt8>, ?_localColorTable:GoArray<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_w) + " " + Go.string(_err) + " " + Go.string(_g) + " " + Go.string(_globalCT) + " " + Go.string(_buf) + " " + Go.string(_globalColorTable) + " " + Go.string(_localColorTable) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_encoder(_w, _err, _g, _globalCT, _buf, _globalColorTable, _localColorTable);
    }
    public function __set__(__tmp__) {
        this._w = __tmp__._w;
        this._err = __tmp__._err;
        this._g = __tmp__._g;
        this._globalCT = __tmp__._globalCT;
        this._buf = __tmp__._buf;
        this._globalColorTable = __tmp__._globalColorTable;
        this._localColorTable = __tmp__._localColorTable;
        return this;
    }
}
@:structInit class T_blockWriter {
    public function _close():Void {
        var _b = this.__copy__();
        if (_b._e.value._buf[((0 : GoInt))] == ((0 : GoUInt8))) {
            _b._e.value._writeByte(((0 : GoUInt8)));
        } else {
            var _n:GoUInt = ((_b._e.value._buf[((0 : GoInt))] : GoUInt));
            _b._e.value._buf[_n + ((1 : GoUInt))] = ((0 : GoUInt8));
            _b._e.value._write(_b._e.value._buf.__slice__(0, _n + ((2 : GoUInt))));
        };
        _b._e.value._flush();
    }
    public function write(_data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _b = this.__copy__();
        {
            var _i;
            var _c;
            for (_obj in _data.keyValueIterator()) {
                _i = _obj.key;
                _c = _obj.value;
                {
                    var _err:stdgo.Error = _b.writeByte(_c);
                    if (_err != null) {
                        return { _0 : _i, _1 : _err };
                    };
                };
            };
        };
        return { _0 : _data.length, _1 : ((null : stdgo.Error)) };
    }
    public function writeByte(_c:GoByte):Error {
        var _b = this.__copy__();
        if (_b._e.value._err != null) {
            return _b._e.value._err;
        };
        _b._e.value._buf[((0 : GoInt))]++;
        _b._e.value._buf[_b._e.value._buf[((0 : GoInt))]] = _c;
        if (_b._e.value._buf[((0 : GoInt))] < ((255 : GoUInt8))) {
            return ((null : stdgo.Error));
        };
        _b._e.value._write(_b._e.value._buf.__slice__(0, ((256 : GoInt))));
        _b._e.value._buf[((0 : GoInt))] = ((0 : GoUInt8));
        return _b._e.value._err;
    }
    public function flush():Error {
        var _b = this.__copy__();
        return _b._e.value._err;
    }
    public function _setup():Void {
        var _b = this.__copy__();
        _b._e.value._buf[((0 : GoInt))] = ((0 : GoUInt8));
    }
    public var _e : Pointer<T_encoder> = new Pointer<T_encoder>().nil();
    public function new(?_e:Pointer<T_encoder>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_e) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_blockWriter(_e);
    }
    public function __set__(__tmp__) {
        this._e = __tmp__._e;
        return this;
    }
}
@:structInit class Options {
    public var numColors : GoInt = ((0 : GoInt));
    public var quantizer : stdgo.image.draw.Draw.Quantizer = ((null : stdgo.image.draw.Draw.Quantizer));
    public var drawer : stdgo.image.draw.Draw.Drawer = ((null : stdgo.image.draw.Draw.Drawer));
    public function new(?numColors:GoInt, ?quantizer:stdgo.image.draw.Draw.Quantizer, ?drawer:stdgo.image.draw.Draw.Drawer) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(numColors) + " " + Go.string(quantizer) + " " + Go.string(drawer) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Options(numColors, quantizer, drawer);
    }
    public function __set__(__tmp__) {
        this.numColors = __tmp__.numColors;
        this.quantizer = __tmp__.quantizer;
        this.drawer = __tmp__.drawer;
        return this;
    }
}
final _sImageDescriptor : GoInt64 = ((44 : GoUnTypedInt));
final _gcBlockSize : GoInt64 = ((4 : GoUnTypedInt));
var _interlacing : Slice<T_interlaceScan> = new Slice<T_interlaceScan>(new T_interlaceScan(((8 : GoInt)), ((0 : GoInt))).__copy__(), new T_interlaceScan(((8 : GoInt)), ((4 : GoInt))).__copy__(), new T_interlaceScan(((4 : GoInt)), ((2 : GoInt))).__copy__(), new T_interlaceScan(((2 : GoInt)), ((1 : GoInt))).__copy__());
final _eApplication : GoInt64 = ((255 : GoUnTypedInt));
final _eText : GoInt64 = ((1 : GoUnTypedInt));
final disposalBackground : GoInt64 = ((2 : GoUnTypedInt));
final _fInterlace : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((6 : GoUnTypedInt)));
final _fColorTable : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((7 : GoUnTypedInt)));
var _errNotEnough : stdgo.Error = stdgo.errors.Errors.new_("gif: not enough image data");
final _sTrailer : GoInt64 = ((59 : GoUnTypedInt));
final _gcTransparentColorSet : GoUnTypedInt = (((1 : GoUnTypedInt)) << ((0 : GoUnTypedInt)));
var _errTooMuch : stdgo.Error = stdgo.errors.Errors.new_("gif: too much image data");
final _gcLabel : GoInt64 = ((249 : GoUnTypedInt));
final _gcDisposalMethodMask : GoUnTypedInt = (((7 : GoUnTypedInt)) << ((2 : GoUnTypedInt)));
final _fColorTableBitsMask : GoInt64 = ((7 : GoUnTypedInt));
var _errBadPixel : stdgo.Error = stdgo.errors.Errors.new_("gif: invalid pixel value");
final _eComment : GoInt64 = ((254 : GoUnTypedInt));
final disposalPrevious : GoInt64 = ((3 : GoUnTypedInt));
final _sExtension : GoInt64 = ((33 : GoUnTypedInt));
var _log2Lookup : GoArray<GoInt> = new GoArray<GoInt>(((2 : GoInt)), ((4 : GoInt)), ((8 : GoInt)), ((16 : GoInt)), ((32 : GoInt)), ((64 : GoInt)), ((128 : GoInt)), ((256 : GoInt))).copy();
final _eGraphicControl : GoInt64 = ((249 : GoUnTypedInt));
final disposalNone : GoInt64 = ((1 : GoUnTypedInt));
function _readFull(_r:stdgo.io.Io.Reader, _b:Slice<GoByte>):Error {
        var __tmp__ = stdgo.io.Io.readFull(_r, _b), _:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
            _err = stdgo.io.Io.errUnexpectedEOF;
        };
        return _err;
    }
function _readByte(_r:stdgo.io.Io.ByteReader):{ var _0 : GoByte; var _1 : Error; } {
        var __tmp__ = _r.readByte(), _b:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (Go.toInterface(_err) == Go.toInterface(stdgo.io.Io.eof)) {
            _err = stdgo.io.Io.errUnexpectedEOF;
        };
        return { _0 : _b, _1 : _err };
    }
/**
    // uninterlace rearranges the pixels in m to account for interlaced input.
**/
function _uninterlace(_m:Pointer<stdgo.image.Image.Paletted>):Void {
        var _nPix:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
        var _dx:GoInt = _m.value.bounds().dx();
        var _dy:GoInt = _m.value.bounds().dy();
        _nPix = new Slice<GoUInt8>(...[for (i in 0 ... ((_dx * _dy : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var _offset:GoInt = ((0 : GoInt));
        for (_pass in _interlacing) {
            var _nOffset:GoInt = _pass._start * _dx;
            {
                var _y:GoInt = _pass._start;
                Go.cfor(_y < _dy, _y = _y + (_pass._skip), {
                    Go.copy(_nPix.__slice__(_nOffset, _nOffset + _dx), _m.value.pix.__slice__(_offset, _offset + _dx));
                    _offset = _offset + (_dx);
                    _nOffset = _nOffset + (_dx * _pass._skip);
                });
            };
        };
        _m.value.pix = _nPix;
    }
/**
    // Decode reads a GIF image from r and returns the first embedded
    // image as an image.Image.
**/
function decode(_r:stdgo.io.Io.Reader):{ var _0 : stdgo.image.Image.Image; var _1 : Error; } {
        var _d:T_decoder = new T_decoder();
        {
            var _err:stdgo.Error = _d._decode(_r, false, false);
            if (_err != null) {
                return { _0 : ((null : stdgo.image.Image.Image)), _1 : _err };
            };
        };
        return { _0 : _d._image[((0 : GoInt))].value, _1 : ((null : stdgo.Error)) };
    }
/**
    // DecodeAll reads a GIF image from r and returns the sequential frames
    // and timing information.
**/
function decodeAll(_r:stdgo.io.Io.Reader):{ var _0 : Pointer<GIF>; var _1 : Error; } {
        var _d:T_decoder = new T_decoder();
        {
            var _err:stdgo.Error = _d._decode(_r, false, true);
            if (_err != null) {
                return { _0 : new Pointer<GIF>().nil(), _1 : _err };
            };
        };
        var _gif:Pointer<GIF> = Go.pointer((({ image : _d._image, loopCount : _d._loopCount, delay : _d._delay, disposal : _d._disposal, config : (({ colorModel : _d._globalColorTable.__copy__(), width : _d._width, height : _d._height } : stdgo.image.Image.Config)).__copy__(), backgroundIndex : _d._backgroundIndex } : GIF)));
        return { _0 : _gif, _1 : ((null : stdgo.Error)) };
    }
/**
    // DecodeConfig returns the global color model and dimensions of a GIF image
    // without decoding the entire image.
**/
function decodeConfig(_r:stdgo.io.Io.Reader):{ var _0 : stdgo.image.Image.Config; var _1 : Error; } {
        var _d:T_decoder = new T_decoder();
        {
            var _err:stdgo.Error = _d._decode(_r, true, false);
            if (_err != null) {
                return { _0 : new stdgo.image.Image.Config().__copy__(), _1 : _err };
            };
        };
        return { _0 : (({ colorModel : _d._globalColorTable.__copy__(), width : _d._width, height : _d._height } : stdgo.image.Image.Config)).__copy__(), _1 : ((null : stdgo.Error)) };
    }
function _log2(_x:GoInt):GoInt {
        {
            var _i;
            var _v;
            for (_obj in _log2Lookup.keyValueIterator()) {
                _i = _obj.key;
                _v = _obj.value;
                if (_x <= _v) {
                    return _i;
                };
            };
        };
        return -((1 : GoUnTypedInt));
    }
/**
    // Little-endian.
**/
function _writeUint16(_b:Slice<GoUInt8>, _u:GoUInt16):Void {
        _b[((0 : GoInt))] = ((_u : GoUInt8));
        _b[((1 : GoInt))] = (((_u >> ((8 : GoUnTypedInt))) : GoUInt8));
    }
function _encodeColorTable(_dst:Slice<GoByte>, _p:stdgo.image.color.Color.Palette, _size:GoInt):{ var _0 : GoInt; var _1 : Error; } {
        if (((_size : GoUInt)) >= ((_log2Lookup.length : GoUInt))) {
            return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_("gif: cannot encode color table with more than 256 entries") };
        };
        {
            var _i;
            var _c;
            for (_obj in _p.__t__.keyValueIterator()) {
                _i = _obj.key;
                _c = _obj.value;
                if (_c == null) {
                    return { _0 : ((0 : GoInt)), _1 : stdgo.errors.Errors.new_("gif: cannot encode color table with nil entries") };
                };
                var _r:GoUInt8 = ((0 : GoUInt8)), _g:GoUInt8 = ((0 : GoUInt8)), _b:GoUInt8 = ((0 : GoUInt8));
                {
                    var __tmp__ = try {
                        { value : ((_c.__underlying__().value : stdgo.image.color.Color.RGBA)), ok : true };
                    } catch(_) {
                        { value : new stdgo.image.color.Color.RGBA(), ok : false };
                    }, _rgba = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        {
                            final __tmp__0 = _rgba.r;
                            final __tmp__1 = _rgba.g;
                            final __tmp__2 = _rgba.b;
                            _r = __tmp__0;
                            _g = __tmp__1;
                            _b = __tmp__2;
                        };
                    } else {
                        var __tmp__ = _c.rgba(), _rr:GoUInt32 = __tmp__._0, _gg:GoUInt32 = __tmp__._1, _bb:GoUInt32 = __tmp__._2, _:GoUInt32 = __tmp__._3;
                        {
                            final __tmp__0 = (((_rr >> ((8 : GoUnTypedInt))) : GoUInt8));
                            final __tmp__1 = (((_gg >> ((8 : GoUnTypedInt))) : GoUInt8));
                            final __tmp__2 = (((_bb >> ((8 : GoUnTypedInt))) : GoUInt8));
                            _r = __tmp__0;
                            _g = __tmp__1;
                            _b = __tmp__2;
                        };
                    };
                };
                _dst[((3 : GoInt)) * _i + ((0 : GoInt))] = _r;
                _dst[((3 : GoInt)) * _i + ((1 : GoInt))] = _g;
                _dst[((3 : GoInt)) * _i + ((2 : GoInt))] = _b;
            };
        };
        var _n:GoInt = _log2Lookup[_size];
        if (_n > _p.__t__.length) {
            var _fill:Slice<GoUInt8> = _dst.__slice__(((3 : GoInt)) * _p.__t__.length, ((3 : GoInt)) * _n);
            {
                var _i;
                for (_obj in _fill.keyValueIterator()) {
                    _i = _obj.key;
                    _fill[_i] = ((0 : GoUInt8));
                };
            };
        };
        return { _0 : ((3 : GoInt)) * _n, _1 : ((null : stdgo.Error)) };
    }
/**
    // EncodeAll writes the images in g to w in GIF format with the
    // given loop count and delay between frames.
**/
function encodeAll(_w:stdgo.io.Io.Writer, _g:Pointer<GIF>):Error {
        if (_g.value.image.length == ((0 : GoInt))) {
            return stdgo.errors.Errors.new_("gif: must provide at least one image");
        };
        if (_g.value.image.length != _g.value.delay.length) {
            return stdgo.errors.Errors.new_("gif: mismatched image and delay lengths");
        };
        var _e:T_encoder = (({ _g : _g.value.__copy__(), _w : ((null : T_writer)), _err : ((null : stdgo.Error)), _globalCT : 0, _buf : new GoArray<GoUInt8>(...[for (i in 0 ... 256) ((0 : GoUInt8))]), _globalColorTable : new GoArray<GoUInt8>(...[for (i in 0 ... 768) ((0 : GoUInt8))]), _localColorTable : new GoArray<GoUInt8>(...[for (i in 0 ... 768) ((0 : GoUInt8))]) } : T_encoder)).__copy__();
        if (_e._g.disposal != null && !_e._g.disposal.isNil() && _e._g.image.length != _e._g.disposal.length) {
            return stdgo.errors.Errors.new_("gif: mismatched image and disposal lengths");
        };
        if (Go.toInterface(_e._g.config) == Go.toInterface((new stdgo.image.Image.Config()))) {
            var _p:stdgo.image.Image.Point = _g.value.image[((0 : GoInt))].value.bounds().max.__copy__();
            _e._g.config.width = _p.x;
            _e._g.config.height = _p.y;
        } else if (_e._g.config.colorModel != null) {
            {
                var __tmp__ = try {
                    { value : new stdgo.image.color.Color.Palette(_e._g.config.colorModel), ok : true };
                } catch(_) {
                    { value : new stdgo.image.color.Color.Palette(), ok : false };
                }, _ = __tmp__.value, _ok = __tmp__.ok;
                if (!_ok) {
                    return stdgo.errors.Errors.new_("gif: GIF color model must be a color.Palette");
                };
            };
        };
        {
            var __tmp__ = try {
                { value : ((_w.__underlying__().value : T_writer)), ok : true };
            } catch(_) {
                { value : ((null : T_writer)), ok : false };
            }, _ww = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _e._w = _ww;
            } else {
                _e._w = bufio.Bufio.newWriter(_w).value;
            };
        };
        _e._writeHeader();
        {
            var _i;
            var _pm;
            for (_obj in _g.value.image.keyValueIterator()) {
                _i = _obj.key;
                _pm = _obj.value;
                var _disposal:GoUInt8 = ((((0 : GoUInt8)) : GoUInt8));
                if (_g.value.disposal != null && !_g.value.disposal.isNil()) {
                    _disposal = _g.value.disposal[_i];
                };
                _e._writeImageBlock(_pm, _g.value.delay[_i], _disposal);
            };
        };
        _e._writeByte(_sTrailer);
        _e._flush();
        return _e._err;
    }
/**
    // Encode writes the Image m to w in GIF format.
**/
function encode(_w:stdgo.io.Io.Writer, _m:stdgo.image.Image.Image, _o:Pointer<Options>):Error {
        var _b:stdgo.image.Image.Rectangle = _m.bounds().__copy__();
        if (_b.dx() >= (((1 : GoUnTypedInt)) << ((16 : GoUnTypedInt))) || _b.dy() >= (((1 : GoUnTypedInt)) << ((16 : GoUnTypedInt)))) {
            return stdgo.errors.Errors.new_("gif: image is too large to encode");
        };
        var _opts:Options = new Options().__copy__();
        if (_o != null && !_o.isNil()) {
            _opts = _o.value.__copy__();
        };
        if (_opts.numColors < ((1 : GoInt)) || ((256 : GoInt)) < _opts.numColors) {
            _opts.numColors = ((256 : GoInt));
        };
        if (_opts.drawer == null) {
            _opts.drawer = stdgo.image.draw.Draw.floydSteinberg;
        };
        var __tmp__ = try {
            { value : ((_m.__underlying__().value : stdgo.image.Image.Paletted)), ok : true };
        } catch(_) {
            { value : new Pointer<stdgo.image.Image.Paletted>().nil(), ok : false };
        }, _pm = __tmp__.value, _ = __tmp__.ok;
        if (_pm == null || _pm.isNil()) {
            {
                var __tmp__ = try {
                    { value : new stdgo.image.color.Color.Palette(_m.colorModel()), ok : true };
                } catch(_) {
                    { value : new stdgo.image.color.Color.Palette(), ok : false };
                }, _cp = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    _pm = stdgo.image.Image.newPaletted(_b.__copy__(), _cp.__copy__());
                    {
                        var _y:GoInt = _b.min.y;
                        Go.cfor(_y < _b.max.y, _y++, {
                            {
                                var _x:GoInt = _b.min.x;
                                Go.cfor(_x < _b.max.x, _x++, {
                                    _pm.value.set(_x, _y, _cp.convert(_m.at(_x, _y)));
                                });
                            };
                        });
                    };
                };
            };
        };
        if (_pm == null || _pm.isNil() || _pm.value.palette.__t__.length > _opts.numColors) {
            _pm = stdgo.image.Image.newPaletted(_b.__copy__(), new stdgo.image.color.Color.Palette(stdgo.image.color.palette.Palette.plan9.__slice__(0, _opts.numColors)));
            if (_opts.quantizer != null) {
                _pm.value.palette = _opts.quantizer.quantize(new stdgo.image.color.Color.Palette(new Slice<stdgo.image.color.Color.Color>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((null : stdgo.image.color.Color.Color))]).setCap(((_opts.numColors : GoInt)).toBasic())).__copy__(), _m).__copy__();
            };
            _opts.drawer.draw(_pm.value, _b.__copy__(), _m, _b.min.__copy__());
        };
        if (Go.toInterface(_pm.value.rect.min) != Go.toInterface((new stdgo.image.Image.Point()))) {
            var _dup:stdgo.image.Image.Paletted = _pm.value.__copy__();
            _dup.rect = _dup.rect.sub(_dup.rect.min.__copy__()).__copy__();
            _pm = Go.pointer(_dup);
        };
        return encodeAll(_w, Go.pointer((({ image : new Slice<Pointer<stdgo.image.Image.Paletted>>(_pm), delay : new Slice<GoInt>(((0 : GoInt))), config : (({ colorModel : _pm.value.palette.__copy__(), width : _b.dx(), height : _b.dy() } : stdgo.image.Image.Config)).__copy__(), loopCount : 0, disposal : new Slice<GoUInt8>().nil(), backgroundIndex : 0 } : GIF))));
    }
@:keep var _ = {
        try {
            stdgo.image.Image.registerFormat("gif", "GIF8?a", decode, decodeConfig);
        } catch(e) if (e.message != "__return__") throw e;
        true;
    };
class T_decoder_extension_fields {
    public function _decode(__tmp__, _r:stdgo.io.Io.Reader, _configOnly:Bool, _keepAllFrames:Bool):Error return __tmp__._decode(_r, _configOnly, _keepAllFrames);
    public function _readHeaderAndScreenDescriptor(__tmp__):Error return __tmp__._readHeaderAndScreenDescriptor();
    public function _readColorTable(__tmp__, _fields:GoByte):{ var _0 : stdgo.image.color.Color.Palette; var _1 : Error; } return __tmp__._readColorTable(_fields);
    public function _readExtension(__tmp__):Error return __tmp__._readExtension();
    public function _readGraphicControl(__tmp__):Error return __tmp__._readGraphicControl();
    public function _readImageDescriptor(__tmp__, _keepAllFrames:Bool):Error return __tmp__._readImageDescriptor(_keepAllFrames);
    public function _newImageFromDescriptor(__tmp__):{ var _0 : Pointer<stdgo.image.Image.Paletted>; var _1 : Error; } return __tmp__._newImageFromDescriptor();
    public function _readBlock(__tmp__):{ var _0 : GoInt; var _1 : Error; } return __tmp__._readBlock();
}
class T_blockReader_extension_fields {
    public function _fill(__tmp__):Void __tmp__._fill();
    public function readByte(__tmp__):{ var _0 : GoByte; var _1 : Error; } return __tmp__.readByte();
    public function read(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.read(_p);
    public function _close(__tmp__):Error return __tmp__._close();
}
class T_encoder_extension_fields {
    public function _flush(__tmp__):Void __tmp__._flush();
    public function _write(__tmp__, _p:Slice<GoByte>):Void __tmp__._write(_p);
    public function _writeByte(__tmp__, _b:GoByte):Void __tmp__._writeByte(_b);
    public function _writeHeader(__tmp__):Void __tmp__._writeHeader();
    public function _colorTablesMatch(__tmp__, _localLen:GoInt, _transparentIndex:GoInt):Bool return __tmp__._colorTablesMatch(_localLen, _transparentIndex);
    public function _writeImageBlock(__tmp__, _pm:Pointer<stdgo.image.Image.Paletted>, _delay:GoInt, _disposal:GoByte):Void __tmp__._writeImageBlock(_pm, _delay, _disposal);
}
class T_blockWriter_extension_fields {
    public function _setup(__tmp__):Void __tmp__._setup();
    public function flush(__tmp__):Error return __tmp__.flush();
    public function writeByte(__tmp__, _c:GoByte):Error return __tmp__.writeByte(_c);
    public function write(__tmp__, _data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_data);
    public function _close(__tmp__):Void __tmp__._close();
}
