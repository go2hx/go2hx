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
function testFloatMantExpAliasing(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x = stdgo._internal.math.big.Big__makeFloat._makeFloat(("0.5p10" : stdgo.GoString));
        {
            var _e = (@:check2r _x.mantExp(_x) : stdgo.GoInt);
            if (_e != ((10 : stdgo.GoInt))) {
                @:check2r _t.fatalf(("Float.MantExp aliasing error: got %d; want 10" : stdgo.GoString), stdgo.Go.toInterface(_e));
            };
        };
        {
            var _want = stdgo._internal.math.big.Big__makeFloat._makeFloat(("0.5" : stdgo.GoString));
            if (!stdgo._internal.math.big.Big__alike._alike(_x, _want)) {
                @:check2r _t.fatalf(("Float.MantExp aliasing error: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _x.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt))), stdgo.Go.toInterface(@:check2r _want.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt))));
            };
        };
    }
