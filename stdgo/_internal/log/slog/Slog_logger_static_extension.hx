package stdgo._internal.log.slog;
@:keep @:allow(stdgo._internal.log.slog.Slog.Logger_asInterface) class Logger_static_extension {
    @:keep
    @:tdfield
    static public function _logAttrs( _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>, _ctx:stdgo._internal.context.Context_context.Context, _level:stdgo._internal.log.slog.Slog_level.Level, _msg:stdgo.GoString, _attrs:haxe.Rest<stdgo._internal.log.slog.Slog_attr.Attr>):Void {
        var _attrs = new stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>(_attrs.length, 0, ..._attrs);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> = _l;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L230"
        if (!_l.enabled(_ctx, _level)) {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L231"
            return;
        };
        var _pc:stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L234"
        if (!stdgo._internal.log.slog.internal.Internal_ignorepc.ignorePC) {
            var _pcs:stdgo.GoArray<stdgo.GoUIntptr> = new stdgo.GoArray<stdgo.GoUIntptr>(1, 1);
            //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L237"
            stdgo._internal.runtime.Runtime_callers.callers((3 : stdgo.GoInt), (_pcs.__slice__(0) : stdgo.Slice<stdgo.GoUIntptr>));
            _pc = _pcs[(0 : stdgo.GoInt)];
        };
        var _r = (stdgo._internal.log.slog.Slog_newrecord.newRecord(stdgo._internal.time.Time_now.now()?.__copy__(), _level, _msg?.__copy__(), _pc)?.__copy__() : stdgo._internal.log.slog.Slog_record.Record);
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L241"
        _r.addAttrs(...(_attrs : Array<stdgo._internal.log.slog.Slog_attr.Attr>));
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L242"
        if (_ctx == null) {
            _ctx = stdgo._internal.context.Context_background.background();
        };
        _l.handler().handle(_ctx, _r?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _log( _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>, _ctx:stdgo._internal.context.Context_context.Context, _level:stdgo._internal.log.slog.Slog_level.Level, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> = _l;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L210"
        if (!_l.enabled(_ctx, _level)) {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L211"
            return;
        };
        var _pc:stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L214"
        if (!stdgo._internal.log.slog.internal.Internal_ignorepc.ignorePC) {
            var _pcs:stdgo.GoArray<stdgo.GoUIntptr> = new stdgo.GoArray<stdgo.GoUIntptr>(1, 1);
            //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L217"
            stdgo._internal.runtime.Runtime_callers.callers((3 : stdgo.GoInt), (_pcs.__slice__(0) : stdgo.Slice<stdgo.GoUIntptr>));
            _pc = _pcs[(0 : stdgo.GoInt)];
        };
        var _r = (stdgo._internal.log.slog.Slog_newrecord.newRecord(stdgo._internal.time.Time_now.now()?.__copy__(), _level, _msg?.__copy__(), _pc)?.__copy__() : stdgo._internal.log.slog.Slog_record.Record);
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L221"
        _r.add(...(_args : Array<stdgo.AnyInterface>));
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L222"
        if (_ctx == null) {
            _ctx = stdgo._internal.context.Context_background.background();
        };
        _l.handler().handle(_ctx, _r?.__copy__());
    }
    @:keep
    @:tdfield
    static public function errorContext( _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>, _ctx:stdgo._internal.context.Context_context.Context, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> = _l;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L203"
        _l._log(_ctx, (8 : stdgo._internal.log.slog.Slog_level.Level), _msg?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function error( _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> = _l;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L198"
        _l._log(stdgo._internal.context.Context_background.background(), (8 : stdgo._internal.log.slog.Slog_level.Level), _msg?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function warnContext( _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>, _ctx:stdgo._internal.context.Context_context.Context, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> = _l;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L193"
        _l._log(_ctx, (4 : stdgo._internal.log.slog.Slog_level.Level), _msg?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function warn( _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> = _l;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L188"
        _l._log(stdgo._internal.context.Context_background.background(), (4 : stdgo._internal.log.slog.Slog_level.Level), _msg?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function infoContext( _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>, _ctx:stdgo._internal.context.Context_context.Context, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> = _l;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L183"
        _l._log(_ctx, (0 : stdgo._internal.log.slog.Slog_level.Level), _msg?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function info( _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> = _l;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L178"
        _l._log(stdgo._internal.context.Context_background.background(), (0 : stdgo._internal.log.slog.Slog_level.Level), _msg?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function debugContext( _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>, _ctx:stdgo._internal.context.Context_context.Context, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> = _l;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L173"
        _l._log(_ctx, (-4 : stdgo._internal.log.slog.Slog_level.Level), _msg?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function debug( _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> = _l;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L168"
        _l._log(stdgo._internal.context.Context_background.background(), (-4 : stdgo._internal.log.slog.Slog_level.Level), _msg?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function logAttrs( _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>, _ctx:stdgo._internal.context.Context_context.Context, _level:stdgo._internal.log.slog.Slog_level.Level, _msg:stdgo.GoString, _attrs:haxe.Rest<stdgo._internal.log.slog.Slog_attr.Attr>):Void {
        var _attrs = new stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>(_attrs.length, 0, ..._attrs);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> = _l;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L163"
        _l._logAttrs(_ctx, _level, _msg?.__copy__(), ...(_attrs : Array<stdgo._internal.log.slog.Slog_attr.Attr>));
    }
    @:keep
    @:tdfield
    static public function log( _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>, _ctx:stdgo._internal.context.Context_context.Context, _level:stdgo._internal.log.slog.Slog_level.Level, _msg:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> = _l;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L158"
        _l._log(_ctx, _level, _msg?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function enabled( _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>, _ctx:stdgo._internal.context.Context_context.Context, _level:stdgo._internal.log.slog.Slog_level.Level):Bool {
        @:recv var _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> = _l;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L134"
        if (_ctx == null) {
            _ctx = stdgo._internal.context.Context_background.background();
        };
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L137"
        return _l.handler().enabled(_ctx, _level);
    }
    @:keep
    @:tdfield
    static public function withGroup( _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> {
        @:recv var _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> = _l;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L110"
        if (_name == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L111"
            return _l;
        };
        var _c = _l._clone();
        (@:checkr _c ?? throw "null pointer dereference")._handler = (@:checkr _l ?? throw "null pointer dereference")._handler.withGroup(_name?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L115"
        return _c;
    }
    @:keep
    @:tdfield
    static public function with( _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> = _l;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L95"
        if ((_args.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L96"
            return _l;
        };
        var _c = _l._clone();
        (@:checkr _c ?? throw "null pointer dereference")._handler = (@:checkr _l ?? throw "null pointer dereference")._handler.withAttrs(stdgo._internal.log.slog.Slog__argstoattrslice._argsToAttrSlice(_args));
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L100"
        return _c;
    }
    @:keep
    @:tdfield
    static public function handler( _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>):stdgo._internal.log.slog.Slog_handler.Handler {
        @:recv var _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> = _l;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L89"
        return (@:checkr _l ?? throw "null pointer dereference")._handler;
    }
    @:keep
    @:tdfield
    static public function _clone( _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>):stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> {
        @:recv var _l:stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger> = _l;
        var _c = ((_l : stdgo._internal.log.slog.Slog_logger.Logger)?.__copy__() : stdgo._internal.log.slog.Slog_logger.Logger);
        //"file:///home/runner/.go/go1.21.3/src/log/slog/logger.go#L85"
        return (stdgo.Go.setRef(_c) : stdgo.Ref<stdgo._internal.log.slog.Slog_logger.Logger>);
    }
}
