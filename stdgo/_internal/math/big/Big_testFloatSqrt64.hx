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
function testFloatSqrt64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (100000 : stdgo.GoInt) : Bool)) {
                if (((_i == (100 : stdgo.GoInt)) && stdgo._internal.testing.Testing_short.short() : Bool)) {
                    break;
                };
var _r = (stdgo._internal.math.rand.Rand_float64.float64() : stdgo.GoFloat64);
var _got = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setPrec((53u32 : stdgo.GoUInt));
@:check2r _got.sqrt(stdgo._internal.math.big.Big_newFloat.newFloat(_r));
var _want = stdgo._internal.math.big.Big_newFloat.newFloat(stdgo._internal.math.Math_sqrt.sqrt(_r));
if (@:check2r _got.cmp(_want) != ((0 : stdgo.GoInt))) {
                    @:check2r _t.fatalf(("Sqrt(%g) =\n got %g;\nwant %g" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                };
                _i++;
            };
        };
    }
