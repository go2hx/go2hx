package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_dictDecoder_asInterface) class T_dictDecoder_static_extension {
    @:keep
    static public function _readFlush( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder> = _dd;
        var _toRead = (_dd._hist.__slice__(_dd._rdPos, _dd._wrPos) : stdgo.Slice<stdgo.GoUInt8>);
        _dd._rdPos = _dd._wrPos;
        if (_dd._wrPos == ((_dd._hist.length))) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = (0 : stdgo.GoInt);
                _dd._wrPos = __tmp__0;
                _dd._rdPos = __tmp__1;
            };
            _dd._full = true;
        };
        return _toRead;
    }
    @:keep
    static public function _tryWriteCopy( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder>, _dist:stdgo.GoInt, _length:stdgo.GoInt):stdgo.GoInt {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder> = _dd;
        var _dstPos = (_dd._wrPos : stdgo.GoInt);
        var _endPos = (_dstPos + _length : stdgo.GoInt);
        if (((_dstPos < _dist : Bool) || (_endPos > (_dd._hist.length) : Bool) : Bool)) {
            return (0 : stdgo.GoInt);
        };
        var _dstBase = (_dstPos : stdgo.GoInt);
        var _srcPos = (_dstPos - _dist : stdgo.GoInt);
        while ((_dstPos < _endPos : Bool)) {
            _dstPos = (_dstPos + (stdgo.Go.copySlice((_dd._hist.__slice__(_dstPos, _endPos) : stdgo.Slice<stdgo.GoUInt8>), (_dd._hist.__slice__(_srcPos, _dstPos) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        };
        _dd._wrPos = _dstPos;
        return (_dstPos - _dstBase : stdgo.GoInt);
    }
    @:keep
    static public function _writeCopy( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder>, _dist:stdgo.GoInt, _length:stdgo.GoInt):stdgo.GoInt {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder> = _dd;
        var _dstBase = (_dd._wrPos : stdgo.GoInt);
        var _dstPos = (_dstBase : stdgo.GoInt);
        var _srcPos = (_dstPos - _dist : stdgo.GoInt);
        var _endPos = (_dstPos + _length : stdgo.GoInt);
        if ((_endPos > (_dd._hist.length) : Bool)) {
            _endPos = (_dd._hist.length);
        };
        if ((_srcPos < (0 : stdgo.GoInt) : Bool)) {
            _srcPos = (_srcPos + ((_dd._hist.length)) : stdgo.GoInt);
            _dstPos = (_dstPos + (stdgo.Go.copySlice((_dd._hist.__slice__(_dstPos, _endPos) : stdgo.Slice<stdgo.GoUInt8>), (_dd._hist.__slice__(_srcPos) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
            _srcPos = (0 : stdgo.GoInt);
        };
        while ((_dstPos < _endPos : Bool)) {
            _dstPos = (_dstPos + (stdgo.Go.copySlice((_dd._hist.__slice__(_dstPos, _endPos) : stdgo.Slice<stdgo.GoUInt8>), (_dd._hist.__slice__(_srcPos, _dstPos) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        };
        _dd._wrPos = _dstPos;
        return (_dstPos - _dstBase : stdgo.GoInt);
    }
    @:keep
    static public function _writeByte( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder>, _c:stdgo.GoUInt8):Void {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder> = _dd;
        _dd._hist[(_dd._wrPos : stdgo.GoInt)] = _c;
        _dd._wrPos++;
    }
    @:keep
    static public function _writeMark( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder>, _cnt:stdgo.GoInt):Void {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder> = _dd;
        _dd._wrPos = (_dd._wrPos + (_cnt) : stdgo.GoInt);
    }
    @:keep
    static public function _writeSlice( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder> = _dd;
        return (_dd._hist.__slice__(_dd._wrPos) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function _availWrite( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder>):stdgo.GoInt {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder> = _dd;
        return ((_dd._hist.length) - _dd._wrPos : stdgo.GoInt);
    }
    @:keep
    static public function _availRead( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder>):stdgo.GoInt {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder> = _dd;
        return (_dd._wrPos - _dd._rdPos : stdgo.GoInt);
    }
    @:keep
    static public function _histSize( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder>):stdgo.GoInt {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder> = _dd;
        if (_dd._full) {
            return (_dd._hist.length);
        };
        return _dd._wrPos;
    }
    @:keep
    static public function _init( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder>, _size:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder> = _dd;
        {
            var __tmp__ = ({ _hist : _dd._hist } : stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder);
            var x = (_dd : stdgo._internal.compress.flate.Flate_T_dictDecoder.T_dictDecoder);
            x._hist = __tmp__._hist;
            x._wrPos = __tmp__._wrPos;
            x._rdPos = __tmp__._rdPos;
            x._full = __tmp__._full;
        };
        if ((_dd._hist.capacity < _size : Bool)) {
            _dd._hist = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        _dd._hist = (_dd._hist.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>);
        if (((_dict.length) > (_dd._hist.length) : Bool)) {
            _dict = (_dict.__slice__(((_dict.length) - (_dd._hist.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _dd._wrPos = stdgo.Go.copySlice(_dd._hist, _dict);
        if (_dd._wrPos == ((_dd._hist.length))) {
            _dd._wrPos = (0 : stdgo.GoInt);
            _dd._full = true;
        };
        _dd._rdPos = _dd._wrPos;
    }
}
