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
function testGetString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        for (_i => _test in stdgo._internal.math.big.Big__stringTests._stringTests) {
            if (!_test._ok) {
                continue;
            };
            @:check2r _z.setInt64(_test._val);
            if (_test._base == ((10 : stdgo.GoInt))) {
                {
                    var _got = ((@:check2r _z.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (_got != (_test._out)) {
                        @:check2r _t.errorf(("#%da got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._out));
                    };
                };
            };
            var _f = (stdgo._internal.math.big.Big__format._format(_test._base)?.__copy__() : stdgo.GoString);
            var _got = (stdgo._internal.fmt.Fmt_sprintf.sprintf(_f?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)))?.__copy__() : stdgo.GoString);
            if (_f == (("%d" : stdgo.GoString))) {
                if (_got != (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_test._val)))) {
                    @:check2r _t.errorf(("#%db got %s; want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._val));
                };
            } else {
                if (_got != (_test._out)) {
                    @:check2r _t.errorf(("#%dc got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._out));
                };
            };
        };
    }
