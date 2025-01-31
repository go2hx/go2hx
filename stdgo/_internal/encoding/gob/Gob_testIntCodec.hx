package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
function testIntCodec(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _u = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            while (true) {
                var _i = (_u : stdgo.GoInt64);
stdgo._internal.encoding.gob.Gob__verifyInt._verifyInt(_i, _t);
stdgo._internal.encoding.gob.Gob__verifyInt._verifyInt(-_i, _t);
stdgo._internal.encoding.gob.Gob__verifyInt._verifyInt((-1 ^ _i), _t);
if ((_u & (-9223372036854775808i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
                    break;
                };
                _u = (((_u + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) * (7i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            };
        };
        stdgo._internal.encoding.gob.Gob__verifyInt._verifyInt((-9223372036854775808i64 : stdgo.GoInt64), _t);
    }
