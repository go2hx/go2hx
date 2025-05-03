package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_benchmarkBuf_asInterface) class T_benchmarkBuf_static_extension {
    @:keep
    @:tdfield
    static public function _reset( _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_benchmarkbuf.T_benchmarkBuf>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_benchmarkbuf.T_benchmarkBuf> = _b;
        (@:checkr _b ?? throw "null pointer dereference")._offset = (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function readByte( _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_benchmarkbuf.T_benchmarkBuf>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_benchmarkbuf.T_benchmarkBuf> = _b;
        var _c = (0 : stdgo.GoUInt8), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L210"
        if (((@:checkr _b ?? throw "null pointer dereference")._offset >= ((@:checkr _b ?? throw "null pointer dereference")._data.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L211"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoUInt8), _1 : stdgo._internal.io.Io_eof.eOF };
                _c = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        _c = (@:checkr _b ?? throw "null pointer dereference")._data[((@:checkr _b ?? throw "null pointer dereference")._offset : stdgo.GoInt)];
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L214"
        (@:checkr _b ?? throw "null pointer dereference")._offset++;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L215"
        return { _0 : _c, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function read( _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_benchmarkbuf.T_benchmarkBuf>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_benchmarkbuf.T_benchmarkBuf> = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _n = _p.__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._data.__slice__((@:checkr _b ?? throw "null pointer dereference")._offset) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L202"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L203"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        (@:checkr _b ?? throw "null pointer dereference")._offset = ((@:checkr _b ?? throw "null pointer dereference")._offset + (_n) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L206"
        return { _0 : _n, _1 : _err };
    }
}
