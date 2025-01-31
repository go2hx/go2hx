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
function benchmarkParseFloatSmallExp(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                for (__16 => _s in (new stdgo.Slice<stdgo.GoString>(17, 17, ...[
("1e0" : stdgo.GoString),
("1e-1" : stdgo.GoString),
("1e-2" : stdgo.GoString),
("1e-3" : stdgo.GoString),
("1e-4" : stdgo.GoString),
("1e-5" : stdgo.GoString),
("1e-10" : stdgo.GoString),
("1e-20" : stdgo.GoString),
("1e-50" : stdgo.GoString),
("1e1" : stdgo.GoString),
("1e2" : stdgo.GoString),
("1e3" : stdgo.GoString),
("1e4" : stdgo.GoString),
("1e5" : stdgo.GoString),
("1e10" : stdgo.GoString),
("1e20" : stdgo.GoString),
("1e50" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                    var _x:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_);
                    var __tmp__ = @:check2 _x.parse(_s?.__copy__(), (0 : stdgo.GoInt)), __17:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = __tmp__._0, __18:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                    if (_err != null) {
                        @:check2r _b.fatalf(("%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
                    };
                };
                _i++;
            };
        };
    }
