package stdgo._internal.encoding.csv;
@:keep @:allow(stdgo._internal.encoding.csv.Csv.T_nTimes_asInterface) class T_nTimes_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_t_ntimes.T_nTimes>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.csv.Csv_t_ntimes.T_nTimes> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader_test.go#L570"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader_test.go#L571"
            if ((((@:checkr _r ?? throw "null pointer dereference")._n <= (0 : stdgo.GoInt) : Bool) || ((@:checkr _r ?? throw "null pointer dereference")._s == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader_test.go#L572"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo._internal.io.Io_eof.eOF };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            var _n0 = (_p.__copyTo__(((@:checkr _r ?? throw "null pointer dereference")._s.__slice__((@:checkr _r ?? throw "null pointer dereference")._off) : stdgo.GoString)) : stdgo.GoInt);
            _p = (_p.__slice__(_n0) : stdgo.Slice<stdgo.GoUInt8>);
            _n = (_n + (_n0) : stdgo.GoInt);
            (@:checkr _r ?? throw "null pointer dereference")._off = ((@:checkr _r ?? throw "null pointer dereference")._off + (_n0) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader_test.go#L578"
            if ((@:checkr _r ?? throw "null pointer dereference")._off == (((@:checkr _r ?? throw "null pointer dereference")._s.length))) {
                (@:checkr _r ?? throw "null pointer dereference")._off = (0 : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader_test.go#L580"
                (@:checkr _r ?? throw "null pointer dereference")._n--;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader_test.go#L582"
            if ((_p.length) == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/csv/reader_test.go#L583"
                return { _0 : _n, _1 : _err };
            };
        };
    }
}
