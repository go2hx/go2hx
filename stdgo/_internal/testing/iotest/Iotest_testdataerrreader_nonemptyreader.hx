package stdgo._internal.testing.iotest;
function testDataErrReader_nonEmptyReader(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _msg = (("Hello, World!" : stdgo.GoString) : stdgo.GoString);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        @:check2r _buf.writeString(_msg?.__copy__());
        var _der = (stdgo._internal.testing.iotest.Iotest_dataerrreader.dataErrReader(stdgo.Go.asInterface(_buf)) : stdgo._internal.io.Io_reader.Reader);
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((3 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _got = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err:stdgo.Error = (null : stdgo.Error);
        while (true) {
            {
                var __tmp__ = _der.read(_b);
                _n = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            @:check2r _got.write((_b.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
            if (_err != null) {
                break;
            };
        };
        if (((stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) || (_n == (0 : stdgo.GoInt)) : Bool)) {
            @:check2r _t.errorf(("Last Read returned n=%d err=%v" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        {
            var __0 = ((@:check2r _got.string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = (("Hello, World!" : stdgo.GoString) : stdgo.GoString);
var _w = __1, _g = __0;
            if (_g != (_w)) {
                @:check2r _t.errorf(("Read mismatch\n\tGot:  %q\n\tWant: %q" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
            };
        };
    }
