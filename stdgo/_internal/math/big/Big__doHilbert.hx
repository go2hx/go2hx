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
function _doHilbert(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _n:stdgo.GoInt):Void {
        var _a = stdgo._internal.math.big.Big__newHilbert._newHilbert(_n);
        var _b = stdgo._internal.math.big.Big__newInverseHilbert._newInverseHilbert(_n);
        var i = stdgo._internal.math.big.Big__newUnit._newUnit(_n);
        var _ab = @:check2r _a._mul(_b);
        if (!@:check2r _ab._eql(i)) {
            if ((_t == null || (_t : Dynamic).__nil__)) {
                throw stdgo.Go.toInterface(("Hilbert failed" : stdgo.GoString));
            };
            @:check2r _t.errorf(("a   = %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a)));
            @:check2r _t.errorf(("b   = %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_b)));
            @:check2r _t.errorf(("a*b = %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ab)));
            @:check2r _t.errorf(("I   = %s\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(i)));
        };
    }
