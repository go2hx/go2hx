package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
class Builder_asInterface {
    @:keep
    public dynamic function finish():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.finish();
    @:keep
    public dynamic function unknownResource(_h:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader, _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_UnknownResource.UnknownResource):stdgo.Error return __self__.value.unknownResource(_h, _r);
    @:keep
    public dynamic function optresource(_h:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader, _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource):stdgo.Error return __self__.value.optresource(_h, _r);
    @:keep
    public dynamic function aaaaresource(_h:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader, _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AAAAResource.AAAAResource):stdgo.Error return __self__.value.aaaaresource(_h, _r);
    @:keep
    public dynamic function aresource(_h:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader, _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AResource.AResource):stdgo.Error return __self__.value.aresource(_h, _r);
    @:keep
    public dynamic function srvresource(_h:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader, _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource):stdgo.Error return __self__.value.srvresource(_h, _r);
    @:keep
    public dynamic function txtresource(_h:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader, _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource.TXTResource):stdgo.Error return __self__.value.txtresource(_h, _r);
    @:keep
    public dynamic function soaresource(_h:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader, _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource):stdgo.Error return __self__.value.soaresource(_h, _r);
    @:keep
    public dynamic function ptrresource(_h:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader, _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_PTRResource.PTRResource):stdgo.Error return __self__.value.ptrresource(_h, _r);
    @:keep
    public dynamic function nsresource(_h:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader, _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_NSResource.NSResource):stdgo.Error return __self__.value.nsresource(_h, _r);
    @:keep
    public dynamic function mxresource(_h:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader, _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_MXResource.MXResource):stdgo.Error return __self__.value.mxresource(_h, _r);
    @:keep
    public dynamic function cnameresource(_h:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader, _r:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_CNAMEResource.CNAMEResource):stdgo.Error return __self__.value.cnameresource(_h, _r);
    @:keep
    public dynamic function _checkResourceSection():stdgo.Error return __self__.value._checkResourceSection();
    @:keep
    public dynamic function question(_q:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question.Question):stdgo.Error return __self__.value.question(_q);
    @:keep
    public dynamic function _incrementSectionCount():stdgo.Error return __self__.value._incrementSectionCount();
    @:keep
    public dynamic function startAdditionals():stdgo.Error return __self__.value.startAdditionals();
    @:keep
    public dynamic function startAuthorities():stdgo.Error return __self__.value.startAuthorities();
    @:keep
    public dynamic function startAnswers():stdgo.Error return __self__.value.startAnswers();
    @:keep
    public dynamic function startQuestions():stdgo.Error return __self__.value.startQuestions();
    @:keep
    public dynamic function _startCheck(_s:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section):stdgo.Error return __self__.value._startCheck(_s);
    @:keep
    public dynamic function enableCompression():Void __self__.value.enableCompression();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder.Builder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
