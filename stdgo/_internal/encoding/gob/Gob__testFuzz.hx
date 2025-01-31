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
function _testFuzz(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _seed:stdgo.GoInt64, _n:stdgo.GoInt, _input:haxe.Rest<stdgo.AnyInterface>):Void {
        var _input = new stdgo.Slice<stdgo.AnyInterface>(_input.length, 0, ..._input);
        for (__8 => _e in _input) {
            @:check2r _t.logf(("seed=%d n=%d e=%T" : stdgo.GoString), stdgo.Go.toInterface(_seed), stdgo.Go.toInterface(_n), _e);
            var _rng = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource(_seed));
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < _n : Bool)) {
                    stdgo._internal.encoding.gob.Gob__encFuzzDec._encFuzzDec(_rng, _e);
                    _i++;
                };
            };
        };
    }
