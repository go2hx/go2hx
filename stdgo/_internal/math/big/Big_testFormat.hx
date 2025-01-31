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
function testFormat(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _test in stdgo._internal.math.big.Big__formatTests._formatTests) {
            var _x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
            if (_test._input != (("<nil>" : stdgo.GoString))) {
                var _ok:Bool = false;
                {
                    var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_test._input?.__copy__(), (0 : stdgo.GoInt));
                    _x = @:tmpset0 __tmp__._0;
                    _ok = @:tmpset0 __tmp__._1;
                };
                if (!_ok) {
                    @:check2r _t.errorf(("#%d failed reading input %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._input));
                };
            };
            var _output = (stdgo._internal.fmt.Fmt_sprintf.sprintf(_test._format?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)))?.__copy__() : stdgo.GoString);
            if (_output != (_test._output)) {
                @:check2r _t.errorf(("#%d got %q; want %q, {%q, %q, %q}" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_output), stdgo.Go.toInterface(_test._output), stdgo.Go.toInterface(_test._input), stdgo.Go.toInterface(_test._format), stdgo.Go.toInterface(_test._output));
            };
        };
    }
