package stdgo.internal.fuzz;
@:structInit @:using(stdgo.internal.fuzz.Fuzz.MalformedCorpusError_static_extension) abstract MalformedCorpusError(stdgo._internal.internal.fuzz.Fuzz_MalformedCorpusError.MalformedCorpusError) from stdgo._internal.internal.fuzz.Fuzz_MalformedCorpusError.MalformedCorpusError to stdgo._internal.internal.fuzz.Fuzz_MalformedCorpusError.MalformedCorpusError {
    public var _errs(get, set) : Array<stdgo.Error>;
    function get__errs():Array<stdgo.Error> return [for (i in this._errs) i];
    function set__errs(v:Array<stdgo.Error>):Array<stdgo.Error> {
        this._errs = ([for (i in v) (i : stdgo.Error)] : stdgo.Slice<stdgo.Error>);
        return v;
    }
    public function new(?_errs:Array<stdgo.Error>) this = new stdgo._internal.internal.fuzz.Fuzz_MalformedCorpusError.MalformedCorpusError(([for (i in _errs) (i : stdgo.Error)] : stdgo.Slice<stdgo.Error>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
