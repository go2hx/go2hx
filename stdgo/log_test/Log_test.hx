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

function exampleLogger():Void {
	var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer),
		_logger:Ref<Logger> = stdgo.log.Log.new_(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), Go.str("logger: "), (16 : GoInt));
	_logger.print(Go.toInterface(Go.str("Hello, log file!")));
	stdgo.fmt.Fmt.print((_buf : Ref<stdgo.bytes.Bytes.Buffer>));
}

function exampleLogger_Output():Void {
	var _buf:stdgo.bytes.Bytes.Buffer = ({} : stdgo.bytes.Bytes.Buffer),
		_logger:Ref<Logger> = stdgo.log.Log.new_(Go.asInterface((_buf : Ref<stdgo.bytes.Bytes.Buffer>)), Go.str("INFO: "), (16 : GoInt)),
		_infof:GoString->Void = function(_info:GoString):Void {
			_logger.output((2 : GoInt), _info);
		};
	_infof(Go.str("Hello world"));
	stdgo.fmt.Fmt.print((_buf : Ref<stdgo.bytes.Bytes.Buffer>));
}
