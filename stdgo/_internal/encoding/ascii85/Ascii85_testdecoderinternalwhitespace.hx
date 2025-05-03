package stdgo._internal.encoding.ascii85;
function testDecoderInternalWhitespace(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s = ((stdgo._internal.strings.Strings_repeat.repeat((" " : stdgo.GoString), (2048 : stdgo.GoInt)) + ("z" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.io.Io_readall.readAll(stdgo._internal.encoding.ascii85.Ascii85_newdecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(_s?.__copy__())))), _decoded:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L208"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L209"
            _t.errorf(("Decode gave error %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L211"
        {
            var _want = ((stdgo.Go.str(0, 0, 0, 0) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
            if (!stdgo._internal.bytes.Bytes_equal.equal(_want, _decoded)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/ascii85/ascii85_test.go#L212"
                _t.errorf(("Decode failed: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_decoded), stdgo.Go.toInterface(_want));
            };
        };
    }
