package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension) class T_http2Framer {
    public var _r : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public var _lastFrame : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame = (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame);
    public var _errDetail : stdgo.Error = (null : stdgo.Error);
    public var _countError : stdgo.GoString -> Void = null;
    public var _lastHeaderStream : stdgo.GoUInt32 = 0;
    public var _maxReadSize : stdgo.GoUInt32 = 0;
    public var _headerBuf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(9, 9).__setNumber32__();
    public var _getReadBuf : stdgo.GoUInt32 -> stdgo.Slice<stdgo.GoUInt8> = null;
    public var _readBuf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _maxWriteSize : stdgo.GoUInt32 = 0;
    public var _w : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    public var _wbuf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var allowIllegalWrites : Bool = false;
    public var allowIllegalReads : Bool = false;
    public var readMetaHeaders : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder> = (null : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder>);
    public var maxHeaderListSize : stdgo.GoUInt32 = 0;
    public var _logReads : Bool = false;
    public var _logWrites : Bool = false;
    public var _debugFramer : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>);
    public var _debugFramerBuf : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = (null : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
    public var _debugReadLoggerf : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void = null;
    public var _debugWriteLoggerf : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void = null;
    public var _frameCache : stdgo.Ref<stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache>);
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_lastFrame:stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame, ?_errDetail:stdgo.Error, ?_countError:stdgo.GoString -> Void, ?_lastHeaderStream:stdgo.GoUInt32, ?_maxReadSize:stdgo.GoUInt32, ?_headerBuf:stdgo.GoArray<stdgo.GoUInt8>, ?_getReadBuf:stdgo.GoUInt32 -> stdgo.Slice<stdgo.GoUInt8>, ?_readBuf:stdgo.Slice<stdgo.GoUInt8>, ?_maxWriteSize:stdgo.GoUInt32, ?_w:stdgo._internal.io.Io_Writer.Writer, ?_wbuf:stdgo.Slice<stdgo.GoUInt8>, ?allowIllegalWrites:Bool, ?allowIllegalReads:Bool, ?readMetaHeaders:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder>, ?maxHeaderListSize:stdgo.GoUInt32, ?_logReads:Bool, ?_logWrites:Bool, ?_debugFramer:stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>, ?_debugFramerBuf:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, ?_debugReadLoggerf:(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void, ?_debugWriteLoggerf:(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void, ?_frameCache:stdgo.Ref<stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache>) {
        if (_r != null) this._r = _r;
        if (_lastFrame != null) this._lastFrame = _lastFrame;
        if (_errDetail != null) this._errDetail = _errDetail;
        if (_countError != null) this._countError = _countError;
        if (_lastHeaderStream != null) this._lastHeaderStream = _lastHeaderStream;
        if (_maxReadSize != null) this._maxReadSize = _maxReadSize;
        if (_headerBuf != null) this._headerBuf = _headerBuf;
        if (_getReadBuf != null) this._getReadBuf = _getReadBuf;
        if (_readBuf != null) this._readBuf = _readBuf;
        if (_maxWriteSize != null) this._maxWriteSize = _maxWriteSize;
        if (_w != null) this._w = _w;
        if (_wbuf != null) this._wbuf = _wbuf;
        if (allowIllegalWrites != null) this.allowIllegalWrites = allowIllegalWrites;
        if (allowIllegalReads != null) this.allowIllegalReads = allowIllegalReads;
        if (readMetaHeaders != null) this.readMetaHeaders = readMetaHeaders;
        if (maxHeaderListSize != null) this.maxHeaderListSize = maxHeaderListSize;
        if (_logReads != null) this._logReads = _logReads;
        if (_logWrites != null) this._logWrites = _logWrites;
        if (_debugFramer != null) this._debugFramer = _debugFramer;
        if (_debugFramerBuf != null) this._debugFramerBuf = _debugFramerBuf;
        if (_debugReadLoggerf != null) this._debugReadLoggerf = _debugReadLoggerf;
        if (_debugWriteLoggerf != null) this._debugWriteLoggerf = _debugWriteLoggerf;
        if (_frameCache != null) this._frameCache = _frameCache;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2Framer(
_r,
_lastFrame,
_errDetail,
_countError,
_lastHeaderStream,
_maxReadSize,
_headerBuf,
_getReadBuf,
_readBuf,
_maxWriteSize,
_w,
_wbuf,
allowIllegalWrites,
allowIllegalReads,
readMetaHeaders,
maxHeaderListSize,
_logReads,
_logWrites,
_debugFramer,
_debugFramerBuf,
_debugReadLoggerf,
_debugWriteLoggerf,
_frameCache);
    }
}
