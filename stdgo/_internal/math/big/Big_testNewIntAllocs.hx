package stdgo._internal.math.big;
import stdgo._internal.strings.Strings;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.Math;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.encoding.gob.Gob;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.testing.quick.Quick;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.encoding.xml.Xml;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.os.Os;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.sort.Sort;
function testNewIntAllocs(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_skipIfOptimizationOff.skipIfOptimizationOff(stdgo.Go.asInterface(_t));
        for (__8 => _n in (new stdgo.Slice<stdgo.GoInt64>(7, 7, ...[(0i64 : stdgo.GoInt64), (7i64 : stdgo.GoInt64), (-7i64 : stdgo.GoInt64), (1073741824i64 : stdgo.GoInt64), (-1073741824i64 : stdgo.GoInt64), (1125899906842624i64 : stdgo.GoInt64), (-1125899906842624i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>)) {
            var _x = stdgo._internal.math.big.Big_newInt.newInt((3i64 : stdgo.GoInt64));
            var _got = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((100 : stdgo.GoInt), function():Void {
                @:check2r _x.add(_x, stdgo._internal.math.big.Big_newInt.newInt(_n));
            }) : stdgo.GoFloat64);
            if (_got != (0 : stdgo.GoFloat64)) {
                @:check2r _t.errorf(("x.Add(x, NewInt(%d)), wanted 0 allocations, got %f" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_got));
            };
        };
    }
