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
function testDenomRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x = stdgo._internal.math.big.Big_newRat.newRat((1i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64));
        {};
        var _c = (new stdgo.Chan<Bool>((3 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (3 : stdgo.GoInt) : Bool)) {
                stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        @:check2r _x.denom();
                        @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).setRat(_x);
                        _c.__send__(true);
                    };
                    a();
                }));
                _i++;
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (3 : stdgo.GoInt) : Bool)) {
                _c.__get__();
                _i++;
            };
        };
    }
