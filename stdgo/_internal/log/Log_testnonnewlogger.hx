package stdgo._internal.log;
function testNonNewLogger(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _l:stdgo._internal.log.Log_logger.Logger = ({} : stdgo._internal.log.Log_logger.Logger);
        @:check2 _l.setOutput(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        @:check2 _l.print(stdgo.Go.toInterface(("hello" : stdgo.GoString)));
    }
