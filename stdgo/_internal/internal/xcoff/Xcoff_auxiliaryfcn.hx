package stdgo._internal.internal.xcoff;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_auxiliaryfcn_static_extension.AuxiliaryFcn_static_extension) class AuxiliaryFcn {
    public var size : stdgo.GoInt64 = 0;
    public function new(?size:stdgo.GoInt64) {
        if (size != null) this.size = size;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new AuxiliaryFcn(size);
    }
}
