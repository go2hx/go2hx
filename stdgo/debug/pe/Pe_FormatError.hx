package stdgo.debug.pe;
@:structInit @:using(stdgo.debug.pe.Pe.FormatError_static_extension) abstract FormatError(stdgo._internal.debug.pe.Pe_FormatError.FormatError) from stdgo._internal.debug.pe.Pe_FormatError.FormatError to stdgo._internal.debug.pe.Pe_FormatError.FormatError {
    public function new() this = new stdgo._internal.debug.pe.Pe_FormatError.FormatError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
