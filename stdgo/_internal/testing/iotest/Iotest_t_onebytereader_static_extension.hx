package stdgo._internal.testing.iotest;
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T_oneByteReader_asInterface) class T_oneByteReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_onebytereader.T_oneByteReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_onebytereader.T_oneByteReader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L24"
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L25"
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/reader.go#L27"
        return (@:checkr _r ?? throw "null pointer dereference")._r.read((_p.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
    }
}
