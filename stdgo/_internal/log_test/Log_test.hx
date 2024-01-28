package stdgo._internal.log_test;
import stdgo._internal.log.Log;
function exampleLogger():Void {
        var __0:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer), __1:stdgo.Ref<stdgo._internal.log.Log.Logger> = stdgo._internal.log.Log.new_(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), ("logger: " : stdgo.GoString), (16 : stdgo.GoInt)), _logger:stdgo.Ref<stdgo._internal.log.Log.Logger> = __1, _buf:stdgo._internal.bytes.Bytes.Buffer = __0;
        _logger.print(stdgo.Go.toInterface(("Hello, log file!" : stdgo.GoString)));
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>))));
    }
function exampleLogger_Output():Void {
        var __0:stdgo._internal.bytes.Bytes.Buffer = ({} : stdgo._internal.bytes.Bytes.Buffer), __1:stdgo.Ref<stdgo._internal.log.Log.Logger> = stdgo._internal.log.Log.new_(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)), ("INFO: " : stdgo.GoString), (16 : stdgo.GoInt)), __2:stdgo.GoString -> Void = function(_info:stdgo.GoString):Void {
            _logger.output((2 : stdgo.GoInt), _info?.__copy__());
        }, _infof:stdgo.GoString -> Void = __2, _logger:stdgo.Ref<stdgo._internal.log.Log.Logger> = __1, _buf:stdgo._internal.bytes.Bytes.Buffer = __0;
        _infof(("Hello world" : stdgo.GoString));
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>))));
    }
