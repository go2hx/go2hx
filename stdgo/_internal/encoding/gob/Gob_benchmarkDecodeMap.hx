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
function benchmarkDecodeMap(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _count = (1000 : stdgo.GoInt);
        var _m = (({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _count : Bool)) {
                _m[_i] = _i;
                _i++;
            };
        };
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(_m)) : stdgo.Error);
        if (_err != null) {
            @:check2r _b.fatal(stdgo.Go.toInterface(_err));
        };
        var _bbuf = ({ _data : @:check2 _buf.bytes() } : stdgo._internal.encoding.gob.Gob_T_benchmarkBuf.T_benchmarkBuf);
        @:check2r _b.resetTimer();
        @:check2r _b.reportAllocs();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var _rm:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
@:check2 _bbuf._reset();
var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_bbuf) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_benchmarkBuf.T_benchmarkBuf>)));
var _err = (@:check2r _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_rm) : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>))) : stdgo.Error);
if (_err != null) {
                    @:check2r _b.fatal(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                };
                _i++;
            };
        };
    }
