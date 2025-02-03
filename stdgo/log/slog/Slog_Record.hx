package stdgo.log.slog;
@:structInit @:using(stdgo.log.slog.Slog.Record_static_extension) abstract Record(stdgo._internal.log.slog.Slog_Record.Record) from stdgo._internal.log.slog.Slog_Record.Record to stdgo._internal.log.slog.Slog_Record.Record {
    public var time(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_time():stdgo._internal.time.Time_Time.Time return this.time;
    function set_time(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.time = v;
        return v;
    }
    public var message(get, set) : String;
    function get_message():String return this.message;
    function set_message(v:String):String {
        this.message = (v : stdgo.GoString);
        return v;
    }
    public var level(get, set) : Level;
    function get_level():Level return this.level;
    function set_level(v:Level):Level {
        this.level = v;
        return v;
    }
    public var pC(get, set) : stdgo.GoUIntptr;
    function get_pC():stdgo.GoUIntptr return this.pC;
    function set_pC(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this.pC = (v : stdgo.GoUIntptr);
        return v;
    }
    public var _front(get, set) : haxe.ds.Vector<Attr>;
    function get__front():haxe.ds.Vector<Attr> return haxe.ds.Vector.fromArrayCopy([for (i in this._front) i]);
    function set__front(v:haxe.ds.Vector<Attr>):haxe.ds.Vector<Attr> {
        this._front = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.log.slog.Slog_Attr.Attr>);
        return v;
    }
    public var _nFront(get, set) : StdTypes.Int;
    function get__nFront():StdTypes.Int return this._nFront;
    function set__nFront(v:StdTypes.Int):StdTypes.Int {
        this._nFront = (v : stdgo.GoInt);
        return v;
    }
    public var _back(get, set) : Array<Attr>;
    function get__back():Array<Attr> return [for (i in this._back) i];
    function set__back(v:Array<Attr>):Array<Attr> {
        this._back = ([for (i in v) i] : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>);
        return v;
    }
    public function new(?time:stdgo._internal.time.Time_Time.Time, ?message:String, ?level:Level, ?pC:stdgo.GoUIntptr, ?_front:haxe.ds.Vector<Attr>, ?_nFront:StdTypes.Int, ?_back:Array<Attr>) this = new stdgo._internal.log.slog.Slog_Record.Record(time, (message : stdgo.GoString), level, (pC : stdgo.GoUIntptr), ([for (i in _front) i] : stdgo.GoArray<stdgo._internal.log.slog.Slog_Attr.Attr>), (_nFront : stdgo.GoInt), ([for (i in _back) i] : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
