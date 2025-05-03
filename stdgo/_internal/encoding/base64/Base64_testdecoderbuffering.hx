package stdgo._internal.encoding.base64;
function testDecoderBuffering(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L185"
        {
            var _bs = (1 : stdgo.GoInt);
            while ((_bs <= (12 : stdgo.GoInt) : Bool)) {
                var _decoder = (stdgo._internal.encoding.base64.Base64_newdecoder.newDecoder(stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding, stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(stdgo._internal.encoding.base64.Base64__bigtest._bigtest._encoded.__copy__()))) : stdgo._internal.io.Io_reader.Reader);
var _buf = (new stdgo.Slice<stdgo.GoUInt8>(((stdgo._internal.encoding.base64.Base64__bigtest._bigtest._decoded.length) + (12 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
var _total:stdgo.GoInt = (0 : stdgo.GoInt);
var _n:stdgo.GoInt = (0 : stdgo.GoInt);
var _err:stdgo.Error = (null : stdgo.Error);
//"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L191"
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
//"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L195"
                if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L196"
                    _t.errorf(("Read from %q at pos %d = %d, unexpected error %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.base64.Base64__bigtest._bigtest._encoded), stdgo.Go.toInterface(_total), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
                };
//"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64_test.go#L198"
                stdgo._internal.encoding.base64.Base64__testequal._testEqual(_t, ("Decoding/%d of %q = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_bs), stdgo.Go.toInterface(stdgo._internal.encoding.base64.Base64__bigtest._bigtest._encoded), stdgo.Go.toInterface(((_buf.__slice__((0 : stdgo.GoInt), _total) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.encoding.base64.Base64__bigtest._bigtest._decoded));
                _bs++;
            };
        };
    }
