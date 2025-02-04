package stdgo._internal.log.slog;
@:structInit @:using(stdgo._internal.log.slog.Slog_levelvar_static_extension.LevelVar_static_extension) class LevelVar {
    public var _val : stdgo._internal.sync.atomic_.Atomic__int64_.Int64_ = ({} : stdgo._internal.sync.atomic_.Atomic__int64_.Int64_);
    public function new(?_val:stdgo._internal.sync.atomic_.Atomic__int64_.Int64_) {
        if (_val != null) this._val = _val;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LevelVar(_val);
    }
}
