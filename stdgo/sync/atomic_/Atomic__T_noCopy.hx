package stdgo.sync.atomic_;
@:structInit @:using(stdgo.sync.atomic_.Atomic_.T_noCopy_static_extension) abstract T_noCopy(stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy) from stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy to stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy {
    public function new() this = new stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
