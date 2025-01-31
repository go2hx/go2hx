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
function testFuzz(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (!stdgo._internal.encoding.gob.Gob__doFuzzTests._doFuzzTests.value) {
            @:check2r _t.skipf(("disabled; run with -gob.fuzz to enable" : stdgo.GoString));
        };
        var _input = (new stdgo.Slice<stdgo.AnyInterface>(8, 8, ...[stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoInt))), stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoFloat32))), stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoFloat64))), stdgo.Go.toInterface(stdgo.Go.pointer(new stdgo.GoComplex128(0, 0))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct((255 : stdgo.GoUInt8)) : stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_ArrayStruct.ArrayStruct() : stdgo._internal.encoding.gob.Gob_ArrayStruct.ArrayStruct)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ArrayStruct.ArrayStruct>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct(("hello" : stdgo.GoString)) : stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_GobTest1.GobTest1((0 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct(("hello" : stdgo.GoString)) : stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct>)) : stdgo._internal.encoding.gob.Gob_GobTest1.GobTest1)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_GobTest1.GobTest1>)))]) : stdgo.Slice<stdgo.AnyInterface>);
        stdgo._internal.encoding.gob.Gob__testFuzz._testFuzz(_t, stdgo._internal.time.Time_now.now().unixNano(), (100 : stdgo.GoInt), ...(_input : Array<stdgo.AnyInterface>));
    }
