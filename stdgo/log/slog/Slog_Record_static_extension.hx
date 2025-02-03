package stdgo.log.slog;
class Record_static_extension {
    static public function _source(_r:Record):Source {
        return stdgo._internal.log.slog.Slog_Record_static_extension.Record_static_extension._source(_r);
    }
    static public function add(_r:Record, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record>);
        stdgo._internal.log.slog.Slog_Record_static_extension.Record_static_extension.add(_r, ...[for (i in _args) i]);
    }
    static public function addAttrs(_r:Record, _attrs:haxe.Rest<Attr>):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record>);
        stdgo._internal.log.slog.Slog_Record_static_extension.Record_static_extension.addAttrs(_r, ...[for (i in _attrs) i]);
    }
    static public function attrs(_r:Record, _f:stdgo._internal.log.slog.Slog_Attr.Attr -> Bool):Void {
        final _f = _f;
        stdgo._internal.log.slog.Slog_Record_static_extension.Record_static_extension.attrs(_r, _f);
    }
    static public function numAttrs(_r:Record):StdTypes.Int {
        return stdgo._internal.log.slog.Slog_Record_static_extension.Record_static_extension.numAttrs(_r);
    }
    static public function clone(_r:Record):Record {
        return stdgo._internal.log.slog.Slog_Record_static_extension.Record_static_extension.clone(_r);
    }
}
