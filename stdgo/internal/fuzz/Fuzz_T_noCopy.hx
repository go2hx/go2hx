package stdgo.internal.fuzz;
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_noCopy_static_extension) abstract T_noCopy(stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy) from stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy to stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy {
    public function new() this = new stdgo._internal.internal.fuzz.Fuzz_T_noCopy.T_noCopy();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
