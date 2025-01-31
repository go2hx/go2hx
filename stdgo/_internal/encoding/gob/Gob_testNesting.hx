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
function testNesting(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _rt = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135>);
        (@:checkr _rt ?? throw "null pointer dereference").a = ("level1" : stdgo.GoString);
        (@:checkr _rt ?? throw "null pointer dereference").next = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135>);
        (@:checkr (@:checkr _rt ?? throw "null pointer dereference").next ?? throw "null pointer dereference").a = ("level2" : stdgo.GoString);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        @:check2r stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_rt)));
        var _drt:stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135 = ({} : stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135);
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _err = (@:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_drt) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135>)))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("decoder error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_drt.a != ((@:checkr _rt ?? throw "null pointer dereference").a)) {
            @:check2r _t.errorf(("nesting: encode expected %v got %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((_rt : stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135))), stdgo.Go.toInterface(stdgo.Go.asInterface(_drt)));
        };
        if ((_drt.next == null || (_drt.next : Dynamic).__nil__)) {
            @:check2r _t.errorf(("nesting: recursion failed" : stdgo.GoString));
        };
        if ((@:checkr _drt.next ?? throw "null pointer dereference").a != ((@:checkr (@:checkr _rt ?? throw "null pointer dereference").next ?? throw "null pointer dereference").a)) {
            @:check2r _t.errorf(("nesting: encode expected %v got %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(((@:checkr _rt ?? throw "null pointer dereference").next : stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135))), stdgo.Go.toInterface(stdgo.Go.asInterface((_drt.next : stdgo._internal.encoding.gob.Gob_T_testNesting___localname___RT_19135.T_testNesting___localname___RT_19135))));
        };
    }
