package stdgo.internal.lazyregexp;
class Regexp_static_extension {
    static public function subexpNames(_r:Regexp):Array<String> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp.Regexp>);
        return [for (i in stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp_static_extension.Regexp_static_extension.subexpNames(_r)) i];
    }
    static public function matchString(_r:Regexp, _s:String):Bool {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp_static_extension.Regexp_static_extension.matchString(_r, _s);
    }
    static public function findAllString(_r:Regexp, _s:String, _n:StdTypes.Int):Array<String> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp_static_extension.Regexp_static_extension.findAllString(_r, _s, _n)) i];
    }
    static public function findString(_r:Regexp, _s:String):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp_static_extension.Regexp_static_extension.findString(_r, _s);
    }
    static public function replaceAllString(_r:Regexp, _src:String, _repl:String):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp.Regexp>);
        final _src = (_src : stdgo.GoString);
        final _repl = (_repl : stdgo.GoString);
        return stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp_static_extension.Regexp_static_extension.replaceAllString(_r, _src, _repl);
    }
    static public function findStringSubmatchIndex(_r:Regexp, _s:String):Array<StdTypes.Int> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        return [for (i in stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp_static_extension.Regexp_static_extension.findStringSubmatchIndex(_r, _s)) i];
    }
    static public function findStringSubmatch(_r:Regexp, _s:String):Array<String> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        return [for (i in stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp_static_extension.Regexp_static_extension.findStringSubmatch(_r, _s)) i];
    }
    static public function findSubmatch(_r:Regexp, _s:Array<std.UInt>):Array<Array<std.UInt>> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp.Regexp>);
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp_static_extension.Regexp_static_extension.findSubmatch(_r, _s)) [for (i in i) i]];
    }
    static public function _build(_r:Regexp):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp.Regexp>);
        stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp_static_extension.Regexp_static_extension._build(_r);
    }
    static public function _re(_r:Regexp):stdgo._internal.regexp.Regexp_Regexp.Regexp {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp.Regexp>);
        return stdgo._internal.internal.lazyregexp.Lazyregexp_Regexp_static_extension.Regexp_static_extension._re(_r);
    }
}
