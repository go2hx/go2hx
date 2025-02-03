package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_blockRecord_static_extension) abstract T_blockRecord(stdgo._internal.runtime.Runtime_T_blockRecord.T_blockRecord) from stdgo._internal.runtime.Runtime_T_blockRecord.T_blockRecord to stdgo._internal.runtime.Runtime_T_blockRecord.T_blockRecord {
    public function new() this = new stdgo._internal.runtime.Runtime_T_blockRecord.T_blockRecord();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
