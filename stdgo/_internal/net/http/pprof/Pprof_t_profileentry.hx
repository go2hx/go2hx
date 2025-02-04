package stdgo._internal.net.http.pprof;
@:structInit @:using(stdgo._internal.net.http.pprof.Pprof_t_profileentry_static_extension.T_profileEntry_static_extension) class T_profileEntry {
    public var name : stdgo.GoString = "";
    public var href : stdgo.GoString = "";
    public var desc : stdgo.GoString = "";
    public var count : stdgo.GoInt = 0;
    public function new(?name:stdgo.GoString, ?href:stdgo.GoString, ?desc:stdgo.GoString, ?count:stdgo.GoInt) {
        if (name != null) this.name = name;
        if (href != null) this.href = href;
        if (desc != null) this.desc = desc;
        if (count != null) this.count = count;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_profileEntry(name, href, desc, count);
    }
}
