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
function testLocalRemoteTypesMismatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _testData = (new stdgo.Slice<stdgo.GoUInt8>(14, 14, ...[
(9 : stdgo.GoUInt8),
(127 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(128 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _v:stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_emptyStruct.T_emptyStruct>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_emptyStruct.T_emptyStruct>>);
        var _buf = stdgo._internal.bytes.Bytes_newBuffer.newBuffer(_testData);
        var _err = (@:check2r stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_buf)).decode(stdgo.Go.toInterface((stdgo.Go.setRef(_v) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_emptyStruct.T_emptyStruct>>>))) : stdgo.Error);
        if (_err == null) {
            @:check2r _t.error(stdgo.Go.toInterface(("Encode/Decode: expected error but got err == nil" : stdgo.GoString)));
        };
    }
