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
function testRatSetString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tests:stdgo.Slice<stdgo._internal.math.big.Big_StringTest.StringTest> = (null : stdgo.Slice<stdgo._internal.math.big.Big_StringTest.StringTest>);
        _tests = (_tests.__append__(...(stdgo._internal.math.big.Big__setStringTests._setStringTests : Array<stdgo._internal.math.big.Big_StringTest.StringTest>)));
        _tests = (_tests.__append__(...(stdgo._internal.math.big.Big__setStringTests2._setStringTests2 : Array<stdgo._internal.math.big.Big_StringTest.StringTest>)));
        for (_i => _test in _tests) {
            var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Rat.Rat)) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>).setString(_test._in?.__copy__()), _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                if (!_test._ok) {
                    @:check2r _t.errorf(("#%d SetString(%q) expected failure" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in));
                } else if (@:check2r _x.ratString() != (_test._out)) {
                    @:check2r _t.errorf(("#%d SetString(%q) got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(@:check2r _x.ratString()), stdgo.Go.toInterface(_test._out));
                };
            } else {
                if (_test._ok) {
                    @:check2r _t.errorf(("#%d SetString(%q) expected success" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in));
                } else if ((_x != null && ((_x : Dynamic).__nil__ == null || !(_x : Dynamic).__nil__))) {
                    @:check2r _t.errorf(("#%d SetString(%q) got %p want nil" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
                };
            };
        };
    }
