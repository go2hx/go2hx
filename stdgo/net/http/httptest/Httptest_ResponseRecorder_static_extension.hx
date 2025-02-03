package stdgo.net.http.httptest;
class ResponseRecorder_static_extension {
    static public function result(_rw:ResponseRecorder):stdgo._internal.net.http.Http_Response.Response {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder>);
        return stdgo._internal.net.http.httptest.Httptest_ResponseRecorder_static_extension.ResponseRecorder_static_extension.result(_rw);
    }
    static public function flush(_rw:ResponseRecorder):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder>);
        stdgo._internal.net.http.httptest.Httptest_ResponseRecorder_static_extension.ResponseRecorder_static_extension.flush(_rw);
    }
    static public function writeHeader(_rw:ResponseRecorder, _code:StdTypes.Int):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder>);
        final _code = (_code : stdgo.GoInt);
        stdgo._internal.net.http.httptest.Httptest_ResponseRecorder_static_extension.ResponseRecorder_static_extension.writeHeader(_rw, _code);
    }
    static public function writeString(_rw:ResponseRecorder, _str:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder>);
        final _str = (_str : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.httptest.Httptest_ResponseRecorder_static_extension.ResponseRecorder_static_extension.writeString(_rw, _str);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_rw:ResponseRecorder, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.httptest.Httptest_ResponseRecorder_static_extension.ResponseRecorder_static_extension.write(_rw, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _writeHeader(_rw:ResponseRecorder, _b:Array<std.UInt>, _str:String):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _str = (_str : stdgo.GoString);
        stdgo._internal.net.http.httptest.Httptest_ResponseRecorder_static_extension.ResponseRecorder_static_extension._writeHeader(_rw, _b, _str);
    }
    static public function header(_rw:ResponseRecorder):stdgo._internal.net.http.Http_Header.Header {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.net.http.httptest.Httptest_ResponseRecorder.ResponseRecorder>);
        return stdgo._internal.net.http.httptest.Httptest_ResponseRecorder_static_extension.ResponseRecorder_static_extension.header(_rw);
    }
}
