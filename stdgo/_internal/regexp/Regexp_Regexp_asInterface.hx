package stdgo._internal.regexp;
class Regexp_asInterface {
    @:keep
    public dynamic function unmarshalText(_text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.unmarshalText(_text);
    @:keep
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.marshalText();
    @:keep
    public dynamic function split(_s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> return __self__.value.split(_s, _n);
    @:keep
    public dynamic function findAllStringSubmatchIndex(_s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> return __self__.value.findAllStringSubmatchIndex(_s, _n);
    @:keep
    public dynamic function findAllStringSubmatch(_s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoString>> return __self__.value.findAllStringSubmatch(_s, _n);
    @:keep
    public dynamic function findAllSubmatchIndex(_b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> return __self__.value.findAllSubmatchIndex(_b, _n);
    @:keep
    public dynamic function findAllSubmatch(_b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>> return __self__.value.findAllSubmatch(_b, _n);
    @:keep
    public dynamic function findAllStringIndex(_s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> return __self__.value.findAllStringIndex(_s, _n);
    @:keep
    public dynamic function findAllString(_s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> return __self__.value.findAllString(_s, _n);
    @:keep
    public dynamic function findAllIndex(_b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> return __self__.value.findAllIndex(_b, _n);
    @:keep
    public dynamic function findAll(_b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> return __self__.value.findAll(_b, _n);
    @:keep
    public dynamic function findReaderSubmatchIndex(_r:stdgo._internal.io.Io_RuneReader.RuneReader):stdgo.Slice<stdgo.GoInt> return __self__.value.findReaderSubmatchIndex(_r);
    @:keep
    public dynamic function findStringSubmatchIndex(_s:stdgo.GoString):stdgo.Slice<stdgo.GoInt> return __self__.value.findStringSubmatchIndex(_s);
    @:keep
    public dynamic function findStringSubmatch(_s:stdgo.GoString):stdgo.Slice<stdgo.GoString> return __self__.value.findStringSubmatch(_s);
    @:keep
    public dynamic function findSubmatchIndex(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoInt> return __self__.value.findSubmatchIndex(_b);
    @:keep
    public dynamic function _expand(_dst:stdgo.Slice<stdgo.GoUInt8>, _template:stdgo.GoString, _bsrc:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.GoString, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> return __self__.value._expand(_dst, _template, _bsrc, _src, _match);
    @:keep
    public dynamic function expandString(_dst:stdgo.Slice<stdgo.GoUInt8>, _template:stdgo.GoString, _src:stdgo.GoString, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> return __self__.value.expandString(_dst, _template, _src, _match);
    @:keep
    public dynamic function expand(_dst:stdgo.Slice<stdgo.GoUInt8>, _template:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _match:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> return __self__.value.expand(_dst, _template, _src, _match);
    @:keep
    public dynamic function findSubmatch(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> return __self__.value.findSubmatch(_b);
    @:keep
    public dynamic function findReaderIndex(_r:stdgo._internal.io.Io_RuneReader.RuneReader):stdgo.Slice<stdgo.GoInt> return __self__.value.findReaderIndex(_r);
    @:keep
    public dynamic function findStringIndex(_s:stdgo.GoString):stdgo.Slice<stdgo.GoInt> return __self__.value.findStringIndex(_s);
    @:keep
    public dynamic function findString(_s:stdgo.GoString):stdgo.GoString return __self__.value.findString(_s);
    @:keep
    public dynamic function findIndex(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoInt> return __self__.value.findIndex(_b);
    @:keep
    public dynamic function find(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.value.find(_b);
    @:keep
    public dynamic function _allMatches(_s:stdgo.GoString, _b:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt, _deliver:stdgo.Slice<stdgo.GoInt> -> Void):Void __self__.value._allMatches(_s, _b, _n, _deliver);
    @:keep
    public dynamic function _pad(_a:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> return __self__.value._pad(_a);
    @:keep
    public dynamic function replaceAllFunc(_src:stdgo.Slice<stdgo.GoUInt8>, _repl:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.value.replaceAllFunc(_src, _repl);
    @:keep
    public dynamic function replaceAllLiteral(_src:stdgo.Slice<stdgo.GoUInt8>, _repl:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.value.replaceAllLiteral(_src, _repl);
    @:keep
    public dynamic function replaceAll(_src:stdgo.Slice<stdgo.GoUInt8>, _repl:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.value.replaceAll(_src, _repl);
    @:keep
    public dynamic function _replaceAll(_bsrc:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.GoString, _nmatch:stdgo.GoInt, _repl:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoInt>) -> stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return __self__.value._replaceAll(_bsrc, _src, _nmatch, _repl);
    @:keep
    public dynamic function replaceAllStringFunc(_src:stdgo.GoString, _repl:stdgo.GoString -> stdgo.GoString):stdgo.GoString return __self__.value.replaceAllStringFunc(_src, _repl);
    @:keep
    public dynamic function replaceAllLiteralString(_src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString return __self__.value.replaceAllLiteralString(_src, _repl);
    @:keep
    public dynamic function replaceAllString(_src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString return __self__.value.replaceAllString(_src, _repl);
    @:keep
    public dynamic function match(_b:stdgo.Slice<stdgo.GoUInt8>):Bool return __self__.value.match(_b);
    @:keep
    public dynamic function matchString(_s:stdgo.GoString):Bool return __self__.value.matchString(_s);
    @:keep
    public dynamic function matchReader(_r:stdgo._internal.io.Io_RuneReader.RuneReader):Bool return __self__.value.matchReader(_r);
    @:keep
    public dynamic function literalPrefix():{ var _0 : stdgo.GoString; var _1 : Bool; } return __self__.value.literalPrefix();
    @:keep
    public dynamic function subexpIndex(_name:stdgo.GoString):stdgo.GoInt return __self__.value.subexpIndex(_name);
    @:keep
    public dynamic function subexpNames():stdgo.Slice<stdgo.GoString> return __self__.value.subexpNames();
    @:keep
    public dynamic function numSubexp():stdgo.GoInt return __self__.value.numSubexp();
    @:keep
    public dynamic function _put(_m:stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine>):Void __self__.value._put(_m);
    @:keep
    public dynamic function _get():stdgo.Ref<stdgo._internal.regexp.Regexp_T_machine.T_machine> return __self__.value._get();
    @:keep
    public dynamic function longest():Void __self__.value.longest();
    @:keep
    public dynamic function copy():stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> return __self__.value.copy();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function _doExecute(_r:stdgo._internal.io.Io_RuneReader.RuneReader, _b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> return __self__.value._doExecute(_r, _b, _s, _pos, _ncap, _dstCap);
    @:keep
    public dynamic function _doMatch(_r:stdgo._internal.io.Io_RuneReader.RuneReader, _b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):Bool return __self__.value._doMatch(_r, _b, _s);
    @:keep
    public dynamic function _doOnePass(_ir:stdgo._internal.io.Io_RuneReader.RuneReader, _ib:stdgo.Slice<stdgo.GoUInt8>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> return __self__.value._doOnePass(_ir, _ib, _is, _pos, _ncap, _dstCap);
    @:keep
    public dynamic function _backtrack(_ib:stdgo.Slice<stdgo.GoUInt8>, _is:stdgo.GoString, _pos:stdgo.GoInt, _ncap:stdgo.GoInt, _dstCap:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> return __self__.value._backtrack(_ib, _is, _pos, _ncap, _dstCap);
    @:keep
    public dynamic function _tryBacktrack(_b:stdgo.Ref<stdgo._internal.regexp.Regexp_T_bitState.T_bitState>, _i:stdgo._internal.regexp.Regexp_T_input.T_input, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt):Bool return __self__.value._tryBacktrack(_b, _i, _pc, _pos);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.regexp.Regexp_Regexp.Regexp>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
