package stdgo._internal.net.http;
class Header_asInterface {
    @:keep
    public dynamic function _writeSubset(_w:stdgo._internal.io.Io_Writer.Writer, _exclude:stdgo.GoMap<stdgo.GoString, Bool>, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>):stdgo.Error return __self__.value._writeSubset(_w, _exclude, _trace);
    @:keep
    public dynamic function writeSubset(_w:stdgo._internal.io.Io_Writer.Writer, _exclude:stdgo.GoMap<stdgo.GoString, Bool>):stdgo.Error return __self__.value.writeSubset(_w, _exclude);
    @:keep
    public dynamic function _sortedKeyValues(_exclude:stdgo.GoMap<stdgo.GoString, Bool>):{ var _0 : stdgo.Slice<stdgo._internal.net.http.Http_T_keyValues.T_keyValues>; var _1 : stdgo.Ref<stdgo._internal.net.http.Http_T_headerSorter.T_headerSorter>; } return __self__.value._sortedKeyValues(_exclude);
    @:keep
    public dynamic function clone():stdgo._internal.net.http.Http_Header.Header return __self__.value.clone();
    @:keep
    public dynamic function _write(_w:stdgo._internal.io.Io_Writer.Writer, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>):stdgo.Error return __self__.value._write(_w, _trace);
    @:keep
    public dynamic function write(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error return __self__.value.write(_w);
    @:keep
    public dynamic function del(_key:stdgo.GoString):Void __self__.value.del(_key);
    @:keep
    public dynamic function _has(_key:stdgo.GoString):Bool return __self__.value._has(_key);
    @:keep
    public dynamic function _get(_key:stdgo.GoString):stdgo.GoString return __self__.value._get(_key);
    @:keep
    public dynamic function values(_key:stdgo.GoString):stdgo.Slice<stdgo.GoString> return __self__.value.values(_key);
    @:keep
    public dynamic function get(_key:stdgo.GoString):stdgo.GoString return __self__.value.get(_key);
    @:keep
    public dynamic function set(_key:stdgo.GoString, _value:stdgo.GoString):Void __self__.value.set(_key, _value);
    @:keep
    public dynamic function add(_key:stdgo.GoString, _value:stdgo.GoString):Void __self__.value.add(_key, _value);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_Header.Header>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
