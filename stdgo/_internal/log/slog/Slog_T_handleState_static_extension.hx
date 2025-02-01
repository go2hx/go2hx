package stdgo._internal.log.slog;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.log.Log;
import stdgo._internal.context.Context;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.math.Math;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.log.slog.internal.buffer.Buffer;
import stdgo._internal.slices.Slices;
import stdgo._internal.log.slog.internal.Internal;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
@:keep @:allow(stdgo._internal.log.slog.Slog.T_handleState_asInterface) class T_handleState_static_extension {
    @:keep
    @:tdfield
    static public function _appendTime( _s:stdgo.Ref<stdgo._internal.log.slog.Slog_T_handleState.T_handleState>, _t:stdgo._internal.time.Time_Time.Time):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.log.slog.Slog_T_handleState.T_handleState> = _s;
        if ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._json) {
            stdgo._internal.log.slog.Slog__appendJSONTime._appendJSONTime(_s, _t?.__copy__());
        } else {
            stdgo._internal.log.slog.Slog__writeTimeRFC3339Millis._writeTimeRFC3339Millis((@:checkr _s ?? throw "null pointer dereference")._buf, _t?.__copy__());
        };
    }
    @:keep
    @:tdfield
    static public function _appendValue( _s:stdgo.Ref<stdgo._internal.log.slog.Slog_T_handleState.T_handleState>, _v:stdgo._internal.log.slog.Slog_Value.Value):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.log.slog.Slog_T_handleState.T_handleState> = _s;
        var _err:stdgo.Error = (null : stdgo.Error);
        if ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._json) {
            _err = stdgo._internal.log.slog.Slog__appendJSONValue._appendJSONValue(_s, _v?.__copy__());
        } else {
            _err = stdgo._internal.log.slog.Slog__appendTextValue._appendTextValue(_s, _v?.__copy__());
        };
        if (_err != null) {
            @:check2r _s._appendError(_err);
        };
    }
    @:keep
    @:tdfield
    static public function _appendString( _s:stdgo.Ref<stdgo._internal.log.slog.Slog_T_handleState.T_handleState>, _str:stdgo.GoString):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.log.slog.Slog_T_handleState.T_handleState> = _s;
        if ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._json) {
            @:check2r (@:checkr _s ?? throw "null pointer dereference")._buf.writeByte((34 : stdgo.GoUInt8));
            ((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer).__setData__(stdgo._internal.log.slog.Slog__appendEscapedJSONString._appendEscapedJSONString(((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer), _str?.__copy__()));
            @:check2r (@:checkr _s ?? throw "null pointer dereference")._buf.writeByte((34 : stdgo.GoUInt8));
        } else {
            if (stdgo._internal.log.slog.Slog__needsQuoting._needsQuoting(_str?.__copy__())) {
                ((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer).__setData__(stdgo._internal.strconv.Strconv_appendQuote.appendQuote(((@:checkr _s ?? throw "null pointer dereference")._buf : stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer), _str?.__copy__()));
            } else {
                @:check2r (@:checkr _s ?? throw "null pointer dereference")._buf.writeString(_str?.__copy__());
            };
        };
    }
    @:keep
    @:tdfield
    static public function _appendKey( _s:stdgo.Ref<stdgo._internal.log.slog.Slog_T_handleState.T_handleState>, _key:stdgo.GoString):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.log.slog.Slog_T_handleState.T_handleState> = _s;
        @:check2r (@:checkr _s ?? throw "null pointer dereference")._buf.writeString((@:checkr _s ?? throw "null pointer dereference")._sep?.__copy__());
        if ((((@:checkr _s ?? throw "null pointer dereference")._prefix != null && (((@:checkr _s ?? throw "null pointer dereference")._prefix : Dynamic).__nil__ == null || !((@:checkr _s ?? throw "null pointer dereference")._prefix : Dynamic).__nil__)) && ((((@:checkr _s ?? throw "null pointer dereference")._prefix : stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer).length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            @:check2r _s._appendString(((((@:checkr _s ?? throw "null pointer dereference")._prefix : stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer) : stdgo.GoString) + _key?.__copy__() : stdgo.GoString)?.__copy__());
        } else {
            @:check2r _s._appendString(_key?.__copy__());
        };
        if ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._json) {
            @:check2r (@:checkr _s ?? throw "null pointer dereference")._buf.writeByte((58 : stdgo.GoUInt8));
        } else {
            @:check2r (@:checkr _s ?? throw "null pointer dereference")._buf.writeByte((61 : stdgo.GoUInt8));
        };
        (@:checkr _s ?? throw "null pointer dereference")._sep = @:check2r (@:checkr _s ?? throw "null pointer dereference")._h._attrSep()?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _appendError( _s:stdgo.Ref<stdgo._internal.log.slog.Slog_T_handleState.T_handleState>, _err:stdgo.Error):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.log.slog.Slog_T_handleState.T_handleState> = _s;
        @:check2r _s._appendString(stdgo._internal.fmt.Fmt_sprintf.sprintf(("!ERROR:%v" : stdgo.GoString), stdgo.Go.toInterface(_err))?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _appendAttr( _s:stdgo.Ref<stdgo._internal.log.slog.Slog_T_handleState.T_handleState>, _a:stdgo._internal.log.slog.Slog_Attr.Attr):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.log.slog.Slog_T_handleState.T_handleState> = _s;
        {
            var _rep = (@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._opts.replaceAttr;
            if (((_rep != null) && (_a.value.kind() != (8 : stdgo._internal.log.slog.Slog_Kind.Kind)) : Bool)) {
                var _gs:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                if (((@:checkr _s ?? throw "null pointer dereference")._groups != null && (((@:checkr _s ?? throw "null pointer dereference")._groups : Dynamic).__nil__ == null || !((@:checkr _s ?? throw "null pointer dereference")._groups : Dynamic).__nil__))) {
                    _gs = ((@:checkr _s ?? throw "null pointer dereference")._groups : stdgo.Slice<stdgo.GoString>);
                };
                _a.value = _a.value.resolve()?.__copy__();
                _a = _rep(_gs, _a?.__copy__())?.__copy__();
            };
        };
        _a.value = _a.value.resolve()?.__copy__();
        if (_a._isEmpty()) {
            return;
        };
        {
            var _v = (_a.value?.__copy__() : stdgo._internal.log.slog.Slog_Value.Value);
            if (_v.kind() == ((0 : stdgo._internal.log.slog.Slog_Kind.Kind))) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_v.any() : stdgo.Ref<stdgo._internal.log.slog.Slog_Source.Source>)) : stdgo.Ref<stdgo._internal.log.slog.Slog_Source.Source>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.log.slog.Slog_Source.Source>), _1 : false };
                    }, _src = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        if ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._json) {
                            _a.value = @:check2r _src._group()?.__copy__();
                        } else {
                            _a.value = stdgo._internal.log.slog.Slog_stringValue.stringValue(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s:%d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _src ?? throw "null pointer dereference").file), stdgo.Go.toInterface((@:checkr _src ?? throw "null pointer dereference").line))?.__copy__())?.__copy__();
                        };
                    };
                };
            };
        };
        if (_a.value.kind() == ((8 : stdgo._internal.log.slog.Slog_Kind.Kind))) {
            var _attrs = _a.value.group();
            if (((_attrs.length) > (0 : stdgo.GoInt) : Bool)) {
                if (_a.key != (stdgo.Go.str())) {
                    @:check2r _s._openGroup(_a.key?.__copy__());
                };
                for (__802 => _aa in _attrs) {
                    @:check2r _s._appendAttr(_aa?.__copy__());
                };
                if (_a.key != (stdgo.Go.str())) {
                    @:check2r _s._closeGroup(_a.key?.__copy__());
                };
            };
        } else {
            @:check2r _s._appendKey(_a.key?.__copy__());
            @:check2r _s._appendValue(_a.value?.__copy__());
        };
    }
    @:keep
    @:tdfield
    static public function _closeGroup( _s:stdgo.Ref<stdgo._internal.log.slog.Slog_T_handleState.T_handleState>, _name:stdgo.GoString):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.log.slog.Slog_T_handleState.T_handleState> = _s;
        if ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._json) {
            @:check2r (@:checkr _s ?? throw "null pointer dereference")._buf.writeByte((125 : stdgo.GoUInt8));
        } else {
            (@:checkr _s ?? throw "null pointer dereference")._prefix = ((((@:checkr _s ?? throw "null pointer dereference")._prefix : stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer)).__slice__(0, (((((@:checkr _s ?? throw "null pointer dereference")._prefix : stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer).length) - (_name.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo._internal.log.slog.internal.buffer.Buffer_Buffer.Buffer);
        };
        (@:checkr _s ?? throw "null pointer dereference")._sep = @:check2r (@:checkr _s ?? throw "null pointer dereference")._h._attrSep()?.__copy__();
        if (((@:checkr _s ?? throw "null pointer dereference")._groups != null && (((@:checkr _s ?? throw "null pointer dereference")._groups : Dynamic).__nil__ == null || !((@:checkr _s ?? throw "null pointer dereference")._groups : Dynamic).__nil__))) {
            ((@:checkr _s ?? throw "null pointer dereference")._groups : stdgo.Slice<stdgo.GoString>).__setData__(((((@:checkr _s ?? throw "null pointer dereference")._groups : stdgo.Slice<stdgo.GoString>)).__slice__(0, ((((@:checkr _s ?? throw "null pointer dereference")._groups : stdgo.Slice<stdgo.GoString>).length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>));
        };
    }
    @:keep
    @:tdfield
    static public function _openGroup( _s:stdgo.Ref<stdgo._internal.log.slog.Slog_T_handleState.T_handleState>, _name:stdgo.GoString):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.log.slog.Slog_T_handleState.T_handleState> = _s;
        if ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._json) {
            @:check2r _s._appendKey(_name?.__copy__());
            @:check2r (@:checkr _s ?? throw "null pointer dereference")._buf.writeByte((123 : stdgo.GoUInt8));
            (@:checkr _s ?? throw "null pointer dereference")._sep = stdgo.Go.str()?.__copy__();
        } else {
            @:check2r (@:checkr _s ?? throw "null pointer dereference")._prefix.writeString(_name?.__copy__());
            @:check2r (@:checkr _s ?? throw "null pointer dereference")._prefix.writeByte((46 : stdgo.GoUInt8));
        };
        if (((@:checkr _s ?? throw "null pointer dereference")._groups != null && (((@:checkr _s ?? throw "null pointer dereference")._groups : Dynamic).__nil__ == null || !((@:checkr _s ?? throw "null pointer dereference")._groups : Dynamic).__nil__))) {
            ((@:checkr _s ?? throw "null pointer dereference")._groups : stdgo.Slice<stdgo.GoString>).__setData__((((@:checkr _s ?? throw "null pointer dereference")._groups : stdgo.Slice<stdgo.GoString>).__append__(_name?.__copy__())));
        };
    }
    @:keep
    @:tdfield
    static public function _openGroups( _s:stdgo.Ref<stdgo._internal.log.slog.Slog_T_handleState.T_handleState>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.log.slog.Slog_T_handleState.T_handleState> = _s;
        for (__766 => _n in ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._groups.__slice__((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._nOpenGroups) : stdgo.Slice<stdgo.GoString>)) {
            @:check2r _s._openGroup(_n?.__copy__());
        };
    }
    @:keep
    @:tdfield
    static public function _free( _s:stdgo.Ref<stdgo._internal.log.slog.Slog_T_handleState.T_handleState>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.log.slog.Slog_T_handleState.T_handleState> = _s;
        if ((@:checkr _s ?? throw "null pointer dereference")._freeBuf) {
            @:check2r (@:checkr _s ?? throw "null pointer dereference")._buf.free();
        };
        {
            var _gs = (@:checkr _s ?? throw "null pointer dereference")._groups;
            if ((_gs != null && ((_gs : Dynamic).__nil__ == null || !(_gs : Dynamic).__nil__))) {
                (_gs : stdgo.Slice<stdgo.GoString>).__setData__((((_gs : stdgo.Slice<stdgo.GoString>)).__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>));
                @:check2 stdgo._internal.log.slog.Slog__groupPool._groupPool.put(stdgo.Go.toInterface(_gs));
            };
        };
        @:check2r (@:checkr _s ?? throw "null pointer dereference")._prefix.free();
    }
    @:keep
    @:tdfield
    static public function _appendNonBuiltIns( _s:stdgo.Ref<stdgo._internal.log.slog.Slog_T_handleState.T_handleState>, _r:stdgo._internal.log.slog.Slog_Record.Record):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.log.slog.Slog_T_handleState.T_handleState> = _s;
        if ((((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._preformattedAttrs.length) > (0 : stdgo.GoInt) : Bool)) {
            @:check2r (@:checkr _s ?? throw "null pointer dereference")._buf.writeString((@:checkr _s ?? throw "null pointer dereference")._sep?.__copy__());
            @:check2r (@:checkr _s ?? throw "null pointer dereference")._buf.write((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._preformattedAttrs);
            (@:checkr _s ?? throw "null pointer dereference")._sep = @:check2r (@:checkr _s ?? throw "null pointer dereference")._h._attrSep()?.__copy__();
        };
        var _nOpenGroups = ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._nOpenGroups : stdgo.GoInt);
        if ((_r.numAttrs() > (0 : stdgo.GoInt) : Bool)) {
            @:check2r (@:checkr _s ?? throw "null pointer dereference")._prefix.writeString((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._groupPrefix?.__copy__());
            @:check2r _s._openGroups();
            _nOpenGroups = ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._groups.length);
            _r.attrs(function(_a:stdgo._internal.log.slog.Slog_Attr.Attr):Bool {
                @:check2r _s._appendAttr(_a?.__copy__());
                return true;
            });
        };
        if ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._json) {
            for (_ => _ in ((@:checkr (@:checkr _s ?? throw "null pointer dereference")._h ?? throw "null pointer dereference")._groups.__slice__(0, _nOpenGroups) : stdgo.Slice<stdgo.GoString>)) {
                @:check2r (@:checkr _s ?? throw "null pointer dereference")._buf.writeByte((125 : stdgo.GoUInt8));
            };
            @:check2r (@:checkr _s ?? throw "null pointer dereference")._buf.writeByte((125 : stdgo.GoUInt8));
        };
    }
}
