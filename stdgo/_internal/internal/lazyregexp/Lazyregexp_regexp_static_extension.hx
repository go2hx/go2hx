package stdgo._internal.internal.lazyregexp;
@:keep @:allow(stdgo._internal.internal.lazyregexp.Lazyregexp.Regexp_asInterface) class Regexp_static_extension {
    @:keep
    @:tdfield
    static public function subexpNames( _r:stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp>):stdgo.Slice<stdgo.GoString> {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp> = _r;
        return @:check2r @:check2r _r._re().subexpNames();
    }
    @:keep
    @:tdfield
    static public function matchString( _r:stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp>, _s:stdgo.GoString):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp> = _r;
        return @:check2r @:check2r _r._re().matchString(_s?.__copy__());
    }
    @:keep
    @:tdfield
    static public function findAllString( _r:stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp>, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp> = _r;
        return @:check2r @:check2r _r._re().findAllString(_s?.__copy__(), _n);
    }
    @:keep
    @:tdfield
    static public function findString( _r:stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp> = _r;
        return @:check2r @:check2r _r._re().findString(_s?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function replaceAllString( _r:stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp>, _src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp> = _r;
        return @:check2r @:check2r _r._re().replaceAllString(_src?.__copy__(), _repl?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function findStringSubmatchIndex( _r:stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoInt> {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp> = _r;
        return @:check2r @:check2r _r._re().findStringSubmatchIndex(_s?.__copy__());
    }
    @:keep
    @:tdfield
    static public function findStringSubmatch( _r:stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp> = _r;
        return @:check2r @:check2r _r._re().findStringSubmatch(_s?.__copy__());
    }
    @:keep
    @:tdfield
    static public function findSubmatch( _r:stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp>, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp> = _r;
        return @:check2r @:check2r _r._re().findSubmatch(_s);
    }
    @:keep
    @:tdfield
    static public function _build( _r:stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._rx = stdgo._internal.regexp.Regexp_mustcompile.mustCompile((@:checkr _r ?? throw "null pointer dereference")._str?.__copy__());
        (@:checkr _r ?? throw "null pointer dereference")._str = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _re( _r:stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_regexp.Regexp> = _r;
        @:check2 (@:checkr _r ?? throw "null pointer dereference")._once.do_(@:check2r _r._build);
        return (@:checkr _r ?? throw "null pointer dereference")._rx;
    }
}
