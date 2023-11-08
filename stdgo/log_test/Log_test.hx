package stdgo.log_test;
import stdgo.log.Log;
function exampleLogger():Void {
        var __0:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer), __1:stdgo.StdGoTypes.Ref<stdgo.log.Log.Logger> = stdgo.log.Log.new_(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)), ("logger: " : stdgo.GoString), (16 : stdgo.StdGoTypes.GoInt)), _logger:stdgo.StdGoTypes.Ref<stdgo.log.Log.Logger> = __1, _buf:stdgo.bytes.Bytes.Buffer = __0;
        _logger.print(stdgo.Go.toInterface(("Hello, log file!" : stdgo.GoString)));
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>))));
    }
function exampleLogger_Output():Void {
        var __0:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer), __1:stdgo.StdGoTypes.Ref<stdgo.log.Log.Logger> = stdgo.log.Log.new_(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)), ("INFO: " : stdgo.GoString), (16 : stdgo.StdGoTypes.GoInt)), __2:stdgo.GoString -> Void = function(_info:stdgo.GoString):Void {
            _logger.output((2 : stdgo.StdGoTypes.GoInt), _info);
        }, _infof:stdgo.GoString -> Void = __2, _logger:stdgo.StdGoTypes.Ref<stdgo.log.Log.Logger> = __1, _buf:stdgo.bytes.Bytes.Buffer = __0;
        _infof(("Hello world" : stdgo.GoString));
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>))));
    }
