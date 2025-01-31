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
function benchmarkDiv(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _sizes = (new stdgo.Slice<stdgo.GoInt>(11, 11, ...[
(10 : stdgo.GoInt),
(20 : stdgo.GoInt),
(50 : stdgo.GoInt),
(100 : stdgo.GoInt),
(200 : stdgo.GoInt),
(500 : stdgo.GoInt),
(1000 : stdgo.GoInt),
(10000 : stdgo.GoInt),
(100000 : stdgo.GoInt),
(1000000 : stdgo.GoInt),
(10000000 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        for (__8 => _i in _sizes) {
            var _j = ((2 : stdgo.GoInt) * _i : stdgo.GoInt);
            @:check2r _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d/%d" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_i))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                stdgo._internal.math.big.Big__benchmarkDiv._benchmarkDiv(_b, _j, _i);
            });
        };
    }
