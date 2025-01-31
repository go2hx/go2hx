package stdgo._internal.encoding.base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.strconv.Strconv;
function testDecoderBuffering(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _bs = (1 : stdgo.GoInt);
            while ((_bs <= (12 : stdgo.GoInt) : Bool)) {
                var _decoder = (stdgo._internal.encoding.base64.Base64_newDecoder.newDecoder(stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding, stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(stdgo._internal.encoding.base64.Base64__bigtest._bigtest._encoded.__copy__()))) : stdgo._internal.io.Io_Reader.Reader);
var _buf = (new stdgo.Slice<stdgo.GoUInt8>(((stdgo._internal.encoding.base64.Base64__bigtest._bigtest._decoded.length) + (12 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
var _total:stdgo.GoInt = (0 : stdgo.GoInt);
var _n:stdgo.GoInt = (0 : stdgo.GoInt);
var _err:stdgo.Error = (null : stdgo.Error);
{
                    _total = (0 : stdgo.GoInt);
                    while (((_total < (stdgo._internal.encoding.base64.Base64__bigtest._bigtest._decoded.length) : Bool) && (_err == null) : Bool)) {
                        {
                            var __tmp__ = _decoder.read((_buf.__slice__(_total, (_total + _bs : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                            _n = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        _total = (_total + (_n) : stdgo.GoInt);
                    };
                };
if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF)) : Bool)) {
                    @:check2r _t.errorf(("Read from %q at pos %d = %d, unexpected error %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.base64.Base64__bigtest._bigtest._encoded), stdgo.Go.toInterface(_total), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
                };
stdgo._internal.encoding.base64.Base64__testEqual._testEqual(_t, ("Decoding/%d of %q = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_bs), stdgo.Go.toInterface(stdgo._internal.encoding.base64.Base64__bigtest._bigtest._encoded), stdgo.Go.toInterface(((_buf.__slice__((0 : stdgo.GoInt), _total) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.encoding.base64.Base64__bigtest._bigtest._decoded));
                _bs++;
            };
        };
    }
