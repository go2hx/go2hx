package stdgo._internal.encoding.json;
function testBlocking(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L335"
        for (__4 => _enc in stdgo._internal.encoding.json.Json__blockingtests._blockingTests) {
            var __tmp__ = stdgo._internal.net.Net_pipe.pipe(), _r:stdgo._internal.net.Net_conn.Conn = __tmp__._0, _w:stdgo._internal.net.Net_conn.Conn = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L337"
            {
                final __tmp__0 = (_enc : stdgo.Slice<stdgo.GoUInt8>);
                stdgo.Go.routine(() -> _w.write(__tmp__0));
            };
            var _val:stdgo.AnyInterface = (null : stdgo.AnyInterface);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L342"
            {
                var _err = (stdgo._internal.encoding.json.Json_newdecoder.newDecoder(_r).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_val) : stdgo.Ref<stdgo.AnyInterface>))) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L343"
                    _t.errorf(("decoding %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_enc), stdgo.Go.toInterface(_err));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L345"
            _r.close();
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream_test.go#L346"
            _w.close();
        };
    }
