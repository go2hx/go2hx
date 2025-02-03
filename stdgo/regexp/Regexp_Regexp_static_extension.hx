package stdgo.regexp;
class Regexp_static_extension {
    static public function unmarshalText(_re:Regexp_, _text:Array<std.UInt>):stdgo.Error {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.unmarshalText(_re, _text);
    }
    static public function marshalText(_re:Regexp_):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        return {
            final obj = stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.marshalText(_re);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function split(_re:Regexp_, _s:String, _n:StdTypes.Int):Array<String> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.split(_re, _s, _n)) i];
    }
    static public function findAllStringSubmatchIndex(_re:Regexp_, _s:String, _n:StdTypes.Int):Array<Array<StdTypes.Int>> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findAllStringSubmatchIndex(_re, _s, _n)) [for (i in i) i]];
    }
    static public function findAllStringSubmatch(_re:Regexp_, _s:String, _n:StdTypes.Int):Array<Array<String>> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findAllStringSubmatch(_re, _s, _n)) [for (i in i) i]];
    }
    static public function findAllSubmatchIndex(_re:Regexp_, _b:Array<std.UInt>, _n:StdTypes.Int):Array<Array<StdTypes.Int>> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findAllSubmatchIndex(_re, _b, _n)) [for (i in i) i]];
    }
    static public function findAllSubmatch(_re:Regexp_, _b:Array<std.UInt>, _n:StdTypes.Int):Array<Array<Array<std.UInt>>> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findAllSubmatch(_re, _b, _n)) [for (i in i) [for (i in i) i]]];
    }
    static public function findAllStringIndex(_re:Regexp_, _s:String, _n:StdTypes.Int):Array<Array<StdTypes.Int>> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findAllStringIndex(_re, _s, _n)) [for (i in i) i]];
    }
    static public function findAllString(_re:Regexp_, _s:String, _n:StdTypes.Int):Array<String> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findAllString(_re, _s, _n)) i];
    }
    static public function findAllIndex(_re:Regexp_, _b:Array<std.UInt>, _n:StdTypes.Int):Array<Array<StdTypes.Int>> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findAllIndex(_re, _b, _n)) [for (i in i) i]];
    }
    static public function findAll(_re:Regexp_, _b:Array<std.UInt>, _n:StdTypes.Int):Array<Array<std.UInt>> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findAll(_re, _b, _n)) [for (i in i) i]];
    }
    static public function findReaderSubmatchIndex(_re:Regexp_, _r:stdgo._internal.io.Io_RuneReader.RuneReader):Array<StdTypes.Int> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findReaderSubmatchIndex(_re, _r)) i];
    }
    static public function findStringSubmatchIndex(_re:Regexp_, _s:String):Array<StdTypes.Int> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findStringSubmatchIndex(_re, _s)) i];
    }
    static public function findStringSubmatch(_re:Regexp_, _s:String):Array<String> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findStringSubmatch(_re, _s)) i];
    }
    static public function findSubmatchIndex(_re:Regexp_, _b:Array<std.UInt>):Array<StdTypes.Int> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findSubmatchIndex(_re, _b)) i];
    }
    static public function _expand(_re:Regexp_, _dst:Array<std.UInt>, _template:String, _bsrc:Array<std.UInt>, _src:String, _match:Array<StdTypes.Int>):Array<std.UInt> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _template = (_template : stdgo.GoString);
        final _bsrc = ([for (i in _bsrc) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = (_src : stdgo.GoString);
        final _match = ([for (i in _match) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension._expand(_re, _dst, _template, _bsrc, _src, _match)) i];
    }
    static public function expandString(_re:Regexp_, _dst:Array<std.UInt>, _template:String, _src:String, _match:Array<StdTypes.Int>):Array<std.UInt> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _template = (_template : stdgo.GoString);
        final _src = (_src : stdgo.GoString);
        final _match = ([for (i in _match) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.expandString(_re, _dst, _template, _src, _match)) i];
    }
    static public function expand(_re:Regexp_, _dst:Array<std.UInt>, _template:Array<std.UInt>, _src:Array<std.UInt>, _match:Array<StdTypes.Int>):Array<std.UInt> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _dst = ([for (i in _dst) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _template = ([for (i in _template) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _match = ([for (i in _match) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.expand(_re, _dst, _template, _src, _match)) i];
    }
    static public function findSubmatch(_re:Regexp_, _b:Array<std.UInt>):Array<Array<std.UInt>> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findSubmatch(_re, _b)) [for (i in i) i]];
    }
    static public function findReaderIndex(_re:Regexp_, _r:stdgo._internal.io.Io_RuneReader.RuneReader):Array<StdTypes.Int> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findReaderIndex(_re, _r)) i];
    }
    static public function findStringIndex(_re:Regexp_, _s:String):Array<StdTypes.Int> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findStringIndex(_re, _s)) i];
    }
    static public function findString(_re:Regexp_, _s:String):String {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findString(_re, _s);
    }
    static public function findIndex(_re:Regexp_, _b:Array<std.UInt>):Array<StdTypes.Int> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.findIndex(_re, _b)) i];
    }
    static public function find(_re:Regexp_, _b:Array<std.UInt>):Array<std.UInt> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.find(_re, _b)) i];
    }
    static public function _allMatches(_re:Regexp_, _s:String, _b:Array<std.UInt>, _n:StdTypes.Int, _deliver:stdgo.Slice<stdgo.GoInt> -> Void):Void {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _n = (_n : stdgo.GoInt);
        final _deliver = _deliver;
        stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension._allMatches(_re, _s, _b, _n, _deliver);
    }
    static public function _pad(_re:Regexp_, _a:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _a = ([for (i in _a) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension._pad(_re, _a)) i];
    }
    static public function replaceAllFunc(_re:Regexp_, _src:Array<std.UInt>, _repl:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoUInt8>):Array<std.UInt> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _repl = _repl;
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.replaceAllFunc(_re, _src, _repl)) i];
    }
    static public function replaceAllLiteral(_re:Regexp_, _src:Array<std.UInt>, _repl:Array<std.UInt>):Array<std.UInt> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _repl = ([for (i in _repl) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.replaceAllLiteral(_re, _src, _repl)) i];
    }
    static public function replaceAll(_re:Regexp_, _src:Array<std.UInt>, _repl:Array<std.UInt>):Array<std.UInt> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _src = ([for (i in _src) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _repl = ([for (i in _repl) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.replaceAll(_re, _src, _repl)) i];
    }
    static public function _replaceAll(_re:Regexp_, _bsrc:Array<std.UInt>, _src:String, _nmatch:StdTypes.Int, _repl:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoInt>) -> stdgo.Slice<stdgo.GoUInt8>):Array<std.UInt> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _bsrc = ([for (i in _bsrc) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _src = (_src : stdgo.GoString);
        final _nmatch = (_nmatch : stdgo.GoInt);
        final _repl = _repl;
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension._replaceAll(_re, _bsrc, _src, _nmatch, _repl)) i];
    }
    static public function replaceAllStringFunc(_re:Regexp_, _src:String, _repl:stdgo.GoString -> stdgo.GoString):String {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _src = (_src : stdgo.GoString);
        final _repl = _repl;
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.replaceAllStringFunc(_re, _src, _repl);
    }
    static public function replaceAllLiteralString(_re:Regexp_, _src:String, _repl:String):String {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _src = (_src : stdgo.GoString);
        final _repl = (_repl : stdgo.GoString);
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.replaceAllLiteralString(_re, _src, _repl);
    }
    static public function replaceAllString(_re:Regexp_, _src:String, _repl:String):String {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _src = (_src : stdgo.GoString);
        final _repl = (_repl : stdgo.GoString);
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.replaceAllString(_re, _src, _repl);
    }
    static public function match(_re:Regexp_, _b:Array<std.UInt>):Bool {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.match(_re, _b);
    }
    static public function matchString(_re:Regexp_, _s:String):Bool {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.matchString(_re, _s);
    }
    static public function matchReader(_re:Regexp_, _r:stdgo._internal.io.Io_RuneReader.RuneReader):Bool {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.matchReader(_re, _r);
    }
    static public function literalPrefix(_re:Regexp_):stdgo.Tuple<String, Bool> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        return {
            final obj = stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.literalPrefix(_re);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function subexpIndex(_re:Regexp_, _name:String):StdTypes.Int {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.subexpIndex(_re, _name);
    }
    static public function subexpNames(_re:Regexp_):Array<String> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.subexpNames(_re)) i];
    }
    static public function numSubexp(_re:Regexp_):StdTypes.Int {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.numSubexp(_re);
    }
    static public function _put(_re:Regexp_, _m:T_machine):Void {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _m = (_m : stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine>);
        stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension._put(_re, _m);
    }
    static public function _get(_re:Regexp_):T_machine {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension._get(_re);
    }
    static public function longest(_re:Regexp_):Void {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.longest(_re);
    }
    static public function copy(_re:Regexp_):Regexp_ {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.copy(_re);
    }
    static public function string(_re:Regexp_):String {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension.string(_re);
    }
    static public function _doExecute(_re:Regexp_, _r:stdgo._internal.io.Io_RuneReader.RuneReader, _b:Array<std.UInt>, _s:String, _pos:StdTypes.Int, _ncap:StdTypes.Int, _dstCap:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _s = (_s : stdgo.GoString);
        final _pos = (_pos : stdgo.GoInt);
        final _ncap = (_ncap : stdgo.GoInt);
        final _dstCap = ([for (i in _dstCap) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension._doExecute(_re, _r, _b, _s, _pos, _ncap, _dstCap)) i];
    }
    static public function _doMatch(_re:Regexp_, _r:stdgo._internal.io.Io_RuneReader.RuneReader, _b:Array<std.UInt>, _s:String):Bool {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension._doMatch(_re, _r, _b, _s);
    }
    static public function _doOnePass(_re:Regexp_, _ir:stdgo._internal.io.Io_RuneReader.RuneReader, _ib:Array<std.UInt>, _is:String, _pos:StdTypes.Int, _ncap:StdTypes.Int, _dstCap:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _ib = ([for (i in _ib) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _is = (_is : stdgo.GoString);
        final _pos = (_pos : stdgo.GoInt);
        final _ncap = (_ncap : stdgo.GoInt);
        final _dstCap = ([for (i in _dstCap) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension._doOnePass(_re, _ir, _ib, _is, _pos, _ncap, _dstCap)) i];
    }
    static public function _backtrack(_re:Regexp_, _ib:Array<std.UInt>, _is:String, _pos:StdTypes.Int, _ncap:StdTypes.Int, _dstCap:Array<StdTypes.Int>):Array<StdTypes.Int> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _ib = ([for (i in _ib) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _is = (_is : stdgo.GoString);
        final _pos = (_pos : stdgo.GoInt);
        final _ncap = (_ncap : stdgo.GoInt);
        final _dstCap = ([for (i in _dstCap) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return [for (i in stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension._backtrack(_re, _ib, _is, _pos, _ncap, _dstCap)) i];
    }
    static public function _tryBacktrack(_re:Regexp_, _b:T_bitState, _i:T_input, _pc:std.UInt, _pos:StdTypes.Int):Bool {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>);
        final _b = (_b : stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState>);
        final _pc = (_pc : stdgo.GoUInt32);
        final _pos = (_pos : stdgo.GoInt);
        return stdgo._internal.regexp.Regexp_Regexp_static_extension.Regexp_static_extension._tryBacktrack(_re, _b, _i, _pc, _pos);
    }
}
