package stdgo._internal.log;
function benchmarkPrintlnNoFlags(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {};
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _l = stdgo._internal.log.Log_new_.new_(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L244"
        _b.reportAllocs();
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L245"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L246"
                _buf.reset();
//"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L247"
                _l.println(stdgo.Go.toInterface(("test" : stdgo.GoString)));
                _i++;
            };
        };
    }
