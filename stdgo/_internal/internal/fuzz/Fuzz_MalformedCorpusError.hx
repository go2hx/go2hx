package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_MalformedCorpusError_static_extension.MalformedCorpusError_static_extension) class MalformedCorpusError {
    public var _errs : stdgo.Slice<stdgo.Error> = (null : stdgo.Slice<stdgo.Error>);
    public function new(?_errs:stdgo.Slice<stdgo.Error>) {
        if (_errs != null) this._errs = _errs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MalformedCorpusError(_errs);
    }
}
