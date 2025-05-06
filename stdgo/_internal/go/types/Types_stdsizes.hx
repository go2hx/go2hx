package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_stdsizes_static_extension.StdSizes_static_extension) class StdSizes {
    public var wordSize : stdgo.GoInt64 = 0;
    public var maxAlign : stdgo.GoInt64 = 0;
    public function new(?wordSize:stdgo.GoInt64, ?maxAlign:stdgo.GoInt64) {
        if (wordSize != null) this.wordSize = wordSize;
        if (maxAlign != null) this.maxAlign = maxAlign;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StdSizes(wordSize, maxAlign);
    }
}
