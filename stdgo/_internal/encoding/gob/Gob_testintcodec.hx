package stdgo._internal.encoding.gob;
function testIntCodec(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {
            var _u = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            while (true) {
                var _i = (_u : stdgo.GoInt64);
stdgo._internal.encoding.gob.Gob__verifyint._verifyInt(_i, _t);
stdgo._internal.encoding.gob.Gob__verifyint._verifyInt(-_i, _t);
stdgo._internal.encoding.gob.Gob__verifyint._verifyInt((-1 ^ _i), _t);
if ((_u & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
                    break;
                };
                _u = (((_u + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) * (7i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            };
        };
        stdgo._internal.encoding.gob.Gob__verifyint._verifyInt((-9223372036854775808i64 : stdgo.GoInt64), _t);
    }
