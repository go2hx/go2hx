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
@:keep @:allow(stdgo._internal.log.slog.Slog.Record_asInterface) class Record_static_extension {
    @:keep
    @:tdfield
    static public function _source( _r:stdgo._internal.log.slog.Slog_Record.Record):stdgo.Ref<stdgo._internal.log.slog.Slog_Source.Source> {
        @:recv var _r:stdgo._internal.log.slog.Slog_Record.Record = _r?.__copy__();
        var _fs = stdgo._internal.runtime.Runtime_callersFrames.callersFrames((new stdgo.Slice<stdgo.GoUIntptr>(1, 1, ...[_r.pC]) : stdgo.Slice<stdgo.GoUIntptr>));
        var __tmp__ = @:check2r _fs.next(), _f:stdgo._internal.runtime.Runtime_Frame.Frame = __tmp__._0, __871:Bool = __tmp__._1;
        return (stdgo.Go.setRef(({ function_ : _f.function_?.__copy__(), file : _f.file?.__copy__(), line : _f.line } : stdgo._internal.log.slog.Slog_Source.Source)) : stdgo.Ref<stdgo._internal.log.slog.Slog_Source.Source>);
    }
    @:keep
    @:tdfield
    static public function add( _r:stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record>, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _r:stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> = _r;
        var _a:stdgo._internal.log.slog.Slog_Attr.Attr = ({} : stdgo._internal.log.slog.Slog_Attr.Attr);
        while (((_args.length) > (0 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = stdgo._internal.log.slog.Slog__argsToAttr._argsToAttr(_args);
                _a = @:tmpset0 __tmp__._0?.__copy__();
                _args = @:tmpset0 __tmp__._1;
            };
            if (_a.value._isEmptyGroup()) {
                continue;
            };
            if (((@:checkr _r ?? throw "null pointer dereference")._nFront < ((@:checkr _r ?? throw "null pointer dereference")._front.length) : Bool)) {
                (@:checkr _r ?? throw "null pointer dereference")._front[((@:checkr _r ?? throw "null pointer dereference")._nFront : stdgo.GoInt)] = _a?.__copy__();
                (@:checkr _r ?? throw "null pointer dereference")._nFront++;
            } else {
                if ((@:checkr _r ?? throw "null pointer dereference")._back == null) {
                    (@:checkr _r ?? throw "null pointer dereference")._back = (new stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>((0 : stdgo.GoInt).toBasic(), stdgo._internal.log.slog.Slog__countAttrs._countAttrs(_args), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > stdgo._internal.log.slog.Slog__countAttrs._countAttrs(_args) ? (0 : stdgo.GoInt).toBasic() : stdgo._internal.log.slog.Slog__countAttrs._countAttrs(_args) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.log.slog.Slog_Attr.Attr)]) : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>);
                };
                (@:checkr _r ?? throw "null pointer dereference")._back = ((@:checkr _r ?? throw "null pointer dereference")._back.__append__(_a));
            };
        };
    }
    @:keep
    @:tdfield
    static public function addAttrs( _r:stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record>, _attrs:haxe.Rest<stdgo._internal.log.slog.Slog_Attr.Attr>):Void {
        var _attrs = new stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>(_attrs.length, 0, ..._attrs);
        @:recv var _r:stdgo.Ref<stdgo._internal.log.slog.Slog_Record.Record> = _r;
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            _i = (0 : stdgo.GoInt);
            while (((_i < (_attrs.length) : Bool) && ((@:checkr _r ?? throw "null pointer dereference")._nFront < ((@:checkr _r ?? throw "null pointer dereference")._front.length) : Bool) : Bool)) {
                var _a = (_attrs[(_i : stdgo.GoInt)] : stdgo._internal.log.slog.Slog_Attr.Attr);
if (_a.value._isEmptyGroup()) {
                    {
                        _i++;
                        continue;
                    };
                };
(@:checkr _r ?? throw "null pointer dereference")._front[((@:checkr _r ?? throw "null pointer dereference")._nFront : stdgo.GoInt)] = _a.__copy__();
(@:checkr _r ?? throw "null pointer dereference")._nFront++;
                _i++;
            };
        };
        if (((@:checkr _r ?? throw "null pointer dereference")._back.capacity > ((@:checkr _r ?? throw "null pointer dereference")._back.length) : Bool)) {
            var _end = (((@:checkr _r ?? throw "null pointer dereference")._back.__slice__(0, (((@:checkr _r ?? throw "null pointer dereference")._back.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>)[((@:checkr _r ?? throw "null pointer dereference")._back.length : stdgo.GoInt)] : stdgo._internal.log.slog.Slog_Attr.Attr);
            if (!_end._isEmpty()) {
                throw stdgo.Go.toInterface(("copies of a slog.Record were both modified" : stdgo.GoString));
            };
        };
        var _ne = (stdgo._internal.log.slog.Slog__countEmptyGroups._countEmptyGroups((_attrs.__slice__(_i) : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>)) : stdgo.GoInt);
        (@:checkr _r ?? throw "null pointer dereference")._back = stdgo._internal.slices.Slices_grow.grow((@:checkr _r ?? throw "null pointer dereference")._back, (((_attrs.__slice__(_i) : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>).length) - _ne : stdgo.GoInt));
        for (__871 => _a in (_attrs.__slice__(_i) : stdgo.Slice<stdgo._internal.log.slog.Slog_Attr.Attr>)) {
            if (!_a.value._isEmptyGroup()) {
                (@:checkr _r ?? throw "null pointer dereference")._back = ((@:checkr _r ?? throw "null pointer dereference")._back.__append__(_a));
            };
        };
    }
    @:keep
    @:tdfield
    static public function attrs( _r:stdgo._internal.log.slog.Slog_Record.Record, _f:stdgo._internal.log.slog.Slog_Attr.Attr -> Bool):Void {
        @:recv var _r:stdgo._internal.log.slog.Slog_Record.Record = _r?.__copy__();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _r._nFront : Bool)) {
                if (!_f(_r._front[(_i : stdgo.GoInt)])) {
                    return;
                };
                _i++;
            };
        };
        for (__871 => _a in _r._back) {
            if (!_f(_a?.__copy__())) {
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function numAttrs( _r:stdgo._internal.log.slog.Slog_Record.Record):stdgo.GoInt {
        @:recv var _r:stdgo._internal.log.slog.Slog_Record.Record = _r?.__copy__();
        return (_r._nFront + (_r._back.length) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function clone( _r:stdgo._internal.log.slog.Slog_Record.Record):stdgo._internal.log.slog.Slog_Record.Record {
        @:recv var _r:stdgo._internal.log.slog.Slog_Record.Record = _r?.__copy__();
        _r._back = stdgo._internal.slices.Slices_clip.clip(_r._back);
        return _r?.__copy__();
    }
}
