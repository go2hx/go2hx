package stdgo._internal.encoding.gob;
function testIntCodec(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L98"
        {
            var _u = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            while (true) {
                var _i = (_u : stdgo.GoInt64);
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L101"
                stdgo._internal.encoding.gob.Gob__verifyint._verifyInt(_i, _t);
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L102"
                stdgo._internal.encoding.gob.Gob__verifyint._verifyInt(-_i, _t);
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L103"
                stdgo._internal.encoding.gob.Gob__verifyint._verifyInt((-1 ^ _i), _t);
//"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L104"
                if ((_u & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L105"
                    break;
                };
                _u = (((_u + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) * (7i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L108"
        stdgo._internal.encoding.gob.Gob__verifyint._verifyInt((-9223372036854775808i64 : stdgo.GoInt64), _t);
    }
