package stdgo.net.http;
class T_http2Framer_static_extension {
    static public function writeRawFrame(_f:T_http2Framer, _t:T_http2FrameType, _flags:T_http2Flags, _streamID:std.UInt, _payload:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        final _payload = ([for (i in _payload) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writeRawFrame(_f, _t, _flags, _streamID, _payload);
    }
    static public function writePushPromise(_f:T_http2Framer, _p:T_http2PushPromiseParam):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>);
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writePushPromise(_f, _p);
    }
    static public function writeContinuation(_f:T_http2Framer, _streamID:std.UInt, _endHeaders:Bool, _headerBlockFragment:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        final _headerBlockFragment = ([for (i in _headerBlockFragment) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writeContinuation(_f, _streamID, _endHeaders, _headerBlockFragment);
    }
    static public function writeRSTStream(_f:T_http2Framer, _streamID:std.UInt, _code:T_http2ErrCode):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writeRSTStream(_f, _streamID, _code);
    }
    static public function writePriority(_f:T_http2Framer, _streamID:std.UInt, _p:T_http2PriorityParam):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writePriority(_f, _streamID, _p);
    }
    static public function writeHeaders(_f:T_http2Framer, _p:T_http2HeadersFrameParam):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>);
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writeHeaders(_f, _p);
    }
    static public function writeWindowUpdate(_f:T_http2Framer, _streamID:std.UInt, _incr:std.UInt):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        final _incr = (_incr : stdgo.GoUInt32);
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writeWindowUpdate(_f, _streamID, _incr);
    }
    static public function writeGoAway(_f:T_http2Framer, _maxStreamID:std.UInt, _code:T_http2ErrCode, _debugData:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>);
        final _maxStreamID = (_maxStreamID : stdgo.GoUInt32);
        final _debugData = ([for (i in _debugData) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writeGoAway(_f, _maxStreamID, _code, _debugData);
    }
    static public function writePing(_f:T_http2Framer, _ack:Bool, _data:haxe.ds.Vector<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writePing(_f, _ack, _data);
    }
    static public function writeSettingsAck(_f:T_http2Framer):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>);
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writeSettingsAck(_f);
    }
    static public function writeSettings(_f:T_http2Framer, _settings:haxe.Rest<T_http2Setting>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>);
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writeSettings(_f, ...[for (i in _settings) i]);
    }
    static public function writeDataPadded(_f:T_http2Framer, _streamID:std.UInt, _endStream:Bool, _data:Array<std.UInt>, _pad:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _pad = ([for (i in _pad) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writeDataPadded(_f, _streamID, _endStream, _data, _pad);
    }
    static public function writeData(_f:T_http2Framer, _streamID:std.UInt, _endStream:Bool, _data:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writeData(_f, _streamID, _endStream, _data);
    }
    static public function readFrame(_fr:T_http2Framer):stdgo.Tuple<T_http2Frame, stdgo.Error> {
        final _fr = (_fr : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.readFrame(_fr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function errorDetail(_fr:T_http2Framer):stdgo.Error {
        final _fr = (_fr : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>);
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.errorDetail(_fr);
    }
    static public function setMaxReadFrameSize(_fr:T_http2Framer, _v:std.UInt):Void {
        final _fr = (_fr : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>);
        final _v = (_v : stdgo.GoUInt32);
        stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.setMaxReadFrameSize(_fr, _v);
    }
    static public function setReuseFrames(_fr:T_http2Framer):Void {
        final _fr = (_fr : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>);
        stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.setReuseFrames(_fr);
    }
}
