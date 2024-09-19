package _internal.log_test;
function exampleLogger_Output():Void {
        var __0:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer), __1:stdgo.Ref<stdgo._internal.log.Log_Logger.Logger> = stdgo._internal.log.Log_new_.new_(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), ("INFO: " : stdgo.GoString), (16 : stdgo.GoInt)), __2:stdgo.GoString -> Void = function(_info:stdgo.GoString):Void {
            _logger.output((2 : stdgo.GoInt), _info?.__copy__());
        };
var _infof = __2, _logger = __1, _buf = __0;
        _infof(("Hello world" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_print.print(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>))));
    }
