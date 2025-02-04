package stdgo._internal.encoding.base64;
function testEncoderBuffering(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _input = (stdgo._internal.encoding.base64.Base64__bigtest._bigtest._decoded : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _bs = (1 : stdgo.GoInt);
            while ((_bs <= (12 : stdgo.GoInt) : Bool)) {
                var _bb = (stdgo.Go.setRef((new stdgo._internal.strings.Strings_builder.Builder() : stdgo._internal.strings.Strings_builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
var _encoder = (stdgo._internal.encoding.base64.Base64_newencoder.newEncoder(stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding, stdgo.Go.asInterface(_bb)) : stdgo._internal.io.Io_writecloser.WriteCloser);
{
                    var _pos = (0 : stdgo.GoInt);
                    while ((_pos < (_input.length) : Bool)) {
                        var _end = (_pos + _bs : stdgo.GoInt);
if ((_end > (_input.length) : Bool)) {
                            _end = (_input.length);
                        };
var __tmp__ = _encoder.write((_input.__slice__(_pos, _end) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
stdgo._internal.encoding.base64.Base64__testequal._testEqual(_t, ("Write(%q) gave error %v, want %v" : stdgo.GoString), stdgo.Go.toInterface((_input.__slice__(_pos, _end) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((null : stdgo.Error)));
stdgo._internal.encoding.base64.Base64__testequal._testEqual(_t, ("Write(%q) gave length %v, want %v" : stdgo.GoString), stdgo.Go.toInterface((_input.__slice__(_pos, _end) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_end - _pos : stdgo.GoInt)));
                        _pos = (_pos + (_bs) : stdgo.GoInt);
                    };
                };
var _err = (_encoder.close() : stdgo.Error);
stdgo._internal.encoding.base64.Base64__testequal._testEqual(_t, ("Close gave error %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((null : stdgo.Error)));
stdgo._internal.encoding.base64.Base64__testequal._testEqual(_t, ("Encoding/%d of %q = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_bs), stdgo.Go.toInterface(stdgo._internal.encoding.base64.Base64__bigtest._bigtest._decoded), stdgo.Go.toInterface((@:check2r _bb.string() : stdgo.GoString)), stdgo.Go.toInterface(stdgo._internal.encoding.base64.Base64__bigtest._bigtest._encoded));
                _bs++;
            };
        };
    }
