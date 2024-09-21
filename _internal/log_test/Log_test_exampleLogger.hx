package _internal.log_test;
function exampleLogger():Void {
        var __0:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer), __1:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger> = stdgo._internal.log.Log_new_.new_(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), ("logger: " : stdgo.GoString), (16 : stdgo.GoInt));
var _logger = __1, _buf = __0;
        _logger.print(stdgo.Go.toInterface(("Hello, log file!" : stdgo.GoString)));
        stdgo._internal.fmt.Fmt_print.print(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>))));
    }
