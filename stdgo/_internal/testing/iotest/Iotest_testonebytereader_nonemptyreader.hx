package stdgo._internal.testing.iotest;
function testOneByteReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _msg = (("Hello, World!" : stdgo.GoString) : stdgo.GoString);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        @:check2r _buf.writeString(_msg?.__copy__());
        var _obr = (stdgo._internal.testing.iotest.Iotest_onebytereader.oneByteReader(stdgo.Go.asInterface(_buf)) : stdgo._internal.io.Io_reader.Reader);
        var _b:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = _obr.read(_b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_err != null) || (_n != (0 : stdgo.GoInt)) : Bool)) {
            @:check2r _t.errorf(("Empty buffer read returned n=%d err=%v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        _b = (new stdgo.Slice<stdgo.GoUInt8>((3 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _got = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        {
            var _i = (0 : stdgo.GoInt);
            while (true) {
                {
                    var __tmp__ = _obr.read(_b);
                    _n = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
if (_err != null) {
                    break;
                };
{
                    var __0 = (_n : stdgo.GoInt), __1 = (1 : stdgo.GoInt);
var _w = __1, _g = __0;
                    if (_g != (_w)) {
                        @:check2r _t.errorf(("Iteration #%d read %d bytes, want %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
                    };
                };
@:check2r _got.write((_b.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
                _i++;
            };
        };
        {
            var __0 = (_err : stdgo.Error), __1 = (stdgo._internal.io.Io_eof.eOF : stdgo.Error);
var _w = __1, _g = __0;
            if (stdgo.Go.toInterface(_g) != (stdgo.Go.toInterface(_w))) {
                @:check2r _t.errorf(("Unexpected error after reading all bytes\n\tGot:  %v\n\tWant: %v" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
            };
        };
        {
            var __0 = ((@:check2r _got.string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = (("Hello, World!" : stdgo.GoString) : stdgo.GoString);
var _w = __1, _g = __0;
            if (_g != (_w)) {
                @:check2r _t.errorf(("Read mismatch\n\tGot:  %q\n\tWant: %q" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
            };
        };
    }
