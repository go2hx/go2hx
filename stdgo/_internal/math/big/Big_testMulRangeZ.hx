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
function testMulRangeZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tmp:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
        for (_i => _r in stdgo._internal.math.big.Big__mulRangesN._mulRangesN) {
            var _prod = ((@:check2r @:check2 _tmp.mulRange((_r._a : stdgo.GoInt64), (_r._b : stdgo.GoInt64)).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_prod != (_r._prod)) {
                @:check2r _t.errorf(("#%da: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_prod), stdgo.Go.toInterface(_r._prod));
            };
        };
        for (_i => _r in stdgo._internal.math.big.Big__mulRangesZ._mulRangesZ) {
            var _prod = ((@:check2r @:check2 _tmp.mulRange(_r._a, _r._b).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_prod != (_r._prod)) {
                @:check2r _t.errorf(("#%db: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_prod), stdgo.Go.toInterface(_r._prod));
            };
        };
    }
