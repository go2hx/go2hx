package stdgo.log_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.log.Log;
function exampleLogger():Void {
        var __0:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer), __1:Ref<stdgo.log.Log.Logger> = stdgo.log.Log.new_(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.bytes.Bytes.Buffer>)), ("logger: " : GoString), (16 : GoInt)), _logger:Ref<stdgo.log.Log.Logger> = __1, _buf:stdgo.bytes.Bytes.Buffer = __0;
        _logger.print(Go.toInterface(("Hello, log file!" : GoString)));
        stdgo.fmt.Fmt.print(Go.toInterface(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.bytes.Bytes.Buffer>))));
    }
function exampleLogger_Output():Void {
        var __0:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer), __1:Ref<stdgo.log.Log.Logger> = stdgo.log.Log.new_(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.bytes.Bytes.Buffer>)), ("INFO: " : GoString), (16 : GoInt)), __2:GoString -> Void = function(_info:GoString):Void {
            _logger.output((2 : GoInt), _info);
        }, _infof:GoString -> Void = __2, _logger:Ref<stdgo.log.Log.Logger> = __1, _buf:stdgo.bytes.Bytes.Buffer = __0;
        _infof(("Hello world" : GoString));
        stdgo.fmt.Fmt.print(Go.toInterface(Go.asInterface((Go.setRef(_buf) : Ref<stdgo.bytes.Bytes.Buffer>))));
    }
