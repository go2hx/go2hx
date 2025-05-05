package stdgo._internal.log.slog;
@:keep @:allow(stdgo._internal.log.slog.Slog.T_handleState_asInterface) class T_handleState_static_extension {
    @:keep
    @:tdfield
    static public function _appendTime( _s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>, _t:stdgo._internal.time.Time_time.Time):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState> = _s;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L527"
        if ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._json) {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L528"
            stdgo._internal.log.slog.Slog__appendjsontime._appendJSONTime(_s, _t?.__copy__());
        } else {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L530"
            stdgo._internal.log.slog.Slog__writetimerfc3339millis._writeTimeRFC3339Millis((@:checkr _s ?? throw "null pointer dereference")._buf, _t?.__copy__());
        };
    }
    @:keep
    @:tdfield
    static public function _appendValue( _s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>, _v:stdgo._internal.log.slog.Slog_value.Value):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState> = _s;
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L516"
        if ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._json) {
            _err = stdgo._internal.log.slog.Slog__appendjsonvalue._appendJSONValue(_s, _v?.__copy__());
        } else {
            _err = stdgo._internal.log.slog.Slog__appendtextvalue._appendTextValue(_s, _v?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L521"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L522"
            _s._appendError(_err);
        };
    }
    @:keep
    @:tdfield
    static public function _appendString( _s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>, _str:stdgo.GoString):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState> = _s;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L500"
        if ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._json) {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L501"
            (@:checkr _s ?? throw "null pointer dereference")._buf.writeByte((34 : stdgo.GoUInt8));
            ((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).__setData__(stdgo._internal.log.slog.Slog__appendescapedjsonstring._appendEscapedJSONString(((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer), _str?.__copy__()));
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L503"
            (@:checkr _s ?? throw "null pointer dereference")._buf.writeByte((34 : stdgo.GoUInt8));
        } else {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L506"
            if (stdgo._internal.log.slog.Slog__needsquoting._needsQuoting(_str?.__copy__())) {
                ((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).__setData__(stdgo._internal.strconv.Strconv_appendquote.appendQuote(((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer), _str?.__copy__()));
            } else {
                //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L509"
                (@:checkr _s ?? throw "null pointer dereference")._buf.writeString(_str?.__copy__());
            };
        };
    }
    @:keep
    @:tdfield
    static public function _appendKey( _s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>, _key:stdgo.GoString):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState> = _s;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L484"
        (@:checkr _s ?? throw "null pointer dereference")._buf.writeString((@:checkr _s ?? throw "null pointer dereference")._sep?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L485"
        if ((({
            final value = (@:checkr _s ?? throw "null pointer dereference")._prefix;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ((((@:checkr _s ?? throw "null pointer dereference")._prefix : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L487"
            _s._appendString(((((@:checkr _s ?? throw "null pointer dereference")._prefix : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer) : stdgo.GoString) + _key?.__copy__() : stdgo.GoString)?.__copy__());
        } else {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L489"
            _s._appendString(_key?.__copy__());
        };
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L491"
        if ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._json) {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L492"
            (@:checkr _s ?? throw "null pointer dereference")._buf.writeByte((58 : stdgo.GoUInt8));
        } else {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L494"
            (@:checkr _s ?? throw "null pointer dereference")._buf.writeByte((61 : stdgo.GoUInt8));
        };
        (@:checkr _s ?? throw "null pointer dereference")._sep = (@:checkr _s ?? throw "null pointer dereference")._h._attrSep()?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _appendError( _s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>, _err:stdgo.Error):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState> = _s;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L480"
        _s._appendString(stdgo._internal.fmt.Fmt_sprintf.sprintf(("!ERROR:%v" : stdgo.GoString), stdgo.Go.toInterface(_err))?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _appendAttr( _s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>, _a:stdgo._internal.log.slog.Slog_attr.Attr):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState> = _s;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L434"
        {
            var _rep = (@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._opts.replaceAttr;
            if (((_rep != null) && (_a.value.kind() != (8 : stdgo._internal.log.slog.Slog_kind.Kind)) : Bool)) {
                var _gs:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L436"
                if (({
                    final value = (@:checkr _s ?? throw "null pointer dereference")._groups;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    _gs = ((@:checkr _s ?? throw "null pointer dereference")._groups : stdgo.Slice<stdgo.GoString>);
                };
                _a.value = _a.value.resolve()?.__copy__();
                _a = _rep(_gs, _a?.__copy__())?.__copy__();
            };
        };
        _a.value = _a.value.resolve()?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L445"
        if (_a._isEmpty()) {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L446"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L449"
        {
            var _v = (_a.value?.__copy__() : stdgo._internal.log.slog.Slog_value.Value);
            if (_v.kind() == ((0 : stdgo._internal.log.slog.Slog_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L450"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_v.any() : stdgo.Ref<stdgo._internal.log.slog.Slog_source.Source>)) : stdgo.Ref<stdgo._internal.log.slog.Slog_source.Source>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.log.slog.Slog_source.Source>), _1 : false };
                    }, _src = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L451"
                        if ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._json) {
                            _a.value = _src._group()?.__copy__();
                        } else {
                            _a.value = stdgo._internal.log.slog.Slog_stringvalue.stringValue(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s:%d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _src ?? throw "null pointer dereference").file), stdgo.Go.toInterface((@:checkr _src ?? throw "null pointer dereference").line))?.__copy__())?.__copy__();
                        };
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L458"
        if (_a.value.kind() == ((8 : stdgo._internal.log.slog.Slog_kind.Kind))) {
            var _attrs = _a.value.group();
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L461"
            if (((_attrs.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L463"
                if (_a.key != ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L464"
                    _s._openGroup(_a.key?.__copy__());
                };
                //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L466"
                for (__780 => _aa in _attrs) {
                    //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L467"
                    _s._appendAttr(_aa?.__copy__());
                };
                //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L469"
                if (_a.key != ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L470"
                    _s._closeGroup(_a.key?.__copy__());
                };
            };
        } else {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L474"
            _s._appendKey(_a.key?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L475"
            _s._appendValue(_a.value?.__copy__());
        };
    }
    @:keep
    @:tdfield
    static public function _closeGroup( _s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>, _name:stdgo.GoString):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState> = _s;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L419"
        if ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._json) {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L420"
            (@:checkr _s ?? throw "null pointer dereference")._buf.writeByte((125 : stdgo.GoUInt8));
        } else {
            (@:checkr _s ?? throw "null pointer dereference")._prefix = ((((@:checkr _s ?? throw "null pointer dereference")._prefix : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer)).__slice__(0, (((((@:checkr _s ?? throw "null pointer dereference")._prefix : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer).length) - (_name.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.log.slog.internal.buffer.Buffer_buffer.Buffer);
        };
        (@:checkr _s ?? throw "null pointer dereference")._sep = (@:checkr _s ?? throw "null pointer dereference")._h._attrSep()?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L425"
        if (({
            final value = (@:checkr _s ?? throw "null pointer dereference")._groups;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            ((@:checkr _s ?? throw "null pointer dereference")._groups : stdgo.Slice<stdgo.GoString>).__setData__(((((@:checkr _s ?? throw "null pointer dereference")._groups : stdgo.Slice<stdgo.GoString>)).__slice__(0, ((((@:checkr _s ?? throw "null pointer dereference")._groups : stdgo.Slice<stdgo.GoString>).length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>));
        };
    }
    @:keep
    @:tdfield
    static public function _openGroup( _s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>, _name:stdgo.GoString):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState> = _s;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L403"
        if ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._json) {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L404"
            _s._appendKey(_name?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L405"
            (@:checkr _s ?? throw "null pointer dereference")._buf.writeByte((123 : stdgo.GoUInt8));
            (@:checkr _s ?? throw "null pointer dereference")._sep = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        } else {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L408"
            (@:checkr _s ?? throw "null pointer dereference")._prefix.writeString(_name?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L409"
            (@:checkr _s ?? throw "null pointer dereference")._prefix.writeByte((46 : stdgo.GoUInt8));
        };
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L412"
        if (({
            final value = (@:checkr _s ?? throw "null pointer dereference")._groups;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            ((@:checkr _s ?? throw "null pointer dereference")._groups : stdgo.Slice<stdgo.GoString>).__setData__((((@:checkr _s ?? throw "null pointer dereference")._groups : stdgo.Slice<stdgo.GoString>).__append__(_name?.__copy__()) : stdgo.Slice<stdgo.GoString>));
        };
    }
    @:keep
    @:tdfield
    static public function _openGroups( _s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState> = _s;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L392"
        for (__745 => _n in ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._groups.__slice__((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._nOpenGroups) : stdgo.Slice<stdgo.GoString>)) {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L393"
            _s._openGroup(_n?.__copy__());
        };
    }
    @:keep
    @:tdfield
    static public function _free( _s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState> = _s;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L381"
        if ((@:checkr _s ?? throw "null pointer dereference")._freeBuf) {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L382"
            (@:checkr _s ?? throw "null pointer dereference")._buf.free();
        };
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L384"
        {
            var _gs = (@:checkr _s ?? throw "null pointer dereference")._groups;
            if (({
                final value = _gs;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                (_gs : stdgo.Slice<stdgo.GoString>).__setData__((((_gs : stdgo.Slice<stdgo.GoString>)).__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>));
                //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L386"
                stdgo._internal.log.slog.Slog__grouppool._groupPool.put(stdgo.Go.toInterface(_gs));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L388"
        (@:checkr _s ?? throw "null pointer dereference")._prefix.free();
    }
    @:keep
    @:tdfield
    static public function _appendNonBuiltIns( _s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState>, _r:stdgo._internal.log.slog.Slog_record.Record):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.log.slog.Slog_t_handlestate.T_handleState> = _s;
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L312"
        if ((((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._preformattedAttrs.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L313"
            (@:checkr _s ?? throw "null pointer dereference")._buf.writeString((@:checkr _s ?? throw "null pointer dereference")._sep?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L314"
            (@:checkr _s ?? throw "null pointer dereference")._buf.write((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._preformattedAttrs);
            (@:checkr _s ?? throw "null pointer dereference")._sep = (@:checkr _s ?? throw "null pointer dereference")._h._attrSep()?.__copy__();
        };
        var _nOpenGroups = ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._nOpenGroups : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L321"
        if ((_r.numAttrs() > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L322"
            (@:checkr _s ?? throw "null pointer dereference")._prefix.writeString((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._groupPrefix?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L323"
            _s._openGroups();
            _nOpenGroups = ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._groups.length);
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L325"
            _r.attrs(function(_a:stdgo._internal.log.slog.Slog_attr.Attr):Bool {
                //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L326"
                _s._appendAttr(_a?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L327"
                return true;
            });
        };
        //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L330"
        if ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._json) {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L332"
            for (_ => _ in ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._groups.__slice__(0, _nOpenGroups) : stdgo.Slice<stdgo.GoString>)) {
                //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L333"
                (@:checkr _s ?? throw "null pointer dereference")._buf.writeByte((125 : stdgo.GoUInt8));
            };
            //"file:///home/runner/.go/go1.21.3/src/log/slog/handler.go#L336"
            (@:checkr _s ?? throw "null pointer dereference")._buf.writeByte((125 : stdgo.GoUInt8));
        };
    }
}
