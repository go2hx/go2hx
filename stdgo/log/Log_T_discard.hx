package stdgo.log;
@:structInit @:using(stdgo.log.Log.T_discard_static_extension) abstract T_discard(stdgo._internal.log.Log_T_discard.T_discard) from stdgo._internal.log.Log_T_discard.T_discard to stdgo._internal.log.Log_T_discard.T_discard {
    public function new() this = new stdgo._internal.log.Log_T_discard.T_discard();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
