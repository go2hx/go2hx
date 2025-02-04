package stdgo._internal.encoding.json;
function testBlocking(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__4 => _enc in stdgo._internal.encoding.json.Json__blockingtests._blockingTests) {
            var __tmp__ = stdgo._internal.net.Net_pipe.pipe(), _r:stdgo._internal.net.Net_conn.Conn = __tmp__._0, _w:stdgo._internal.net.Net_conn.Conn = __tmp__._1;
            stdgo.Go.routine(() -> _w.write((_enc : stdgo.Slice<stdgo.GoUInt8>)));
            var _val:stdgo.AnyInterface = (null : stdgo.AnyInterface);
            {
                var _err = (@:check2r stdgo._internal.encoding.json.Json_newdecoder.newDecoder(_r).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_val) : stdgo.Ref<stdgo.AnyInterface>))) : stdgo.Error);
                if (_err != null) {
                    @:check2r _t.errorf(("decoding %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_enc), stdgo.Go.toInterface(_err));
                };
            };
            _r.close();
            _w.close();
        };
    }
