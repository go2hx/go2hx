package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2Framer_asInterface) class T_http2Framer_static_extension {
    @:keep
    @:tdfield
    static public function writeRawFrame( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _t:stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType, _flags:stdgo._internal.net.http.Http_t_http2flags.T_http2Flags, _streamID:stdgo.GoUInt32, _payload:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        @:check2r _f._startWrite(_t, _flags, _streamID);
        @:check2r _f._writeBytes(_payload);
        return @:check2r _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writePushPromise( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _p:stdgo._internal.net.http.Http_t_http2pushpromiseparam.T_http2PushPromiseParam):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        if ((!stdgo._internal.net.http.Http__http2validstreamid._http2validStreamID(_p.streamID) && !(@:checkr _f ?? throw "null pointer dereference").allowIllegalWrites : Bool)) {
            return stdgo._internal.net.http.Http__http2errstreamid._http2errStreamID;
        };
        var _flags:stdgo._internal.net.http.Http_t_http2flags.T_http2Flags = ((0 : stdgo.GoUInt8) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        if (_p.padLength != ((0 : stdgo.GoUInt8))) {
            _flags = (_flags | ((8 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags)) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        };
        if (_p.endHeaders) {
            _flags = (_flags | ((4 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags)) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        };
        @:check2r _f._startWrite((5 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType), _flags, _p.streamID);
        if (_p.padLength != ((0 : stdgo.GoUInt8))) {
            @:check2r _f._writeByte(_p.padLength);
        };
        if ((!stdgo._internal.net.http.Http__http2validstreamid._http2validStreamID(_p.promiseID) && !(@:checkr _f ?? throw "null pointer dereference").allowIllegalWrites : Bool)) {
            return stdgo._internal.net.http.Http__http2errstreamid._http2errStreamID;
        };
        @:check2r _f._writeUint32(_p.promiseID);
        (@:checkr _f ?? throw "null pointer dereference")._wbuf = ((@:checkr _f ?? throw "null pointer dereference")._wbuf.__append__(...(_p.blockFragment : Array<stdgo.GoUInt8>)));
        (@:checkr _f ?? throw "null pointer dereference")._wbuf = ((@:checkr _f ?? throw "null pointer dereference")._wbuf.__append__(...((stdgo._internal.net.http.Http__http2padzeros._http2padZeros.__slice__(0, _p.padLength) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        return @:check2r _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writeContinuation( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _endHeaders:Bool, _headerBlockFragment:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        if ((!stdgo._internal.net.http.Http__http2validstreamid._http2validStreamID(_streamID) && !(@:checkr _f ?? throw "null pointer dereference").allowIllegalWrites : Bool)) {
            return stdgo._internal.net.http.Http__http2errstreamid._http2errStreamID;
        };
        var _flags:stdgo._internal.net.http.Http_t_http2flags.T_http2Flags = ((0 : stdgo.GoUInt8) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        if (_endHeaders) {
            _flags = (_flags | ((4 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags)) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        };
        @:check2r _f._startWrite((9 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType), _flags, _streamID);
        (@:checkr _f ?? throw "null pointer dereference")._wbuf = ((@:checkr _f ?? throw "null pointer dereference")._wbuf.__append__(...(_headerBlockFragment : Array<stdgo.GoUInt8>)));
        return @:check2r _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writeRSTStream( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _code:stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        if ((!stdgo._internal.net.http.Http__http2validstreamid._http2validStreamID(_streamID) && !(@:checkr _f ?? throw "null pointer dereference").allowIllegalWrites : Bool)) {
            return stdgo._internal.net.http.Http__http2errstreamid._http2errStreamID;
        };
        @:check2r _f._startWrite((3 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType), (0 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags), _streamID);
        @:check2r _f._writeUint32((_code : stdgo.GoUInt32));
        return @:check2r _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writePriority( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _p:stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        if ((!stdgo._internal.net.http.Http__http2validstreamid._http2validStreamID(_streamID) && !(@:checkr _f ?? throw "null pointer dereference").allowIllegalWrites : Bool)) {
            return stdgo._internal.net.http.Http__http2errstreamid._http2errStreamID;
        };
        if (!stdgo._internal.net.http.Http__http2validstreamidorzero._http2validStreamIDOrZero(_p.streamDep)) {
            return stdgo._internal.net.http.Http__http2errdepstreamid._http2errDepStreamID;
        };
        @:check2r _f._startWrite((2 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType), (0 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags), _streamID);
        var _v = (_p.streamDep : stdgo.GoUInt32);
        if (_p.exclusive) {
            _v = (_v | ((-2147483648u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        @:check2r _f._writeUint32(_v);
        @:check2r _f._writeByte(_p.weight);
        return @:check2r _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writeHeaders( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _p:stdgo._internal.net.http.Http_t_http2headersframeparam.T_http2HeadersFrameParam):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        if ((!stdgo._internal.net.http.Http__http2validstreamid._http2validStreamID(_p.streamID) && !(@:checkr _f ?? throw "null pointer dereference").allowIllegalWrites : Bool)) {
            return stdgo._internal.net.http.Http__http2errstreamid._http2errStreamID;
        };
        var _flags:stdgo._internal.net.http.Http_t_http2flags.T_http2Flags = ((0 : stdgo.GoUInt8) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        if (_p.padLength != ((0 : stdgo.GoUInt8))) {
            _flags = (_flags | ((8 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags)) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        };
        if (_p.endStream) {
            _flags = (_flags | ((1 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags)) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        };
        if (_p.endHeaders) {
            _flags = (_flags | ((4 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags)) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        };
        if (!_p.priority.isZero()) {
            _flags = (_flags | ((32 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags)) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        };
        @:check2r _f._startWrite((1 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType), _flags, _p.streamID);
        if (_p.padLength != ((0 : stdgo.GoUInt8))) {
            @:check2r _f._writeByte(_p.padLength);
        };
        if (!_p.priority.isZero()) {
            var _v = (_p.priority.streamDep : stdgo.GoUInt32);
            if ((!stdgo._internal.net.http.Http__http2validstreamidorzero._http2validStreamIDOrZero(_v) && !(@:checkr _f ?? throw "null pointer dereference").allowIllegalWrites : Bool)) {
                return stdgo._internal.net.http.Http__http2errdepstreamid._http2errDepStreamID;
            };
            if (_p.priority.exclusive) {
                _v = (_v | ((-2147483648u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            };
            @:check2r _f._writeUint32(_v);
            @:check2r _f._writeByte(_p.priority.weight);
        };
        (@:checkr _f ?? throw "null pointer dereference")._wbuf = ((@:checkr _f ?? throw "null pointer dereference")._wbuf.__append__(...(_p.blockFragment : Array<stdgo.GoUInt8>)));
        (@:checkr _f ?? throw "null pointer dereference")._wbuf = ((@:checkr _f ?? throw "null pointer dereference")._wbuf.__append__(...((stdgo._internal.net.http.Http__http2padzeros._http2padZeros.__slice__(0, _p.padLength) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
        return @:check2r _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writeWindowUpdate( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _incr:stdgo.GoUInt32):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        if (((((_incr < (1u32 : stdgo.GoUInt32) : Bool) || (_incr > (2147483647u32 : stdgo.GoUInt32) : Bool) : Bool)) && !(@:checkr _f ?? throw "null pointer dereference").allowIllegalWrites : Bool)) {
            return stdgo._internal.net.http.Http__errors._errors.new_(("illegal window increment value" : stdgo.GoString));
        };
        @:check2r _f._startWrite((8 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType), (0 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags), _streamID);
        @:check2r _f._writeUint32(_incr);
        return @:check2r _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writeGoAway( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _maxStreamID:stdgo.GoUInt32, _code:stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode, _debugData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        @:check2r _f._startWrite((7 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType), (0 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags), (0u32 : stdgo.GoUInt32));
        @:check2r _f._writeUint32((_maxStreamID & (2147483647u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
        @:check2r _f._writeUint32((_code : stdgo.GoUInt32));
        @:check2r _f._writeBytes(_debugData);
        return @:check2r _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writePing( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _ack:Bool, _data:stdgo.GoArray<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        var _flags:stdgo._internal.net.http.Http_t_http2flags.T_http2Flags = ((0 : stdgo.GoUInt8) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        if (_ack) {
            _flags = (1 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        };
        @:check2r _f._startWrite((6 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType), _flags, (0u32 : stdgo.GoUInt32));
        @:check2r _f._writeBytes((_data.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        return @:check2r _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writeSettingsAck( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        @:check2r _f._startWrite((4 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType), (1 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags), (0u32 : stdgo.GoUInt32));
        return @:check2r _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writeSettings( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _settings:haxe.Rest<stdgo._internal.net.http.Http_t_http2setting.T_http2Setting>):stdgo.Error {
        var _settings = new stdgo.Slice<stdgo._internal.net.http.Http_t_http2setting.T_http2Setting>(_settings.length, 0, ..._settings);
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        @:check2r _f._startWrite((4 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType), (0 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags), (0u32 : stdgo.GoUInt32));
        for (__2149 => _s in _settings) {
            @:check2r _f._writeUint16((_s.iD : stdgo.GoUInt16));
            @:check2r _f._writeUint32(_s.val);
        };
        return @:check2r _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writeDataPadded( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _endStream:Bool, _data:stdgo.Slice<stdgo.GoUInt8>, _pad:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        {
            var _err = (@:check2r _f._startWriteDataPadded(_streamID, _endStream, _data, _pad) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return @:check2r _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writeData( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _endStream:Bool, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        return @:check2r _f.writeDataPadded(_streamID, _endStream, _data, (null : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function readFrame( _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>):{ var _0 : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame; var _1 : stdgo.Error; } {
        @:recv var _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _fr;
        (@:checkr _fr ?? throw "null pointer dereference")._errDetail = (null : stdgo.Error);
        if ((@:checkr _fr ?? throw "null pointer dereference")._lastFrame != null) {
            (@:checkr _fr ?? throw "null pointer dereference")._lastFrame._invalidate();
        };
        var __tmp__ = stdgo._internal.net.http.Http__http2readframeheader._http2readFrameHeader(((@:checkr _fr ?? throw "null pointer dereference")._headerBuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _fr ?? throw "null pointer dereference")._r), _fh:stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : _err };
        };
        if ((_fh.length_ > (@:checkr _fr ?? throw "null pointer dereference")._maxReadSize : Bool)) {
            return { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : stdgo._internal.net.http.Http__http2errframetoolarge._http2ErrFrameTooLarge };
        };
        var _payload = (@:checkr _fr ?? throw "null pointer dereference")._getReadBuf(_fh.length_);
        {
            var __tmp__ = stdgo._internal.net.http.Http__io._io.readFull((@:checkr _fr ?? throw "null pointer dereference")._r, _payload), __2149:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : _err };
            };
        };
        var __tmp__ = stdgo._internal.net.http.Http__http2typeframeparser._http2typeFrameParser(_fh.type)((@:checkr _fr ?? throw "null pointer dereference")._frameCache, _fh?.__copy__(), (@:checkr _fr ?? throw "null pointer dereference")._countError, _payload), _f:stdgo._internal.net.http.Http_t_http2frame.T_http2Frame = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.net.http.Http_t_http2connerror.T_http2connError)) : stdgo._internal.net.http.Http_t_http2connerror.T_http2connError), _1 : true };
                } catch(_) {
                    { _0 : ({} : stdgo._internal.net.http.Http_t_http2connerror.T_http2connError), _1 : false };
                }, _ce = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    return { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : @:check2r _fr._connError(_ce.code, _ce.reason?.__copy__()) };
                };
            };
            return { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : _err };
        };
        {
            var _err = (@:check2r _fr._checkFrameOrder(_f) : stdgo.Error);
            if (_err != null) {
                return { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : _err };
            };
        };
        if ((@:checkr _fr ?? throw "null pointer dereference")._logReads) {
            (@:checkr _fr ?? throw "null pointer dereference")._debugReadLoggerf(("http2: Framer %p: read %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_fr)), stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2summarizeframe._http2summarizeFrame(_f)));
        };
        if (((_fh.type == (1 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType)) && ((@:checkr _fr ?? throw "null pointer dereference").readMetaHeaders != null && (((@:checkr _fr ?? throw "null pointer dereference").readMetaHeaders : Dynamic).__nil__ == null || !((@:checkr _fr ?? throw "null pointer dereference").readMetaHeaders : Dynamic).__nil__)) : Bool)) {
            return @:check2r _fr._readMetaFrame((stdgo.Go.typeAssert((stdgo.Go.toInterface(_f) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2headersframe.T_http2HeadersFrame>)) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2headersframe.T_http2HeadersFrame>));
        };
        return { _0 : _f, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function errorDetail( _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>):stdgo.Error {
        @:recv var _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _fr;
        return (@:checkr _fr ?? throw "null pointer dereference")._errDetail;
    }
    @:keep
    @:tdfield
    static public function setMaxReadFrameSize( _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _v:stdgo.GoUInt32):Void {
        @:recv var _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _fr;
        if ((_v > (16777215u32 : stdgo.GoUInt32) : Bool)) {
            _v = (16777215u32 : stdgo.GoUInt32);
        };
        (@:checkr _fr ?? throw "null pointer dereference")._maxReadSize = _v;
    }
    @:keep
    @:tdfield
    static public function setReuseFrames( _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>):Void {
        @:recv var _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _fr;
        if (((@:checkr _fr ?? throw "null pointer dereference")._frameCache != null && (((@:checkr _fr ?? throw "null pointer dereference")._frameCache : Dynamic).__nil__ == null || !((@:checkr _fr ?? throw "null pointer dereference")._frameCache : Dynamic).__nil__))) {
            return;
        };
        (@:checkr _fr ?? throw "null pointer dereference")._frameCache = (stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_http2framecache.T_http2frameCache() : stdgo._internal.net.http.Http_t_http2framecache.T_http2frameCache)) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framecache.T_http2frameCache>);
    }
}
