package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_debugLogWriter_static_extension) abstract T_debugLogWriter(stdgo._internal.runtime.Runtime_T_debugLogWriter.T_debugLogWriter) from stdgo._internal.runtime.Runtime_T_debugLogWriter.T_debugLogWriter to stdgo._internal.runtime.Runtime_T_debugLogWriter.T_debugLogWriter {
    public function new() this = new stdgo._internal.runtime.Runtime_T_debugLogWriter.T_debugLogWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
