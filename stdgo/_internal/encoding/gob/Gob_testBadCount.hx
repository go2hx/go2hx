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
function testBadCount(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>(6, 6, ...[(251 : stdgo.GoUInt8), (165 : stdgo.GoUInt8), (130 : stdgo.GoUInt8), (47 : stdgo.GoUInt8), (202 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _err = (@:check2r stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(_b))).decode((null : stdgo.AnyInterface)) : stdgo.Error);
            if (_err == null) {
                @:check2r _t.error(stdgo.Go.toInterface(("expected error from bad count" : stdgo.GoString)));
            } else if (_err.error() != (stdgo._internal.encoding.gob.Gob__errBadCount._errBadCount.error())) {
                @:check2r _t.error(stdgo.Go.toInterface(("expected bad count error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
    }
