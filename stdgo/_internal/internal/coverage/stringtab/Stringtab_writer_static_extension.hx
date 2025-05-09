package stdgo._internal.internal.coverage.stringtab;
@:keep @:allow(stdgo._internal.internal.coverage.stringtab.Stringtab.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function freeze( _stw:stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer>):Void {
        @:recv var _stw:stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer> = _stw;
        (@:checkr _stw ?? throw "null pointer dereference")._frozen = true;
    }
    @:keep
    @:tdfield
    static public function write( _stw:stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer>, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        @:recv var _stw:stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer> = _stw;
        var _wr128 = (function(_v:stdgo.GoUInt):stdgo.Error {
            (@:checkr _stw ?? throw "null pointer dereference")._tmp = ((@:checkr _stw ?? throw "null pointer dereference")._tmp.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _stw ?? throw "null pointer dereference")._tmp = stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128((@:checkr _stw ?? throw "null pointer dereference")._tmp, _v);
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/stringtab/stringtab.go#L74"
            {
                var __tmp__ = _w.write((@:checkr _stw ?? throw "null pointer dereference")._tmp), _nw:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/stringtab/stringtab.go#L75"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("writing string table: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                } else if (_nw != (((@:checkr _stw ?? throw "null pointer dereference")._tmp.length))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/stringtab/stringtab.go#L77"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("short write emitting stringtab uleb" : stdgo.GoString));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/stringtab/stringtab.go#L79"
            return (null : stdgo.Error);
        } : stdgo.GoUInt -> stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/stringtab/stringtab.go#L81"
        {
            var _err = (_wr128(((@:checkr _stw ?? throw "null pointer dereference")._strs.length : stdgo.GoUInt)) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/stringtab/stringtab.go#L82"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/stringtab/stringtab.go#L84"
        for (__0 => _s in (@:checkr _stw ?? throw "null pointer dereference")._strs) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/stringtab/stringtab.go#L85"
            {
                var _err = (_wr128((_s.length : stdgo.GoUInt)) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/stringtab/stringtab.go#L86"
                    return _err;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/stringtab/stringtab.go#L88"
            {
                var __tmp__ = _w.write((_s : stdgo.Slice<stdgo.GoUInt8>)), _nw:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/stringtab/stringtab.go#L89"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("writing string table: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                } else if (_nw != (((_s : stdgo.Slice<stdgo.GoUInt8>).length))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/coverage/stringtab/stringtab.go#L91"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("short write emitting stringtab" : stdgo.GoString));
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/stringtab/stringtab.go#L94"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function size( _stw:stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer>):stdgo.GoUInt32 {
        @:recv var _stw:stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer> = _stw;
        var _rval = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        (@:checkr _stw ?? throw "null pointer dereference")._tmp = ((@:checkr _stw ?? throw "null pointer dereference")._tmp.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _stw ?? throw "null pointer dereference")._tmp = stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128((@:checkr _stw ?? throw "null pointer dereference")._tmp, ((@:checkr _stw ?? throw "null pointer dereference")._strs.length : stdgo.GoUInt));
        _rval = (_rval + (((@:checkr _stw ?? throw "null pointer dereference")._tmp.length : stdgo.GoUInt32)) : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/stringtab/stringtab.go#L59"
        for (__0 => _s in (@:checkr _stw ?? throw "null pointer dereference")._strs) {
            (@:checkr _stw ?? throw "null pointer dereference")._tmp = ((@:checkr _stw ?? throw "null pointer dereference")._tmp.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            var _slen = (_s.length : stdgo.GoUInt);
            (@:checkr _stw ?? throw "null pointer dereference")._tmp = stdgo._internal.internal.coverage.uleb128.Uleb128_appenduleb128.appendUleb128((@:checkr _stw ?? throw "null pointer dereference")._tmp, _slen);
            _rval = (_rval + ((((@:checkr _stw ?? throw "null pointer dereference")._tmp.length : stdgo.GoUInt32) + (_slen : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/stringtab/stringtab.go#L65"
        return _rval;
    }
    @:keep
    @:tdfield
    static public function lookup( _stw:stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer>, _s:stdgo.GoString):stdgo.GoUInt32 {
        @:recv var _stw:stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer> = _stw;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/stringtab/stringtab.go#L40"
        {
            var __tmp__ = ((@:checkr _stw ?? throw "null pointer dereference")._stab != null && (@:checkr _stw ?? throw "null pointer dereference")._stab.__exists__(_s?.__copy__()) ? { _0 : (@:checkr _stw ?? throw "null pointer dereference")._stab[_s?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoUInt32), _1 : false }), _idx:stdgo.GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/stringtab/stringtab.go#L41"
                return _idx;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/stringtab/stringtab.go#L43"
        if ((@:checkr _stw ?? throw "null pointer dereference")._frozen) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/stringtab/stringtab.go#L44"
            throw stdgo.Go.toInterface(("internal error: string table previously frozen" : stdgo.GoString));
        };
        var _idx = ((@:checkr _stw ?? throw "null pointer dereference")._strs.length : stdgo.GoUInt32);
        (@:checkr _stw ?? throw "null pointer dereference")._stab[_s] = _idx;
        (@:checkr _stw ?? throw "null pointer dereference")._strs = ((@:checkr _stw ?? throw "null pointer dereference")._strs.__append__(_s?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/stringtab/stringtab.go#L49"
        return _idx;
    }
    @:keep
    @:tdfield
    static public function nentries( _stw:stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer>):stdgo.GoUInt32 {
        @:recv var _stw:stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer> = _stw;
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/stringtab/stringtab.go#L34"
        return ((@:checkr _stw ?? throw "null pointer dereference")._strs.length : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function initWriter( _stw:stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer>):Void {
        @:recv var _stw:stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer> = _stw;
        (@:checkr _stw ?? throw "null pointer dereference")._stab = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoUInt32>();
            x.__defaultValue__ = () -> (0 : stdgo.GoUInt32);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>) : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>);
        (@:checkr _stw ?? throw "null pointer dereference")._tmp = (new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
    }
}
