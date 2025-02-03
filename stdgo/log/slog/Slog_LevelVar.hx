package stdgo.log.slog;
@:structInit @:using(stdgo.log.slog.Slog.LevelVar_static_extension) abstract LevelVar(stdgo._internal.log.slog.Slog_LevelVar.LevelVar) from stdgo._internal.log.slog.Slog_LevelVar.LevelVar to stdgo._internal.log.slog.Slog_LevelVar.LevelVar {
    public var _val(get, set) : stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_;
    function get__val():stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_ return this._val;
    function set__val(v:stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_):stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_ {
        this._val = v;
        return v;
    }
    public function new(?_val:stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_) this = new stdgo._internal.log.slog.Slog_LevelVar.LevelVar(_val);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
