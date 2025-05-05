package stdgo._internal.log;
function testNonNewLogger(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _l:stdgo._internal.log.Log_logger.Logger = ({} : stdgo._internal.log.Log_logger.Logger);
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L105"
        _l.setOutput(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        //"file:///home/runner/.go/go1.21.3/src/log/log_test.go#L106"
        _l.print(stdgo.Go.toInterface(("hello" : stdgo.GoString)));
    }
