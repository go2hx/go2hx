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
function testIgnoreRecursiveType(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _data = (new stdgo.Slice<stdgo.GoUInt8>(38, 38, ...[
(29 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(211 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(14 : stdgo.GoUInt8),
(114 : stdgo.GoUInt8),
(101 : stdgo.GoUInt8),
(99 : stdgo.GoUInt8),
(117 : stdgo.GoUInt8),
(114 : stdgo.GoUInt8),
(115 : stdgo.GoUInt8),
(105 : stdgo.GoUInt8),
(118 : stdgo.GoUInt8),
(101 : stdgo.GoUInt8),
(83 : stdgo.GoUInt8),
(108 : stdgo.GoUInt8),
(105 : stdgo.GoUInt8),
(99 : stdgo.GoUInt8),
(101 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(212 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(212 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(7 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(212 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(_data)));
        var _err = (@:check2r _dec.decode((null : stdgo.AnyInterface)) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
    }
