package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_dictDecoder_asInterface) class T_dictDecoder_static_extension {
    @:keep
    @:tdfield
    static public function _readFlush( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder> = _dd;
        var _toRead = ((@:checkr _dd ?? throw "null pointer dereference")._hist.__slice__((@:checkr _dd ?? throw "null pointer dereference")._rdPos, (@:checkr _dd ?? throw "null pointer dereference")._wrPos) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _dd ?? throw "null pointer dereference")._rdPos = (@:checkr _dd ?? throw "null pointer dereference")._wrPos;
        if ((@:checkr _dd ?? throw "null pointer dereference")._wrPos == (((@:checkr _dd ?? throw "null pointer dereference")._hist.length))) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = (0 : stdgo.GoInt);
                (@:checkr _dd ?? throw "null pointer dereference")._wrPos = __tmp__0;
                (@:checkr _dd ?? throw "null pointer dereference")._rdPos = __tmp__1;
            };
            (@:checkr _dd ?? throw "null pointer dereference")._full = true;
        };
        return _toRead;
    }
    @:keep
    @:tdfield
    static public function _tryWriteCopy( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>, _dist:stdgo.GoInt, _length:stdgo.GoInt):stdgo.GoInt {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder> = _dd;
        var _dstPos = ((@:checkr _dd ?? throw "null pointer dereference")._wrPos : stdgo.GoInt);
        var _endPos = (_dstPos + _length : stdgo.GoInt);
        if (((_dstPos < _dist : Bool) || (_endPos > ((@:checkr _dd ?? throw "null pointer dereference")._hist.length) : Bool) : Bool)) {
            return (0 : stdgo.GoInt);
        };
        var _dstBase = (_dstPos : stdgo.GoInt);
        var _srcPos = (_dstPos - _dist : stdgo.GoInt);
        while ((_dstPos < _endPos : Bool)) {
            _dstPos = (_dstPos + (((@:checkr _dd ?? throw "null pointer dereference")._hist.__slice__(_dstPos, _endPos) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _dd ?? throw "null pointer dereference")._hist.__slice__(_srcPos, _dstPos) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        };
        (@:checkr _dd ?? throw "null pointer dereference")._wrPos = _dstPos;
        return (_dstPos - _dstBase : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _writeCopy( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>, _dist:stdgo.GoInt, _length:stdgo.GoInt):stdgo.GoInt {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder> = _dd;
        var _dstBase = ((@:checkr _dd ?? throw "null pointer dereference")._wrPos : stdgo.GoInt);
        var _dstPos = (_dstBase : stdgo.GoInt);
        var _srcPos = (_dstPos - _dist : stdgo.GoInt);
        var _endPos = (_dstPos + _length : stdgo.GoInt);
        if ((_endPos > ((@:checkr _dd ?? throw "null pointer dereference")._hist.length) : Bool)) {
            _endPos = ((@:checkr _dd ?? throw "null pointer dereference")._hist.length);
        };
        if ((_srcPos < (0 : stdgo.GoInt) : Bool)) {
            _srcPos = (_srcPos + (((@:checkr _dd ?? throw "null pointer dereference")._hist.length)) : stdgo.GoInt);
            _dstPos = (_dstPos + (((@:checkr _dd ?? throw "null pointer dereference")._hist.__slice__(_dstPos, _endPos) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _dd ?? throw "null pointer dereference")._hist.__slice__(_srcPos) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
            _srcPos = (0 : stdgo.GoInt);
        };
        while ((_dstPos < _endPos : Bool)) {
            _dstPos = (_dstPos + (((@:checkr _dd ?? throw "null pointer dereference")._hist.__slice__(_dstPos, _endPos) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _dd ?? throw "null pointer dereference")._hist.__slice__(_srcPos, _dstPos) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        };
        (@:checkr _dd ?? throw "null pointer dereference")._wrPos = _dstPos;
        return (_dstPos - _dstBase : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _writeByte( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>, _c:stdgo.GoUInt8):Void {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder> = _dd;
        (@:checkr _dd ?? throw "null pointer dereference")._hist[((@:checkr _dd ?? throw "null pointer dereference")._wrPos : stdgo.GoInt)] = _c;
        (@:checkr _dd ?? throw "null pointer dereference")._wrPos++;
    }
    @:keep
    @:tdfield
    static public function _writeMark( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>, _cnt:stdgo.GoInt):Void {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder> = _dd;
        (@:checkr _dd ?? throw "null pointer dereference")._wrPos = ((@:checkr _dd ?? throw "null pointer dereference")._wrPos + (_cnt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _writeSlice( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder> = _dd;
        return ((@:checkr _dd ?? throw "null pointer dereference")._hist.__slice__((@:checkr _dd ?? throw "null pointer dereference")._wrPos) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _availWrite( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>):stdgo.GoInt {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder> = _dd;
        return (((@:checkr _dd ?? throw "null pointer dereference")._hist.length) - (@:checkr _dd ?? throw "null pointer dereference")._wrPos : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _availRead( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>):stdgo.GoInt {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder> = _dd;
        return ((@:checkr _dd ?? throw "null pointer dereference")._wrPos - (@:checkr _dd ?? throw "null pointer dereference")._rdPos : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _histSize( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>):stdgo.GoInt {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder> = _dd;
        if ((@:checkr _dd ?? throw "null pointer dereference")._full) {
            return ((@:checkr _dd ?? throw "null pointer dereference")._hist.length);
        };
        return (@:checkr _dd ?? throw "null pointer dereference")._wrPos;
    }
    @:keep
    @:tdfield
    static public function _init( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>, _size:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder> = _dd;
        {
            var __tmp__ = ({ _hist : (@:checkr _dd ?? throw "null pointer dereference")._hist } : stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder);
            var x = (_dd : stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder);
            x._hist = __tmp__?._hist;
            x._wrPos = __tmp__?._wrPos;
            x._rdPos = __tmp__?._rdPos;
            x._full = __tmp__?._full;
        };
        if (((@:checkr _dd ?? throw "null pointer dereference")._hist.capacity < _size : Bool)) {
            (@:checkr _dd ?? throw "null pointer dereference")._hist = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        (@:checkr _dd ?? throw "null pointer dereference")._hist = ((@:checkr _dd ?? throw "null pointer dereference")._hist.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>);
        if (((_dict.length) > ((@:checkr _dd ?? throw "null pointer dereference")._hist.length) : Bool)) {
            _dict = (_dict.__slice__(((_dict.length) - ((@:checkr _dd ?? throw "null pointer dereference")._hist.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        (@:checkr _dd ?? throw "null pointer dereference")._wrPos = (@:checkr _dd ?? throw "null pointer dereference")._hist.__copyTo__(_dict);
        if ((@:checkr _dd ?? throw "null pointer dereference")._wrPos == (((@:checkr _dd ?? throw "null pointer dereference")._hist.length))) {
            (@:checkr _dd ?? throw "null pointer dereference")._wrPos = (0 : stdgo.GoInt);
            (@:checkr _dd ?? throw "null pointer dereference")._full = true;
        };
        (@:checkr _dd ?? throw "null pointer dereference")._rdPos = (@:checkr _dd ?? throw "null pointer dereference")._wrPos;
    }
}
