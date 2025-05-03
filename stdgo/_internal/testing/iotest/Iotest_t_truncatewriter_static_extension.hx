package stdgo._internal.testing.iotest;
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T_truncateWriter_asInterface) class T_truncateWriter_static_extension {
    @:keep
    @:tdfield
    static public function write( _t:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_truncatewriter.T_truncateWriter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_truncatewriter.T_truncateWriter> = _t;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/writer.go#L21"
        if (((@:checkr _t ?? throw "null pointer dereference")._n <= (0i64 : stdgo.GoInt64) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/testing/iotest/writer.go#L22"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_p.length), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        _n = (_p.length);
        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/writer.go#L26"
        if (((_n : stdgo.GoInt64) > (@:checkr _t ?? throw "null pointer dereference")._n : Bool)) {
            _n = ((@:checkr _t ?? throw "null pointer dereference")._n : stdgo.GoInt);
        };
        {
            var __tmp__ = (@:checkr _t ?? throw "null pointer dereference")._w.write((_p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>));
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        (@:checkr _t ?? throw "null pointer dereference")._n = ((@:checkr _t ?? throw "null pointer dereference")._n - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/writer.go#L31"
        if (_err == null) {
            _n = (_p.length);
        };
        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/writer.go#L34"
        return { _0 : _n, _1 : _err };
    }
}
