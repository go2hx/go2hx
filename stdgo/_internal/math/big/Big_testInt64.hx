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
function testInt64(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _s in stdgo._internal.math.big.Big__int64Tests._int64Tests) {
            var _x:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
            var __tmp__ = @:check2 _x.setString(_s?.__copy__(), (0 : stdgo.GoInt)), __9:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                @:check2r _t.errorf(("SetString(%s, 0) failed" : stdgo.GoString), stdgo.Go.toInterface(_s));
                continue;
            };
            var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt(_s?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _want:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (stdgo.Go.toInterface((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>) ?? throw "null pointer dereference").err) == (stdgo.Go.toInterface(stdgo._internal.strconv.Strconv_errRange.errRange))) {
                    if (@:check2 _x.isInt64()) {
                        @:check2r _t.errorf(("IsInt64(%s) succeeded unexpectedly" : stdgo.GoString), stdgo.Go.toInterface(_s));
                    };
                } else {
                    @:check2r _t.errorf(("ParseInt(%s) failed" : stdgo.GoString), stdgo.Go.toInterface(_s));
                };
                continue;
            };
            if (!@:check2 _x.isInt64()) {
                @:check2r _t.errorf(("IsInt64(%s) failed unexpectedly" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
            var _got = (@:check2 _x.int64() : stdgo.GoInt64);
            if (_got != (_want)) {
                @:check2r _t.errorf(("Int64(%s) = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
