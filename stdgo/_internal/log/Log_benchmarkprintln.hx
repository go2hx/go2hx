package stdgo._internal.log;
function benchmarkPrintln(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {};
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _l = stdgo._internal.log.Log_new_.new_(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (3 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L233"
        _b.reportAllocs();
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L234"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L235"
                _buf.reset();
//"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L236"
                _l.println(stdgo.Go.toInterface(("test" : stdgo.GoString)));
                _i++;
            };
        };
    }
