package stdgo.testing;
@:structInit @:using(stdgo.testing.Testing.T_discard_static_extension) abstract T_discard(stdgo._internal.testing.Testing_T_discard.T_discard) from stdgo._internal.testing.Testing_T_discard.T_discard to stdgo._internal.testing.Testing_T_discard.T_discard {
    public function new() this = new stdgo._internal.testing.Testing_T_discard.T_discard();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
