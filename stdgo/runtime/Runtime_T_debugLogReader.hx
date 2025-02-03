package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_debugLogReader_static_extension) abstract T_debugLogReader(stdgo._internal.runtime.Runtime_T_debugLogReader.T_debugLogReader) from stdgo._internal.runtime.Runtime_T_debugLogReader.T_debugLogReader to stdgo._internal.runtime.Runtime_T_debugLogReader.T_debugLogReader {
    public function new() this = new stdgo._internal.runtime.Runtime_T_debugLogReader.T_debugLogReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
