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
function testSequentialDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        {};
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_i)).__copy__() : stdgo.GoString);
{
                    var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(_s)) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _t.error(stdgo.Go.toInterface(("encoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
                _i++;
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
var _s:stdgo.GoString = ("" : stdgo.GoString);
var _s__pointer__ = stdgo.Go.pointer(_s);
var _s__pointer__ = stdgo.Go.pointer(_s);
var _s__pointer__ = stdgo.Go.pointer(_s);
var _s__pointer__ = stdgo.Go.pointer(_s);
{
                    var _err = (@:check2r _dec.decode(stdgo.Go.toInterface(_s__pointer__)) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _t.fatal(stdgo.Go.toInterface(("decoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
if (_s != (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_i)))) {
                    @:check2r _t.fatalf(("decode expected %d got %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_s));
                };
                _i++;
            };
        };
    }
