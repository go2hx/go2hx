package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
function testMapBug1(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _in = ((({
            final x = new stdgo.GoMap.GoStringMap<stdgo._internal.encoding.gob.Gob_Bug1Elem.Bug1Elem>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.encoding.gob.Gob_Bug1Elem.Bug1Elem);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.gob.Gob_Bug1Elem.Bug1Elem>) : stdgo._internal.encoding.gob.Gob_Bug1StructMap.Bug1StructMap) : stdgo._internal.encoding.gob.Gob_Bug1StructMap.Bug1StructMap);
        _in[("val1" : stdgo.GoString)] = (new stdgo._internal.encoding.gob.Gob_Bug1Elem.Bug1Elem(("elem1" : stdgo.GoString), (1 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_Bug1Elem.Bug1Elem);
        _in[("val2" : stdgo.GoString)] = (new stdgo._internal.encoding.gob.Gob_Bug1Elem.Bug1Elem(("elem2" : stdgo.GoString), (2 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_Bug1Elem.Bug1Elem);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(_in)) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _out = ((({
            final x = new stdgo.GoMap.GoStringMap<stdgo._internal.encoding.gob.Gob_Bug1Elem.Bug1Elem>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.encoding.gob.Gob_Bug1Elem.Bug1Elem);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.gob.Gob_Bug1Elem.Bug1Elem>) : stdgo._internal.encoding.gob.Gob_Bug1StructMap.Bug1StructMap) : stdgo._internal.encoding.gob.Gob_Bug1StructMap.Bug1StructMap);
        _err = @:check2r _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug1StructMap.Bug1StructMap>)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_out))) {
            @:check2r _t.errorf(("mismatch: %v %v" : stdgo.GoString), stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_out));
        };
    }
