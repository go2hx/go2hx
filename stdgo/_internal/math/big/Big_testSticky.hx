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
function testSticky(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _test in stdgo._internal.math.big.Big__stickyTests._stickyTests) {
            var _x = (stdgo._internal.math.big.Big__natFromString._natFromString(_test._x?.__copy__()) : stdgo._internal.math.big.Big_T_nat.T_nat);
            {
                var _got = (_x._sticky(_test._i) : stdgo.GoUInt);
                if (_got != (_test._want)) {
                    @:check2r _t.errorf(("#%d: %s.sticky(%d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
            if (_test._want == ((1u32 : stdgo.GoUInt))) {
                {
                    var _d = ((1u32 : stdgo.GoUInt) : stdgo.GoUInt);
                    while ((_d <= (3u32 : stdgo.GoUInt) : Bool)) {
                        {
                            var _got = (_x._sticky((_test._i + _d : stdgo.GoUInt)) : stdgo.GoUInt);
                            if (_got != ((1u32 : stdgo.GoUInt))) {
                                @:check2r _t.errorf(("#%d: %s.sticky(%d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface((_test._i + _d : stdgo.GoUInt)), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((1 : stdgo.GoInt)));
                            };
                        };
                        _d++;
                    };
                };
            };
        };
    }
