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
function testSignZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _zero:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
        for (__8 => _a in stdgo._internal.math.big.Big__sumZZ._sumZZ) {
            var _s = (@:check2r _a._z.sign() : stdgo.GoInt);
            var _e = (@:check2r _a._z.cmp((stdgo.Go.setRef(_zero) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>)) : stdgo.GoInt);
            if (_s != (_e)) {
                @:check2r _t.errorf(("got %d; want %d for z = %v" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_e), stdgo.Go.toInterface(stdgo.Go.asInterface(_a._z)));
            };
        };
    }
