package stdgo.net.http.pprof;
@:structInit @:using(stdgo.net.http.pprof.Pprof.T_profileEntry_static_extension) abstract T_profileEntry(stdgo._internal.net.http.pprof.Pprof_T_profileEntry.T_profileEntry) from stdgo._internal.net.http.pprof.Pprof_T_profileEntry.T_profileEntry to stdgo._internal.net.http.pprof.Pprof_T_profileEntry.T_profileEntry {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var href(get, set) : String;
    function get_href():String return this.href;
    function set_href(v:String):String {
        this.href = (v : stdgo.GoString);
        return v;
    }
    public var desc(get, set) : String;
    function get_desc():String return this.desc;
    function set_desc(v:String):String {
        this.desc = (v : stdgo.GoString);
        return v;
    }
    public var count(get, set) : StdTypes.Int;
    function get_count():StdTypes.Int return this.count;
    function set_count(v:StdTypes.Int):StdTypes.Int {
        this.count = (v : stdgo.GoInt);
        return v;
    }
    public function new(?name:String, ?href:String, ?desc:String, ?count:StdTypes.Int) this = new stdgo._internal.net.http.pprof.Pprof_T_profileEntry.T_profileEntry((name : stdgo.GoString), (href : stdgo.GoString), (desc : stdgo.GoString), (count : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
