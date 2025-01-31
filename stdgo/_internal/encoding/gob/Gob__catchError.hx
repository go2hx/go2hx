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
function _catchError(_err:stdgo.Ref<stdgo.Error>):Void {
        {
            var _e = ({
                final r = stdgo.Go.recover_exception;
                stdgo.Go.recover_exception = null;
                r;
            } : stdgo.AnyInterface);
            if (_e != null) {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_e : stdgo._internal.encoding.gob.Gob_T_gobError.T_gobError)) : stdgo._internal.encoding.gob.Gob_T_gobError.T_gobError), _1 : true };
                } catch(_) {
                    { _0 : ({} : stdgo._internal.encoding.gob.Gob_T_gobError.T_gobError), _1 : false };
                }, _ge = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    throw stdgo.Go.toInterface(_e);
                };
                {
                    var __tmp__ = _ge._err;
                    var x = (_err : stdgo.Error);
                    x.error = __tmp__.error;
                };
            };
        };
    }
