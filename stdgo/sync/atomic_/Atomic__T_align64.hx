package stdgo.sync.atomic_;
@:structInit @:using(stdgo.sync.atomic_.Atomic_.T_align64_static_extension) abstract T_align64(stdgo._internal.sync.atomic_.Atomic__T_align64.T_align64) from stdgo._internal.sync.atomic_.Atomic__T_align64.T_align64 to stdgo._internal.sync.atomic_.Atomic__T_align64.T_align64 {
    public function new() this = new stdgo._internal.sync.atomic_.Atomic__T_align64.T_align64();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
