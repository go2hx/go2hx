package stdgo._internal.go.printer;
@:keep @:allow(stdgo._internal.go.printer.Printer.T_limitWriter_asInterface) class T_limitWriter_static_extension {
    @:keep
    @:tdfield
    static public function write( _l:stdgo.Ref<stdgo._internal.go.printer.Printer_t_limitwriter.T_limitWriter>, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.go.printer.Printer_t_limitwriter.T_limitWriter> = _l;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _n = (_buf.length);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L614"
        if ((_n >= (@:checkr _l ?? throw "null pointer dereference")._remaining : Bool)) {
            _n = (@:checkr _l ?? throw "null pointer dereference")._remaining;
            _err = stdgo._internal.io.Io_eof.eOF;
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L617"
            (@:checkr _l ?? throw "null pointer dereference")._errCount++;
        };
        (@:checkr _l ?? throw "null pointer dereference")._remaining = ((@:checkr _l ?? throw "null pointer dereference")._remaining - (_n) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L620"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
