package stdgo._internal.encoding.gob;
function testIntCodec(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _u = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            stdgo.Go.cfor(true, _u = (((_u + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) * (7i64 : stdgo.GoUInt64) : stdgo.GoUInt64), {
                var _i = (_u : stdgo.GoInt64);
                stdgo._internal.encoding.gob.Gob__verifyInt._verifyInt(_i, _t);
                stdgo._internal.encoding.gob.Gob__verifyInt._verifyInt(-_i, _t);
                stdgo._internal.encoding.gob.Gob__verifyInt._verifyInt((-1 ^ _i), _t);
                if ((_u & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
                    break;
                };
            });
        };
        stdgo._internal.encoding.gob.Gob__verifyInt._verifyInt((-9223372036854775808i64 : stdgo.GoInt64), _t);
    }