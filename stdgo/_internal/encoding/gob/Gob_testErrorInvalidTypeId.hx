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
function testErrorInvalidTypeId(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _data = (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(1 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _d = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(_data)));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (2 : stdgo.GoInt) : Bool)) {
                var _foo:stdgo._internal.encoding.gob.Gob_T_emptyStruct.T_emptyStruct = ({} : stdgo._internal.encoding.gob.Gob_T_emptyStruct.T_emptyStruct);
var _err = (@:check2r _d.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_foo) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_emptyStruct.T_emptyStruct>)))) : stdgo.Error);
if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__errBadType._errBadType))) {
                    @:check2r _t.fatalf(("decode: expected %s, got %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__errBadType._errBadType), stdgo.Go.toInterface(_err));
                };
                _i++;
            };
        };
    }
