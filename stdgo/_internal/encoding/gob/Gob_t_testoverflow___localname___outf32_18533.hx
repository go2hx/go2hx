package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outf32_18533_static_extension.T_testOverflow___localname___outf32_18533_static_extension) class T_testOverflow___localname___outf32_18533 {
    public var maxf : stdgo.GoFloat32 = 0;
    public var minf : stdgo.GoFloat32 = 0;
    public function new(?maxf:stdgo.GoFloat32, ?minf:stdgo.GoFloat32) {
        if (maxf != null) this.maxf = maxf;
        if (minf != null) this.minf = minf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testOverflow___localname___outf32_18533(maxf, minf);
    }
}
