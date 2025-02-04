package stdgo._internal.log.slog;
@:keep @:allow(stdgo._internal.log.slog.Slog.T_commonHandler_asInterface) class T_commonHandler_static_extension {
    @:keep
    @:tdfield
    static public function _newHandleState( _h:stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>, _buf:stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>, _freeBuf:Bool, _sep:stdgo.GoString):stdgo._internal.log.slog.Slog_t_handlestate.T_handleState {
        @:recv var _h:stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler> = _h;
        var _s = ({ _h : _h, _buf : _buf, _freeBuf : _freeBuf, _sep : _sep?.__copy__(), _prefix : stdgo._internal.log.slog.internal.buffer.Buffer_new_.new_() } : stdgo._internal.log.slog.Slog_t_handlestate.T_handleState);
        if ((@:checkr _h ?? throw "null pointer dereference")._opts.replaceAttr != null) {
            _s._groups = (stdgo.Go.typeAssert((@:check2 stdgo._internal.log.slog.Slog__grouppool._groupPool.get() : stdgo.Ref<stdgo.Slice<stdgo.GoString>>)) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
            (_s._groups : stdgo.Slice<stdgo.GoString>).__setData__(((_s._groups : stdgo.Slice<stdgo.GoString>).__append__(...(((@:checkr _h ?? throw "null pointer dereference")._groups.__slice__(0, (@:checkr _h ?? throw "null pointer dereference")._nOpenGroups) : stdgo.Slice<stdgo.GoString>) : Array<stdgo.GoString>))));
        };
        return _s?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _attrSep( _h:stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>):stdgo.GoString {
        @:recv var _h:stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler> = _h;
        if ((@:checkr _h ?? throw "null pointer dereference")._json) {
            return ("," : stdgo.GoString);
        };
        return (" " : stdgo.GoString);
    }
    @:keep
    @:tdfield
    static public function _handle( _h:stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>, _r:stdgo._internal.log.slog.Slog_record.Record):stdgo.Error {
        @:recv var _h:stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler> = _h;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _state = (@:check2r _h._newHandleState(stdgo._internal.log.slog.internal.buffer.Buffer_new_.new_(), true, (stdgo.Go.str() : stdgo.GoString)?.__copy__())?.__copy__() : stdgo._internal.log.slog.Slog_t_handlestate.T_handleState);
            {
                final __f__ = @:check2 _state._free;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            if ((@:checkr _h ?? throw "null pointer dereference")._json) {
                @:check2r _state._buf.writeByte((123 : stdgo.GoUInt8));
            };
            var _stateGroups = _state._groups;
            _state._groups = (null : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
            var _rep = (@:checkr _h ?? throw "null pointer dereference")._opts.replaceAttr;
            if (!_r.time.isZero()) {
                var _key = (("time" : stdgo.GoString) : stdgo.GoString);
                var _val = (_r.time.round((0i64 : stdgo._internal.time.Time_duration.Duration))?.__copy__() : stdgo._internal.time.Time_time.Time);
                if (_rep == null) {
                    @:check2 _state._appendKey(_key?.__copy__());
                    @:check2 _state._appendTime(_val?.__copy__());
                } else {
                    @:check2 _state._appendAttr(stdgo._internal.log.slog.Slog_time.time(_key?.__copy__(), _val?.__copy__())?.__copy__());
                };
            };
            var _key = (("level" : stdgo.GoString) : stdgo.GoString);
            var _val = (_r.level : stdgo._internal.log.slog.Slog_level.Level);
            if (_rep == null) {
                @:check2 _state._appendKey(_key?.__copy__());
                @:check2 _state._appendString((_val.string() : stdgo.GoString)?.__copy__());
            } else {
                @:check2 _state._appendAttr(stdgo._internal.log.slog.Slog_any.any(_key?.__copy__(), stdgo.Go.toInterface(stdgo.Go.asInterface(_val)))?.__copy__());
            };
            if ((@:checkr _h ?? throw "null pointer dereference")._opts.addSource) {
                @:check2 _state._appendAttr(stdgo._internal.log.slog.Slog_any.any(("source" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_r._source())))?.__copy__());
            };
            _key = ("msg" : stdgo.GoString);
            var _msg = (_r.message?.__copy__() : stdgo.GoString);
            if (_rep == null) {
                @:check2 _state._appendKey(_key?.__copy__());
                @:check2 _state._appendString(_msg?.__copy__());
            } else {
                @:check2 _state._appendAttr(stdgo._internal.log.slog.Slog_string.string(_key?.__copy__(), _msg?.__copy__())?.__copy__());
            };
            _state._groups = _stateGroups;
            @:check2 _state._appendNonBuiltIns(_r?.__copy__());
            @:check2r _state._buf.writeByte((10 : stdgo.GoUInt8));
            @:check2r (@:checkr _h ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = @:check2r (@:checkr _h ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = (@:checkr _h ?? throw "null pointer dereference")._w.write((_state._buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer)), __724:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _err;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _withGroup( _h:stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler> {
        @:recv var _h:stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler> = _h;
        var _h2 = @:check2r _h._clone();
        (@:checkr _h2 ?? throw "null pointer dereference")._groups = ((@:checkr _h2 ?? throw "null pointer dereference")._groups.__append__(_name?.__copy__()));
        return _h2;
    }
    @:keep
    @:tdfield
    static public function _withAttrs( _h:stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>, _as:stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>):stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler> {
        @:recv var _h:stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler> = _h;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            if (stdgo._internal.log.slog.Slog__countemptygroups._countEmptyGroups(_as) == ((_as.length))) {
                return _h;
            };
            var _h2 = @:check2r _h._clone();
            var _state = (@:check2r _h2._newHandleState(((stdgo.Go.setRef((@:checkr _h2 ?? throw "null pointer dereference")._preformattedAttrs) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : stdgo.Ref<stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer>), false, (stdgo.Go.str() : stdgo.GoString)?.__copy__())?.__copy__() : stdgo._internal.log.slog.Slog_t_handlestate.T_handleState);
            {
                final __f__ = @:check2 _state._free;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            @:check2r _state._prefix.writeString((@:checkr _h ?? throw "null pointer dereference")._groupPrefix?.__copy__());
            if ((((@:checkr _h2 ?? throw "null pointer dereference")._preformattedAttrs.length) > (0 : stdgo.GoInt) : Bool)) {
                _state._sep = @:check2r _h._attrSep()?.__copy__();
            };
            @:check2 _state._openGroups();
            for (__724 => _a in _as) {
                @:check2 _state._appendAttr(_a?.__copy__());
            };
            (@:checkr _h2 ?? throw "null pointer dereference")._groupPrefix = (@:check2r _state._prefix.string() : stdgo.GoString)?.__copy__();
            (@:checkr _h2 ?? throw "null pointer dereference")._nOpenGroups = ((@:checkr _h2 ?? throw "null pointer dereference")._groups.length);
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _h2;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return (null : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _enabled( _h:stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>, _l:stdgo._internal.log.slog.Slog_level.Level):Bool {
        @:recv var _h:stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler> = _h;
        var _minLevel = (0 : stdgo._internal.log.slog.Slog_level.Level);
        if ((@:checkr _h ?? throw "null pointer dereference")._opts.level != null) {
            _minLevel = (@:checkr _h ?? throw "null pointer dereference")._opts.level.level();
        };
        return (_l >= _minLevel : Bool);
    }
    @:keep
    @:tdfield
    static public function _clone( _h:stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>):stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler> {
        @:recv var _h:stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler> = _h;
        return (stdgo.Go.setRef(({ _json : (@:checkr _h ?? throw "null pointer dereference")._json, _opts : (@:checkr _h ?? throw "null pointer dereference")._opts?.__copy__(), _preformattedAttrs : stdgo._internal.slices.Slices_clip.clip((@:checkr _h ?? throw "null pointer dereference")._preformattedAttrs), _groupPrefix : (@:checkr _h ?? throw "null pointer dereference")._groupPrefix?.__copy__(), _groups : stdgo._internal.slices.Slices_clip.clip((@:checkr _h ?? throw "null pointer dereference")._groups), _nOpenGroups : (@:checkr _h ?? throw "null pointer dereference")._nOpenGroups, _w : (@:checkr _h ?? throw "null pointer dereference")._w, _mu : (@:checkr _h ?? throw "null pointer dereference")._mu } : stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler)) : stdgo.Ref<stdgo._internal.log.slog.Slog_t_commonhandler.T_commonHandler>);
    }
}
