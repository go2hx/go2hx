package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_note_static_extension) abstract T_note(stdgo._internal.runtime.Runtime_T_note.T_note) from stdgo._internal.runtime.Runtime_T_note.T_note to stdgo._internal.runtime.Runtime_T_note.T_note {
    public function new() this = new stdgo._internal.runtime.Runtime_T_note.T_note();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
