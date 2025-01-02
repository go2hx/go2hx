package stdgo._internal.log;
function testNonNewLogger(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _l:stdgo._internal.log.Log_Logger.Logger = ({} : stdgo._internal.log.Log_Logger.Logger);
        @:check2 _l.setOutput(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        @:check2 _l.print(stdgo.Go.toInterface(("hello" : stdgo.GoString)));
    }
