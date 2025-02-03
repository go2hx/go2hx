package stdgo.runtime;
@:structInit @:using(stdgo.runtime.Runtime.T_pageTraceBuf_static_extension) abstract T_pageTraceBuf(stdgo._internal.runtime.Runtime_T_pageTraceBuf.T_pageTraceBuf) from stdgo._internal.runtime.Runtime_T_pageTraceBuf.T_pageTraceBuf to stdgo._internal.runtime.Runtime_T_pageTraceBuf.T_pageTraceBuf {
    public function new() this = new stdgo._internal.runtime.Runtime_T_pageTraceBuf.T_pageTraceBuf();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
