package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2FrameWriteRequest_asInterface) class T_http2FrameWriteRequest_static_extension {
    @:keep
    @:tdfield
    static public function _replyToWriter( _wr:stdgo.Ref<stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest>, _err:stdgo.Error):Void {
        @:recv var _wr:stdgo.Ref<stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest> = _wr;
        if ((@:checkr _wr ?? throw "null pointer dereference")._done == null) {
            return;
        };
        {
            var __select__ = true;
            while (__select__) {
                if ((@:checkr _wr ?? throw "null pointer dereference")._done != null && (@:checkr _wr ?? throw "null pointer dereference")._done.__isSend__()) {
                    __select__ = false;
                    {
                        (@:checkr _wr ?? throw "null pointer dereference")._done.__send__(_err);
                        {};
                    };
                } else {
                    __select__ = false;
                    {
                        throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unbuffered done channel passed in for type %T" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _wr ?? throw "null pointer dereference")._write)));
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
        (@:checkr _wr ?? throw "null pointer dereference")._write = (null : stdgo._internal.net.http.Http_T_http2writeFramer.T_http2writeFramer);
    }
    @:keep
    @:tdfield
    static public function string( _wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest):stdgo.GoString {
        @:recv var _wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest = _wr?.__copy__();
        var _des:stdgo.GoString = ("" : stdgo.GoString);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_wr._write) : stdgo._internal.fmt.Fmt_Stringer.Stringer)) : stdgo._internal.fmt.Fmt_Stringer.Stringer), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.fmt.Fmt_Stringer.Stringer), _1 : false };
            }, _s = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _des = (_s.string() : stdgo.GoString)?.__copy__();
            } else {
                _des = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%T" : stdgo.GoString), stdgo.Go.toInterface(_wr._write))?.__copy__();
            };
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("[FrameWriteRequest stream=%d, ch=%v, writer=%v]" : stdgo.GoString), stdgo.Go.toInterface(_wr.streamID()), stdgo.Go.toInterface(_wr._done != null), stdgo.Go.toInterface(_des))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function consume( _wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest, _n:stdgo.GoInt32):{ var _0 : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest; var _1 : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest; var _2 : stdgo.GoInt; } {
        @:recv var _wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest = _wr?.__copy__();
        var _empty:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest = ({} : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_wr._write) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData>), _1 : false };
        }, _wd = __tmp__._0, _ok = __tmp__._1;
        if ((!_ok || ((@:checkr _wd ?? throw "null pointer dereference")._p.length == (0 : stdgo.GoInt)) : Bool)) {
            return { _0 : _wr?.__copy__(), _1 : _empty?.__copy__(), _2 : (1 : stdgo.GoInt) };
        };
        var _allowed = (@:check2 (@:checkr _wr._stream ?? throw "null pointer dereference")._flow._available() : stdgo.GoInt32);
        if ((_n < _allowed : Bool)) {
            _allowed = _n;
        };
        if (((@:checkr (@:checkr _wr._stream ?? throw "null pointer dereference")._sc ?? throw "null pointer dereference")._maxFrameSize < _allowed : Bool)) {
            _allowed = (@:checkr (@:checkr _wr._stream ?? throw "null pointer dereference")._sc ?? throw "null pointer dereference")._maxFrameSize;
        };
        if ((_allowed <= (0 : stdgo.GoInt32) : Bool)) {
            return { _0 : _empty?.__copy__(), _1 : _empty?.__copy__(), _2 : (0 : stdgo.GoInt) };
        };
        if ((((@:checkr _wd ?? throw "null pointer dereference")._p.length) > (_allowed : stdgo.GoInt) : Bool)) {
            @:check2 (@:checkr _wr._stream ?? throw "null pointer dereference")._flow._take(_allowed);
            var _consumed = ({ _stream : _wr._stream, _write : stdgo.Go.asInterface((stdgo.Go.setRef(({ _streamID : (@:checkr _wd ?? throw "null pointer dereference")._streamID, _p : ((@:checkr _wd ?? throw "null pointer dereference")._p.__slice__(0, _allowed) : stdgo.Slice<stdgo.GoUInt8>), _endStream : false } : stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData>)), _done : (null : stdgo.Chan<stdgo.Error>) } : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest);
            var _rest = ({ _stream : _wr._stream, _write : stdgo.Go.asInterface((stdgo.Go.setRef(({ _streamID : (@:checkr _wd ?? throw "null pointer dereference")._streamID, _p : ((@:checkr _wd ?? throw "null pointer dereference")._p.__slice__(_allowed) : stdgo.Slice<stdgo.GoUInt8>), _endStream : (@:checkr _wd ?? throw "null pointer dereference")._endStream } : stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData>)), _done : _wr._done } : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest);
            return { _0 : _consumed?.__copy__(), _1 : _rest?.__copy__(), _2 : (2 : stdgo.GoInt) };
        };
        @:check2 (@:checkr _wr._stream ?? throw "null pointer dereference")._flow._take(((@:checkr _wd ?? throw "null pointer dereference")._p.length : stdgo.GoInt32));
        return { _0 : _wr?.__copy__(), _1 : _empty?.__copy__(), _2 : (1 : stdgo.GoInt) };
    }
    @:keep
    @:tdfield
    static public function dataSize( _wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest):stdgo.GoInt {
        @:recv var _wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest = _wr?.__copy__();
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_wr._write) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData>), _1 : false };
            }, _wd = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return ((@:checkr _wd ?? throw "null pointer dereference")._p.length);
            };
        };
        return (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _isControl( _wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest):Bool {
        @:recv var _wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest = _wr?.__copy__();
        return (_wr._stream == null || (_wr._stream : Dynamic).__nil__);
    }
    @:keep
    @:tdfield
    static public function streamID( _wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest):stdgo.GoUInt32 {
        @:recv var _wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest = _wr?.__copy__();
        if ((_wr._stream == null || (_wr._stream : Dynamic).__nil__)) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_wr._write) : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError)) : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError), _1 : true };
                } catch(_) {
                    { _0 : ({} : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError), _1 : false };
                }, _se = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    return _se.streamID;
                };
            };
            return (0u32 : stdgo.GoUInt32);
        };
        return (@:checkr _wr._stream ?? throw "null pointer dereference")._id;
    }
}
