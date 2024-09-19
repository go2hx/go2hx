package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
class Parser_asInterface {
    @:keep
    public dynamic function unknownResource():{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_UnknownResource.UnknownResource; var _1 : stdgo.Error; } return __self__.value.unknownResource();
    @:keep
    public dynamic function optresource():{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource; var _1 : stdgo.Error; } return __self__.value.optresource();
    @:keep
    public dynamic function aaaaresource():{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AAAAResource.AAAAResource; var _1 : stdgo.Error; } return __self__.value.aaaaresource();
    @:keep
    public dynamic function aresource():{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AResource.AResource; var _1 : stdgo.Error; } return __self__.value.aresource();
    @:keep
    public dynamic function srvresource():{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource; var _1 : stdgo.Error; } return __self__.value.srvresource();
    @:keep
    public dynamic function txtresource():{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource.TXTResource; var _1 : stdgo.Error; } return __self__.value.txtresource();
    @:keep
    public dynamic function soaresource():{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource; var _1 : stdgo.Error; } return __self__.value.soaresource();
    @:keep
    public dynamic function ptrresource():{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_PTRResource.PTRResource; var _1 : stdgo.Error; } return __self__.value.ptrresource();
    @:keep
    public dynamic function nsresource():{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_NSResource.NSResource; var _1 : stdgo.Error; } return __self__.value.nsresource();
    @:keep
    public dynamic function mxresource():{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_MXResource.MXResource; var _1 : stdgo.Error; } return __self__.value.mxresource();
    @:keep
    public dynamic function cnameresource():{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_CNAMEResource.CNAMEResource; var _1 : stdgo.Error; } return __self__.value.cnameresource();
    @:keep
    public dynamic function skipAllAdditionals():stdgo.Error return __self__.value.skipAllAdditionals();
    @:keep
    public dynamic function skipAdditional():stdgo.Error return __self__.value.skipAdditional();
    @:keep
    public dynamic function allAdditionals():{ var _0 : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>; var _1 : stdgo.Error; } return __self__.value.allAdditionals();
    @:keep
    public dynamic function additional():{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource; var _1 : stdgo.Error; } return __self__.value.additional();
    @:keep
    public dynamic function additionalHeader():{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader; var _1 : stdgo.Error; } return __self__.value.additionalHeader();
    @:keep
    public dynamic function skipAllAuthorities():stdgo.Error return __self__.value.skipAllAuthorities();
    @:keep
    public dynamic function skipAuthority():stdgo.Error return __self__.value.skipAuthority();
    @:keep
    public dynamic function allAuthorities():{ var _0 : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>; var _1 : stdgo.Error; } return __self__.value.allAuthorities();
    @:keep
    public dynamic function authority():{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource; var _1 : stdgo.Error; } return __self__.value.authority();
    @:keep
    public dynamic function authorityHeader():{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader; var _1 : stdgo.Error; } return __self__.value.authorityHeader();
    @:keep
    public dynamic function skipAllAnswers():stdgo.Error return __self__.value.skipAllAnswers();
    @:keep
    public dynamic function skipAnswer():stdgo.Error return __self__.value.skipAnswer();
    @:keep
    public dynamic function allAnswers():{ var _0 : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>; var _1 : stdgo.Error; } return __self__.value.allAnswers();
    @:keep
    public dynamic function answer():{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource; var _1 : stdgo.Error; } return __self__.value.answer();
    @:keep
    public dynamic function answerHeader():{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader; var _1 : stdgo.Error; } return __self__.value.answerHeader();
    @:keep
    public dynamic function skipAllQuestions():stdgo.Error return __self__.value.skipAllQuestions();
    @:keep
    public dynamic function skipQuestion():stdgo.Error return __self__.value.skipQuestion();
    @:keep
    public dynamic function allQuestions():{ var _0 : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question.Question>; var _1 : stdgo.Error; } return __self__.value.allQuestions();
    @:keep
    public dynamic function question():{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question.Question; var _1 : stdgo.Error; } return __self__.value.question();
    @:keep
    public dynamic function _skipResource(_sec:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section):stdgo.Error return __self__.value._skipResource(_sec);
    @:keep
    public dynamic function _resourceHeader(_sec:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader; var _1 : stdgo.Error; } return __self__.value._resourceHeader(_sec);
    @:keep
    public dynamic function _resource(_sec:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource; var _1 : stdgo.Error; } return __self__.value._resource(_sec);
    @:keep
    public dynamic function _checkAdvance(_sec:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section):stdgo.Error return __self__.value._checkAdvance(_sec);
    @:keep
    public dynamic function start(_msg:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Header.Header; var _1 : stdgo.Error; } return __self__.value.start(_msg);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser.Parser>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
