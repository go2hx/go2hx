package stdgo;
final sameSiteDefaultMode : SameSite = stdgo._internal.net.http.Http_samesitedefaultmode.sameSiteDefaultMode;
final sameSiteLaxMode = stdgo._internal.net.http.Http_samesitelaxmode.sameSiteLaxMode;
final sameSiteStrictMode = stdgo._internal.net.http.Http_samesitestrictmode.sameSiteStrictMode;
final sameSiteNoneMode = stdgo._internal.net.http.Http_samesitenonemode.sameSiteNoneMode;
final methodGet : String = stdgo._internal.net.http.Http_methodget.methodGet;
final methodHead : String = stdgo._internal.net.http.Http_methodhead.methodHead;
final methodPost : String = stdgo._internal.net.http.Http_methodpost.methodPost;
final methodPut : String = stdgo._internal.net.http.Http_methodput.methodPut;
final methodPatch : String = stdgo._internal.net.http.Http_methodpatch.methodPatch;
final methodDelete : String = stdgo._internal.net.http.Http_methoddelete.methodDelete;
final methodConnect : String = stdgo._internal.net.http.Http_methodconnect.methodConnect;
final methodOptions : String = stdgo._internal.net.http.Http_methodoptions.methodOptions;
final methodTrace : String = stdgo._internal.net.http.Http_methodtrace.methodTrace;
final trailerPrefix : String = stdgo._internal.net.http.Http_trailerprefix.trailerPrefix;
final defaultMaxHeaderBytes : haxe.UInt64 = stdgo._internal.net.http.Http_defaultmaxheaderbytes.defaultMaxHeaderBytes;
final timeFormat : String = stdgo._internal.net.http.Http_timeformat.timeFormat;
final stateNew : ConnState = stdgo._internal.net.http.Http_statenew.stateNew;
final stateActive = stdgo._internal.net.http.Http_stateactive.stateActive;
final stateIdle = stdgo._internal.net.http.Http_stateidle.stateIdle;
final stateHijacked = stdgo._internal.net.http.Http_statehijacked.stateHijacked;
final stateClosed = stdgo._internal.net.http.Http_stateclosed.stateClosed;
final statusContinue : haxe.UInt64 = stdgo._internal.net.http.Http_statuscontinue.statusContinue;
final statusSwitchingProtocols : haxe.UInt64 = stdgo._internal.net.http.Http_statusswitchingprotocols.statusSwitchingProtocols;
final statusProcessing : haxe.UInt64 = stdgo._internal.net.http.Http_statusprocessing.statusProcessing;
final statusEarlyHints : haxe.UInt64 = stdgo._internal.net.http.Http_statusearlyhints.statusEarlyHints;
final statusOK : haxe.UInt64 = stdgo._internal.net.http.Http_statusok.statusOK;
final statusCreated : haxe.UInt64 = stdgo._internal.net.http.Http_statuscreated.statusCreated;
final statusAccepted : haxe.UInt64 = stdgo._internal.net.http.Http_statusaccepted.statusAccepted;
final statusNonAuthoritativeInfo : haxe.UInt64 = stdgo._internal.net.http.Http_statusnonauthoritativeinfo.statusNonAuthoritativeInfo;
final statusNoContent : haxe.UInt64 = stdgo._internal.net.http.Http_statusnocontent.statusNoContent;
final statusResetContent : haxe.UInt64 = stdgo._internal.net.http.Http_statusresetcontent.statusResetContent;
final statusPartialContent : haxe.UInt64 = stdgo._internal.net.http.Http_statuspartialcontent.statusPartialContent;
final statusMultiStatus : haxe.UInt64 = stdgo._internal.net.http.Http_statusmultistatus.statusMultiStatus;
final statusAlreadyReported : haxe.UInt64 = stdgo._internal.net.http.Http_statusalreadyreported.statusAlreadyReported;
final statusIMUsed : haxe.UInt64 = stdgo._internal.net.http.Http_statusimused.statusIMUsed;
final statusMultipleChoices : haxe.UInt64 = stdgo._internal.net.http.Http_statusmultiplechoices.statusMultipleChoices;
final statusMovedPermanently : haxe.UInt64 = stdgo._internal.net.http.Http_statusmovedpermanently.statusMovedPermanently;
final statusFound : haxe.UInt64 = stdgo._internal.net.http.Http_statusfound.statusFound;
final statusSeeOther : haxe.UInt64 = stdgo._internal.net.http.Http_statusseeother.statusSeeOther;
final statusNotModified : haxe.UInt64 = stdgo._internal.net.http.Http_statusnotmodified.statusNotModified;
final statusUseProxy : haxe.UInt64 = stdgo._internal.net.http.Http_statususeproxy.statusUseProxy;
final statusTemporaryRedirect : haxe.UInt64 = stdgo._internal.net.http.Http_statustemporaryredirect.statusTemporaryRedirect;
final statusPermanentRedirect : haxe.UInt64 = stdgo._internal.net.http.Http_statuspermanentredirect.statusPermanentRedirect;
final statusBadRequest : haxe.UInt64 = stdgo._internal.net.http.Http_statusbadrequest.statusBadRequest;
final statusUnauthorized : haxe.UInt64 = stdgo._internal.net.http.Http_statusunauthorized.statusUnauthorized;
final statusPaymentRequired : haxe.UInt64 = stdgo._internal.net.http.Http_statuspaymentrequired.statusPaymentRequired;
final statusForbidden : haxe.UInt64 = stdgo._internal.net.http.Http_statusforbidden.statusForbidden;
final statusNotFound : haxe.UInt64 = stdgo._internal.net.http.Http_statusnotfound.statusNotFound;
final statusMethodNotAllowed : haxe.UInt64 = stdgo._internal.net.http.Http_statusmethodnotallowed.statusMethodNotAllowed;
final statusNotAcceptable : haxe.UInt64 = stdgo._internal.net.http.Http_statusnotacceptable.statusNotAcceptable;
final statusProxyAuthRequired : haxe.UInt64 = stdgo._internal.net.http.Http_statusproxyauthrequired.statusProxyAuthRequired;
final statusRequestTimeout : haxe.UInt64 = stdgo._internal.net.http.Http_statusrequesttimeout.statusRequestTimeout;
final statusConflict : haxe.UInt64 = stdgo._internal.net.http.Http_statusconflict.statusConflict;
final statusGone : haxe.UInt64 = stdgo._internal.net.http.Http_statusgone.statusGone;
final statusLengthRequired : haxe.UInt64 = stdgo._internal.net.http.Http_statuslengthrequired.statusLengthRequired;
final statusPreconditionFailed : haxe.UInt64 = stdgo._internal.net.http.Http_statuspreconditionfailed.statusPreconditionFailed;
final statusRequestEntityTooLarge : haxe.UInt64 = stdgo._internal.net.http.Http_statusrequestentitytoolarge.statusRequestEntityTooLarge;
final statusRequestURITooLong : haxe.UInt64 = stdgo._internal.net.http.Http_statusrequesturitoolong.statusRequestURITooLong;
final statusUnsupportedMediaType : haxe.UInt64 = stdgo._internal.net.http.Http_statusunsupportedmediatype.statusUnsupportedMediaType;
final statusRequestedRangeNotSatisfiable : haxe.UInt64 = stdgo._internal.net.http.Http_statusrequestedrangenotsatisfiable.statusRequestedRangeNotSatisfiable;
final statusExpectationFailed : haxe.UInt64 = stdgo._internal.net.http.Http_statusexpectationfailed.statusExpectationFailed;
final statusTeapot : haxe.UInt64 = stdgo._internal.net.http.Http_statusteapot.statusTeapot;
final statusMisdirectedRequest : haxe.UInt64 = stdgo._internal.net.http.Http_statusmisdirectedrequest.statusMisdirectedRequest;
final statusUnprocessableEntity : haxe.UInt64 = stdgo._internal.net.http.Http_statusunprocessableentity.statusUnprocessableEntity;
final statusLocked : haxe.UInt64 = stdgo._internal.net.http.Http_statuslocked.statusLocked;
final statusFailedDependency : haxe.UInt64 = stdgo._internal.net.http.Http_statusfaileddependency.statusFailedDependency;
final statusTooEarly : haxe.UInt64 = stdgo._internal.net.http.Http_statustooearly.statusTooEarly;
final statusUpgradeRequired : haxe.UInt64 = stdgo._internal.net.http.Http_statusupgraderequired.statusUpgradeRequired;
final statusPreconditionRequired : haxe.UInt64 = stdgo._internal.net.http.Http_statuspreconditionrequired.statusPreconditionRequired;
final statusTooManyRequests : haxe.UInt64 = stdgo._internal.net.http.Http_statustoomanyrequests.statusTooManyRequests;
final statusRequestHeaderFieldsTooLarge : haxe.UInt64 = stdgo._internal.net.http.Http_statusrequestheaderfieldstoolarge.statusRequestHeaderFieldsTooLarge;
final statusUnavailableForLegalReasons : haxe.UInt64 = stdgo._internal.net.http.Http_statusunavailableforlegalreasons.statusUnavailableForLegalReasons;
final statusInternalServerError : haxe.UInt64 = stdgo._internal.net.http.Http_statusinternalservererror.statusInternalServerError;
final statusNotImplemented : haxe.UInt64 = stdgo._internal.net.http.Http_statusnotimplemented.statusNotImplemented;
final statusBadGateway : haxe.UInt64 = stdgo._internal.net.http.Http_statusbadgateway.statusBadGateway;
final statusServiceUnavailable : haxe.UInt64 = stdgo._internal.net.http.Http_statusserviceunavailable.statusServiceUnavailable;
final statusGatewayTimeout : haxe.UInt64 = stdgo._internal.net.http.Http_statusgatewaytimeout.statusGatewayTimeout;
final statusHTTPVersionNotSupported : haxe.UInt64 = stdgo._internal.net.http.Http_statushttpversionnotsupported.statusHTTPVersionNotSupported;
final statusVariantAlsoNegotiates : haxe.UInt64 = stdgo._internal.net.http.Http_statusvariantalsonegotiates.statusVariantAlsoNegotiates;
final statusInsufficientStorage : haxe.UInt64 = stdgo._internal.net.http.Http_statusinsufficientstorage.statusInsufficientStorage;
final statusLoopDetected : haxe.UInt64 = stdgo._internal.net.http.Http_statusloopdetected.statusLoopDetected;
final statusNotExtended : haxe.UInt64 = stdgo._internal.net.http.Http_statusnotextended.statusNotExtended;
final statusNetworkAuthenticationRequired : haxe.UInt64 = stdgo._internal.net.http.Http_statusnetworkauthenticationrequired.statusNetworkAuthenticationRequired;
final defaultMaxIdleConnsPerHost : haxe.UInt64 = stdgo._internal.net.http.Http_defaultmaxidleconnsperhost.defaultMaxIdleConnsPerHost;
var defaultClient(get, set) : Client;
private function get_defaultClient():Client return stdgo._internal.net.http.Http_defaultclient.defaultClient;
private function set_defaultClient(v:Client):Client {
        stdgo._internal.net.http.Http_defaultclient.defaultClient = (v : stdgo.Ref<stdgo._internal.net.http.Http_client.Client>);
        return v;
    }
var errSchemeMismatch(get, set) : stdgo.Error;
private function get_errSchemeMismatch():stdgo.Error return stdgo._internal.net.http.Http_errschememismatch.errSchemeMismatch;
private function set_errSchemeMismatch(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errschememismatch.errSchemeMismatch = (v : stdgo.Error);
        return v;
    }
var errUseLastResponse(get, set) : stdgo.Error;
private function get_errUseLastResponse():stdgo.Error return stdgo._internal.net.http.Http_erruselastresponse.errUseLastResponse;
private function set_errUseLastResponse(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_erruselastresponse.errUseLastResponse = (v : stdgo.Error);
        return v;
    }
var noBody(get, set) : T_noBody;
private function get_noBody():T_noBody return stdgo._internal.net.http.Http_nobody.noBody;
private function set_noBody(v:T_noBody):T_noBody {
        stdgo._internal.net.http.Http_nobody.noBody = v;
        return v;
    }
var errMissingFile(get, set) : stdgo.Error;
private function get_errMissingFile():stdgo.Error return stdgo._internal.net.http.Http_errmissingfile.errMissingFile;
private function set_errMissingFile(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errmissingfile.errMissingFile = (v : stdgo.Error);
        return v;
    }
var errNotSupported(get, set) : ProtocolError;
private function get_errNotSupported():ProtocolError return stdgo._internal.net.http.Http_errnotsupported.errNotSupported;
private function set_errNotSupported(v:ProtocolError):ProtocolError {
        stdgo._internal.net.http.Http_errnotsupported.errNotSupported = (v : stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>);
        return v;
    }
var errUnexpectedTrailer(get, set) : ProtocolError;
private function get_errUnexpectedTrailer():ProtocolError return stdgo._internal.net.http.Http_errunexpectedtrailer.errUnexpectedTrailer;
private function set_errUnexpectedTrailer(v:ProtocolError):ProtocolError {
        stdgo._internal.net.http.Http_errunexpectedtrailer.errUnexpectedTrailer = (v : stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>);
        return v;
    }
var errMissingBoundary(get, set) : ProtocolError;
private function get_errMissingBoundary():ProtocolError return stdgo._internal.net.http.Http_errmissingboundary.errMissingBoundary;
private function set_errMissingBoundary(v:ProtocolError):ProtocolError {
        stdgo._internal.net.http.Http_errmissingboundary.errMissingBoundary = (v : stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>);
        return v;
    }
var errNotMultipart(get, set) : ProtocolError;
private function get_errNotMultipart():ProtocolError return stdgo._internal.net.http.Http_errnotmultipart.errNotMultipart;
private function set_errNotMultipart(v:ProtocolError):ProtocolError {
        stdgo._internal.net.http.Http_errnotmultipart.errNotMultipart = (v : stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>);
        return v;
    }
var errHeaderTooLong(get, set) : ProtocolError;
private function get_errHeaderTooLong():ProtocolError return stdgo._internal.net.http.Http_errheadertoolong.errHeaderTooLong;
private function set_errHeaderTooLong(v:ProtocolError):ProtocolError {
        stdgo._internal.net.http.Http_errheadertoolong.errHeaderTooLong = (v : stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>);
        return v;
    }
var errShortBody(get, set) : ProtocolError;
private function get_errShortBody():ProtocolError return stdgo._internal.net.http.Http_errshortbody.errShortBody;
private function set_errShortBody(v:ProtocolError):ProtocolError {
        stdgo._internal.net.http.Http_errshortbody.errShortBody = (v : stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>);
        return v;
    }
var errMissingContentLength(get, set) : ProtocolError;
private function get_errMissingContentLength():ProtocolError return stdgo._internal.net.http.Http_errmissingcontentlength.errMissingContentLength;
private function set_errMissingContentLength(v:ProtocolError):ProtocolError {
        stdgo._internal.net.http.Http_errmissingcontentlength.errMissingContentLength = (v : stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>);
        return v;
    }
var errNoCookie(get, set) : stdgo.Error;
private function get_errNoCookie():stdgo.Error return stdgo._internal.net.http.Http_errnocookie.errNoCookie;
private function set_errNoCookie(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errnocookie.errNoCookie = (v : stdgo.Error);
        return v;
    }
var errNoLocation(get, set) : stdgo.Error;
private function get_errNoLocation():stdgo.Error return stdgo._internal.net.http.Http_errnolocation.errNoLocation;
private function set_errNoLocation(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errnolocation.errNoLocation = (v : stdgo.Error);
        return v;
    }
var errBodyNotAllowed(get, set) : stdgo.Error;
private function get_errBodyNotAllowed():stdgo.Error return stdgo._internal.net.http.Http_errbodynotallowed.errBodyNotAllowed;
private function set_errBodyNotAllowed(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errbodynotallowed.errBodyNotAllowed = (v : stdgo.Error);
        return v;
    }
var errHijacked(get, set) : stdgo.Error;
private function get_errHijacked():stdgo.Error return stdgo._internal.net.http.Http_errhijacked.errHijacked;
private function set_errHijacked(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errhijacked.errHijacked = (v : stdgo.Error);
        return v;
    }
var errContentLength(get, set) : stdgo.Error;
private function get_errContentLength():stdgo.Error return stdgo._internal.net.http.Http_errcontentlength.errContentLength;
private function set_errContentLength(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errcontentlength.errContentLength = (v : stdgo.Error);
        return v;
    }
var errWriteAfterFlush(get, set) : stdgo.Error;
private function get_errWriteAfterFlush():stdgo.Error return stdgo._internal.net.http.Http_errwriteafterflush.errWriteAfterFlush;
private function set_errWriteAfterFlush(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errwriteafterflush.errWriteAfterFlush = (v : stdgo.Error);
        return v;
    }
var serverContextKey(get, set) : T_contextKey;
private function get_serverContextKey():T_contextKey return stdgo._internal.net.http.Http_servercontextkey.serverContextKey;
private function set_serverContextKey(v:T_contextKey):T_contextKey {
        stdgo._internal.net.http.Http_servercontextkey.serverContextKey = (v : stdgo.Ref<stdgo._internal.net.http.Http_t_contextkey.T_contextKey>);
        return v;
    }
var localAddrContextKey(get, set) : T_contextKey;
private function get_localAddrContextKey():T_contextKey return stdgo._internal.net.http.Http_localaddrcontextkey.localAddrContextKey;
private function set_localAddrContextKey(v:T_contextKey):T_contextKey {
        stdgo._internal.net.http.Http_localaddrcontextkey.localAddrContextKey = (v : stdgo.Ref<stdgo._internal.net.http.Http_t_contextkey.T_contextKey>);
        return v;
    }
var errAbortHandler(get, set) : stdgo.Error;
private function get_errAbortHandler():stdgo.Error return stdgo._internal.net.http.Http_erraborthandler.errAbortHandler;
private function set_errAbortHandler(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_erraborthandler.errAbortHandler = (v : stdgo.Error);
        return v;
    }
var defaultServeMux(get, set) : ServeMux;
private function get_defaultServeMux():ServeMux return stdgo._internal.net.http.Http_defaultservemux.defaultServeMux;
private function set_defaultServeMux(v:ServeMux):ServeMux {
        stdgo._internal.net.http.Http_defaultservemux.defaultServeMux = (v : stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux>);
        return v;
    }
var errServerClosed(get, set) : stdgo.Error;
private function get_errServerClosed():stdgo.Error return stdgo._internal.net.http.Http_errserverclosed.errServerClosed;
private function set_errServerClosed(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errserverclosed.errServerClosed = (v : stdgo.Error);
        return v;
    }
var errHandlerTimeout(get, set) : stdgo.Error;
private function get_errHandlerTimeout():stdgo.Error return stdgo._internal.net.http.Http_errhandlertimeout.errHandlerTimeout;
private function set_errHandlerTimeout(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errhandlertimeout.errHandlerTimeout = (v : stdgo.Error);
        return v;
    }
var errLineTooLong(get, set) : stdgo.Error;
private function get_errLineTooLong():stdgo.Error return stdgo._internal.net.http.Http_errlinetoolong.errLineTooLong;
private function set_errLineTooLong(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errlinetoolong.errLineTooLong = (v : stdgo.Error);
        return v;
    }
var errBodyReadAfterClose(get, set) : stdgo.Error;
private function get_errBodyReadAfterClose():stdgo.Error return stdgo._internal.net.http.Http_errbodyreadafterclose.errBodyReadAfterClose;
private function set_errBodyReadAfterClose(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errbodyreadafterclose.errBodyReadAfterClose = (v : stdgo.Error);
        return v;
    }
var errSkipAltProtocol(get, set) : stdgo.Error;
private function get_errSkipAltProtocol():stdgo.Error return stdgo._internal.net.http.Http_errskipaltprotocol.errSkipAltProtocol;
private function set_errSkipAltProtocol(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errskipaltprotocol.errSkipAltProtocol = (v : stdgo.Error);
        return v;
    }
var defaultTransport(get, set) : RoundTripper;
private function get_defaultTransport():RoundTripper return stdgo._internal.net.http.Http_defaulttransport.defaultTransport;
private function set_defaultTransport(v:RoundTripper):RoundTripper {
        stdgo._internal.net.http.Http_defaulttransport.defaultTransport = v;
        return v;
    }
class RoundTripper_static_extension {
    static public function roundTrip(t:stdgo._internal.net.http.Http_roundtripper.RoundTripper, _0:Request):stdgo.Tuple<Response, stdgo.Error> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_roundtripper_static_extension.RoundTripper_static_extension.roundTrip(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:forward abstract RoundTripper(stdgo._internal.net.http.Http_roundtripper.RoundTripper) from stdgo._internal.net.http.Http_roundtripper.RoundTripper to stdgo._internal.net.http.Http_roundtripper.RoundTripper {
    @:from
    static function fromHaxeInterface(x:{ function roundTrip(_0:Request):stdgo.Tuple<Response, stdgo.Error>; }):RoundTripper {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:RoundTripper = { roundTrip : _0 -> x.roundTrip(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class FileSystem_static_extension {
    static public function open(t:stdgo._internal.net.http.Http_filesystem.FileSystem, _name:String):stdgo.Tuple<File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_filesystem_static_extension.FileSystem_static_extension.open(t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:forward abstract FileSystem(stdgo._internal.net.http.Http_filesystem.FileSystem) from stdgo._internal.net.http.Http_filesystem.FileSystem to stdgo._internal.net.http.Http_filesystem.FileSystem {
    @:from
    static function fromHaxeInterface(x:{ function open(_name:String):stdgo.Tuple<File, stdgo.Error>; }):FileSystem {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:FileSystem = { open : _0 -> x.open(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class File_static_extension {
    static public function stat(t:stdgo._internal.net.http.Http_file.File):stdgo.Tuple<stdgo._internal.io.fs.Fs_fileinfo.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_file_static_extension.File_static_extension.stat(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readdir(t:stdgo._internal.net.http.Http_file.File, _count:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>, stdgo.Error> {
        final _count = (_count : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.http.Http_file_static_extension.File_static_extension.readdir(t, _count);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
@:forward abstract File(stdgo._internal.net.http.Http_file.File) from stdgo._internal.net.http.Http_file.File to stdgo._internal.net.http.Http_file.File {
    @:from
    static function fromHaxeInterface(x:{ function readdir(_count:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>, stdgo.Error>; function stat():stdgo.Tuple<stdgo._internal.io.fs.Fs_fileinfo.FileInfo, stdgo.Error>; }):File {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:File = { readdir : _0 -> x.readdir(_0), stat : () -> x.stat(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_anyDirs_static_extension {

}
@:dox(hide) @:forward abstract T_anyDirs(stdgo._internal.net.http.Http_t_anydirs.T_anyDirs) from stdgo._internal.net.http.Http_t_anydirs.T_anyDirs to stdgo._internal.net.http.Http_t_anydirs.T_anyDirs {
    @:from
    static function fromHaxeInterface(x:{ }):T_anyDirs {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_anyDirs = { __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_http2ClientConnPool_static_extension {
    static public function markDead(t:stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool, _0:T_http2ClientConn):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>);
        stdgo._internal.net.http.Http_t_http2clientconnpool_static_extension.T_http2ClientConnPool_static_extension.markDead(t, _0);
    }
    static public function getClientConn(t:stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool, _req:Request, _addr:String):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        final _addr = (_addr : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2clientconnpool_static_extension.T_http2ClientConnPool_static_extension.getClientConn(t, _req, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) @:forward abstract T_http2ClientConnPool(stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool) from stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool to stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool {
    @:from
    static function fromHaxeInterface(x:{ function getClientConn(_req:Request, _addr:String):stdgo.Tuple<T_http2ClientConn, stdgo.Error>; function markDead(_0:T_http2ClientConn):Void; }):T_http2ClientConnPool {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_http2ClientConnPool = { getClientConn : (_0, _1) -> x.getClientConn(_0, _1), markDead : _0 -> x.markDead(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_http2clientConnPoolIdleCloser_static_extension {

}
@:dox(hide) @:forward abstract T_http2clientConnPoolIdleCloser(stdgo._internal.net.http.Http_t_http2clientconnpoolidlecloser.T_http2clientConnPoolIdleCloser) from stdgo._internal.net.http.Http_t_http2clientconnpoolidlecloser.T_http2clientConnPoolIdleCloser to stdgo._internal.net.http.Http_t_http2clientconnpoolidlecloser.T_http2clientConnPoolIdleCloser {
    @:from
    static function fromHaxeInterface(x:{ }):T_http2clientConnPoolIdleCloser {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_http2clientConnPoolIdleCloser = { __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_http2Frame_static_extension {
    static public function header(t:stdgo._internal.net.http.Http_t_http2frame.T_http2Frame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_t_http2frame_static_extension.T_http2Frame_static_extension.header(t);
    }
}
@:dox(hide) @:forward abstract T_http2Frame(stdgo._internal.net.http.Http_t_http2frame.T_http2Frame) from stdgo._internal.net.http.Http_t_http2frame.T_http2Frame to stdgo._internal.net.http.Http_t_http2frame.T_http2Frame {
    @:from
    static function fromHaxeInterface(x:{ function header():T_http2FrameHeader; }):T_http2Frame {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_http2Frame = { header : () -> x.header(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_http2streamEnder_static_extension {
    static public function streamEnded(t:stdgo._internal.net.http.Http_t_http2streamender.T_http2streamEnder):Bool {
        return stdgo._internal.net.http.Http_t_http2streamender_static_extension.T_http2streamEnder_static_extension.streamEnded(t);
    }
}
@:dox(hide) @:forward abstract T_http2streamEnder(stdgo._internal.net.http.Http_t_http2streamender.T_http2streamEnder) from stdgo._internal.net.http.Http_t_http2streamender.T_http2streamEnder to stdgo._internal.net.http.Http_t_http2streamender.T_http2streamEnder {
    @:from
    static function fromHaxeInterface(x:{ function streamEnded():Bool; }):T_http2streamEnder {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_http2streamEnder = { streamEnded : () -> x.streamEnded(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_http2headersEnder_static_extension {
    static public function headersEnded(t:stdgo._internal.net.http.Http_t_http2headersender.T_http2headersEnder):Bool {
        return stdgo._internal.net.http.Http_t_http2headersender_static_extension.T_http2headersEnder_static_extension.headersEnded(t);
    }
}
@:dox(hide) @:forward abstract T_http2headersEnder(stdgo._internal.net.http.Http_t_http2headersender.T_http2headersEnder) from stdgo._internal.net.http.Http_t_http2headersender.T_http2headersEnder to stdgo._internal.net.http.Http_t_http2headersender.T_http2headersEnder {
    @:from
    static function fromHaxeInterface(x:{ function headersEnded():Bool; }):T_http2headersEnder {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_http2headersEnder = { headersEnded : () -> x.headersEnded(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_http2headersOrContinuation_static_extension {
    static public function headerBlockFragment(t:stdgo._internal.net.http.Http_t_http2headersorcontinuation.T_http2headersOrContinuation):Array<std.UInt> {
        return [for (i in stdgo._internal.net.http.Http_t_http2headersorcontinuation_static_extension.T_http2headersOrContinuation_static_extension.headerBlockFragment(t)) i];
    }
}
@:dox(hide) @:forward abstract T_http2headersOrContinuation(stdgo._internal.net.http.Http_t_http2headersorcontinuation.T_http2headersOrContinuation) from stdgo._internal.net.http.Http_t_http2headersorcontinuation.T_http2headersOrContinuation to stdgo._internal.net.http.Http_t_http2headersorcontinuation.T_http2headersOrContinuation {
    @:from
    static function fromHaxeInterface(x:{ function headerBlockFragment():Array<std.UInt>; }):T_http2headersOrContinuation {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_http2headersOrContinuation = { headerBlockFragment : () -> x.headerBlockFragment(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_http2stringWriter_static_extension {
    static public function writeString(t:stdgo._internal.net.http.Http_t_http2stringwriter.T_http2stringWriter, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2stringwriter_static_extension.T_http2stringWriter_static_extension.writeString(t, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) @:forward abstract T_http2stringWriter(stdgo._internal.net.http.Http_t_http2stringwriter.T_http2stringWriter) from stdgo._internal.net.http.Http_t_http2stringwriter.T_http2stringWriter to stdgo._internal.net.http.Http_t_http2stringwriter.T_http2stringWriter {
    @:from
    static function fromHaxeInterface(x:{ function writeString(_s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error>; }):T_http2stringWriter {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_http2stringWriter = { writeString : _0 -> x.writeString(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_http2connectionStater_static_extension {
    static public function connectionState(t:stdgo._internal.net.http.Http_t_http2connectionstater.T_http2connectionStater):stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState {
        return stdgo._internal.net.http.Http_t_http2connectionstater_static_extension.T_http2connectionStater_static_extension.connectionState(t);
    }
}
@:dox(hide) @:forward abstract T_http2connectionStater(stdgo._internal.net.http.Http_t_http2connectionstater.T_http2connectionStater) from stdgo._internal.net.http.Http_t_http2connectionstater.T_http2connectionStater to stdgo._internal.net.http.Http_t_http2connectionstater.T_http2connectionStater {
    @:from
    static function fromHaxeInterface(x:{ function connectionState():stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState; }):T_http2connectionStater {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_http2connectionStater = { connectionState : () -> x.connectionState(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_http2pipeBuffer_static_extension {
    static public function len(t:stdgo._internal.net.http.Http_t_http2pipebuffer.T_http2pipeBuffer):StdTypes.Int {
        return stdgo._internal.net.http.Http_t_http2pipebuffer_static_extension.T_http2pipeBuffer_static_extension.len(t);
    }
}
@:dox(hide) @:forward abstract T_http2pipeBuffer(stdgo._internal.net.http.Http_t_http2pipebuffer.T_http2pipeBuffer) from stdgo._internal.net.http.Http_t_http2pipebuffer.T_http2pipeBuffer to stdgo._internal.net.http.Http_t_http2pipebuffer.T_http2pipeBuffer {
    @:from
    static function fromHaxeInterface(x:{ function len():StdTypes.Int; }):T_http2pipeBuffer {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_http2pipeBuffer = { len : () -> x.len(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_http2writeFramer_static_extension {

}
@:dox(hide) @:forward abstract T_http2writeFramer(stdgo._internal.net.http.Http_t_http2writeframer.T_http2writeFramer) from stdgo._internal.net.http.Http_t_http2writeframer.T_http2writeFramer to stdgo._internal.net.http.Http_t_http2writeframer.T_http2writeFramer {
    @:from
    static function fromHaxeInterface(x:{ }):T_http2writeFramer {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_http2writeFramer = { __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_http2writeContext_static_extension {
    static public function headerEncoder(t:stdgo._internal.net.http.Http_t_http2writecontext.T_http2writeContext):stdgo.Tuple<vendor.golang_dot_org.x.net.http2.hpack.Hpack.Encoder, stdgo._internal.bytes.Bytes_buffer.Buffer> {
        return {
            final obj = stdgo._internal.net.http.Http_t_http2writecontext_static_extension.T_http2writeContext_static_extension.headerEncoder(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function closeConn(t:stdgo._internal.net.http.Http_t_http2writecontext.T_http2writeContext):stdgo.Error {
        return stdgo._internal.net.http.Http_t_http2writecontext_static_extension.T_http2writeContext_static_extension.closeConn(t);
    }
    static public function flush(t:stdgo._internal.net.http.Http_t_http2writecontext.T_http2writeContext):stdgo.Error {
        return stdgo._internal.net.http.Http_t_http2writecontext_static_extension.T_http2writeContext_static_extension.flush(t);
    }
    static public function framer(t:stdgo._internal.net.http.Http_t_http2writecontext.T_http2writeContext):T_http2Framer {
        return stdgo._internal.net.http.Http_t_http2writecontext_static_extension.T_http2writeContext_static_extension.framer(t);
    }
}
@:dox(hide) @:forward abstract T_http2writeContext(stdgo._internal.net.http.Http_t_http2writecontext.T_http2writeContext) from stdgo._internal.net.http.Http_t_http2writecontext.T_http2writeContext to stdgo._internal.net.http.Http_t_http2writecontext.T_http2writeContext {
    @:from
    static function fromHaxeInterface(x:{ function framer():T_http2Framer; function flush():stdgo.Error; function closeConn():stdgo.Error; function headerEncoder():stdgo.Tuple<vendor.golang_dot_org.x.net.http2.hpack.Hpack.Encoder, stdgo._internal.bytes.Bytes_buffer.Buffer>; }):T_http2writeContext {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_http2writeContext = { framer : () -> x.framer(), flush : () -> x.flush(), closeConn : () -> x.closeConn(), headerEncoder : () -> x.headerEncoder(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_http2WriteScheduler_static_extension {
    static public function pop(t:stdgo._internal.net.http.Http_t_http2writescheduler.T_http2WriteScheduler):stdgo.Tuple<T_http2FrameWriteRequest, Bool> {
        return {
            final obj = stdgo._internal.net.http.Http_t_http2writescheduler_static_extension.T_http2WriteScheduler_static_extension.pop(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function push(t:stdgo._internal.net.http.Http_t_http2writescheduler.T_http2WriteScheduler, _wr:T_http2FrameWriteRequest):Void {
        stdgo._internal.net.http.Http_t_http2writescheduler_static_extension.T_http2WriteScheduler_static_extension.push(t, _wr);
    }
    static public function adjustStream(t:stdgo._internal.net.http.Http_t_http2writescheduler.T_http2WriteScheduler, _streamID:std.UInt, _priority:T_http2PriorityParam):Void {
        final _streamID = (_streamID : stdgo.GoUInt32);
        stdgo._internal.net.http.Http_t_http2writescheduler_static_extension.T_http2WriteScheduler_static_extension.adjustStream(t, _streamID, _priority);
    }
    static public function closeStream(t:stdgo._internal.net.http.Http_t_http2writescheduler.T_http2WriteScheduler, _streamID:std.UInt):Void {
        final _streamID = (_streamID : stdgo.GoUInt32);
        stdgo._internal.net.http.Http_t_http2writescheduler_static_extension.T_http2WriteScheduler_static_extension.closeStream(t, _streamID);
    }
    static public function openStream(t:stdgo._internal.net.http.Http_t_http2writescheduler.T_http2WriteScheduler, _streamID:std.UInt, _options:T_http2OpenStreamOptions):Void {
        final _streamID = (_streamID : stdgo.GoUInt32);
        stdgo._internal.net.http.Http_t_http2writescheduler_static_extension.T_http2WriteScheduler_static_extension.openStream(t, _streamID, _options);
    }
}
@:dox(hide) @:forward abstract T_http2WriteScheduler(stdgo._internal.net.http.Http_t_http2writescheduler.T_http2WriteScheduler) from stdgo._internal.net.http.Http_t_http2writescheduler.T_http2WriteScheduler to stdgo._internal.net.http.Http_t_http2writescheduler.T_http2WriteScheduler {
    @:from
    static function fromHaxeInterface(x:{ function openStream(_streamID:std.UInt, _options:T_http2OpenStreamOptions):Void; function closeStream(_streamID:std.UInt):Void; function adjustStream(_streamID:std.UInt, _priority:T_http2PriorityParam):Void; function push(_wr:T_http2FrameWriteRequest):Void; function pop():stdgo.Tuple<T_http2FrameWriteRequest, Bool>; }):T_http2WriteScheduler {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_http2WriteScheduler = { openStream : (_0, _1) -> x.openStream(_0, _1), closeStream : _0 -> x.closeStream(_0), adjustStream : (_0, _1) -> x.adjustStream(_0, _1), push : _0 -> x.push(_0), pop : () -> x.pop(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Pusher_static_extension {
    static public function push(t:stdgo._internal.net.http.Http_pusher.Pusher, _target:String, _opts:PushOptions):stdgo.Error {
        final _target = (_target : stdgo.GoString);
        final _opts = (_opts : stdgo.Ref<stdgo._internal.net.http.Http_pushoptions.PushOptions>);
        return stdgo._internal.net.http.Http_pusher_static_extension.Pusher_static_extension.push(t, _target, _opts);
    }
}
@:forward abstract Pusher(stdgo._internal.net.http.Http_pusher.Pusher) from stdgo._internal.net.http.Http_pusher.Pusher to stdgo._internal.net.http.Http_pusher.Pusher {
    @:from
    static function fromHaxeInterface(x:{ function push(_target:String, _opts:PushOptions):stdgo.Error; }):Pusher {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Pusher = { push : (_0, _1) -> x.push(_0, _1), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class CookieJar_static_extension {
    static public function cookies(t:stdgo._internal.net.http.Http_cookiejar.CookieJar, _u:stdgo._internal.net.url.Url_url.URL):Array<Cookie> {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        return [for (i in stdgo._internal.net.http.Http_cookiejar_static_extension.CookieJar_static_extension.cookies(t, _u)) i];
    }
    static public function setCookies(t:stdgo._internal.net.http.Http_cookiejar.CookieJar, _u:stdgo._internal.net.url.Url_url.URL, _cookies:Array<Cookie>):Void {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        final _cookies = ([for (i in _cookies) (i : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>);
        stdgo._internal.net.http.Http_cookiejar_static_extension.CookieJar_static_extension.setCookies(t, _u, _cookies);
    }
}
@:forward abstract CookieJar(stdgo._internal.net.http.Http_cookiejar.CookieJar) from stdgo._internal.net.http.Http_cookiejar.CookieJar to stdgo._internal.net.http.Http_cookiejar.CookieJar {
    @:from
    static function fromHaxeInterface(x:{ function setCookies(_u:stdgo._internal.net.url.Url_url.URL, _cookies:Array<Cookie>):Void; function cookies(_u:stdgo._internal.net.url.Url_url.URL):Array<Cookie>; }):CookieJar {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:CookieJar = { setCookies : (_0, _1) -> x.setCookies(_0, [for (i in _1) i]), cookies : _0 -> x.cookies(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_rwUnwrapper_static_extension {
    static public function unwrap(t:stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper):ResponseWriter {
        return stdgo._internal.net.http.Http_t_rwunwrapper_static_extension.T_rwUnwrapper_static_extension.unwrap(t);
    }
}
@:dox(hide) @:forward abstract T_rwUnwrapper(stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper) from stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper to stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper {
    @:from
    static function fromHaxeInterface(x:{ function unwrap():ResponseWriter; }):T_rwUnwrapper {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_rwUnwrapper = { unwrap : () -> x.unwrap(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Handler_static_extension {
    static public function serveHTTP(t:stdgo._internal.net.http.Http_handler.Handler, _0:ResponseWriter, _1:Request):Void {
        final _1 = (_1 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        stdgo._internal.net.http.Http_handler_static_extension.Handler_static_extension.serveHTTP(t, _0, _1);
    }
}
@:forward abstract Handler(stdgo._internal.net.http.Http_handler.Handler) from stdgo._internal.net.http.Http_handler.Handler to stdgo._internal.net.http.Http_handler.Handler {
    @:from
    static function fromHaxeInterface(x:{ function serveHTTP(_0:ResponseWriter, _1:Request):Void; }):Handler {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Handler = { serveHTTP : (_0, _1) -> x.serveHTTP(_0, _1), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class ResponseWriter_static_extension {
    static public function writeHeader(t:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _statusCode:StdTypes.Int):Void {
        final _statusCode = (_statusCode : stdgo.GoInt);
        stdgo._internal.net.http.Http_responsewriter_static_extension.ResponseWriter_static_extension.writeHeader(t, _statusCode);
    }
    static public function write(t:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_responsewriter_static_extension.ResponseWriter_static_extension.write(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function header(t:stdgo._internal.net.http.Http_responsewriter.ResponseWriter):Header {
        return stdgo._internal.net.http.Http_responsewriter_static_extension.ResponseWriter_static_extension.header(t);
    }
}
@:forward abstract ResponseWriter(stdgo._internal.net.http.Http_responsewriter.ResponseWriter) from stdgo._internal.net.http.Http_responsewriter.ResponseWriter to stdgo._internal.net.http.Http_responsewriter.ResponseWriter {
    @:from
    static function fromHaxeInterface(x:{ function header():Header; function write(_0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error>; function writeHeader(_statusCode:StdTypes.Int):Void; }):ResponseWriter {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:ResponseWriter = { header : () -> x.header(), write : _0 -> x.write([for (i in _0) i]), writeHeader : _0 -> x.writeHeader(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Flusher_static_extension {
    static public function flush(t:stdgo._internal.net.http.Http_flusher.Flusher):Void {
        stdgo._internal.net.http.Http_flusher_static_extension.Flusher_static_extension.flush(t);
    }
}
@:forward abstract Flusher(stdgo._internal.net.http.Http_flusher.Flusher) from stdgo._internal.net.http.Http_flusher.Flusher to stdgo._internal.net.http.Http_flusher.Flusher {
    @:from
    static function fromHaxeInterface(x:{ function flush():Void; }):Flusher {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Flusher = { flush : () -> x.flush(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class Hijacker_static_extension {
    static public function hijack(t:stdgo._internal.net.http.Http_hijacker.Hijacker):stdgo.Tuple.Tuple3<stdgo._internal.net.Net_conn.Conn, stdgo._internal.bufio.Bufio_readwriter.ReadWriter, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_hijacker_static_extension.Hijacker_static_extension.hijack(t);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
@:forward abstract Hijacker(stdgo._internal.net.http.Http_hijacker.Hijacker) from stdgo._internal.net.http.Http_hijacker.Hijacker to stdgo._internal.net.http.Http_hijacker.Hijacker {
    @:from
    static function fromHaxeInterface(x:{ function hijack():stdgo.Tuple.Tuple3<stdgo._internal.net.Net_conn.Conn, stdgo._internal.bufio.Bufio_readwriter.ReadWriter, stdgo.Error>; }):Hijacker {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:Hijacker = { hijack : () -> x.hijack(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
class CloseNotifier_static_extension {
    static public function closeNotify(t:stdgo._internal.net.http.Http_closenotifier.CloseNotifier):stdgo.Chan<Bool> {
        return stdgo._internal.net.http.Http_closenotifier_static_extension.CloseNotifier_static_extension.closeNotify(t);
    }
}
@:forward abstract CloseNotifier(stdgo._internal.net.http.Http_closenotifier.CloseNotifier) from stdgo._internal.net.http.Http_closenotifier.CloseNotifier to stdgo._internal.net.http.Http_closenotifier.CloseNotifier {
    @:from
    static function fromHaxeInterface(x:{ function closeNotify():stdgo.Chan<Bool>; }):CloseNotifier {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:CloseNotifier = { closeNotify : () -> x.closeNotify(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_closeWriter_static_extension {
    static public function closeWrite(t:stdgo._internal.net.http.Http_t_closewriter.T_closeWriter):stdgo.Error {
        return stdgo._internal.net.http.Http_t_closewriter_static_extension.T_closeWriter_static_extension.closeWrite(t);
    }
}
@:dox(hide) @:forward abstract T_closeWriter(stdgo._internal.net.http.Http_t_closewriter.T_closeWriter) from stdgo._internal.net.http.Http_t_closewriter.T_closeWriter to stdgo._internal.net.http.Http_t_closewriter.T_closeWriter {
    @:from
    static function fromHaxeInterface(x:{ function closeWrite():stdgo.Error; }):T_closeWriter {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_closeWriter = { closeWrite : () -> x.closeWrite(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_sniffSig_static_extension {

}
@:dox(hide) @:forward abstract T_sniffSig(stdgo._internal.net.http.Http_t_sniffsig.T_sniffSig) from stdgo._internal.net.http.Http_t_sniffsig.T_sniffSig to stdgo._internal.net.http.Http_t_sniffsig.T_sniffSig {
    @:from
    static function fromHaxeInterface(x:{ }):T_sniffSig {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_sniffSig = { __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_h2Transport_static_extension {
    static public function closeIdleConnections(t:stdgo._internal.net.http.Http_t_h2transport.T_h2Transport):Void {
        stdgo._internal.net.http.Http_t_h2transport_static_extension.T_h2Transport_static_extension.closeIdleConnections(t);
    }
}
@:dox(hide) @:forward abstract T_h2Transport(stdgo._internal.net.http.Http_t_h2transport.T_h2Transport) from stdgo._internal.net.http.Http_t_h2transport.T_h2Transport to stdgo._internal.net.http.Http_t_h2transport.T_h2Transport {
    @:from
    static function fromHaxeInterface(x:{ function closeIdleConnections():Void; }):T_h2Transport {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_h2Transport = { closeIdleConnections : () -> x.closeIdleConnections(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T_erringRoundTripper_static_extension {
    static public function roundTripErr(t:stdgo._internal.net.http.Http_t_erringroundtripper.T_erringRoundTripper):stdgo.Error {
        return stdgo._internal.net.http.Http_t_erringroundtripper_static_extension.T_erringRoundTripper_static_extension.roundTripErr(t);
    }
}
@:dox(hide) @:forward abstract T_erringRoundTripper(stdgo._internal.net.http.Http_t_erringroundtripper.T_erringRoundTripper) from stdgo._internal.net.http.Http_t_erringroundtripper.T_erringRoundTripper to stdgo._internal.net.http.Http_t_erringroundtripper.T_erringRoundTripper {
    @:from
    static function fromHaxeInterface(x:{ function roundTripErr():stdgo.Error; }):T_erringRoundTripper {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_erringRoundTripper = { roundTripErr : () -> x.roundTripErr(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T__interface_0_static_extension {
    static public function flushError(t:stdgo._internal.net.http.Http_t__interface_0.T__interface_0):stdgo.Error {
        return stdgo._internal.net.http.Http_t__interface_0_static_extension.T__interface_0_static_extension.flushError(t);
    }
}
@:dox(hide) @:forward abstract T__interface_0(stdgo._internal.net.http.Http_t__interface_0.T__interface_0) from stdgo._internal.net.http.Http_t__interface_0.T__interface_0 to stdgo._internal.net.http.Http_t__interface_0.T__interface_0 {
    @:from
    static function fromHaxeInterface(x:{ function flushError():stdgo.Error; }):T__interface_0 {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T__interface_0 = { flushError : () -> x.flushError(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T__interface_1_static_extension {
    static public function setReadDeadline(t:stdgo._internal.net.http.Http_t__interface_1.T__interface_1, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_t__interface_1_static_extension.T__interface_1_static_extension.setReadDeadline(t, _0);
    }
}
@:dox(hide) @:forward abstract T__interface_1(stdgo._internal.net.http.Http_t__interface_1.T__interface_1) from stdgo._internal.net.http.Http_t__interface_1.T__interface_1 to stdgo._internal.net.http.Http_t__interface_1.T__interface_1 {
    @:from
    static function fromHaxeInterface(x:{ function setReadDeadline(_0:stdgo._internal.time.Time_time.Time):stdgo.Error; }):T__interface_1 {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T__interface_1 = { setReadDeadline : _0 -> x.setReadDeadline(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T__interface_2_static_extension {
    static public function setWriteDeadline(t:stdgo._internal.net.http.Http_t__interface_2.T__interface_2, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_t__interface_2_static_extension.T__interface_2_static_extension.setWriteDeadline(t, _0);
    }
}
@:dox(hide) @:forward abstract T__interface_2(stdgo._internal.net.http.Http_t__interface_2.T__interface_2) from stdgo._internal.net.http.Http_t__interface_2.T__interface_2 to stdgo._internal.net.http.Http_t__interface_2.T__interface_2 {
    @:from
    static function fromHaxeInterface(x:{ function setWriteDeadline(_0:stdgo._internal.time.Time_time.Time):stdgo.Error; }):T__interface_2 {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T__interface_2 = { setWriteDeadline : _0 -> x.setWriteDeadline(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) class T__interface_3_static_extension {
    static public function enableFullDuplex(t:stdgo._internal.net.http.Http_t__interface_3.T__interface_3):stdgo.Error {
        return stdgo._internal.net.http.Http_t__interface_3_static_extension.T__interface_3_static_extension.enableFullDuplex(t);
    }
}
@:dox(hide) @:forward abstract T__interface_3(stdgo._internal.net.http.Http_t__interface_3.T__interface_3) from stdgo._internal.net.http.Http_t__interface_3.T__interface_3 to stdgo._internal.net.http.Http_t__interface_3.T__interface_3 {
    @:from
    static function fromHaxeInterface(x:{ function enableFullDuplex():stdgo.Error; }):T__interface_3 {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T__interface_3 = { enableFullDuplex : () -> x.enableFullDuplex(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.net.http.Http.Client_static_extension) abstract Client(stdgo._internal.net.http.Http_client.Client) from stdgo._internal.net.http.Http_client.Client to stdgo._internal.net.http.Http_client.Client {
    public var transport(get, set) : RoundTripper;
    function get_transport():RoundTripper return this.transport;
    function set_transport(v:RoundTripper):RoundTripper {
        this.transport = v;
        return v;
    }
    public var checkRedirect(get, set) : (Request, Array<Request>) -> stdgo.Error;
    function get_checkRedirect():(Request, Array<Request>) -> stdgo.Error return (_0, _1) -> this.checkRedirect(_0, [for (i in _1) i]);
    function set_checkRedirect(v:(Request, Array<Request>) -> stdgo.Error):(Request, Array<Request>) -> stdgo.Error {
        this.checkRedirect = v;
        return v;
    }
    public var jar(get, set) : CookieJar;
    function get_jar():CookieJar return this.jar;
    function set_jar(v:CookieJar):CookieJar {
        this.jar = v;
        return v;
    }
    public var timeout(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_timeout():stdgo._internal.time.Time_duration.Duration return this.timeout;
    function set_timeout(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.timeout = v;
        return v;
    }
    public function new(?transport:RoundTripper, ?checkRedirect:(Request, Array<Request>) -> stdgo.Error, ?jar:CookieJar, ?timeout:stdgo._internal.time.Time_duration.Duration) this = new stdgo._internal.net.http.Http_client.Client(transport, checkRedirect, jar, timeout);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_cancelTimerBody_static_extension) @:dox(hide) abstract T_cancelTimerBody(stdgo._internal.net.http.Http_t_canceltimerbody.T_cancelTimerBody) from stdgo._internal.net.http.Http_t_canceltimerbody.T_cancelTimerBody to stdgo._internal.net.http.Http_t_canceltimerbody.T_cancelTimerBody {
    public function new() this = new stdgo._internal.net.http.Http_t_canceltimerbody.T_cancelTimerBody();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.Cookie_static_extension) abstract Cookie(stdgo._internal.net.http.Http_cookie.Cookie) from stdgo._internal.net.http.Http_cookie.Cookie to stdgo._internal.net.http.Http_cookie.Cookie {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var value(get, set) : String;
    function get_value():String return this.value;
    function set_value(v:String):String {
        this.value = (v : stdgo.GoString);
        return v;
    }
    public var path(get, set) : String;
    function get_path():String return this.path;
    function set_path(v:String):String {
        this.path = (v : stdgo.GoString);
        return v;
    }
    public var domain(get, set) : String;
    function get_domain():String return this.domain;
    function set_domain(v:String):String {
        this.domain = (v : stdgo.GoString);
        return v;
    }
    public var expires(get, set) : stdgo._internal.time.Time_time.Time;
    function get_expires():stdgo._internal.time.Time_time.Time return this.expires;
    function set_expires(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.expires = v;
        return v;
    }
    public var rawExpires(get, set) : String;
    function get_rawExpires():String return this.rawExpires;
    function set_rawExpires(v:String):String {
        this.rawExpires = (v : stdgo.GoString);
        return v;
    }
    public var maxAge(get, set) : StdTypes.Int;
    function get_maxAge():StdTypes.Int return this.maxAge;
    function set_maxAge(v:StdTypes.Int):StdTypes.Int {
        this.maxAge = (v : stdgo.GoInt);
        return v;
    }
    public var secure(get, set) : Bool;
    function get_secure():Bool return this.secure;
    function set_secure(v:Bool):Bool {
        this.secure = v;
        return v;
    }
    public var httpOnly(get, set) : Bool;
    function get_httpOnly():Bool return this.httpOnly;
    function set_httpOnly(v:Bool):Bool {
        this.httpOnly = v;
        return v;
    }
    public var sameSite(get, set) : SameSite;
    function get_sameSite():SameSite return this.sameSite;
    function set_sameSite(v:SameSite):SameSite {
        this.sameSite = v;
        return v;
    }
    public var raw(get, set) : String;
    function get_raw():String return this.raw;
    function set_raw(v:String):String {
        this.raw = (v : stdgo.GoString);
        return v;
    }
    public var unparsed(get, set) : Array<String>;
    function get_unparsed():Array<String> return [for (i in this.unparsed) i];
    function set_unparsed(v:Array<String>):Array<String> {
        this.unparsed = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?name:String, ?value:String, ?path:String, ?domain:String, ?expires:stdgo._internal.time.Time_time.Time, ?rawExpires:String, ?maxAge:StdTypes.Int, ?secure:Bool, ?httpOnly:Bool, ?sameSite:SameSite, ?raw:String, ?unparsed:Array<String>) this = new stdgo._internal.net.http.Http_cookie.Cookie(
(name : stdgo.GoString),
(value : stdgo.GoString),
(path : stdgo.GoString),
(domain : stdgo.GoString),
expires,
(rawExpires : stdgo.GoString),
(maxAge : stdgo.GoInt),
secure,
httpOnly,
sameSite,
(raw : stdgo.GoString),
([for (i in unparsed) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_fileTransport_static_extension) @:dox(hide) abstract T_fileTransport(stdgo._internal.net.http.Http_t_filetransport.T_fileTransport) from stdgo._internal.net.http.Http_t_filetransport.T_fileTransport to stdgo._internal.net.http.Http_t_filetransport.T_fileTransport {
    public function new() this = new stdgo._internal.net.http.Http_t_filetransport.T_fileTransport();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_populateResponse_static_extension) @:dox(hide) abstract T_populateResponse(stdgo._internal.net.http.Http_t_populateresponse.T_populateResponse) from stdgo._internal.net.http.Http_t_populateresponse.T_populateResponse to stdgo._internal.net.http.Http_t_populateresponse.T_populateResponse {
    public function new() this = new stdgo._internal.net.http.Http_t_populateresponse.T_populateResponse();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_fileHandler_static_extension) @:dox(hide) abstract T_fileHandler(stdgo._internal.net.http.Http_t_filehandler.T_fileHandler) from stdgo._internal.net.http.Http_t_filehandler.T_fileHandler to stdgo._internal.net.http.Http_t_filehandler.T_fileHandler {
    public function new() this = new stdgo._internal.net.http.Http_t_filehandler.T_fileHandler();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_ioFS_static_extension) @:dox(hide) abstract T_ioFS(stdgo._internal.net.http.Http_t_iofs.T_ioFS) from stdgo._internal.net.http.Http_t_iofs.T_ioFS to stdgo._internal.net.http.Http_t_iofs.T_ioFS {
    public function new() this = new stdgo._internal.net.http.Http_t_iofs.T_ioFS();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_ioFile_static_extension) @:dox(hide) abstract T_ioFile(stdgo._internal.net.http.Http_t_iofile.T_ioFile) from stdgo._internal.net.http.Http_t_iofile.T_ioFile to stdgo._internal.net.http.Http_t_iofile.T_ioFile {
    public function new() this = new stdgo._internal.net.http.Http_t_iofile.T_ioFile();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_httpRange_static_extension) @:dox(hide) abstract T_httpRange(stdgo._internal.net.http.Http_t_httprange.T_httpRange) from stdgo._internal.net.http.Http_t_httprange.T_httpRange to stdgo._internal.net.http.Http_t_httprange.T_httpRange {
    public function new() this = new stdgo._internal.net.http.Http_t_httprange.T_httpRange();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2clientConnPool_static_extension) @:dox(hide) abstract T_http2clientConnPool(stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool) from stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool to stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool {
    public function new() this = new stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2dialCall_static_extension) @:dox(hide) abstract T_http2dialCall(stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall) from stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall to stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall {
    public function new() this = new stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2addConnCall_static_extension) @:dox(hide) abstract T_http2addConnCall(stdgo._internal.net.http.Http_t_http2addconncall.T_http2addConnCall) from stdgo._internal.net.http.Http_t_http2addconncall.T_http2addConnCall to stdgo._internal.net.http.Http_t_http2addconncall.T_http2addConnCall {
    public function new() this = new stdgo._internal.net.http.Http_t_http2addconncall.T_http2addConnCall();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2noDialClientConnPool_static_extension) @:dox(hide) abstract T_http2noDialClientConnPool(stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool) from stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool to stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool {
    public function new() this = new stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2dataBuffer_static_extension) @:dox(hide) abstract T_http2dataBuffer(stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer) from stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer to stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer {
    public function new() this = new stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2StreamError_static_extension) @:dox(hide) abstract T_http2StreamError(stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError) from stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError to stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError {
    public var streamID(get, set) : std.UInt;
    function get_streamID():std.UInt return this.streamID;
    function set_streamID(v:std.UInt):std.UInt {
        this.streamID = (v : stdgo.GoUInt32);
        return v;
    }
    public var code(get, set) : T_http2ErrCode;
    function get_code():T_http2ErrCode return this.code;
    function set_code(v:T_http2ErrCode):T_http2ErrCode {
        this.code = v;
        return v;
    }
    public var cause(get, set) : stdgo.Error;
    function get_cause():stdgo.Error return this.cause;
    function set_cause(v:stdgo.Error):stdgo.Error {
        this.cause = (v : stdgo.Error);
        return v;
    }
    public function new(?streamID:std.UInt, ?code:T_http2ErrCode, ?cause:stdgo.Error) this = new stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError((streamID : stdgo.GoUInt32), code, (cause : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2goAwayFlowError_static_extension) @:dox(hide) abstract T_http2goAwayFlowError(stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError) from stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError to stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError {
    public function new() this = new stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2connError_static_extension) @:dox(hide) abstract T_http2connError(stdgo._internal.net.http.Http_t_http2connerror.T_http2connError) from stdgo._internal.net.http.Http_t_http2connerror.T_http2connError to stdgo._internal.net.http.Http_t_http2connerror.T_http2connError {
    public var code(get, set) : T_http2ErrCode;
    function get_code():T_http2ErrCode return this.code;
    function set_code(v:T_http2ErrCode):T_http2ErrCode {
        this.code = v;
        return v;
    }
    public var reason(get, set) : String;
    function get_reason():String return this.reason;
    function set_reason(v:String):String {
        this.reason = (v : stdgo.GoString);
        return v;
    }
    public function new(?code:T_http2ErrCode, ?reason:String) this = new stdgo._internal.net.http.Http_t_http2connerror.T_http2connError(code, (reason : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2inflow_static_extension) @:dox(hide) abstract T_http2inflow(stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow) from stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow to stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow {
    public function new() this = new stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2outflow_static_extension) @:dox(hide) abstract T_http2outflow(stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow) from stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow to stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow {
    public function new() this = new stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2FrameHeader_static_extension) @:dox(hide) abstract T_http2FrameHeader(stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader) from stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader to stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader {
    public var type(get, set) : T_http2FrameType;
    function get_type():T_http2FrameType return this.type;
    function set_type(v:T_http2FrameType):T_http2FrameType {
        this.type = v;
        return v;
    }
    public var flags(get, set) : T_http2Flags;
    function get_flags():T_http2Flags return this.flags;
    function set_flags(v:T_http2Flags):T_http2Flags {
        this.flags = v;
        return v;
    }
    public var length_(get, set) : std.UInt;
    function get_length_():std.UInt return this.length_;
    function set_length_(v:std.UInt):std.UInt {
        this.length_ = (v : stdgo.GoUInt32);
        return v;
    }
    public var streamID(get, set) : std.UInt;
    function get_streamID():std.UInt return this.streamID;
    function set_streamID(v:std.UInt):std.UInt {
        this.streamID = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?type:T_http2FrameType, ?flags:T_http2Flags, ?length_:std.UInt, ?streamID:std.UInt) this = new stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader(type, flags, (length_ : stdgo.GoUInt32), (streamID : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2Framer_static_extension) @:dox(hide) abstract T_http2Framer(stdgo._internal.net.http.Http_t_http2framer.T_http2Framer) from stdgo._internal.net.http.Http_t_http2framer.T_http2Framer to stdgo._internal.net.http.Http_t_http2framer.T_http2Framer {
    public var allowIllegalWrites(get, set) : Bool;
    function get_allowIllegalWrites():Bool return this.allowIllegalWrites;
    function set_allowIllegalWrites(v:Bool):Bool {
        this.allowIllegalWrites = v;
        return v;
    }
    public var allowIllegalReads(get, set) : Bool;
    function get_allowIllegalReads():Bool return this.allowIllegalReads;
    function set_allowIllegalReads(v:Bool):Bool {
        this.allowIllegalReads = v;
        return v;
    }
    public var readMetaHeaders(get, set) : vendor.golang_dot_org.x.net.http2.hpack.Hpack.Decoder;
    function get_readMetaHeaders():vendor.golang_dot_org.x.net.http2.hpack.Hpack.Decoder return this.readMetaHeaders;
    function set_readMetaHeaders(v:vendor.golang_dot_org.x.net.http2.hpack.Hpack.Decoder):vendor.golang_dot_org.x.net.http2.hpack.Hpack.Decoder {
        this.readMetaHeaders = (v : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_decoder.Decoder>);
        return v;
    }
    public var maxHeaderListSize(get, set) : std.UInt;
    function get_maxHeaderListSize():std.UInt return this.maxHeaderListSize;
    function set_maxHeaderListSize(v:std.UInt):std.UInt {
        this.maxHeaderListSize = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?allowIllegalWrites:Bool, ?allowIllegalReads:Bool, ?readMetaHeaders:vendor.golang_dot_org.x.net.http2.hpack.Hpack.Decoder, ?maxHeaderListSize:std.UInt) this = new stdgo._internal.net.http.Http_t_http2framer.T_http2Framer(allowIllegalWrites, allowIllegalReads, (readMetaHeaders : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_decoder.Decoder>), (maxHeaderListSize : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2frameCache_static_extension) @:dox(hide) abstract T_http2frameCache(stdgo._internal.net.http.Http_t_http2framecache.T_http2frameCache) from stdgo._internal.net.http.Http_t_http2framecache.T_http2frameCache to stdgo._internal.net.http.Http_t_http2framecache.T_http2frameCache {
    public function new() this = new stdgo._internal.net.http.Http_t_http2framecache.T_http2frameCache();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2DataFrame_static_extension) @:dox(hide) abstract T_http2DataFrame(stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame) from stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame to stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame {
    public function new() this = new stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2SettingsFrame_static_extension) @:dox(hide) abstract T_http2SettingsFrame(stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame) from stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame to stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame {
    public function new() this = new stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2PingFrame_static_extension) @:dox(hide) abstract T_http2PingFrame(stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame) from stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame to stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame {
    public var data(get, set) : haxe.ds.Vector<std.UInt>;
    function get_data():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.data) i]);
    function set_data(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?data:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame(([for (i in data) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2GoAwayFrame_static_extension) @:dox(hide) abstract T_http2GoAwayFrame(stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame) from stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame to stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame {
    public var lastStreamID(get, set) : std.UInt;
    function get_lastStreamID():std.UInt return this.lastStreamID;
    function set_lastStreamID(v:std.UInt):std.UInt {
        this.lastStreamID = (v : stdgo.GoUInt32);
        return v;
    }
    public var errCode(get, set) : T_http2ErrCode;
    function get_errCode():T_http2ErrCode return this.errCode;
    function set_errCode(v:T_http2ErrCode):T_http2ErrCode {
        this.errCode = v;
        return v;
    }
    public function new(?lastStreamID:std.UInt, ?errCode:T_http2ErrCode) this = new stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame((lastStreamID : stdgo.GoUInt32), errCode);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2UnknownFrame_static_extension) @:dox(hide) abstract T_http2UnknownFrame(stdgo._internal.net.http.Http_t_http2unknownframe.T_http2UnknownFrame) from stdgo._internal.net.http.Http_t_http2unknownframe.T_http2UnknownFrame to stdgo._internal.net.http.Http_t_http2unknownframe.T_http2UnknownFrame {
    public function new() this = new stdgo._internal.net.http.Http_t_http2unknownframe.T_http2UnknownFrame();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2WindowUpdateFrame_static_extension) @:dox(hide) abstract T_http2WindowUpdateFrame(stdgo._internal.net.http.Http_t_http2windowupdateframe.T_http2WindowUpdateFrame) from stdgo._internal.net.http.Http_t_http2windowupdateframe.T_http2WindowUpdateFrame to stdgo._internal.net.http.Http_t_http2windowupdateframe.T_http2WindowUpdateFrame {
    public var increment(get, set) : std.UInt;
    function get_increment():std.UInt return this.increment;
    function set_increment(v:std.UInt):std.UInt {
        this.increment = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?increment:std.UInt) this = new stdgo._internal.net.http.Http_t_http2windowupdateframe.T_http2WindowUpdateFrame((increment : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2HeadersFrame_static_extension) @:dox(hide) abstract T_http2HeadersFrame(stdgo._internal.net.http.Http_t_http2headersframe.T_http2HeadersFrame) from stdgo._internal.net.http.Http_t_http2headersframe.T_http2HeadersFrame to stdgo._internal.net.http.Http_t_http2headersframe.T_http2HeadersFrame {
    public var priority(get, set) : T_http2PriorityParam;
    function get_priority():T_http2PriorityParam return this.priority;
    function set_priority(v:T_http2PriorityParam):T_http2PriorityParam {
        this.priority = v;
        return v;
    }
    public function new(?priority:T_http2PriorityParam) this = new stdgo._internal.net.http.Http_t_http2headersframe.T_http2HeadersFrame(priority);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2HeadersFrameParam_static_extension) @:dox(hide) abstract T_http2HeadersFrameParam(stdgo._internal.net.http.Http_t_http2headersframeparam.T_http2HeadersFrameParam) from stdgo._internal.net.http.Http_t_http2headersframeparam.T_http2HeadersFrameParam to stdgo._internal.net.http.Http_t_http2headersframeparam.T_http2HeadersFrameParam {
    public var streamID(get, set) : std.UInt;
    function get_streamID():std.UInt return this.streamID;
    function set_streamID(v:std.UInt):std.UInt {
        this.streamID = (v : stdgo.GoUInt32);
        return v;
    }
    public var blockFragment(get, set) : Array<std.UInt>;
    function get_blockFragment():Array<std.UInt> return [for (i in this.blockFragment) i];
    function set_blockFragment(v:Array<std.UInt>):Array<std.UInt> {
        this.blockFragment = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var endStream(get, set) : Bool;
    function get_endStream():Bool return this.endStream;
    function set_endStream(v:Bool):Bool {
        this.endStream = v;
        return v;
    }
    public var endHeaders(get, set) : Bool;
    function get_endHeaders():Bool return this.endHeaders;
    function set_endHeaders(v:Bool):Bool {
        this.endHeaders = v;
        return v;
    }
    public var padLength(get, set) : std.UInt;
    function get_padLength():std.UInt return this.padLength;
    function set_padLength(v:std.UInt):std.UInt {
        this.padLength = (v : stdgo.GoUInt8);
        return v;
    }
    public var priority(get, set) : T_http2PriorityParam;
    function get_priority():T_http2PriorityParam return this.priority;
    function set_priority(v:T_http2PriorityParam):T_http2PriorityParam {
        this.priority = v;
        return v;
    }
    public function new(?streamID:std.UInt, ?blockFragment:Array<std.UInt>, ?endStream:Bool, ?endHeaders:Bool, ?padLength:std.UInt, ?priority:T_http2PriorityParam) this = new stdgo._internal.net.http.Http_t_http2headersframeparam.T_http2HeadersFrameParam((streamID : stdgo.GoUInt32), ([for (i in blockFragment) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), endStream, endHeaders, (padLength : stdgo.GoUInt8), priority);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2PriorityFrame_static_extension) @:dox(hide) abstract T_http2PriorityFrame(stdgo._internal.net.http.Http_t_http2priorityframe.T_http2PriorityFrame) from stdgo._internal.net.http.Http_t_http2priorityframe.T_http2PriorityFrame to stdgo._internal.net.http.Http_t_http2priorityframe.T_http2PriorityFrame {
    public function new() this = new stdgo._internal.net.http.Http_t_http2priorityframe.T_http2PriorityFrame();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2PriorityParam_static_extension) @:dox(hide) abstract T_http2PriorityParam(stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam) from stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam to stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam {
    public var streamDep(get, set) : std.UInt;
    function get_streamDep():std.UInt return this.streamDep;
    function set_streamDep(v:std.UInt):std.UInt {
        this.streamDep = (v : stdgo.GoUInt32);
        return v;
    }
    public var exclusive(get, set) : Bool;
    function get_exclusive():Bool return this.exclusive;
    function set_exclusive(v:Bool):Bool {
        this.exclusive = v;
        return v;
    }
    public var weight(get, set) : std.UInt;
    function get_weight():std.UInt return this.weight;
    function set_weight(v:std.UInt):std.UInt {
        this.weight = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?streamDep:std.UInt, ?exclusive:Bool, ?weight:std.UInt) this = new stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam((streamDep : stdgo.GoUInt32), exclusive, (weight : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2RSTStreamFrame_static_extension) @:dox(hide) abstract T_http2RSTStreamFrame(stdgo._internal.net.http.Http_t_http2rststreamframe.T_http2RSTStreamFrame) from stdgo._internal.net.http.Http_t_http2rststreamframe.T_http2RSTStreamFrame to stdgo._internal.net.http.Http_t_http2rststreamframe.T_http2RSTStreamFrame {
    public var errCode(get, set) : T_http2ErrCode;
    function get_errCode():T_http2ErrCode return this.errCode;
    function set_errCode(v:T_http2ErrCode):T_http2ErrCode {
        this.errCode = v;
        return v;
    }
    public function new(?errCode:T_http2ErrCode) this = new stdgo._internal.net.http.Http_t_http2rststreamframe.T_http2RSTStreamFrame(errCode);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2ContinuationFrame_static_extension) @:dox(hide) abstract T_http2ContinuationFrame(stdgo._internal.net.http.Http_t_http2continuationframe.T_http2ContinuationFrame) from stdgo._internal.net.http.Http_t_http2continuationframe.T_http2ContinuationFrame to stdgo._internal.net.http.Http_t_http2continuationframe.T_http2ContinuationFrame {
    public function new() this = new stdgo._internal.net.http.Http_t_http2continuationframe.T_http2ContinuationFrame();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2PushPromiseFrame_static_extension) @:dox(hide) abstract T_http2PushPromiseFrame(stdgo._internal.net.http.Http_t_http2pushpromiseframe.T_http2PushPromiseFrame) from stdgo._internal.net.http.Http_t_http2pushpromiseframe.T_http2PushPromiseFrame to stdgo._internal.net.http.Http_t_http2pushpromiseframe.T_http2PushPromiseFrame {
    public var promiseID(get, set) : std.UInt;
    function get_promiseID():std.UInt return this.promiseID;
    function set_promiseID(v:std.UInt):std.UInt {
        this.promiseID = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?promiseID:std.UInt) this = new stdgo._internal.net.http.Http_t_http2pushpromiseframe.T_http2PushPromiseFrame((promiseID : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2PushPromiseParam_static_extension) @:dox(hide) abstract T_http2PushPromiseParam(stdgo._internal.net.http.Http_t_http2pushpromiseparam.T_http2PushPromiseParam) from stdgo._internal.net.http.Http_t_http2pushpromiseparam.T_http2PushPromiseParam to stdgo._internal.net.http.Http_t_http2pushpromiseparam.T_http2PushPromiseParam {
    public var streamID(get, set) : std.UInt;
    function get_streamID():std.UInt return this.streamID;
    function set_streamID(v:std.UInt):std.UInt {
        this.streamID = (v : stdgo.GoUInt32);
        return v;
    }
    public var promiseID(get, set) : std.UInt;
    function get_promiseID():std.UInt return this.promiseID;
    function set_promiseID(v:std.UInt):std.UInt {
        this.promiseID = (v : stdgo.GoUInt32);
        return v;
    }
    public var blockFragment(get, set) : Array<std.UInt>;
    function get_blockFragment():Array<std.UInt> return [for (i in this.blockFragment) i];
    function set_blockFragment(v:Array<std.UInt>):Array<std.UInt> {
        this.blockFragment = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var endHeaders(get, set) : Bool;
    function get_endHeaders():Bool return this.endHeaders;
    function set_endHeaders(v:Bool):Bool {
        this.endHeaders = v;
        return v;
    }
    public var padLength(get, set) : std.UInt;
    function get_padLength():std.UInt return this.padLength;
    function set_padLength(v:std.UInt):std.UInt {
        this.padLength = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?streamID:std.UInt, ?promiseID:std.UInt, ?blockFragment:Array<std.UInt>, ?endHeaders:Bool, ?padLength:std.UInt) this = new stdgo._internal.net.http.Http_t_http2pushpromiseparam.T_http2PushPromiseParam((streamID : stdgo.GoUInt32), (promiseID : stdgo.GoUInt32), ([for (i in blockFragment) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), endHeaders, (padLength : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2MetaHeadersFrame_static_extension) @:dox(hide) abstract T_http2MetaHeadersFrame(stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame) from stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame to stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame {
    public var fields(get, set) : Array<vendor.golang_dot_org.x.net.http2.hpack.Hpack.HeaderField>;
    function get_fields():Array<vendor.golang_dot_org.x.net.http2.hpack.Hpack.HeaderField> return [for (i in this.fields) i];
    function set_fields(v:Array<vendor.golang_dot_org.x.net.http2.hpack.Hpack.HeaderField>):Array<vendor.golang_dot_org.x.net.http2.hpack.Hpack.HeaderField> {
        this.fields = ([for (i in v) i] : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_headerfield.HeaderField>);
        return v;
    }
    public var truncated(get, set) : Bool;
    function get_truncated():Bool return this.truncated;
    function set_truncated(v:Bool):Bool {
        this.truncated = v;
        return v;
    }
    public function new(?fields:Array<vendor.golang_dot_org.x.net.http2.hpack.Hpack.HeaderField>, ?truncated:Bool) this = new stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame(([for (i in fields) i] : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_headerfield.HeaderField>), truncated);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2Setting_static_extension) @:dox(hide) abstract T_http2Setting(stdgo._internal.net.http.Http_t_http2setting.T_http2Setting) from stdgo._internal.net.http.Http_t_http2setting.T_http2Setting to stdgo._internal.net.http.Http_t_http2setting.T_http2Setting {
    public var iD(get, set) : T_http2SettingID;
    function get_iD():T_http2SettingID return this.iD;
    function set_iD(v:T_http2SettingID):T_http2SettingID {
        this.iD = v;
        return v;
    }
    public var val(get, set) : std.UInt;
    function get_val():std.UInt return this.val;
    function set_val(v:std.UInt):std.UInt {
        this.val = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?iD:T_http2SettingID, ?val:std.UInt) this = new stdgo._internal.net.http.Http_t_http2setting.T_http2Setting(iD, (val : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2bufferedWriter_static_extension) @:dox(hide) abstract T_http2bufferedWriter(stdgo._internal.net.http.Http_t_http2bufferedwriter.T_http2bufferedWriter) from stdgo._internal.net.http.Http_t_http2bufferedwriter.T_http2bufferedWriter to stdgo._internal.net.http.Http_t_http2bufferedwriter.T_http2bufferedWriter {
    public function new() this = new stdgo._internal.net.http.Http_t_http2bufferedwriter.T_http2bufferedWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2httpError_static_extension) @:dox(hide) abstract T_http2httpError(stdgo._internal.net.http.Http_t_http2httperror.T_http2httpError) from stdgo._internal.net.http.Http_t_http2httperror.T_http2httpError to stdgo._internal.net.http.Http_t_http2httperror.T_http2httpError {
    public function new() this = new stdgo._internal.net.http.Http_t_http2httperror.T_http2httpError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2sorter_static_extension) @:dox(hide) abstract T_http2sorter(stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter) from stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter to stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter {
    public function new() this = new stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2pipe_static_extension) @:dox(hide) abstract T_http2pipe(stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe) from stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe to stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe {
    public function new() this = new stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2Server_static_extension) @:dox(hide) abstract T_http2Server(stdgo._internal.net.http.Http_t_http2server.T_http2Server) from stdgo._internal.net.http.Http_t_http2server.T_http2Server to stdgo._internal.net.http.Http_t_http2server.T_http2Server {
    public var maxHandlers(get, set) : StdTypes.Int;
    function get_maxHandlers():StdTypes.Int return this.maxHandlers;
    function set_maxHandlers(v:StdTypes.Int):StdTypes.Int {
        this.maxHandlers = (v : stdgo.GoInt);
        return v;
    }
    public var maxConcurrentStreams(get, set) : std.UInt;
    function get_maxConcurrentStreams():std.UInt return this.maxConcurrentStreams;
    function set_maxConcurrentStreams(v:std.UInt):std.UInt {
        this.maxConcurrentStreams = (v : stdgo.GoUInt32);
        return v;
    }
    public var maxDecoderHeaderTableSize(get, set) : std.UInt;
    function get_maxDecoderHeaderTableSize():std.UInt return this.maxDecoderHeaderTableSize;
    function set_maxDecoderHeaderTableSize(v:std.UInt):std.UInt {
        this.maxDecoderHeaderTableSize = (v : stdgo.GoUInt32);
        return v;
    }
    public var maxEncoderHeaderTableSize(get, set) : std.UInt;
    function get_maxEncoderHeaderTableSize():std.UInt return this.maxEncoderHeaderTableSize;
    function set_maxEncoderHeaderTableSize(v:std.UInt):std.UInt {
        this.maxEncoderHeaderTableSize = (v : stdgo.GoUInt32);
        return v;
    }
    public var maxReadFrameSize(get, set) : std.UInt;
    function get_maxReadFrameSize():std.UInt return this.maxReadFrameSize;
    function set_maxReadFrameSize(v:std.UInt):std.UInt {
        this.maxReadFrameSize = (v : stdgo.GoUInt32);
        return v;
    }
    public var permitProhibitedCipherSuites(get, set) : Bool;
    function get_permitProhibitedCipherSuites():Bool return this.permitProhibitedCipherSuites;
    function set_permitProhibitedCipherSuites(v:Bool):Bool {
        this.permitProhibitedCipherSuites = v;
        return v;
    }
    public var idleTimeout(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_idleTimeout():stdgo._internal.time.Time_duration.Duration return this.idleTimeout;
    function set_idleTimeout(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.idleTimeout = v;
        return v;
    }
    public var maxUploadBufferPerConnection(get, set) : StdTypes.Int;
    function get_maxUploadBufferPerConnection():StdTypes.Int return this.maxUploadBufferPerConnection;
    function set_maxUploadBufferPerConnection(v:StdTypes.Int):StdTypes.Int {
        this.maxUploadBufferPerConnection = (v : stdgo.GoInt32);
        return v;
    }
    public var maxUploadBufferPerStream(get, set) : StdTypes.Int;
    function get_maxUploadBufferPerStream():StdTypes.Int return this.maxUploadBufferPerStream;
    function set_maxUploadBufferPerStream(v:StdTypes.Int):StdTypes.Int {
        this.maxUploadBufferPerStream = (v : stdgo.GoInt32);
        return v;
    }
    public var newWriteScheduler(get, set) : () -> T_http2WriteScheduler;
    function get_newWriteScheduler():() -> T_http2WriteScheduler return () -> this.newWriteScheduler();
    function set_newWriteScheduler(v:() -> T_http2WriteScheduler):() -> T_http2WriteScheduler {
        this.newWriteScheduler = v;
        return v;
    }
    public var countError(get, set) : String -> Void;
    function get_countError():String -> Void return _0 -> this.countError(_0);
    function set_countError(v:String -> Void):String -> Void {
        this.countError = v;
        return v;
    }
    public function new(?maxHandlers:StdTypes.Int, ?maxConcurrentStreams:std.UInt, ?maxDecoderHeaderTableSize:std.UInt, ?maxEncoderHeaderTableSize:std.UInt, ?maxReadFrameSize:std.UInt, ?permitProhibitedCipherSuites:Bool, ?idleTimeout:stdgo._internal.time.Time_duration.Duration, ?maxUploadBufferPerConnection:StdTypes.Int, ?maxUploadBufferPerStream:StdTypes.Int, ?newWriteScheduler:() -> T_http2WriteScheduler, ?countError:String -> Void) this = new stdgo._internal.net.http.Http_t_http2server.T_http2Server(
(maxHandlers : stdgo.GoInt),
(maxConcurrentStreams : stdgo.GoUInt32),
(maxDecoderHeaderTableSize : stdgo.GoUInt32),
(maxEncoderHeaderTableSize : stdgo.GoUInt32),
(maxReadFrameSize : stdgo.GoUInt32),
permitProhibitedCipherSuites,
idleTimeout,
(maxUploadBufferPerConnection : stdgo.GoInt32),
(maxUploadBufferPerStream : stdgo.GoInt32),
newWriteScheduler,
countError);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2serverInternalState_static_extension) @:dox(hide) abstract T_http2serverInternalState(stdgo._internal.net.http.Http_t_http2serverinternalstate.T_http2serverInternalState) from stdgo._internal.net.http.Http_t_http2serverinternalstate.T_http2serverInternalState to stdgo._internal.net.http.Http_t_http2serverinternalstate.T_http2serverInternalState {
    public function new() this = new stdgo._internal.net.http.Http_t_http2serverinternalstate.T_http2serverInternalState();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2ServeConnOpts_static_extension) @:dox(hide) abstract T_http2ServeConnOpts(stdgo._internal.net.http.Http_t_http2serveconnopts.T_http2ServeConnOpts) from stdgo._internal.net.http.Http_t_http2serveconnopts.T_http2ServeConnOpts to stdgo._internal.net.http.Http_t_http2serveconnopts.T_http2ServeConnOpts {
    public var context(get, set) : stdgo._internal.context.Context_context.Context;
    function get_context():stdgo._internal.context.Context_context.Context return this.context;
    function set_context(v:stdgo._internal.context.Context_context.Context):stdgo._internal.context.Context_context.Context {
        this.context = v;
        return v;
    }
    public var baseConfig(get, set) : Server;
    function get_baseConfig():Server return this.baseConfig;
    function set_baseConfig(v:Server):Server {
        this.baseConfig = (v : stdgo.Ref<stdgo._internal.net.http.Http_server.Server>);
        return v;
    }
    public var handler(get, set) : Handler;
    function get_handler():Handler return this.handler;
    function set_handler(v:Handler):Handler {
        this.handler = v;
        return v;
    }
    public var upgradeRequest(get, set) : Request;
    function get_upgradeRequest():Request return this.upgradeRequest;
    function set_upgradeRequest(v:Request):Request {
        this.upgradeRequest = (v : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return v;
    }
    public var settings(get, set) : Array<std.UInt>;
    function get_settings():Array<std.UInt> return [for (i in this.settings) i];
    function set_settings(v:Array<std.UInt>):Array<std.UInt> {
        this.settings = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var sawClientPreface(get, set) : Bool;
    function get_sawClientPreface():Bool return this.sawClientPreface;
    function set_sawClientPreface(v:Bool):Bool {
        this.sawClientPreface = v;
        return v;
    }
    public function new(?context:stdgo._internal.context.Context_context.Context, ?baseConfig:Server, ?handler:Handler, ?upgradeRequest:Request, ?settings:Array<std.UInt>, ?sawClientPreface:Bool) this = new stdgo._internal.net.http.Http_t_http2serveconnopts.T_http2ServeConnOpts(context, (baseConfig : stdgo.Ref<stdgo._internal.net.http.Http_server.Server>), handler, (upgradeRequest : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>), ([for (i in settings) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), sawClientPreface);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2serverConn_static_extension) @:dox(hide) abstract T_http2serverConn(stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn) from stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn to stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn {
    public function new() this = new stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2stream_static_extension) @:dox(hide) abstract T_http2stream(stdgo._internal.net.http.Http_t_http2stream.T_http2stream) from stdgo._internal.net.http.Http_t_http2stream.T_http2stream to stdgo._internal.net.http.Http_t_http2stream.T_http2stream {
    public function new() this = new stdgo._internal.net.http.Http_t_http2stream.T_http2stream();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2readFrameResult_static_extension) @:dox(hide) abstract T_http2readFrameResult(stdgo._internal.net.http.Http_t_http2readframeresult.T_http2readFrameResult) from stdgo._internal.net.http.Http_t_http2readframeresult.T_http2readFrameResult to stdgo._internal.net.http.Http_t_http2readframeresult.T_http2readFrameResult {
    public function new() this = new stdgo._internal.net.http.Http_t_http2readframeresult.T_http2readFrameResult();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2frameWriteResult_static_extension) @:dox(hide) abstract T_http2frameWriteResult(stdgo._internal.net.http.Http_t_http2framewriteresult.T_http2frameWriteResult) from stdgo._internal.net.http.Http_t_http2framewriteresult.T_http2frameWriteResult to stdgo._internal.net.http.Http_t_http2framewriteresult.T_http2frameWriteResult {
    public function new() this = new stdgo._internal.net.http.Http_t_http2framewriteresult.T_http2frameWriteResult();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2requestParam_static_extension) @:dox(hide) abstract T_http2requestParam(stdgo._internal.net.http.Http_t_http2requestparam.T_http2requestParam) from stdgo._internal.net.http.Http_t_http2requestparam.T_http2requestParam to stdgo._internal.net.http.Http_t_http2requestparam.T_http2requestParam {
    public function new() this = new stdgo._internal.net.http.Http_t_http2requestparam.T_http2requestParam();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2unstartedHandler_static_extension) @:dox(hide) abstract T_http2unstartedHandler(stdgo._internal.net.http.Http_t_http2unstartedhandler.T_http2unstartedHandler) from stdgo._internal.net.http.Http_t_http2unstartedhandler.T_http2unstartedHandler to stdgo._internal.net.http.Http_t_http2unstartedhandler.T_http2unstartedHandler {
    public function new() this = new stdgo._internal.net.http.Http_t_http2unstartedhandler.T_http2unstartedHandler();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2bodyReadMsg_static_extension) @:dox(hide) abstract T_http2bodyReadMsg(stdgo._internal.net.http.Http_t_http2bodyreadmsg.T_http2bodyReadMsg) from stdgo._internal.net.http.Http_t_http2bodyreadmsg.T_http2bodyReadMsg to stdgo._internal.net.http.Http_t_http2bodyreadmsg.T_http2bodyReadMsg {
    public function new() this = new stdgo._internal.net.http.Http_t_http2bodyreadmsg.T_http2bodyReadMsg();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2requestBody_static_extension) @:dox(hide) abstract T_http2requestBody(stdgo._internal.net.http.Http_t_http2requestbody.T_http2requestBody) from stdgo._internal.net.http.Http_t_http2requestbody.T_http2requestBody to stdgo._internal.net.http.Http_t_http2requestbody.T_http2requestBody {
    public function new() this = new stdgo._internal.net.http.Http_t_http2requestbody.T_http2requestBody();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2responseWriter_static_extension) @:dox(hide) abstract T_http2responseWriter(stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter) from stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter to stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter {
    public function new() this = new stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2responseWriterState_static_extension) @:dox(hide) abstract T_http2responseWriterState(stdgo._internal.net.http.Http_t_http2responsewriterstate.T_http2responseWriterState) from stdgo._internal.net.http.Http_t_http2responsewriterstate.T_http2responseWriterState to stdgo._internal.net.http.Http_t_http2responsewriterstate.T_http2responseWriterState {
    public function new() this = new stdgo._internal.net.http.Http_t_http2responsewriterstate.T_http2responseWriterState();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2chunkWriter_static_extension) @:dox(hide) abstract T_http2chunkWriter(stdgo._internal.net.http.Http_t_http2chunkwriter.T_http2chunkWriter) from stdgo._internal.net.http.Http_t_http2chunkwriter.T_http2chunkWriter to stdgo._internal.net.http.Http_t_http2chunkwriter.T_http2chunkWriter {
    public function new() this = new stdgo._internal.net.http.Http_t_http2chunkwriter.T_http2chunkWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2startPushRequest_static_extension) @:dox(hide) abstract T_http2startPushRequest(stdgo._internal.net.http.Http_t_http2startpushrequest.T_http2startPushRequest) from stdgo._internal.net.http.Http_t_http2startpushrequest.T_http2startPushRequest to stdgo._internal.net.http.Http_t_http2startpushrequest.T_http2startPushRequest {
    public function new() this = new stdgo._internal.net.http.Http_t_http2startpushrequest.T_http2startPushRequest();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2Transport_static_extension) @:dox(hide) abstract T_http2Transport(stdgo._internal.net.http.Http_t_http2transport.T_http2Transport) from stdgo._internal.net.http.Http_t_http2transport.T_http2Transport to stdgo._internal.net.http.Http_t_http2transport.T_http2Transport {
    public var dialTLSContext(get, set) : (stdgo._internal.context.Context_context.Context, String, String, stdgo._internal.crypto.tls.Tls_config.Config) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error>;
    function get_dialTLSContext():(stdgo._internal.context.Context_context.Context, String, String, stdgo._internal.crypto.tls.Tls_config.Config) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error> return (_0, _1, _2, _3) -> this.dialTLSContext(_0, _1, _2, _3);
    function set_dialTLSContext(v:(stdgo._internal.context.Context_context.Context, String, String, stdgo._internal.crypto.tls.Tls_config.Config) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error>):(stdgo._internal.context.Context_context.Context, String, String, stdgo._internal.crypto.tls.Tls_config.Config) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error> {
        this.dialTLSContext = v;
        return v;
    }
    public var dialTLS(get, set) : (String, String, stdgo._internal.crypto.tls.Tls_config.Config) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error>;
    function get_dialTLS():(String, String, stdgo._internal.crypto.tls.Tls_config.Config) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error> return (_0, _1, _2) -> this.dialTLS(_0, _1, _2);
    function set_dialTLS(v:(String, String, stdgo._internal.crypto.tls.Tls_config.Config) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error>):(String, String, stdgo._internal.crypto.tls.Tls_config.Config) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error> {
        this.dialTLS = v;
        return v;
    }
    public var tLSClientConfig(get, set) : stdgo._internal.crypto.tls.Tls_config.Config;
    function get_tLSClientConfig():stdgo._internal.crypto.tls.Tls_config.Config return this.tLSClientConfig;
    function set_tLSClientConfig(v:stdgo._internal.crypto.tls.Tls_config.Config):stdgo._internal.crypto.tls.Tls_config.Config {
        this.tLSClientConfig = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
        return v;
    }
    public var connPool(get, set) : T_http2ClientConnPool;
    function get_connPool():T_http2ClientConnPool return this.connPool;
    function set_connPool(v:T_http2ClientConnPool):T_http2ClientConnPool {
        this.connPool = v;
        return v;
    }
    public var disableCompression(get, set) : Bool;
    function get_disableCompression():Bool return this.disableCompression;
    function set_disableCompression(v:Bool):Bool {
        this.disableCompression = v;
        return v;
    }
    public var allowHTTP(get, set) : Bool;
    function get_allowHTTP():Bool return this.allowHTTP;
    function set_allowHTTP(v:Bool):Bool {
        this.allowHTTP = v;
        return v;
    }
    public var maxHeaderListSize(get, set) : std.UInt;
    function get_maxHeaderListSize():std.UInt return this.maxHeaderListSize;
    function set_maxHeaderListSize(v:std.UInt):std.UInt {
        this.maxHeaderListSize = (v : stdgo.GoUInt32);
        return v;
    }
    public var maxReadFrameSize(get, set) : std.UInt;
    function get_maxReadFrameSize():std.UInt return this.maxReadFrameSize;
    function set_maxReadFrameSize(v:std.UInt):std.UInt {
        this.maxReadFrameSize = (v : stdgo.GoUInt32);
        return v;
    }
    public var maxDecoderHeaderTableSize(get, set) : std.UInt;
    function get_maxDecoderHeaderTableSize():std.UInt return this.maxDecoderHeaderTableSize;
    function set_maxDecoderHeaderTableSize(v:std.UInt):std.UInt {
        this.maxDecoderHeaderTableSize = (v : stdgo.GoUInt32);
        return v;
    }
    public var maxEncoderHeaderTableSize(get, set) : std.UInt;
    function get_maxEncoderHeaderTableSize():std.UInt return this.maxEncoderHeaderTableSize;
    function set_maxEncoderHeaderTableSize(v:std.UInt):std.UInt {
        this.maxEncoderHeaderTableSize = (v : stdgo.GoUInt32);
        return v;
    }
    public var strictMaxConcurrentStreams(get, set) : Bool;
    function get_strictMaxConcurrentStreams():Bool return this.strictMaxConcurrentStreams;
    function set_strictMaxConcurrentStreams(v:Bool):Bool {
        this.strictMaxConcurrentStreams = v;
        return v;
    }
    public var readIdleTimeout(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_readIdleTimeout():stdgo._internal.time.Time_duration.Duration return this.readIdleTimeout;
    function set_readIdleTimeout(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.readIdleTimeout = v;
        return v;
    }
    public var pingTimeout(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_pingTimeout():stdgo._internal.time.Time_duration.Duration return this.pingTimeout;
    function set_pingTimeout(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.pingTimeout = v;
        return v;
    }
    public var writeByteTimeout(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_writeByteTimeout():stdgo._internal.time.Time_duration.Duration return this.writeByteTimeout;
    function set_writeByteTimeout(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.writeByteTimeout = v;
        return v;
    }
    public var countError(get, set) : String -> Void;
    function get_countError():String -> Void return _0 -> this.countError(_0);
    function set_countError(v:String -> Void):String -> Void {
        this.countError = v;
        return v;
    }
    public function new(?dialTLSContext:(stdgo._internal.context.Context_context.Context, String, String, stdgo._internal.crypto.tls.Tls_config.Config) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error>, ?dialTLS:(String, String, stdgo._internal.crypto.tls.Tls_config.Config) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error>, ?tLSClientConfig:stdgo._internal.crypto.tls.Tls_config.Config, ?connPool:T_http2ClientConnPool, ?disableCompression:Bool, ?allowHTTP:Bool, ?maxHeaderListSize:std.UInt, ?maxReadFrameSize:std.UInt, ?maxDecoderHeaderTableSize:std.UInt, ?maxEncoderHeaderTableSize:std.UInt, ?strictMaxConcurrentStreams:Bool, ?readIdleTimeout:stdgo._internal.time.Time_duration.Duration, ?pingTimeout:stdgo._internal.time.Time_duration.Duration, ?writeByteTimeout:stdgo._internal.time.Time_duration.Duration, ?countError:String -> Void) this = new stdgo._internal.net.http.Http_t_http2transport.T_http2Transport(
dialTLSContext,
dialTLS,
(tLSClientConfig : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>),
connPool,
disableCompression,
allowHTTP,
(maxHeaderListSize : stdgo.GoUInt32),
(maxReadFrameSize : stdgo.GoUInt32),
(maxDecoderHeaderTableSize : stdgo.GoUInt32),
(maxEncoderHeaderTableSize : stdgo.GoUInt32),
strictMaxConcurrentStreams,
readIdleTimeout,
pingTimeout,
writeByteTimeout,
countError);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2ClientConn_static_extension) @:dox(hide) abstract T_http2ClientConn(stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn) from stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn to stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn {
    public function new() this = new stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2clientStream_static_extension) @:dox(hide) abstract T_http2clientStream(stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream) from stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream to stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream {
    public var iD(get, set) : std.UInt;
    function get_iD():std.UInt return this.iD;
    function set_iD(v:std.UInt):std.UInt {
        this.iD = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?iD:std.UInt) this = new stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream((iD : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2stickyErrWriter_static_extension) @:dox(hide) abstract T_http2stickyErrWriter(stdgo._internal.net.http.Http_t_http2stickyerrwriter.T_http2stickyErrWriter) from stdgo._internal.net.http.Http_t_http2stickyerrwriter.T_http2stickyErrWriter to stdgo._internal.net.http.Http_t_http2stickyerrwriter.T_http2stickyErrWriter {
    public function new() this = new stdgo._internal.net.http.Http_t_http2stickyerrwriter.T_http2stickyErrWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2noCachedConnError_static_extension) @:dox(hide) abstract T_http2noCachedConnError(stdgo._internal.net.http.Http_t_http2nocachedconnerror.T_http2noCachedConnError) from stdgo._internal.net.http.Http_t_http2nocachedconnerror.T_http2noCachedConnError to stdgo._internal.net.http.Http_t_http2nocachedconnerror.T_http2noCachedConnError {
    public function new() this = new stdgo._internal.net.http.Http_t_http2nocachedconnerror.T_http2noCachedConnError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2RoundTripOpt_static_extension) @:dox(hide) abstract T_http2RoundTripOpt(stdgo._internal.net.http.Http_t_http2roundtripopt.T_http2RoundTripOpt) from stdgo._internal.net.http.Http_t_http2roundtripopt.T_http2RoundTripOpt to stdgo._internal.net.http.Http_t_http2roundtripopt.T_http2RoundTripOpt {
    public var onlyCachedConn(get, set) : Bool;
    function get_onlyCachedConn():Bool return this.onlyCachedConn;
    function set_onlyCachedConn(v:Bool):Bool {
        this.onlyCachedConn = v;
        return v;
    }
    public function new(?onlyCachedConn:Bool) this = new stdgo._internal.net.http.Http_t_http2roundtripopt.T_http2RoundTripOpt(onlyCachedConn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2ClientConnState_static_extension) @:dox(hide) abstract T_http2ClientConnState(stdgo._internal.net.http.Http_t_http2clientconnstate.T_http2ClientConnState) from stdgo._internal.net.http.Http_t_http2clientconnstate.T_http2ClientConnState to stdgo._internal.net.http.Http_t_http2clientconnstate.T_http2ClientConnState {
    public var closed(get, set) : Bool;
    function get_closed():Bool return this.closed;
    function set_closed(v:Bool):Bool {
        this.closed = v;
        return v;
    }
    public var closing(get, set) : Bool;
    function get_closing():Bool return this.closing;
    function set_closing(v:Bool):Bool {
        this.closing = v;
        return v;
    }
    public var streamsActive(get, set) : StdTypes.Int;
    function get_streamsActive():StdTypes.Int return this.streamsActive;
    function set_streamsActive(v:StdTypes.Int):StdTypes.Int {
        this.streamsActive = (v : stdgo.GoInt);
        return v;
    }
    public var streamsReserved(get, set) : StdTypes.Int;
    function get_streamsReserved():StdTypes.Int return this.streamsReserved;
    function set_streamsReserved(v:StdTypes.Int):StdTypes.Int {
        this.streamsReserved = (v : stdgo.GoInt);
        return v;
    }
    public var streamsPending(get, set) : StdTypes.Int;
    function get_streamsPending():StdTypes.Int return this.streamsPending;
    function set_streamsPending(v:StdTypes.Int):StdTypes.Int {
        this.streamsPending = (v : stdgo.GoInt);
        return v;
    }
    public var maxConcurrentStreams(get, set) : std.UInt;
    function get_maxConcurrentStreams():std.UInt return this.maxConcurrentStreams;
    function set_maxConcurrentStreams(v:std.UInt):std.UInt {
        this.maxConcurrentStreams = (v : stdgo.GoUInt32);
        return v;
    }
    public var lastIdle(get, set) : stdgo._internal.time.Time_time.Time;
    function get_lastIdle():stdgo._internal.time.Time_time.Time return this.lastIdle;
    function set_lastIdle(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.lastIdle = v;
        return v;
    }
    public function new(?closed:Bool, ?closing:Bool, ?streamsActive:StdTypes.Int, ?streamsReserved:StdTypes.Int, ?streamsPending:StdTypes.Int, ?maxConcurrentStreams:std.UInt, ?lastIdle:stdgo._internal.time.Time_time.Time) this = new stdgo._internal.net.http.Http_t_http2clientconnstate.T_http2ClientConnState(closed, closing, (streamsActive : stdgo.GoInt), (streamsReserved : stdgo.GoInt), (streamsPending : stdgo.GoInt), (maxConcurrentStreams : stdgo.GoUInt32), lastIdle);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2clientConnIdleState_static_extension) @:dox(hide) abstract T_http2clientConnIdleState(stdgo._internal.net.http.Http_t_http2clientconnidlestate.T_http2clientConnIdleState) from stdgo._internal.net.http.Http_t_http2clientconnidlestate.T_http2clientConnIdleState to stdgo._internal.net.http.Http_t_http2clientconnidlestate.T_http2clientConnIdleState {
    public function new() this = new stdgo._internal.net.http.Http_t_http2clientconnidlestate.T_http2clientConnIdleState();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2resAndError_static_extension) @:dox(hide) abstract T_http2resAndError(stdgo._internal.net.http.Http_t_http2resanderror.T_http2resAndError) from stdgo._internal.net.http.Http_t_http2resanderror.T_http2resAndError to stdgo._internal.net.http.Http_t_http2resanderror.T_http2resAndError {
    public function new() this = new stdgo._internal.net.http.Http_t_http2resanderror.T_http2resAndError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2clientConnReadLoop_static_extension) @:dox(hide) abstract T_http2clientConnReadLoop(stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop) from stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop to stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop {
    public function new() this = new stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2GoAwayError_static_extension) @:dox(hide) abstract T_http2GoAwayError(stdgo._internal.net.http.Http_t_http2goawayerror.T_http2GoAwayError) from stdgo._internal.net.http.Http_t_http2goawayerror.T_http2GoAwayError to stdgo._internal.net.http.Http_t_http2goawayerror.T_http2GoAwayError {
    public var lastStreamID(get, set) : std.UInt;
    function get_lastStreamID():std.UInt return this.lastStreamID;
    function set_lastStreamID(v:std.UInt):std.UInt {
        this.lastStreamID = (v : stdgo.GoUInt32);
        return v;
    }
    public var errCode(get, set) : T_http2ErrCode;
    function get_errCode():T_http2ErrCode return this.errCode;
    function set_errCode(v:T_http2ErrCode):T_http2ErrCode {
        this.errCode = v;
        return v;
    }
    public var debugData(get, set) : String;
    function get_debugData():String return this.debugData;
    function set_debugData(v:String):String {
        this.debugData = (v : stdgo.GoString);
        return v;
    }
    public function new(?lastStreamID:std.UInt, ?errCode:T_http2ErrCode, ?debugData:String) this = new stdgo._internal.net.http.Http_t_http2goawayerror.T_http2GoAwayError((lastStreamID : stdgo.GoUInt32), errCode, (debugData : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2transportResponseBody_static_extension) @:dox(hide) abstract T_http2transportResponseBody(stdgo._internal.net.http.Http_t_http2transportresponsebody.T_http2transportResponseBody) from stdgo._internal.net.http.Http_t_http2transportresponsebody.T_http2transportResponseBody to stdgo._internal.net.http.Http_t_http2transportresponsebody.T_http2transportResponseBody {
    public function new() this = new stdgo._internal.net.http.Http_t_http2transportresponsebody.T_http2transportResponseBody();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2noBodyReader_static_extension) @:dox(hide) abstract T_http2noBodyReader(stdgo._internal.net.http.Http_t_http2nobodyreader.T_http2noBodyReader) from stdgo._internal.net.http.Http_t_http2nobodyreader.T_http2noBodyReader to stdgo._internal.net.http.Http_t_http2nobodyreader.T_http2noBodyReader {
    public function new() this = new stdgo._internal.net.http.Http_t_http2nobodyreader.T_http2noBodyReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2missingBody_static_extension) @:dox(hide) abstract T_http2missingBody(stdgo._internal.net.http.Http_t_http2missingbody.T_http2missingBody) from stdgo._internal.net.http.Http_t_http2missingbody.T_http2missingBody to stdgo._internal.net.http.Http_t_http2missingbody.T_http2missingBody {
    public function new() this = new stdgo._internal.net.http.Http_t_http2missingbody.T_http2missingBody();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2erringRoundTripper_static_extension) @:dox(hide) abstract T_http2erringRoundTripper(stdgo._internal.net.http.Http_t_http2erringroundtripper.T_http2erringRoundTripper) from stdgo._internal.net.http.Http_t_http2erringroundtripper.T_http2erringRoundTripper to stdgo._internal.net.http.Http_t_http2erringroundtripper.T_http2erringRoundTripper {
    public function new() this = new stdgo._internal.net.http.Http_t_http2erringroundtripper.T_http2erringRoundTripper();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2gzipReader_static_extension) @:dox(hide) abstract T_http2gzipReader(stdgo._internal.net.http.Http_t_http2gzipreader.T_http2gzipReader) from stdgo._internal.net.http.Http_t_http2gzipreader.T_http2gzipReader to stdgo._internal.net.http.Http_t_http2gzipreader.T_http2gzipReader {
    public function new() this = new stdgo._internal.net.http.Http_t_http2gzipreader.T_http2gzipReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2errorReader_static_extension) @:dox(hide) abstract T_http2errorReader(stdgo._internal.net.http.Http_t_http2errorreader.T_http2errorReader) from stdgo._internal.net.http.Http_t_http2errorreader.T_http2errorReader to stdgo._internal.net.http.Http_t_http2errorreader.T_http2errorReader {
    public function new() this = new stdgo._internal.net.http.Http_t_http2errorreader.T_http2errorReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2noDialH2RoundTripper_static_extension) @:dox(hide) abstract T_http2noDialH2RoundTripper(stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper) from stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper to stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper {
    public function new() this = new stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2flushFrameWriter_static_extension) @:dox(hide) abstract T_http2flushFrameWriter(stdgo._internal.net.http.Http_t_http2flushframewriter.T_http2flushFrameWriter) from stdgo._internal.net.http.Http_t_http2flushframewriter.T_http2flushFrameWriter to stdgo._internal.net.http.Http_t_http2flushframewriter.T_http2flushFrameWriter {
    public function new() this = new stdgo._internal.net.http.Http_t_http2flushframewriter.T_http2flushFrameWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2writeGoAway_static_extension) @:dox(hide) abstract T_http2writeGoAway(stdgo._internal.net.http.Http_t_http2writegoaway.T_http2writeGoAway) from stdgo._internal.net.http.Http_t_http2writegoaway.T_http2writeGoAway to stdgo._internal.net.http.Http_t_http2writegoaway.T_http2writeGoAway {
    public function new() this = new stdgo._internal.net.http.Http_t_http2writegoaway.T_http2writeGoAway();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2writeData_static_extension) @:dox(hide) abstract T_http2writeData(stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData) from stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData to stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData {
    public function new() this = new stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2handlerPanicRST_static_extension) @:dox(hide) abstract T_http2handlerPanicRST(stdgo._internal.net.http.Http_t_http2handlerpanicrst.T_http2handlerPanicRST) from stdgo._internal.net.http.Http_t_http2handlerpanicrst.T_http2handlerPanicRST to stdgo._internal.net.http.Http_t_http2handlerpanicrst.T_http2handlerPanicRST {
    public var streamID(get, set) : std.UInt;
    function get_streamID():std.UInt return this.streamID;
    function set_streamID(v:std.UInt):std.UInt {
        this.streamID = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?streamID:std.UInt) this = new stdgo._internal.net.http.Http_t_http2handlerpanicrst.T_http2handlerPanicRST((streamID : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2writePingAck_static_extension) @:dox(hide) abstract T_http2writePingAck(stdgo._internal.net.http.Http_t_http2writepingack.T_http2writePingAck) from stdgo._internal.net.http.Http_t_http2writepingack.T_http2writePingAck to stdgo._internal.net.http.Http_t_http2writepingack.T_http2writePingAck {
    public function new() this = new stdgo._internal.net.http.Http_t_http2writepingack.T_http2writePingAck();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2writeSettingsAck_static_extension) @:dox(hide) abstract T_http2writeSettingsAck(stdgo._internal.net.http.Http_t_http2writesettingsack.T_http2writeSettingsAck) from stdgo._internal.net.http.Http_t_http2writesettingsack.T_http2writeSettingsAck to stdgo._internal.net.http.Http_t_http2writesettingsack.T_http2writeSettingsAck {
    public function new() this = new stdgo._internal.net.http.Http_t_http2writesettingsack.T_http2writeSettingsAck();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2writeResHeaders_static_extension) @:dox(hide) abstract T_http2writeResHeaders(stdgo._internal.net.http.Http_t_http2writeresheaders.T_http2writeResHeaders) from stdgo._internal.net.http.Http_t_http2writeresheaders.T_http2writeResHeaders to stdgo._internal.net.http.Http_t_http2writeresheaders.T_http2writeResHeaders {
    public function new() this = new stdgo._internal.net.http.Http_t_http2writeresheaders.T_http2writeResHeaders();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2writePushPromise_static_extension) @:dox(hide) abstract T_http2writePushPromise(stdgo._internal.net.http.Http_t_http2writepushpromise.T_http2writePushPromise) from stdgo._internal.net.http.Http_t_http2writepushpromise.T_http2writePushPromise to stdgo._internal.net.http.Http_t_http2writepushpromise.T_http2writePushPromise {
    public function new() this = new stdgo._internal.net.http.Http_t_http2writepushpromise.T_http2writePushPromise();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2write100ContinueHeadersFrame_static_extension) @:dox(hide) abstract T_http2write100ContinueHeadersFrame(stdgo._internal.net.http.Http_t_http2write100continueheadersframe.T_http2write100ContinueHeadersFrame) from stdgo._internal.net.http.Http_t_http2write100continueheadersframe.T_http2write100ContinueHeadersFrame to stdgo._internal.net.http.Http_t_http2write100continueheadersframe.T_http2write100ContinueHeadersFrame {
    public function new() this = new stdgo._internal.net.http.Http_t_http2write100continueheadersframe.T_http2write100ContinueHeadersFrame();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2writeWindowUpdate_static_extension) @:dox(hide) abstract T_http2writeWindowUpdate(stdgo._internal.net.http.Http_t_http2writewindowupdate.T_http2writeWindowUpdate) from stdgo._internal.net.http.Http_t_http2writewindowupdate.T_http2writeWindowUpdate to stdgo._internal.net.http.Http_t_http2writewindowupdate.T_http2writeWindowUpdate {
    public function new() this = new stdgo._internal.net.http.Http_t_http2writewindowupdate.T_http2writeWindowUpdate();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2OpenStreamOptions_static_extension) @:dox(hide) abstract T_http2OpenStreamOptions(stdgo._internal.net.http.Http_t_http2openstreamoptions.T_http2OpenStreamOptions) from stdgo._internal.net.http.Http_t_http2openstreamoptions.T_http2OpenStreamOptions to stdgo._internal.net.http.Http_t_http2openstreamoptions.T_http2OpenStreamOptions {
    public var pusherID(get, set) : std.UInt;
    function get_pusherID():std.UInt return this.pusherID;
    function set_pusherID(v:std.UInt):std.UInt {
        this.pusherID = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?pusherID:std.UInt) this = new stdgo._internal.net.http.Http_t_http2openstreamoptions.T_http2OpenStreamOptions((pusherID : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2FrameWriteRequest_static_extension) @:dox(hide) abstract T_http2FrameWriteRequest(stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest) from stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest to stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest {
    public function new() this = new stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2writeQueue_static_extension) @:dox(hide) abstract T_http2writeQueue(stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue) from stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue to stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue {
    public function new() this = new stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2PriorityWriteSchedulerConfig_static_extension) @:dox(hide) abstract T_http2PriorityWriteSchedulerConfig(stdgo._internal.net.http.Http_t_http2prioritywriteschedulerconfig.T_http2PriorityWriteSchedulerConfig) from stdgo._internal.net.http.Http_t_http2prioritywriteschedulerconfig.T_http2PriorityWriteSchedulerConfig to stdgo._internal.net.http.Http_t_http2prioritywriteschedulerconfig.T_http2PriorityWriteSchedulerConfig {
    public var maxClosedNodesInTree(get, set) : StdTypes.Int;
    function get_maxClosedNodesInTree():StdTypes.Int return this.maxClosedNodesInTree;
    function set_maxClosedNodesInTree(v:StdTypes.Int):StdTypes.Int {
        this.maxClosedNodesInTree = (v : stdgo.GoInt);
        return v;
    }
    public var maxIdleNodesInTree(get, set) : StdTypes.Int;
    function get_maxIdleNodesInTree():StdTypes.Int return this.maxIdleNodesInTree;
    function set_maxIdleNodesInTree(v:StdTypes.Int):StdTypes.Int {
        this.maxIdleNodesInTree = (v : stdgo.GoInt);
        return v;
    }
    public var throttleOutOfOrderWrites(get, set) : Bool;
    function get_throttleOutOfOrderWrites():Bool return this.throttleOutOfOrderWrites;
    function set_throttleOutOfOrderWrites(v:Bool):Bool {
        this.throttleOutOfOrderWrites = v;
        return v;
    }
    public function new(?maxClosedNodesInTree:StdTypes.Int, ?maxIdleNodesInTree:StdTypes.Int, ?throttleOutOfOrderWrites:Bool) this = new stdgo._internal.net.http.Http_t_http2prioritywriteschedulerconfig.T_http2PriorityWriteSchedulerConfig((maxClosedNodesInTree : stdgo.GoInt), (maxIdleNodesInTree : stdgo.GoInt), throttleOutOfOrderWrites);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2priorityNode_static_extension) @:dox(hide) abstract T_http2priorityNode(stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode) from stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode to stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode {
    public function new() this = new stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2priorityWriteScheduler_static_extension) @:dox(hide) abstract T_http2priorityWriteScheduler(stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler) from stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler to stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler {
    public function new() this = new stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2randomWriteScheduler_static_extension) @:dox(hide) abstract T_http2randomWriteScheduler(stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler) from stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler to stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler {
    public function new() this = new stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2roundRobinWriteScheduler_static_extension) @:dox(hide) abstract T_http2roundRobinWriteScheduler(stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler) from stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler to stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler {
    public function new() this = new stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_stringWriter_static_extension) @:dox(hide) abstract T_stringWriter(stdgo._internal.net.http.Http_t_stringwriter.T_stringWriter) from stdgo._internal.net.http.Http_t_stringwriter.T_stringWriter to stdgo._internal.net.http.Http_t_stringwriter.T_stringWriter {
    public function new() this = new stdgo._internal.net.http.Http_t_stringwriter.T_stringWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_keyValues_static_extension) @:dox(hide) abstract T_keyValues(stdgo._internal.net.http.Http_t_keyvalues.T_keyValues) from stdgo._internal.net.http.Http_t_keyvalues.T_keyValues to stdgo._internal.net.http.Http_t_keyvalues.T_keyValues {
    public function new() this = new stdgo._internal.net.http.Http_t_keyvalues.T_keyValues();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_headerSorter_static_extension) @:dox(hide) abstract T_headerSorter(stdgo._internal.net.http.Http_t_headersorter.T_headerSorter) from stdgo._internal.net.http.Http_t_headersorter.T_headerSorter to stdgo._internal.net.http.Http_t_headersorter.T_headerSorter {
    public function new() this = new stdgo._internal.net.http.Http_t_headersorter.T_headerSorter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_contextKey_static_extension) @:dox(hide) abstract T_contextKey(stdgo._internal.net.http.Http_t_contextkey.T_contextKey) from stdgo._internal.net.http.Http_t_contextkey.T_contextKey to stdgo._internal.net.http.Http_t_contextkey.T_contextKey {
    public function new() this = new stdgo._internal.net.http.Http_t_contextkey.T_contextKey();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_noBody_static_extension) @:dox(hide) abstract T_noBody(stdgo._internal.net.http.Http_t_nobody.T_noBody) from stdgo._internal.net.http.Http_t_nobody.T_noBody to stdgo._internal.net.http.Http_t_nobody.T_noBody {
    public function new() this = new stdgo._internal.net.http.Http_t_nobody.T_noBody();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.PushOptions_static_extension) abstract PushOptions(stdgo._internal.net.http.Http_pushoptions.PushOptions) from stdgo._internal.net.http.Http_pushoptions.PushOptions to stdgo._internal.net.http.Http_pushoptions.PushOptions {
    public var method(get, set) : String;
    function get_method():String return this.method;
    function set_method(v:String):String {
        this.method = (v : stdgo.GoString);
        return v;
    }
    public var header(get, set) : Header;
    function get_header():Header return this.header;
    function set_header(v:Header):Header {
        this.header = v;
        return v;
    }
    public function new(?method:String, ?header:Header) this = new stdgo._internal.net.http.Http_pushoptions.PushOptions((method : stdgo.GoString), header);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.ProtocolError_static_extension) abstract ProtocolError(stdgo._internal.net.http.Http_protocolerror.ProtocolError) from stdgo._internal.net.http.Http_protocolerror.ProtocolError to stdgo._internal.net.http.Http_protocolerror.ProtocolError {
    public var errorString(get, set) : String;
    function get_errorString():String return this.errorString;
    function set_errorString(v:String):String {
        this.errorString = (v : stdgo.GoString);
        return v;
    }
    public function new(?errorString:String) this = new stdgo._internal.net.http.Http_protocolerror.ProtocolError((errorString : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.Request_static_extension) abstract Request(stdgo._internal.net.http.Http_request.Request) from stdgo._internal.net.http.Http_request.Request to stdgo._internal.net.http.Http_request.Request {
    public var method(get, set) : String;
    function get_method():String return this.method;
    function set_method(v:String):String {
        this.method = (v : stdgo.GoString);
        return v;
    }
    public var uRL(get, set) : stdgo._internal.net.url.Url_url.URL;
    function get_uRL():stdgo._internal.net.url.Url_url.URL return this.uRL;
    function set_uRL(v:stdgo._internal.net.url.Url_url.URL):stdgo._internal.net.url.Url_url.URL {
        this.uRL = (v : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        return v;
    }
    public var proto(get, set) : String;
    function get_proto():String return this.proto;
    function set_proto(v:String):String {
        this.proto = (v : stdgo.GoString);
        return v;
    }
    public var protoMajor(get, set) : StdTypes.Int;
    function get_protoMajor():StdTypes.Int return this.protoMajor;
    function set_protoMajor(v:StdTypes.Int):StdTypes.Int {
        this.protoMajor = (v : stdgo.GoInt);
        return v;
    }
    public var protoMinor(get, set) : StdTypes.Int;
    function get_protoMinor():StdTypes.Int return this.protoMinor;
    function set_protoMinor(v:StdTypes.Int):StdTypes.Int {
        this.protoMinor = (v : stdgo.GoInt);
        return v;
    }
    public var header(get, set) : Header;
    function get_header():Header return this.header;
    function set_header(v:Header):Header {
        this.header = v;
        return v;
    }
    public var body(get, set) : stdgo._internal.io.Io_readcloser.ReadCloser;
    function get_body():stdgo._internal.io.Io_readcloser.ReadCloser return this.body;
    function set_body(v:stdgo._internal.io.Io_readcloser.ReadCloser):stdgo._internal.io.Io_readcloser.ReadCloser {
        this.body = v;
        return v;
    }
    public var getBody(get, set) : () -> stdgo.Tuple<stdgo._internal.io.Io_readcloser.ReadCloser, stdgo.Error>;
    function get_getBody():() -> stdgo.Tuple<stdgo._internal.io.Io_readcloser.ReadCloser, stdgo.Error> return () -> this.getBody();
    function set_getBody(v:() -> stdgo.Tuple<stdgo._internal.io.Io_readcloser.ReadCloser, stdgo.Error>):() -> stdgo.Tuple<stdgo._internal.io.Io_readcloser.ReadCloser, stdgo.Error> {
        this.getBody = v;
        return v;
    }
    public var contentLength(get, set) : haxe.Int64;
    function get_contentLength():haxe.Int64 return this.contentLength;
    function set_contentLength(v:haxe.Int64):haxe.Int64 {
        this.contentLength = (v : stdgo.GoInt64);
        return v;
    }
    public var transferEncoding(get, set) : Array<String>;
    function get_transferEncoding():Array<String> return [for (i in this.transferEncoding) i];
    function set_transferEncoding(v:Array<String>):Array<String> {
        this.transferEncoding = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var close(get, set) : Bool;
    function get_close():Bool return this.close;
    function set_close(v:Bool):Bool {
        this.close = v;
        return v;
    }
    public var host(get, set) : String;
    function get_host():String return this.host;
    function set_host(v:String):String {
        this.host = (v : stdgo.GoString);
        return v;
    }
    public var form(get, set) : stdgo._internal.net.url.Url_values.Values;
    function get_form():stdgo._internal.net.url.Url_values.Values return this.form;
    function set_form(v:stdgo._internal.net.url.Url_values.Values):stdgo._internal.net.url.Url_values.Values {
        this.form = v;
        return v;
    }
    public var postForm(get, set) : stdgo._internal.net.url.Url_values.Values;
    function get_postForm():stdgo._internal.net.url.Url_values.Values return this.postForm;
    function set_postForm(v:stdgo._internal.net.url.Url_values.Values):stdgo._internal.net.url.Url_values.Values {
        this.postForm = v;
        return v;
    }
    public var multipartForm(get, set) : stdgo._internal.mime.multipart.Multipart_form.Form;
    function get_multipartForm():stdgo._internal.mime.multipart.Multipart_form.Form return this.multipartForm;
    function set_multipartForm(v:stdgo._internal.mime.multipart.Multipart_form.Form):stdgo._internal.mime.multipart.Multipart_form.Form {
        this.multipartForm = (v : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>);
        return v;
    }
    public var trailer(get, set) : Header;
    function get_trailer():Header return this.trailer;
    function set_trailer(v:Header):Header {
        this.trailer = v;
        return v;
    }
    public var remoteAddr(get, set) : String;
    function get_remoteAddr():String return this.remoteAddr;
    function set_remoteAddr(v:String):String {
        this.remoteAddr = (v : stdgo.GoString);
        return v;
    }
    public var requestURI(get, set) : String;
    function get_requestURI():String return this.requestURI;
    function set_requestURI(v:String):String {
        this.requestURI = (v : stdgo.GoString);
        return v;
    }
    public var tLS(get, set) : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState;
    function get_tLS():stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState return this.tLS;
    function set_tLS(v:stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState):stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState {
        this.tLS = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>);
        return v;
    }
    public var cancel(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>;
    function get_cancel():stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError> return this.cancel;
    function set_cancel(v:stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>):stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError> {
        this.cancel = (v : stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>);
        return v;
    }
    public var response(get, set) : Response;
    function get_response():Response return this.response;
    function set_response(v:Response):Response {
        this.response = (v : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>);
        return v;
    }
    public function new(?method:String, ?uRL:stdgo._internal.net.url.Url_url.URL, ?proto:String, ?protoMajor:StdTypes.Int, ?protoMinor:StdTypes.Int, ?header:Header, ?body:stdgo._internal.io.Io_readcloser.ReadCloser, ?getBody:() -> stdgo.Tuple<stdgo._internal.io.Io_readcloser.ReadCloser, stdgo.Error>, ?contentLength:haxe.Int64, ?transferEncoding:Array<String>, ?close:Bool, ?host:String, ?form:stdgo._internal.net.url.Url_values.Values, ?postForm:stdgo._internal.net.url.Url_values.Values, ?multipartForm:stdgo._internal.mime.multipart.Multipart_form.Form, ?trailer:Header, ?remoteAddr:String, ?requestURI:String, ?tLS:stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState, ?cancel:stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>, ?response:Response) this = new stdgo._internal.net.http.Http_request.Request(
(method : stdgo.GoString),
(uRL : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>),
(proto : stdgo.GoString),
(protoMajor : stdgo.GoInt),
(protoMinor : stdgo.GoInt),
header,
body,
getBody,
(contentLength : stdgo.GoInt64),
([for (i in transferEncoding) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
close,
(host : stdgo.GoString),
form,
postForm,
(multipartForm : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>),
trailer,
(remoteAddr : stdgo.GoString),
(requestURI : stdgo.GoString),
(tLS : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>),
(cancel : stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError>),
(response : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_requestBodyReadError_static_extension) @:dox(hide) abstract T_requestBodyReadError(stdgo._internal.net.http.Http_t_requestbodyreaderror.T_requestBodyReadError) from stdgo._internal.net.http.Http_t_requestbodyreaderror.T_requestBodyReadError to stdgo._internal.net.http.Http_t_requestbodyreaderror.T_requestBodyReadError {
    public function new() this = new stdgo._internal.net.http.Http_t_requestbodyreaderror.T_requestBodyReadError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.MaxBytesError_static_extension) abstract MaxBytesError(stdgo._internal.net.http.Http_maxbyteserror.MaxBytesError) from stdgo._internal.net.http.Http_maxbyteserror.MaxBytesError to stdgo._internal.net.http.Http_maxbyteserror.MaxBytesError {
    public var limit(get, set) : haxe.Int64;
    function get_limit():haxe.Int64 return this.limit;
    function set_limit(v:haxe.Int64):haxe.Int64 {
        this.limit = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?limit:haxe.Int64) this = new stdgo._internal.net.http.Http_maxbyteserror.MaxBytesError((limit : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_maxBytesReader_static_extension) @:dox(hide) abstract T_maxBytesReader(stdgo._internal.net.http.Http_t_maxbytesreader.T_maxBytesReader) from stdgo._internal.net.http.Http_t_maxbytesreader.T_maxBytesReader to stdgo._internal.net.http.Http_t_maxbytesreader.T_maxBytesReader {
    public function new() this = new stdgo._internal.net.http.Http_t_maxbytesreader.T_maxBytesReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.Response_static_extension) abstract Response(stdgo._internal.net.http.Http_response.Response) from stdgo._internal.net.http.Http_response.Response to stdgo._internal.net.http.Http_response.Response {
    public var status(get, set) : String;
    function get_status():String return this.status;
    function set_status(v:String):String {
        this.status = (v : stdgo.GoString);
        return v;
    }
    public var statusCode(get, set) : StdTypes.Int;
    function get_statusCode():StdTypes.Int return this.statusCode;
    function set_statusCode(v:StdTypes.Int):StdTypes.Int {
        this.statusCode = (v : stdgo.GoInt);
        return v;
    }
    public var proto(get, set) : String;
    function get_proto():String return this.proto;
    function set_proto(v:String):String {
        this.proto = (v : stdgo.GoString);
        return v;
    }
    public var protoMajor(get, set) : StdTypes.Int;
    function get_protoMajor():StdTypes.Int return this.protoMajor;
    function set_protoMajor(v:StdTypes.Int):StdTypes.Int {
        this.protoMajor = (v : stdgo.GoInt);
        return v;
    }
    public var protoMinor(get, set) : StdTypes.Int;
    function get_protoMinor():StdTypes.Int return this.protoMinor;
    function set_protoMinor(v:StdTypes.Int):StdTypes.Int {
        this.protoMinor = (v : stdgo.GoInt);
        return v;
    }
    public var header(get, set) : Header;
    function get_header():Header return this.header;
    function set_header(v:Header):Header {
        this.header = v;
        return v;
    }
    public var body(get, set) : stdgo._internal.io.Io_readcloser.ReadCloser;
    function get_body():stdgo._internal.io.Io_readcloser.ReadCloser return this.body;
    function set_body(v:stdgo._internal.io.Io_readcloser.ReadCloser):stdgo._internal.io.Io_readcloser.ReadCloser {
        this.body = v;
        return v;
    }
    public var contentLength(get, set) : haxe.Int64;
    function get_contentLength():haxe.Int64 return this.contentLength;
    function set_contentLength(v:haxe.Int64):haxe.Int64 {
        this.contentLength = (v : stdgo.GoInt64);
        return v;
    }
    public var transferEncoding(get, set) : Array<String>;
    function get_transferEncoding():Array<String> return [for (i in this.transferEncoding) i];
    function set_transferEncoding(v:Array<String>):Array<String> {
        this.transferEncoding = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var close(get, set) : Bool;
    function get_close():Bool return this.close;
    function set_close(v:Bool):Bool {
        this.close = v;
        return v;
    }
    public var uncompressed(get, set) : Bool;
    function get_uncompressed():Bool return this.uncompressed;
    function set_uncompressed(v:Bool):Bool {
        this.uncompressed = v;
        return v;
    }
    public var trailer(get, set) : Header;
    function get_trailer():Header return this.trailer;
    function set_trailer(v:Header):Header {
        this.trailer = v;
        return v;
    }
    public var request(get, set) : Request;
    function get_request():Request return this.request;
    function set_request(v:Request):Request {
        this.request = (v : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return v;
    }
    public var tLS(get, set) : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState;
    function get_tLS():stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState return this.tLS;
    function set_tLS(v:stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState):stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState {
        this.tLS = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>);
        return v;
    }
    public function new(?status:String, ?statusCode:StdTypes.Int, ?proto:String, ?protoMajor:StdTypes.Int, ?protoMinor:StdTypes.Int, ?header:Header, ?body:stdgo._internal.io.Io_readcloser.ReadCloser, ?contentLength:haxe.Int64, ?transferEncoding:Array<String>, ?close:Bool, ?uncompressed:Bool, ?trailer:Header, ?request:Request, ?tLS:stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState) this = new stdgo._internal.net.http.Http_response.Response(
(status : stdgo.GoString),
(statusCode : stdgo.GoInt),
(proto : stdgo.GoString),
(protoMajor : stdgo.GoInt),
(protoMinor : stdgo.GoInt),
header,
body,
(contentLength : stdgo.GoInt64),
([for (i in transferEncoding) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
close,
uncompressed,
trailer,
(request : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>),
(tLS : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.ResponseController_static_extension) abstract ResponseController(stdgo._internal.net.http.Http_responsecontroller.ResponseController) from stdgo._internal.net.http.Http_responsecontroller.ResponseController to stdgo._internal.net.http.Http_responsecontroller.ResponseController {
    public function new() this = new stdgo._internal.net.http.Http_responsecontroller.ResponseController();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_streamReader_static_extension) @:dox(hide) abstract T_streamReader(stdgo._internal.net.http.Http_t_streamreader.T_streamReader) from stdgo._internal.net.http.Http_t_streamreader.T_streamReader to stdgo._internal.net.http.Http_t_streamreader.T_streamReader {
    public function new() this = new stdgo._internal.net.http.Http_t_streamreader.T_streamReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_arrayReader_static_extension) @:dox(hide) abstract T_arrayReader(stdgo._internal.net.http.Http_t_arrayreader.T_arrayReader) from stdgo._internal.net.http.Http_t_arrayreader.T_arrayReader to stdgo._internal.net.http.Http_t_arrayreader.T_arrayReader {
    public function new() this = new stdgo._internal.net.http.Http_t_arrayreader.T_arrayReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_conn_static_extension) @:dox(hide) abstract T_conn(stdgo._internal.net.http.Http_t_conn.T_conn) from stdgo._internal.net.http.Http_t_conn.T_conn to stdgo._internal.net.http.Http_t_conn.T_conn {
    public function new() this = new stdgo._internal.net.http.Http_t_conn.T_conn();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_chunkWriter_static_extension) @:dox(hide) abstract T_chunkWriter(stdgo._internal.net.http.Http_t_chunkwriter.T_chunkWriter) from stdgo._internal.net.http.Http_t_chunkwriter.T_chunkWriter to stdgo._internal.net.http.Http_t_chunkwriter.T_chunkWriter {
    public function new() this = new stdgo._internal.net.http.Http_t_chunkwriter.T_chunkWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_response_static_extension) @:dox(hide) abstract T_response(stdgo._internal.net.http.Http_t_response.T_response) from stdgo._internal.net.http.Http_t_response.T_response to stdgo._internal.net.http.Http_t_response.T_response {
    public function new() this = new stdgo._internal.net.http.Http_t_response.T_response();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_writerOnly_static_extension) @:dox(hide) abstract T_writerOnly(stdgo._internal.net.http.Http_t_writeronly.T_writerOnly) from stdgo._internal.net.http.Http_t_writeronly.T_writerOnly to stdgo._internal.net.http.Http_t_writeronly.T_writerOnly {
    public var writer(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get_writer():stdgo._internal.io.Io_writer.Writer return this.writer;
    function set_writer(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this.writer = v;
        return v;
    }
    public function new(?writer:stdgo._internal.io.Io_writer.Writer) this = new stdgo._internal.net.http.Http_t_writeronly.T_writerOnly(writer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_readResult_static_extension) @:dox(hide) abstract T_readResult(stdgo._internal.net.http.Http_t_readresult.T_readResult) from stdgo._internal.net.http.Http_t_readresult.T_readResult to stdgo._internal.net.http.Http_t_readresult.T_readResult {
    public function new() this = new stdgo._internal.net.http.Http_t_readresult.T_readResult();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_connReader_static_extension) @:dox(hide) abstract T_connReader(stdgo._internal.net.http.Http_t_connreader.T_connReader) from stdgo._internal.net.http.Http_t_connreader.T_connReader to stdgo._internal.net.http.Http_t_connreader.T_connReader {
    public function new() this = new stdgo._internal.net.http.Http_t_connreader.T_connReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_expectContinueReader_static_extension) @:dox(hide) abstract T_expectContinueReader(stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader) from stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader to stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader {
    public function new() this = new stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_extraHeader_static_extension) @:dox(hide) abstract T_extraHeader(stdgo._internal.net.http.Http_t_extraheader.T_extraHeader) from stdgo._internal.net.http.Http_t_extraheader.T_extraHeader to stdgo._internal.net.http.Http_t_extraheader.T_extraHeader {
    public function new() this = new stdgo._internal.net.http.Http_t_extraheader.T_extraHeader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_statusError_static_extension) @:dox(hide) abstract T_statusError(stdgo._internal.net.http.Http_t_statuserror.T_statusError) from stdgo._internal.net.http.Http_t_statuserror.T_statusError to stdgo._internal.net.http.Http_t_statuserror.T_statusError {
    public function new() this = new stdgo._internal.net.http.Http_t_statuserror.T_statusError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_redirectHandler_static_extension) @:dox(hide) abstract T_redirectHandler(stdgo._internal.net.http.Http_t_redirecthandler.T_redirectHandler) from stdgo._internal.net.http.Http_t_redirecthandler.T_redirectHandler to stdgo._internal.net.http.Http_t_redirecthandler.T_redirectHandler {
    public function new() this = new stdgo._internal.net.http.Http_t_redirecthandler.T_redirectHandler();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.ServeMux_static_extension) abstract ServeMux(stdgo._internal.net.http.Http_servemux.ServeMux) from stdgo._internal.net.http.Http_servemux.ServeMux to stdgo._internal.net.http.Http_servemux.ServeMux {
    public function new() this = new stdgo._internal.net.http.Http_servemux.ServeMux();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_muxEntry_static_extension) @:dox(hide) abstract T_muxEntry(stdgo._internal.net.http.Http_t_muxentry.T_muxEntry) from stdgo._internal.net.http.Http_t_muxentry.T_muxEntry to stdgo._internal.net.http.Http_t_muxentry.T_muxEntry {
    public function new() this = new stdgo._internal.net.http.Http_t_muxentry.T_muxEntry();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.Server_static_extension) abstract Server(stdgo._internal.net.http.Http_server.Server) from stdgo._internal.net.http.Http_server.Server to stdgo._internal.net.http.Http_server.Server {
    public var addr(get, set) : String;
    function get_addr():String return this.addr;
    function set_addr(v:String):String {
        this.addr = (v : stdgo.GoString);
        return v;
    }
    public var handler(get, set) : Handler;
    function get_handler():Handler return this.handler;
    function set_handler(v:Handler):Handler {
        this.handler = v;
        return v;
    }
    public var disableGeneralOptionsHandler(get, set) : Bool;
    function get_disableGeneralOptionsHandler():Bool return this.disableGeneralOptionsHandler;
    function set_disableGeneralOptionsHandler(v:Bool):Bool {
        this.disableGeneralOptionsHandler = v;
        return v;
    }
    public var tLSConfig(get, set) : stdgo._internal.crypto.tls.Tls_config.Config;
    function get_tLSConfig():stdgo._internal.crypto.tls.Tls_config.Config return this.tLSConfig;
    function set_tLSConfig(v:stdgo._internal.crypto.tls.Tls_config.Config):stdgo._internal.crypto.tls.Tls_config.Config {
        this.tLSConfig = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
        return v;
    }
    public var readTimeout(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_readTimeout():stdgo._internal.time.Time_duration.Duration return this.readTimeout;
    function set_readTimeout(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.readTimeout = v;
        return v;
    }
    public var readHeaderTimeout(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_readHeaderTimeout():stdgo._internal.time.Time_duration.Duration return this.readHeaderTimeout;
    function set_readHeaderTimeout(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.readHeaderTimeout = v;
        return v;
    }
    public var writeTimeout(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_writeTimeout():stdgo._internal.time.Time_duration.Duration return this.writeTimeout;
    function set_writeTimeout(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.writeTimeout = v;
        return v;
    }
    public var idleTimeout(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_idleTimeout():stdgo._internal.time.Time_duration.Duration return this.idleTimeout;
    function set_idleTimeout(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.idleTimeout = v;
        return v;
    }
    public var maxHeaderBytes(get, set) : StdTypes.Int;
    function get_maxHeaderBytes():StdTypes.Int return this.maxHeaderBytes;
    function set_maxHeaderBytes(v:StdTypes.Int):StdTypes.Int {
        this.maxHeaderBytes = (v : stdgo.GoInt);
        return v;
    }
    public var tLSNextProto(get, set) : Map<String, (Server, stdgo._internal.crypto.tls.Tls_conn.Conn, Handler) -> Void>;
    function get_tLSNextProto():Map<String, (Server, stdgo._internal.crypto.tls.Tls_conn.Conn, Handler) -> Void> return {
        final __obj__:Map<String, (Server, stdgo._internal.crypto.tls.Tls_conn.Conn, Handler) -> Void> = [];
        for (key => value in this.tLSNextProto) {
            __obj__[key] = (_0, _1, _2) -> value(_0, _1, _2);
        };
        __obj__;
    };
    function set_tLSNextProto(v:Map<String, (Server, stdgo._internal.crypto.tls.Tls_conn.Conn, Handler) -> Void>):Map<String, (Server, stdgo._internal.crypto.tls.Tls_conn.Conn, Handler) -> Void> {
        this.tLSNextProto = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, stdgo._internal.net.http.Http_handler.Handler) -> Void>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = value;
            };
            __obj__;
        };
        return v;
    }
    public var connState(get, set) : (stdgo._internal.net.Net_conn.Conn, ConnState) -> Void;
    function get_connState():(stdgo._internal.net.Net_conn.Conn, ConnState) -> Void return (_0, _1) -> this.connState(_0, _1);
    function set_connState(v:(stdgo._internal.net.Net_conn.Conn, ConnState) -> Void):(stdgo._internal.net.Net_conn.Conn, ConnState) -> Void {
        this.connState = v;
        return v;
    }
    public var errorLog(get, set) : stdgo._internal.log.Log_logger.Logger;
    function get_errorLog():stdgo._internal.log.Log_logger.Logger return this.errorLog;
    function set_errorLog(v:stdgo._internal.log.Log_logger.Logger):stdgo._internal.log.Log_logger.Logger {
        this.errorLog = (v : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>);
        return v;
    }
    public var baseContext(get, set) : stdgo._internal.net.Net_listener.Listener -> stdgo._internal.context.Context_context.Context;
    function get_baseContext():stdgo._internal.net.Net_listener.Listener -> stdgo._internal.context.Context_context.Context return _0 -> this.baseContext(_0);
    function set_baseContext(v:stdgo._internal.net.Net_listener.Listener -> stdgo._internal.context.Context_context.Context):stdgo._internal.net.Net_listener.Listener -> stdgo._internal.context.Context_context.Context {
        this.baseContext = v;
        return v;
    }
    public var connContext(get, set) : (stdgo._internal.context.Context_context.Context, stdgo._internal.net.Net_conn.Conn) -> stdgo._internal.context.Context_context.Context;
    function get_connContext():(stdgo._internal.context.Context_context.Context, stdgo._internal.net.Net_conn.Conn) -> stdgo._internal.context.Context_context.Context return (_0, _1) -> this.connContext(_0, _1);
    function set_connContext(v:(stdgo._internal.context.Context_context.Context, stdgo._internal.net.Net_conn.Conn) -> stdgo._internal.context.Context_context.Context):(stdgo._internal.context.Context_context.Context, stdgo._internal.net.Net_conn.Conn) -> stdgo._internal.context.Context_context.Context {
        this.connContext = v;
        return v;
    }
    public function new(?addr:String, ?handler:Handler, ?disableGeneralOptionsHandler:Bool, ?tLSConfig:stdgo._internal.crypto.tls.Tls_config.Config, ?readTimeout:stdgo._internal.time.Time_duration.Duration, ?readHeaderTimeout:stdgo._internal.time.Time_duration.Duration, ?writeTimeout:stdgo._internal.time.Time_duration.Duration, ?idleTimeout:stdgo._internal.time.Time_duration.Duration, ?maxHeaderBytes:StdTypes.Int, ?tLSNextProto:Map<String, (Server, stdgo._internal.crypto.tls.Tls_conn.Conn, Handler) -> Void>, ?connState:(stdgo._internal.net.Net_conn.Conn, ConnState) -> Void, ?errorLog:stdgo._internal.log.Log_logger.Logger, ?baseContext:stdgo._internal.net.Net_listener.Listener -> stdgo._internal.context.Context_context.Context, ?connContext:(stdgo._internal.context.Context_context.Context, stdgo._internal.net.Net_conn.Conn) -> stdgo._internal.context.Context_context.Context) this = new stdgo._internal.net.http.Http_server.Server(
(addr : stdgo.GoString),
handler,
disableGeneralOptionsHandler,
(tLSConfig : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>),
readTimeout,
readHeaderTimeout,
writeTimeout,
idleTimeout,
(maxHeaderBytes : stdgo.GoInt),
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, stdgo._internal.net.http.Http_handler.Handler) -> Void>();
        for (key => value in tLSNextProto) {
            __obj__[(key : stdgo.GoString)] = value;
        };
        __obj__;
    },
connState,
(errorLog : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>),
baseContext,
connContext);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_serverHandler_static_extension) @:dox(hide) abstract T_serverHandler(stdgo._internal.net.http.Http_t_serverhandler.T_serverHandler) from stdgo._internal.net.http.Http_t_serverhandler.T_serverHandler to stdgo._internal.net.http.Http_t_serverhandler.T_serverHandler {
    public function new() this = new stdgo._internal.net.http.Http_t_serverhandler.T_serverHandler();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_timeoutHandler_static_extension) @:dox(hide) abstract T_timeoutHandler(stdgo._internal.net.http.Http_t_timeouthandler.T_timeoutHandler) from stdgo._internal.net.http.Http_t_timeouthandler.T_timeoutHandler to stdgo._internal.net.http.Http_t_timeouthandler.T_timeoutHandler {
    public function new() this = new stdgo._internal.net.http.Http_t_timeouthandler.T_timeoutHandler();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_timeoutWriter_static_extension) @:dox(hide) abstract T_timeoutWriter(stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter) from stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter to stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter {
    public function new() this = new stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_onceCloseListener_static_extension) @:dox(hide) abstract T_onceCloseListener(stdgo._internal.net.http.Http_t_oncecloselistener.T_onceCloseListener) from stdgo._internal.net.http.Http_t_oncecloselistener.T_onceCloseListener to stdgo._internal.net.http.Http_t_oncecloselistener.T_onceCloseListener {
    public var listener(get, set) : stdgo._internal.net.Net_listener.Listener;
    function get_listener():stdgo._internal.net.Net_listener.Listener return this.listener;
    function set_listener(v:stdgo._internal.net.Net_listener.Listener):stdgo._internal.net.Net_listener.Listener {
        this.listener = v;
        return v;
    }
    public function new(?listener:stdgo._internal.net.Net_listener.Listener) this = new stdgo._internal.net.http.Http_t_oncecloselistener.T_onceCloseListener(listener);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_globalOptionsHandler_static_extension) @:dox(hide) abstract T_globalOptionsHandler(stdgo._internal.net.http.Http_t_globaloptionshandler.T_globalOptionsHandler) from stdgo._internal.net.http.Http_t_globaloptionshandler.T_globalOptionsHandler to stdgo._internal.net.http.Http_t_globaloptionshandler.T_globalOptionsHandler {
    public function new() this = new stdgo._internal.net.http.Http_t_globaloptionshandler.T_globalOptionsHandler();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_initALPNRequest_static_extension) @:dox(hide) abstract T_initALPNRequest(stdgo._internal.net.http.Http_t_initalpnrequest.T_initALPNRequest) from stdgo._internal.net.http.Http_t_initalpnrequest.T_initALPNRequest to stdgo._internal.net.http.Http_t_initalpnrequest.T_initALPNRequest {
    public function new() this = new stdgo._internal.net.http.Http_t_initalpnrequest.T_initALPNRequest();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_loggingConn_static_extension) @:dox(hide) abstract T_loggingConn(stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn) from stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn to stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn {
    public var conn(get, set) : stdgo._internal.net.Net_conn.Conn;
    function get_conn():stdgo._internal.net.Net_conn.Conn return this.conn;
    function set_conn(v:stdgo._internal.net.Net_conn.Conn):stdgo._internal.net.Net_conn.Conn {
        this.conn = v;
        return v;
    }
    public function new(?conn:stdgo._internal.net.Net_conn.Conn) this = new stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn(conn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_checkConnErrorWriter_static_extension) @:dox(hide) abstract T_checkConnErrorWriter(stdgo._internal.net.http.Http_t_checkconnerrorwriter.T_checkConnErrorWriter) from stdgo._internal.net.http.Http_t_checkconnerrorwriter.T_checkConnErrorWriter to stdgo._internal.net.http.Http_t_checkconnerrorwriter.T_checkConnErrorWriter {
    public function new() this = new stdgo._internal.net.http.Http_t_checkconnerrorwriter.T_checkConnErrorWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_exactSig_static_extension) @:dox(hide) abstract T_exactSig(stdgo._internal.net.http.Http_t_exactsig.T_exactSig) from stdgo._internal.net.http.Http_t_exactsig.T_exactSig to stdgo._internal.net.http.Http_t_exactsig.T_exactSig {
    public function new() this = new stdgo._internal.net.http.Http_t_exactsig.T_exactSig();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_maskedSig_static_extension) @:dox(hide) abstract T_maskedSig(stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig) from stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig to stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig {
    public function new() this = new stdgo._internal.net.http.Http_t_maskedsig.T_maskedSig();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_mp4Sig_static_extension) @:dox(hide) abstract T_mp4Sig(stdgo._internal.net.http.Http_t_mp4sig.T_mp4Sig) from stdgo._internal.net.http.Http_t_mp4sig.T_mp4Sig to stdgo._internal.net.http.Http_t_mp4sig.T_mp4Sig {
    public function new() this = new stdgo._internal.net.http.Http_t_mp4sig.T_mp4Sig();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_textSig_static_extension) @:dox(hide) abstract T_textSig(stdgo._internal.net.http.Http_t_textsig.T_textSig) from stdgo._internal.net.http.Http_t_textsig.T_textSig to stdgo._internal.net.http.Http_t_textsig.T_textSig {
    public function new() this = new stdgo._internal.net.http.Http_t_textsig.T_textSig();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_socksAddr_static_extension) @:dox(hide) abstract T_socksAddr(stdgo._internal.net.http.Http_t_socksaddr.T_socksAddr) from stdgo._internal.net.http.Http_t_socksaddr.T_socksAddr to stdgo._internal.net.http.Http_t_socksaddr.T_socksAddr {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var iP(get, set) : stdgo._internal.net.Net_ip.IP;
    function get_iP():stdgo._internal.net.Net_ip.IP return this.iP;
    function set_iP(v:stdgo._internal.net.Net_ip.IP):stdgo._internal.net.Net_ip.IP {
        this.iP = v;
        return v;
    }
    public var port(get, set) : StdTypes.Int;
    function get_port():StdTypes.Int return this.port;
    function set_port(v:StdTypes.Int):StdTypes.Int {
        this.port = (v : stdgo.GoInt);
        return v;
    }
    public function new(?name:String, ?iP:stdgo._internal.net.Net_ip.IP, ?port:StdTypes.Int) this = new stdgo._internal.net.http.Http_t_socksaddr.T_socksAddr((name : stdgo.GoString), iP, (port : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_socksConn_static_extension) @:dox(hide) abstract T_socksConn(stdgo._internal.net.http.Http_t_socksconn.T_socksConn) from stdgo._internal.net.http.Http_t_socksconn.T_socksConn to stdgo._internal.net.http.Http_t_socksconn.T_socksConn {
    public var conn(get, set) : stdgo._internal.net.Net_conn.Conn;
    function get_conn():stdgo._internal.net.Net_conn.Conn return this.conn;
    function set_conn(v:stdgo._internal.net.Net_conn.Conn):stdgo._internal.net.Net_conn.Conn {
        this.conn = v;
        return v;
    }
    public function new(?conn:stdgo._internal.net.Net_conn.Conn) this = new stdgo._internal.net.http.Http_t_socksconn.T_socksConn(conn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_socksDialer_static_extension) @:dox(hide) abstract T_socksDialer(stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer) from stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer to stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer {
    public var proxyDial(get, set) : (stdgo._internal.context.Context_context.Context, String, String) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error>;
    function get_proxyDial():(stdgo._internal.context.Context_context.Context, String, String) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error> return (_0, _1, _2) -> this.proxyDial(_0, _1, _2);
    function set_proxyDial(v:(stdgo._internal.context.Context_context.Context, String, String) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error>):(stdgo._internal.context.Context_context.Context, String, String) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error> {
        this.proxyDial = v;
        return v;
    }
    public var authMethods(get, set) : Array<T_socksAuthMethod>;
    function get_authMethods():Array<T_socksAuthMethod> return [for (i in this.authMethods) i];
    function set_authMethods(v:Array<T_socksAuthMethod>):Array<T_socksAuthMethod> {
        this.authMethods = ([for (i in v) i] : stdgo.Slice<stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod>);
        return v;
    }
    public var authenticate(get, set) : (stdgo._internal.context.Context_context.Context, stdgo._internal.io.Io_readwriter.ReadWriter, T_socksAuthMethod) -> stdgo.Error;
    function get_authenticate():(stdgo._internal.context.Context_context.Context, stdgo._internal.io.Io_readwriter.ReadWriter, T_socksAuthMethod) -> stdgo.Error return (_0, _1, _2) -> this.authenticate(_0, _1, _2);
    function set_authenticate(v:(stdgo._internal.context.Context_context.Context, stdgo._internal.io.Io_readwriter.ReadWriter, T_socksAuthMethod) -> stdgo.Error):(stdgo._internal.context.Context_context.Context, stdgo._internal.io.Io_readwriter.ReadWriter, T_socksAuthMethod) -> stdgo.Error {
        this.authenticate = v;
        return v;
    }
    public function new(?proxyDial:(stdgo._internal.context.Context_context.Context, String, String) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error>, ?authMethods:Array<T_socksAuthMethod>, ?authenticate:(stdgo._internal.context.Context_context.Context, stdgo._internal.io.Io_readwriter.ReadWriter, T_socksAuthMethod) -> stdgo.Error) this = new stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer(proxyDial, ([for (i in authMethods) i] : stdgo.Slice<stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod>), authenticate);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_socksUsernamePassword_static_extension) @:dox(hide) abstract T_socksUsernamePassword(stdgo._internal.net.http.Http_t_socksusernamepassword.T_socksUsernamePassword) from stdgo._internal.net.http.Http_t_socksusernamepassword.T_socksUsernamePassword to stdgo._internal.net.http.Http_t_socksusernamepassword.T_socksUsernamePassword {
    public var username(get, set) : String;
    function get_username():String return this.username;
    function set_username(v:String):String {
        this.username = (v : stdgo.GoString);
        return v;
    }
    public var password(get, set) : String;
    function get_password():String return this.password;
    function set_password(v:String):String {
        this.password = (v : stdgo.GoString);
        return v;
    }
    public function new(?username:String, ?password:String) this = new stdgo._internal.net.http.Http_t_socksusernamepassword.T_socksUsernamePassword((username : stdgo.GoString), (password : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_errorReader_static_extension) @:dox(hide) abstract T_errorReader(stdgo._internal.net.http.Http_t_errorreader.T_errorReader) from stdgo._internal.net.http.Http_t_errorreader.T_errorReader to stdgo._internal.net.http.Http_t_errorreader.T_errorReader {
    public function new() this = new stdgo._internal.net.http.Http_t_errorreader.T_errorReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_byteReader_static_extension) @:dox(hide) abstract T_byteReader(stdgo._internal.net.http.Http_t_bytereader.T_byteReader) from stdgo._internal.net.http.Http_t_bytereader.T_byteReader to stdgo._internal.net.http.Http_t_bytereader.T_byteReader {
    public function new() this = new stdgo._internal.net.http.Http_t_bytereader.T_byteReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_transferWriter_static_extension) @:dox(hide) abstract T_transferWriter(stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter) from stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter to stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter {
    public var method(get, set) : String;
    function get_method():String return this.method;
    function set_method(v:String):String {
        this.method = (v : stdgo.GoString);
        return v;
    }
    public var body(get, set) : stdgo._internal.io.Io_reader.Reader;
    function get_body():stdgo._internal.io.Io_reader.Reader return this.body;
    function set_body(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        this.body = v;
        return v;
    }
    public var bodyCloser(get, set) : stdgo._internal.io.Io_closer.Closer;
    function get_bodyCloser():stdgo._internal.io.Io_closer.Closer return this.bodyCloser;
    function set_bodyCloser(v:stdgo._internal.io.Io_closer.Closer):stdgo._internal.io.Io_closer.Closer {
        this.bodyCloser = v;
        return v;
    }
    public var responseToHEAD(get, set) : Bool;
    function get_responseToHEAD():Bool return this.responseToHEAD;
    function set_responseToHEAD(v:Bool):Bool {
        this.responseToHEAD = v;
        return v;
    }
    public var contentLength(get, set) : haxe.Int64;
    function get_contentLength():haxe.Int64 return this.contentLength;
    function set_contentLength(v:haxe.Int64):haxe.Int64 {
        this.contentLength = (v : stdgo.GoInt64);
        return v;
    }
    public var close(get, set) : Bool;
    function get_close():Bool return this.close;
    function set_close(v:Bool):Bool {
        this.close = v;
        return v;
    }
    public var transferEncoding(get, set) : Array<String>;
    function get_transferEncoding():Array<String> return [for (i in this.transferEncoding) i];
    function set_transferEncoding(v:Array<String>):Array<String> {
        this.transferEncoding = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var header(get, set) : Header;
    function get_header():Header return this.header;
    function set_header(v:Header):Header {
        this.header = v;
        return v;
    }
    public var trailer(get, set) : Header;
    function get_trailer():Header return this.trailer;
    function set_trailer(v:Header):Header {
        this.trailer = v;
        return v;
    }
    public var isResponse(get, set) : Bool;
    function get_isResponse():Bool return this.isResponse;
    function set_isResponse(v:Bool):Bool {
        this.isResponse = v;
        return v;
    }
    public var flushHeaders(get, set) : Bool;
    function get_flushHeaders():Bool return this.flushHeaders;
    function set_flushHeaders(v:Bool):Bool {
        this.flushHeaders = v;
        return v;
    }
    public var byteReadCh(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_t_readresult.T_readResult>;
    function get_byteReadCh():stdgo.Chan<stdgo._internal.net.http.Http_t_readresult.T_readResult> return this.byteReadCh;
    function set_byteReadCh(v:stdgo.Chan<stdgo._internal.net.http.Http_t_readresult.T_readResult>):stdgo.Chan<stdgo._internal.net.http.Http_t_readresult.T_readResult> {
        this.byteReadCh = (v : stdgo.Chan<stdgo._internal.net.http.Http_t_readresult.T_readResult>);
        return v;
    }
    public function new(?method:String, ?body:stdgo._internal.io.Io_reader.Reader, ?bodyCloser:stdgo._internal.io.Io_closer.Closer, ?responseToHEAD:Bool, ?contentLength:haxe.Int64, ?close:Bool, ?transferEncoding:Array<String>, ?header:Header, ?trailer:Header, ?isResponse:Bool, ?flushHeaders:Bool, ?byteReadCh:stdgo.Chan<stdgo._internal.net.http.Http_t_readresult.T_readResult>) this = new stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter(
(method : stdgo.GoString),
body,
bodyCloser,
responseToHEAD,
(contentLength : stdgo.GoInt64),
close,
([for (i in transferEncoding) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
header,
trailer,
isResponse,
flushHeaders,
(byteReadCh : stdgo.Chan<stdgo._internal.net.http.Http_t_readresult.T_readResult>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_transferReader_static_extension) @:dox(hide) abstract T_transferReader(stdgo._internal.net.http.Http_t_transferreader.T_transferReader) from stdgo._internal.net.http.Http_t_transferreader.T_transferReader to stdgo._internal.net.http.Http_t_transferreader.T_transferReader {
    public var header(get, set) : Header;
    function get_header():Header return this.header;
    function set_header(v:Header):Header {
        this.header = v;
        return v;
    }
    public var statusCode(get, set) : StdTypes.Int;
    function get_statusCode():StdTypes.Int return this.statusCode;
    function set_statusCode(v:StdTypes.Int):StdTypes.Int {
        this.statusCode = (v : stdgo.GoInt);
        return v;
    }
    public var requestMethod(get, set) : String;
    function get_requestMethod():String return this.requestMethod;
    function set_requestMethod(v:String):String {
        this.requestMethod = (v : stdgo.GoString);
        return v;
    }
    public var protoMajor(get, set) : StdTypes.Int;
    function get_protoMajor():StdTypes.Int return this.protoMajor;
    function set_protoMajor(v:StdTypes.Int):StdTypes.Int {
        this.protoMajor = (v : stdgo.GoInt);
        return v;
    }
    public var protoMinor(get, set) : StdTypes.Int;
    function get_protoMinor():StdTypes.Int return this.protoMinor;
    function set_protoMinor(v:StdTypes.Int):StdTypes.Int {
        this.protoMinor = (v : stdgo.GoInt);
        return v;
    }
    public var body(get, set) : stdgo._internal.io.Io_readcloser.ReadCloser;
    function get_body():stdgo._internal.io.Io_readcloser.ReadCloser return this.body;
    function set_body(v:stdgo._internal.io.Io_readcloser.ReadCloser):stdgo._internal.io.Io_readcloser.ReadCloser {
        this.body = v;
        return v;
    }
    public var contentLength(get, set) : haxe.Int64;
    function get_contentLength():haxe.Int64 return this.contentLength;
    function set_contentLength(v:haxe.Int64):haxe.Int64 {
        this.contentLength = (v : stdgo.GoInt64);
        return v;
    }
    public var chunked(get, set) : Bool;
    function get_chunked():Bool return this.chunked;
    function set_chunked(v:Bool):Bool {
        this.chunked = v;
        return v;
    }
    public var close(get, set) : Bool;
    function get_close():Bool return this.close;
    function set_close(v:Bool):Bool {
        this.close = v;
        return v;
    }
    public var trailer(get, set) : Header;
    function get_trailer():Header return this.trailer;
    function set_trailer(v:Header):Header {
        this.trailer = v;
        return v;
    }
    public function new(?header:Header, ?statusCode:StdTypes.Int, ?requestMethod:String, ?protoMajor:StdTypes.Int, ?protoMinor:StdTypes.Int, ?body:stdgo._internal.io.Io_readcloser.ReadCloser, ?contentLength:haxe.Int64, ?chunked:Bool, ?close:Bool, ?trailer:Header) this = new stdgo._internal.net.http.Http_t_transferreader.T_transferReader(header, (statusCode : stdgo.GoInt), (requestMethod : stdgo.GoString), (protoMajor : stdgo.GoInt), (protoMinor : stdgo.GoInt), body, (contentLength : stdgo.GoInt64), chunked, close, trailer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_unsupportedTEError_static_extension) @:dox(hide) abstract T_unsupportedTEError(stdgo._internal.net.http.Http_t_unsupportedteerror.T_unsupportedTEError) from stdgo._internal.net.http.Http_t_unsupportedteerror.T_unsupportedTEError to stdgo._internal.net.http.Http_t_unsupportedteerror.T_unsupportedTEError {
    public function new() this = new stdgo._internal.net.http.Http_t_unsupportedteerror.T_unsupportedTEError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_body_static_extension) @:dox(hide) abstract T_body(stdgo._internal.net.http.Http_t_body.T_body) from stdgo._internal.net.http.Http_t_body.T_body to stdgo._internal.net.http.Http_t_body.T_body {
    public function new() this = new stdgo._internal.net.http.Http_t_body.T_body();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_bodyLocked_static_extension) @:dox(hide) abstract T_bodyLocked(stdgo._internal.net.http.Http_t_bodylocked.T_bodyLocked) from stdgo._internal.net.http.Http_t_bodylocked.T_bodyLocked to stdgo._internal.net.http.Http_t_bodylocked.T_bodyLocked {
    public function new() this = new stdgo._internal.net.http.Http_t_bodylocked.T_bodyLocked();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_finishAsyncByteRead_static_extension) @:dox(hide) abstract T_finishAsyncByteRead(stdgo._internal.net.http.Http_t_finishasyncbyteread.T_finishAsyncByteRead) from stdgo._internal.net.http.Http_t_finishasyncbyteread.T_finishAsyncByteRead to stdgo._internal.net.http.Http_t_finishasyncbyteread.T_finishAsyncByteRead {
    public function new() this = new stdgo._internal.net.http.Http_t_finishasyncbyteread.T_finishAsyncByteRead();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_bufioFlushWriter_static_extension) @:dox(hide) abstract T_bufioFlushWriter(stdgo._internal.net.http.Http_t_bufioflushwriter.T_bufioFlushWriter) from stdgo._internal.net.http.Http_t_bufioflushwriter.T_bufioFlushWriter to stdgo._internal.net.http.Http_t_bufioflushwriter.T_bufioFlushWriter {
    public function new() this = new stdgo._internal.net.http.Http_t_bufioflushwriter.T_bufioFlushWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.Transport_static_extension) abstract Transport(stdgo._internal.net.http.Http_transport.Transport) from stdgo._internal.net.http.Http_transport.Transport to stdgo._internal.net.http.Http_transport.Transport {
    public var proxy(get, set) : Request -> stdgo.Tuple<stdgo._internal.net.url.Url_url.URL, stdgo.Error>;
    function get_proxy():Request -> stdgo.Tuple<stdgo._internal.net.url.Url_url.URL, stdgo.Error> return _0 -> this.proxy(_0);
    function set_proxy(v:Request -> stdgo.Tuple<stdgo._internal.net.url.Url_url.URL, stdgo.Error>):Request -> stdgo.Tuple<stdgo._internal.net.url.Url_url.URL, stdgo.Error> {
        this.proxy = v;
        return v;
    }
    public var onProxyConnectResponse(get, set) : (stdgo._internal.context.Context_context.Context, stdgo._internal.net.url.Url_url.URL, Request, Response) -> stdgo.Error;
    function get_onProxyConnectResponse():(stdgo._internal.context.Context_context.Context, stdgo._internal.net.url.Url_url.URL, Request, Response) -> stdgo.Error return (_0, _1, _2, _3) -> this.onProxyConnectResponse(_0, _1, _2, _3);
    function set_onProxyConnectResponse(v:(stdgo._internal.context.Context_context.Context, stdgo._internal.net.url.Url_url.URL, Request, Response) -> stdgo.Error):(stdgo._internal.context.Context_context.Context, stdgo._internal.net.url.Url_url.URL, Request, Response) -> stdgo.Error {
        this.onProxyConnectResponse = v;
        return v;
    }
    public var dialContext(get, set) : (stdgo._internal.context.Context_context.Context, String, String) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error>;
    function get_dialContext():(stdgo._internal.context.Context_context.Context, String, String) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error> return (_0, _1, _2) -> this.dialContext(_0, _1, _2);
    function set_dialContext(v:(stdgo._internal.context.Context_context.Context, String, String) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error>):(stdgo._internal.context.Context_context.Context, String, String) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error> {
        this.dialContext = v;
        return v;
    }
    public var dial(get, set) : (String, String) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error>;
    function get_dial():(String, String) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error> return (_0, _1) -> this.dial(_0, _1);
    function set_dial(v:(String, String) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error>):(String, String) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error> {
        this.dial = v;
        return v;
    }
    public var dialTLSContext(get, set) : (stdgo._internal.context.Context_context.Context, String, String) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error>;
    function get_dialTLSContext():(stdgo._internal.context.Context_context.Context, String, String) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error> return (_0, _1, _2) -> this.dialTLSContext(_0, _1, _2);
    function set_dialTLSContext(v:(stdgo._internal.context.Context_context.Context, String, String) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error>):(stdgo._internal.context.Context_context.Context, String, String) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error> {
        this.dialTLSContext = v;
        return v;
    }
    public var dialTLS(get, set) : (String, String) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error>;
    function get_dialTLS():(String, String) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error> return (_0, _1) -> this.dialTLS(_0, _1);
    function set_dialTLS(v:(String, String) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error>):(String, String) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error> {
        this.dialTLS = v;
        return v;
    }
    public var tLSClientConfig(get, set) : stdgo._internal.crypto.tls.Tls_config.Config;
    function get_tLSClientConfig():stdgo._internal.crypto.tls.Tls_config.Config return this.tLSClientConfig;
    function set_tLSClientConfig(v:stdgo._internal.crypto.tls.Tls_config.Config):stdgo._internal.crypto.tls.Tls_config.Config {
        this.tLSClientConfig = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
        return v;
    }
    public var tLSHandshakeTimeout(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_tLSHandshakeTimeout():stdgo._internal.time.Time_duration.Duration return this.tLSHandshakeTimeout;
    function set_tLSHandshakeTimeout(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.tLSHandshakeTimeout = v;
        return v;
    }
    public var disableKeepAlives(get, set) : Bool;
    function get_disableKeepAlives():Bool return this.disableKeepAlives;
    function set_disableKeepAlives(v:Bool):Bool {
        this.disableKeepAlives = v;
        return v;
    }
    public var disableCompression(get, set) : Bool;
    function get_disableCompression():Bool return this.disableCompression;
    function set_disableCompression(v:Bool):Bool {
        this.disableCompression = v;
        return v;
    }
    public var maxIdleConns(get, set) : StdTypes.Int;
    function get_maxIdleConns():StdTypes.Int return this.maxIdleConns;
    function set_maxIdleConns(v:StdTypes.Int):StdTypes.Int {
        this.maxIdleConns = (v : stdgo.GoInt);
        return v;
    }
    public var maxIdleConnsPerHost(get, set) : StdTypes.Int;
    function get_maxIdleConnsPerHost():StdTypes.Int return this.maxIdleConnsPerHost;
    function set_maxIdleConnsPerHost(v:StdTypes.Int):StdTypes.Int {
        this.maxIdleConnsPerHost = (v : stdgo.GoInt);
        return v;
    }
    public var maxConnsPerHost(get, set) : StdTypes.Int;
    function get_maxConnsPerHost():StdTypes.Int return this.maxConnsPerHost;
    function set_maxConnsPerHost(v:StdTypes.Int):StdTypes.Int {
        this.maxConnsPerHost = (v : stdgo.GoInt);
        return v;
    }
    public var idleConnTimeout(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_idleConnTimeout():stdgo._internal.time.Time_duration.Duration return this.idleConnTimeout;
    function set_idleConnTimeout(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.idleConnTimeout = v;
        return v;
    }
    public var responseHeaderTimeout(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_responseHeaderTimeout():stdgo._internal.time.Time_duration.Duration return this.responseHeaderTimeout;
    function set_responseHeaderTimeout(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.responseHeaderTimeout = v;
        return v;
    }
    public var expectContinueTimeout(get, set) : stdgo._internal.time.Time_duration.Duration;
    function get_expectContinueTimeout():stdgo._internal.time.Time_duration.Duration return this.expectContinueTimeout;
    function set_expectContinueTimeout(v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.time.Time_duration.Duration {
        this.expectContinueTimeout = v;
        return v;
    }
    public var tLSNextProto(get, set) : Map<String, (String, stdgo._internal.crypto.tls.Tls_conn.Conn) -> RoundTripper>;
    function get_tLSNextProto():Map<String, (String, stdgo._internal.crypto.tls.Tls_conn.Conn) -> RoundTripper> return {
        final __obj__:Map<String, (String, stdgo._internal.crypto.tls.Tls_conn.Conn) -> RoundTripper> = [];
        for (key => value in this.tLSNextProto) {
            __obj__[key] = (_0, _1) -> value(_0, _1);
        };
        __obj__;
    };
    function set_tLSNextProto(v:Map<String, (String, stdgo._internal.crypto.tls.Tls_conn.Conn) -> RoundTripper>):Map<String, (String, stdgo._internal.crypto.tls.Tls_conn.Conn) -> RoundTripper> {
        this.tLSNextProto = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>) -> stdgo._internal.net.http.Http_roundtripper.RoundTripper>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = value;
            };
            __obj__;
        };
        return v;
    }
    public var proxyConnectHeader(get, set) : Header;
    function get_proxyConnectHeader():Header return this.proxyConnectHeader;
    function set_proxyConnectHeader(v:Header):Header {
        this.proxyConnectHeader = v;
        return v;
    }
    public var getProxyConnectHeader(get, set) : (stdgo._internal.context.Context_context.Context, stdgo._internal.net.url.Url_url.URL, String) -> stdgo.Tuple<Header, stdgo.Error>;
    function get_getProxyConnectHeader():(stdgo._internal.context.Context_context.Context, stdgo._internal.net.url.Url_url.URL, String) -> stdgo.Tuple<Header, stdgo.Error> return (_0, _1, _2) -> this.getProxyConnectHeader(_0, _1, _2);
    function set_getProxyConnectHeader(v:(stdgo._internal.context.Context_context.Context, stdgo._internal.net.url.Url_url.URL, String) -> stdgo.Tuple<Header, stdgo.Error>):(stdgo._internal.context.Context_context.Context, stdgo._internal.net.url.Url_url.URL, String) -> stdgo.Tuple<Header, stdgo.Error> {
        this.getProxyConnectHeader = v;
        return v;
    }
    public var maxResponseHeaderBytes(get, set) : haxe.Int64;
    function get_maxResponseHeaderBytes():haxe.Int64 return this.maxResponseHeaderBytes;
    function set_maxResponseHeaderBytes(v:haxe.Int64):haxe.Int64 {
        this.maxResponseHeaderBytes = (v : stdgo.GoInt64);
        return v;
    }
    public var writeBufferSize(get, set) : StdTypes.Int;
    function get_writeBufferSize():StdTypes.Int return this.writeBufferSize;
    function set_writeBufferSize(v:StdTypes.Int):StdTypes.Int {
        this.writeBufferSize = (v : stdgo.GoInt);
        return v;
    }
    public var readBufferSize(get, set) : StdTypes.Int;
    function get_readBufferSize():StdTypes.Int return this.readBufferSize;
    function set_readBufferSize(v:StdTypes.Int):StdTypes.Int {
        this.readBufferSize = (v : stdgo.GoInt);
        return v;
    }
    public var forceAttemptHTTP2(get, set) : Bool;
    function get_forceAttemptHTTP2():Bool return this.forceAttemptHTTP2;
    function set_forceAttemptHTTP2(v:Bool):Bool {
        this.forceAttemptHTTP2 = v;
        return v;
    }
    public function new(?proxy:Request -> stdgo.Tuple<stdgo._internal.net.url.Url_url.URL, stdgo.Error>, ?onProxyConnectResponse:(stdgo._internal.context.Context_context.Context, stdgo._internal.net.url.Url_url.URL, Request, Response) -> stdgo.Error, ?dialContext:(stdgo._internal.context.Context_context.Context, String, String) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error>, ?dial:(String, String) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error>, ?dialTLSContext:(stdgo._internal.context.Context_context.Context, String, String) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error>, ?dialTLS:(String, String) -> stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error>, ?tLSClientConfig:stdgo._internal.crypto.tls.Tls_config.Config, ?tLSHandshakeTimeout:stdgo._internal.time.Time_duration.Duration, ?disableKeepAlives:Bool, ?disableCompression:Bool, ?maxIdleConns:StdTypes.Int, ?maxIdleConnsPerHost:StdTypes.Int, ?maxConnsPerHost:StdTypes.Int, ?idleConnTimeout:stdgo._internal.time.Time_duration.Duration, ?responseHeaderTimeout:stdgo._internal.time.Time_duration.Duration, ?expectContinueTimeout:stdgo._internal.time.Time_duration.Duration, ?tLSNextProto:Map<String, (String, stdgo._internal.crypto.tls.Tls_conn.Conn) -> RoundTripper>, ?proxyConnectHeader:Header, ?getProxyConnectHeader:(stdgo._internal.context.Context_context.Context, stdgo._internal.net.url.Url_url.URL, String) -> stdgo.Tuple<Header, stdgo.Error>, ?maxResponseHeaderBytes:haxe.Int64, ?writeBufferSize:StdTypes.Int, ?readBufferSize:StdTypes.Int, ?forceAttemptHTTP2:Bool) this = new stdgo._internal.net.http.Http_transport.Transport(
proxy,
onProxyConnectResponse,
dialContext,
dial,
dialTLSContext,
dialTLS,
(tLSClientConfig : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>),
tLSHandshakeTimeout,
disableKeepAlives,
disableCompression,
(maxIdleConns : stdgo.GoInt),
(maxIdleConnsPerHost : stdgo.GoInt),
(maxConnsPerHost : stdgo.GoInt),
idleConnTimeout,
responseHeaderTimeout,
expectContinueTimeout,
{
        final __obj__ = new stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>) -> stdgo._internal.net.http.Http_roundtripper.RoundTripper>();
        for (key => value in tLSNextProto) {
            __obj__[(key : stdgo.GoString)] = value;
        };
        __obj__;
    },
proxyConnectHeader,
getProxyConnectHeader,
(maxResponseHeaderBytes : stdgo.GoInt64),
(writeBufferSize : stdgo.GoInt),
(readBufferSize : stdgo.GoInt),
forceAttemptHTTP2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_cancelKey_static_extension) @:dox(hide) abstract T_cancelKey(stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey) from stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey to stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey {
    public function new() this = new stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_transportRequest_static_extension) @:dox(hide) abstract T_transportRequest(stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest) from stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest to stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest {
    public var request(get, set) : Request;
    function get_request():Request return this.request;
    function set_request(v:Request):Request {
        this.request = (v : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return v;
    }
    public function new(?request:Request) this = new stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest((request : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_readTrackingBody_static_extension) @:dox(hide) abstract T_readTrackingBody(stdgo._internal.net.http.Http_t_readtrackingbody.T_readTrackingBody) from stdgo._internal.net.http.Http_t_readtrackingbody.T_readTrackingBody to stdgo._internal.net.http.Http_t_readtrackingbody.T_readTrackingBody {
    public var readCloser(get, set) : stdgo._internal.io.Io_readcloser.ReadCloser;
    function get_readCloser():stdgo._internal.io.Io_readcloser.ReadCloser return this.readCloser;
    function set_readCloser(v:stdgo._internal.io.Io_readcloser.ReadCloser):stdgo._internal.io.Io_readcloser.ReadCloser {
        this.readCloser = v;
        return v;
    }
    public function new(?readCloser:stdgo._internal.io.Io_readcloser.ReadCloser) this = new stdgo._internal.net.http.Http_t_readtrackingbody.T_readTrackingBody(readCloser);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_transportReadFromServerError_static_extension) @:dox(hide) abstract T_transportReadFromServerError(stdgo._internal.net.http.Http_t_transportreadfromservererror.T_transportReadFromServerError) from stdgo._internal.net.http.Http_t_transportreadfromservererror.T_transportReadFromServerError to stdgo._internal.net.http.Http_t_transportreadfromservererror.T_transportReadFromServerError {
    public function new() this = new stdgo._internal.net.http.Http_t_transportreadfromservererror.T_transportReadFromServerError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_wantConn_static_extension) @:dox(hide) abstract T_wantConn(stdgo._internal.net.http.Http_t_wantconn.T_wantConn) from stdgo._internal.net.http.Http_t_wantconn.T_wantConn to stdgo._internal.net.http.Http_t_wantconn.T_wantConn {
    public function new() this = new stdgo._internal.net.http.Http_t_wantconn.T_wantConn();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_wantConnQueue_static_extension) @:dox(hide) abstract T_wantConnQueue(stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue) from stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue to stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue {
    public function new() this = new stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_persistConnWriter_static_extension) @:dox(hide) abstract T_persistConnWriter(stdgo._internal.net.http.Http_t_persistconnwriter.T_persistConnWriter) from stdgo._internal.net.http.Http_t_persistconnwriter.T_persistConnWriter to stdgo._internal.net.http.Http_t_persistconnwriter.T_persistConnWriter {
    public function new() this = new stdgo._internal.net.http.Http_t_persistconnwriter.T_persistConnWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_connectMethod_static_extension) @:dox(hide) abstract T_connectMethod(stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod) from stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod to stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod {
    public function new() this = new stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_connectMethodKey_static_extension) @:dox(hide) abstract T_connectMethodKey(stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey) from stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey to stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey {
    public function new() this = new stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_persistConn_static_extension) @:dox(hide) abstract T_persistConn(stdgo._internal.net.http.Http_t_persistconn.T_persistConn) from stdgo._internal.net.http.Http_t_persistconn.T_persistConn to stdgo._internal.net.http.Http_t_persistconn.T_persistConn {
    public function new() this = new stdgo._internal.net.http.Http_t_persistconn.T_persistConn();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_readWriteCloserBody_static_extension) @:dox(hide) abstract T_readWriteCloserBody(stdgo._internal.net.http.Http_t_readwritecloserbody.T_readWriteCloserBody) from stdgo._internal.net.http.Http_t_readwritecloserbody.T_readWriteCloserBody to stdgo._internal.net.http.Http_t_readwritecloserbody.T_readWriteCloserBody {
    public var readWriteCloser(get, set) : stdgo._internal.io.Io_readwritecloser.ReadWriteCloser;
    function get_readWriteCloser():stdgo._internal.io.Io_readwritecloser.ReadWriteCloser return this.readWriteCloser;
    function set_readWriteCloser(v:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):stdgo._internal.io.Io_readwritecloser.ReadWriteCloser {
        this.readWriteCloser = v;
        return v;
    }
    public function new(?readWriteCloser:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser) this = new stdgo._internal.net.http.Http_t_readwritecloserbody.T_readWriteCloserBody(readWriteCloser);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_nothingWrittenError_static_extension) @:dox(hide) abstract T_nothingWrittenError(stdgo._internal.net.http.Http_t_nothingwrittenerror.T_nothingWrittenError) from stdgo._internal.net.http.Http_t_nothingwrittenerror.T_nothingWrittenError to stdgo._internal.net.http.Http_t_nothingwrittenerror.T_nothingWrittenError {
    public function new() this = new stdgo._internal.net.http.Http_t_nothingwrittenerror.T_nothingWrittenError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_responseAndError_static_extension) @:dox(hide) abstract T_responseAndError(stdgo._internal.net.http.Http_t_responseanderror.T_responseAndError) from stdgo._internal.net.http.Http_t_responseanderror.T_responseAndError to stdgo._internal.net.http.Http_t_responseanderror.T_responseAndError {
    public function new() this = new stdgo._internal.net.http.Http_t_responseanderror.T_responseAndError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_requestAndChan_static_extension) @:dox(hide) abstract T_requestAndChan(stdgo._internal.net.http.Http_t_requestandchan.T_requestAndChan) from stdgo._internal.net.http.Http_t_requestandchan.T_requestAndChan to stdgo._internal.net.http.Http_t_requestandchan.T_requestAndChan {
    public function new() this = new stdgo._internal.net.http.Http_t_requestandchan.T_requestAndChan();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_writeRequest_static_extension) @:dox(hide) abstract T_writeRequest(stdgo._internal.net.http.Http_t_writerequest.T_writeRequest) from stdgo._internal.net.http.Http_t_writerequest.T_writeRequest to stdgo._internal.net.http.Http_t_writerequest.T_writeRequest {
    public function new() this = new stdgo._internal.net.http.Http_t_writerequest.T_writeRequest();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_httpError_static_extension) @:dox(hide) abstract T_httpError(stdgo._internal.net.http.Http_t_httperror.T_httpError) from stdgo._internal.net.http.Http_t_httperror.T_httpError to stdgo._internal.net.http.Http_t_httperror.T_httpError {
    public function new() this = new stdgo._internal.net.http.Http_t_httperror.T_httpError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_tLogKey_static_extension) @:dox(hide) abstract T_tLogKey(stdgo._internal.net.http.Http_t_tlogkey.T_tLogKey) from stdgo._internal.net.http.Http_t_tlogkey.T_tLogKey to stdgo._internal.net.http.Http_t_tlogkey.T_tLogKey {
    public function new() this = new stdgo._internal.net.http.Http_t_tlogkey.T_tLogKey();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_bodyEOFSignal_static_extension) @:dox(hide) abstract T_bodyEOFSignal(stdgo._internal.net.http.Http_t_bodyeofsignal.T_bodyEOFSignal) from stdgo._internal.net.http.Http_t_bodyeofsignal.T_bodyEOFSignal to stdgo._internal.net.http.Http_t_bodyeofsignal.T_bodyEOFSignal {
    public function new() this = new stdgo._internal.net.http.Http_t_bodyeofsignal.T_bodyEOFSignal();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_gzipReader_static_extension) @:dox(hide) abstract T_gzipReader(stdgo._internal.net.http.Http_t_gzipreader.T_gzipReader) from stdgo._internal.net.http.Http_t_gzipreader.T_gzipReader to stdgo._internal.net.http.Http_t_gzipreader.T_gzipReader {
    public function new() this = new stdgo._internal.net.http.Http_t_gzipreader.T_gzipReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_tlsHandshakeTimeoutError_static_extension) @:dox(hide) abstract T_tlsHandshakeTimeoutError(stdgo._internal.net.http.Http_t_tlshandshaketimeouterror.T_tlsHandshakeTimeoutError) from stdgo._internal.net.http.Http_t_tlshandshaketimeouterror.T_tlsHandshakeTimeoutError to stdgo._internal.net.http.Http_t_tlshandshaketimeouterror.T_tlsHandshakeTimeoutError {
    public function new() this = new stdgo._internal.net.http.Http_t_tlshandshaketimeouterror.T_tlsHandshakeTimeoutError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_fakeLocker_static_extension) @:dox(hide) abstract T_fakeLocker(stdgo._internal.net.http.Http_t_fakelocker.T_fakeLocker) from stdgo._internal.net.http.Http_t_fakelocker.T_fakeLocker to stdgo._internal.net.http.Http_t_fakelocker.T_fakeLocker {
    public function new() this = new stdgo._internal.net.http.Http_t_fakelocker.T_fakeLocker();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_connLRU_static_extension) @:dox(hide) abstract T_connLRU(stdgo._internal.net.http.Http_t_connlru.T_connLRU) from stdgo._internal.net.http.Http_t_connlru.T_connLRU to stdgo._internal.net.http.Http_t_connlru.T_connLRU {
    public function new() this = new stdgo._internal.net.http.Http_t_connlru.T_connLRU();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.net.http.Http_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.net.http.Http_t__struct_0.T__struct_0;
@:dox(hide) typedef T__struct_1Pointer = stdgo._internal.net.http.Http_t__struct_1pointer.T__struct_1Pointer;
@:dox(hide) class T__struct_1_static_extension {
    public static function read(__self__:stdgo._internal.net.http.Http_t__struct_1.T__struct_1, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t__struct_1_static_extension.T__struct_1_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function close(__self__:stdgo._internal.net.http.Http_t__struct_1.T__struct_1):stdgo.Error {
        return stdgo._internal.net.http.Http_t__struct_1_static_extension.T__struct_1_static_extension.close(__self__);
    }
}
@:dox(hide) typedef T__struct_1 = stdgo._internal.net.http.Http_t__struct_1.T__struct_1;
typedef SameSite = stdgo._internal.net.http.Http_samesite.SameSite;
typedef Dir = stdgo._internal.net.http.Http_dir.Dir;
@:dox(hide) typedef T_fileInfoDirs = stdgo._internal.net.http.Http_t_fileinfodirs.T_fileInfoDirs;
@:dox(hide) typedef T_dirEntryDirs = stdgo._internal.net.http.Http_t_direntrydirs.T_dirEntryDirs;
@:dox(hide) typedef T_condResult = stdgo._internal.net.http.Http_t_condresult.T_condResult;
@:dox(hide) typedef T_countingWriter = stdgo._internal.net.http.Http_t_countingwriter.T_countingWriter;
@:dox(hide) typedef T_http2ErrCode = stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode;
@:dox(hide) typedef T_http2ConnectionError = stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError;
@:dox(hide) typedef T_http2pseudoHeaderError = stdgo._internal.net.http.Http_t_http2pseudoheadererror.T_http2pseudoHeaderError;
@:dox(hide) typedef T_http2duplicatePseudoHeaderError = stdgo._internal.net.http.Http_t_http2duplicatepseudoheadererror.T_http2duplicatePseudoHeaderError;
@:dox(hide) typedef T_http2headerFieldNameError = stdgo._internal.net.http.Http_t_http2headerfieldnameerror.T_http2headerFieldNameError;
@:dox(hide) typedef T_http2headerFieldValueError = stdgo._internal.net.http.Http_t_http2headerfieldvalueerror.T_http2headerFieldValueError;
@:dox(hide) typedef T_http2FrameType = stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType;
@:dox(hide) typedef T_http2Flags = stdgo._internal.net.http.Http_t_http2flags.T_http2Flags;
@:dox(hide) typedef T_http2frameParser = stdgo._internal.net.http.Http_t_http2frameparser.T_http2frameParser;
@:dox(hide) typedef T_http2goroutineLock = stdgo._internal.net.http.Http_t_http2goroutinelock.T_http2goroutineLock;
@:dox(hide) typedef T_http2streamState = stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState;
@:dox(hide) typedef T_http2SettingID = stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID;
@:dox(hide) typedef T_http2gate = stdgo._internal.net.http.Http_t_http2gate.T_http2gate;
@:dox(hide) typedef T_http2closeWaiter = stdgo._internal.net.http.Http_t_http2closewaiter.T_http2closeWaiter;
@:dox(hide) typedef T_http2incomparable = stdgo._internal.net.http.Http_t_http2incomparable.T_http2incomparable;
@:dox(hide) typedef T_http2serverMessage = stdgo._internal.net.http.Http_t_http2servermessage.T_http2serverMessage;
@:dox(hide) typedef T_http2writeSettings = stdgo._internal.net.http.Http_t_http2writesettings.T_http2writeSettings;
@:dox(hide) typedef T_http2writeQueuePool = stdgo._internal.net.http.Http_t_http2writequeuepool.T_http2writeQueuePool;
@:dox(hide) typedef T_http2priorityNodeState = stdgo._internal.net.http.Http_t_http2prioritynodestate.T_http2priorityNodeState;
@:dox(hide) typedef T_http2sortPriorityNodeSiblings = stdgo._internal.net.http.Http_t_http2sortprioritynodesiblings.T_http2sortPriorityNodeSiblings;
typedef Header = stdgo._internal.net.http.Http_header.Header;
@:dox(hide) typedef T_incomparable = stdgo._internal.net.http.Http_t_incomparable.T_incomparable;
typedef HandlerFunc = stdgo._internal.net.http.Http_handlerfunc.HandlerFunc;
typedef ConnState = stdgo._internal.net.http.Http_connstate.ConnState;
@:dox(hide) typedef T_htmlSig = stdgo._internal.net.http.Http_t_htmlsig.T_htmlSig;
@:dox(hide) typedef T_socksCommand = stdgo._internal.net.http.Http_t_sockscommand.T_socksCommand;
@:dox(hide) typedef T_socksAuthMethod = stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod;
@:dox(hide) typedef T_socksReply = stdgo._internal.net.http.Http_t_socksreply.T_socksReply;
typedef ClientPointer = stdgo._internal.net.http.Http_clientpointer.ClientPointer;
class Client_static_extension {
    static public function closeIdleConnections(_c:Client):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_client.Client>);
        stdgo._internal.net.http.Http_client_static_extension.Client_static_extension.closeIdleConnections(_c);
    }
    static public function head(_c:Client, _url:String):stdgo.Tuple<Response, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_client.Client>);
        final _url = (_url : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_client_static_extension.Client_static_extension.head(_c, _url);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function postForm(_c:Client, _url:String, _data:stdgo._internal.net.url.Url_values.Values):stdgo.Tuple<Response, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_client.Client>);
        final _url = (_url : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_client_static_extension.Client_static_extension.postForm(_c, _url, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function post(_c:Client, _url:String, _contentType:String, _body:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<Response, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_client.Client>);
        final _url = (_url : stdgo.GoString);
        final _contentType = (_contentType : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_client_static_extension.Client_static_extension.post(_c, _url, _contentType, _body);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function do_(_c:Client, _req:Request):stdgo.Tuple<Response, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_client.Client>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_client_static_extension.Client_static_extension.do_(_c, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function get(_c:Client, _url:String):stdgo.Tuple<Response, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_client.Client>);
        final _url = (_url : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_client_static_extension.Client_static_extension.get(_c, _url);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) class T_closeIdleConnections___localname___closeIdler_31464_static_extension {
    static public function closeIdleConnections(t:stdgo._internal.net.http.Http_t_closeidleconnections___localname___closeidler_31464.T_closeIdleConnections___localname___closeIdler_31464):Void {
        stdgo._internal.net.http.Http_t_closeidleconnections___localname___closeidler_31464_static_extension.T_closeIdleConnections___localname___closeIdler_31464_static_extension.closeIdleConnections(t);
    }
}
@:dox(hide) @:forward abstract T_closeIdleConnections___localname___closeIdler_31464(stdgo._internal.net.http.Http_t_closeidleconnections___localname___closeidler_31464.T_closeIdleConnections___localname___closeIdler_31464) from stdgo._internal.net.http.Http_t_closeidleconnections___localname___closeidler_31464.T_closeIdleConnections___localname___closeIdler_31464 to stdgo._internal.net.http.Http_t_closeidleconnections___localname___closeidler_31464.T_closeIdleConnections___localname___closeIdler_31464 {
    @:from
    static function fromHaxeInterface(x:{ function closeIdleConnections():Void; }):T_closeIdleConnections___localname___closeIdler_31464 {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_closeIdleConnections___localname___closeIdler_31464 = { closeIdleConnections : () -> x.closeIdleConnections(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:dox(hide) typedef T_cancelTimerBodyPointer = stdgo._internal.net.http.Http_t_canceltimerbodypointer.T_cancelTimerBodyPointer;
@:dox(hide) class T_cancelTimerBody_static_extension {
    static public function close(_b:T_cancelTimerBody):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.net.http.Http_t_canceltimerbody.T_cancelTimerBody>);
        return stdgo._internal.net.http.Http_t_canceltimerbody_static_extension.T_cancelTimerBody_static_extension.close(_b);
    }
    static public function read(_b:T_cancelTimerBody, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.net.http.Http_t_canceltimerbody.T_cancelTimerBody>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_canceltimerbody_static_extension.T_cancelTimerBody_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef CookiePointer = stdgo._internal.net.http.Http_cookiepointer.CookiePointer;
class Cookie_static_extension {
    static public function valid(_c:Cookie):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>);
        return stdgo._internal.net.http.Http_cookie_static_extension.Cookie_static_extension.valid(_c);
    }
    static public function string(_c:Cookie):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>);
        return stdgo._internal.net.http.Http_cookie_static_extension.Cookie_static_extension.string(_c);
    }
}
@:dox(hide) typedef T_fileTransportPointer = stdgo._internal.net.http.Http_t_filetransportpointer.T_fileTransportPointer;
@:dox(hide) class T_fileTransport_static_extension {
    static public function roundTrip(_t:T_fileTransport, _req:Request):stdgo.Tuple<Response, stdgo.Error> {
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_t_filetransport_static_extension.T_fileTransport_static_extension.roundTrip(_t, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_populateResponsePointer = stdgo._internal.net.http.Http_t_populateresponsepointer.T_populateResponsePointer;
@:dox(hide) class T_populateResponse_static_extension {
    static public function write(_pr:T_populateResponse, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.net.http.Http_t_populateresponse.T_populateResponse>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_populateresponse_static_extension.T_populateResponse_static_extension.write(_pr, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeHeader(_pr:T_populateResponse, _code:StdTypes.Int):Void {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.net.http.Http_t_populateresponse.T_populateResponse>);
        final _code = (_code : stdgo.GoInt);
        stdgo._internal.net.http.Http_t_populateresponse_static_extension.T_populateResponse_static_extension.writeHeader(_pr, _code);
    }
    static public function header(_pr:T_populateResponse):Header {
        final _pr = (_pr : stdgo.Ref<stdgo._internal.net.http.Http_t_populateresponse.T_populateResponse>);
        return stdgo._internal.net.http.Http_t_populateresponse_static_extension.T_populateResponse_static_extension.header(_pr);
    }
}
@:dox(hide) typedef T_fileHandlerPointer = stdgo._internal.net.http.Http_t_filehandlerpointer.T_fileHandlerPointer;
@:dox(hide) class T_fileHandler_static_extension {
    static public function serveHTTP(_f:T_fileHandler, _w:ResponseWriter, _r:Request):Void {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_filehandler.T_fileHandler>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        stdgo._internal.net.http.Http_t_filehandler_static_extension.T_fileHandler_static_extension.serveHTTP(_f, _w, _r);
    }
}
@:dox(hide) typedef T_ioFSPointer = stdgo._internal.net.http.Http_t_iofspointer.T_ioFSPointer;
@:dox(hide) class T_ioFS_static_extension {
    static public function open(_f:T_ioFS, _name:String):stdgo.Tuple<File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_t_iofs_static_extension.T_ioFS_static_extension.open(_f, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_ioFilePointer = stdgo._internal.net.http.Http_t_iofilepointer.T_ioFilePointer;
@:dox(hide) class T_ioFile_static_extension {
    static public function readdir(_f:T_ioFile, _count:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>, stdgo.Error> {
        final _count = (_count : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.http.Http_t_iofile_static_extension.T_ioFile_static_extension.readdir(_f, _count);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readDir(_f:T_ioFile, _count:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_direntry.DirEntry>, stdgo.Error> {
        final _count = (_count : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.http.Http_t_iofile_static_extension.T_ioFile_static_extension.readDir(_f, _count);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function seek(_f:T_ioFile, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.net.http.Http_t_iofile_static_extension.T_ioFile_static_extension.seek(_f, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stat(_f:T_ioFile):stdgo.Tuple<stdgo._internal.io.fs.Fs_fileinfo.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_t_iofile_static_extension.T_ioFile_static_extension.stat(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_f:T_ioFile, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_iofile_static_extension.T_ioFile_static_extension.read(_f, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_f:T_ioFile):stdgo.Error {
        return stdgo._internal.net.http.Http_t_iofile_static_extension.T_ioFile_static_extension.close(_f);
    }
}
@:dox(hide) typedef T_httpRangePointer = stdgo._internal.net.http.Http_t_httprangepointer.T_httpRangePointer;
@:dox(hide) class T_httpRange_static_extension {

}
@:dox(hide) typedef T_http2clientConnPoolPointer = stdgo._internal.net.http.Http_t_http2clientconnpoolpointer.T_http2clientConnPoolPointer;
@:dox(hide) class T_http2clientConnPool_static_extension {
    static public function markDead(_p:T_http2clientConnPool, _cc:T_http2ClientConn):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool>);
        final _cc = (_cc : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>);
        stdgo._internal.net.http.Http_t_http2clientconnpool_static_extension.T_http2clientConnPool_static_extension.markDead(_p, _cc);
    }
    static public function getClientConn(_p:T_http2clientConnPool, _req:Request, _addr:String):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        final _addr = (_addr : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2clientconnpool_static_extension.T_http2clientConnPool_static_extension.getClientConn(_p, _req, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_http2dialCallPointer = stdgo._internal.net.http.Http_t_http2dialcallpointer.T_http2dialCallPointer;
@:dox(hide) class T_http2dialCall_static_extension {

}
@:dox(hide) typedef T_http2addConnCallPointer = stdgo._internal.net.http.Http_t_http2addconncallpointer.T_http2addConnCallPointer;
@:dox(hide) class T_http2addConnCall_static_extension {

}
@:dox(hide) typedef T_http2noDialClientConnPoolPointer = stdgo._internal.net.http.Http_t_http2nodialclientconnpoolpointer.T_http2noDialClientConnPoolPointer;
@:dox(hide) class T_http2noDialClientConnPool_static_extension {
    static public function getClientConn(_p:T_http2noDialClientConnPool, _req:Request, _addr:String):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        final _addr = (_addr : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2nodialclientconnpool_static_extension.T_http2noDialClientConnPool_static_extension.getClientConn(_p, _req, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _getStartDialLocked(__self__:stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool, _0:stdgo._internal.context.Context_context.Context, _1:String):T_http2dialCall {
        final _1 = (_1 : stdgo.GoString);
        return stdgo._internal.net.http.Http_t_http2nodialclientconnpool_static_extension.T_http2noDialClientConnPool_static_extension._getStartDialLocked(__self__, _0, _1);
    }
    public static function _getClientConn(__self__:stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool, _0:Request, _1:String, _2:Bool):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        final _1 = (_1 : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2nodialclientconnpool_static_extension.T_http2noDialClientConnPool_static_extension._getClientConn(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _closeIdleConnections(__self__:stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool):Void {
        stdgo._internal.net.http.Http_t_http2nodialclientconnpool_static_extension.T_http2noDialClientConnPool_static_extension._closeIdleConnections(__self__);
    }
    public static function _addConnLocked(__self__:stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool, _0:String, _1:T_http2ClientConn):Void {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>);
        stdgo._internal.net.http.Http_t_http2nodialclientconnpool_static_extension.T_http2noDialClientConnPool_static_extension._addConnLocked(__self__, _0, _1);
    }
    public static function _addConnIfNeeded(__self__:stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool, _0:String, _1:T_http2Transport, _2:stdgo._internal.crypto.tls.Tls_conn.Conn):stdgo.Tuple<Bool, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>);
        final _2 = (_2 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2nodialclientconnpool_static_extension.T_http2noDialClientConnPool_static_extension._addConnIfNeeded(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function markDead(__self__:stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool, _0:T_http2ClientConn):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>);
        stdgo._internal.net.http.Http_t_http2nodialclientconnpool_static_extension.T_http2noDialClientConnPool_static_extension.markDead(__self__, _0);
    }
}
@:dox(hide) typedef T_http2dataBufferPointer = stdgo._internal.net.http.Http_t_http2databufferpointer.T_http2dataBufferPointer;
@:dox(hide) class T_http2dataBuffer_static_extension {
    static public function write(_b:T_http2dataBuffer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2databuffer_static_extension.T_http2dataBuffer_static_extension.write(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function len(_b:T_http2dataBuffer):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer>);
        return stdgo._internal.net.http.Http_t_http2databuffer_static_extension.T_http2dataBuffer_static_extension.len(_b);
    }
    static public function read(_b:T_http2dataBuffer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2databuffer_static_extension.T_http2dataBuffer_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_http2StreamErrorPointer = stdgo._internal.net.http.Http_t_http2streamerrorpointer.T_http2StreamErrorPointer;
@:dox(hide) class T_http2StreamError_static_extension {
    static public function as(_e:T_http2StreamError, _target:stdgo.AnyInterface):Bool {
        final _target = (_target : stdgo.AnyInterface);
        return stdgo._internal.net.http.Http_t_http2streamerror_static_extension.T_http2StreamError_static_extension.as(_e, _target);
    }
    static public function error(_e:T_http2StreamError):String {
        return stdgo._internal.net.http.Http_t_http2streamerror_static_extension.T_http2StreamError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_http2goAwayFlowErrorPointer = stdgo._internal.net.http.Http_t_http2goawayflowerrorpointer.T_http2goAwayFlowErrorPointer;
@:dox(hide) class T_http2goAwayFlowError_static_extension {
    static public function error(_:T_http2goAwayFlowError):String {
        return stdgo._internal.net.http.Http_t_http2goawayflowerror_static_extension.T_http2goAwayFlowError_static_extension.error(_);
    }
}
@:dox(hide) typedef T_http2connErrorPointer = stdgo._internal.net.http.Http_t_http2connerrorpointer.T_http2connErrorPointer;
@:dox(hide) class T_http2connError_static_extension {
    static public function error(_e:T_http2connError):String {
        return stdgo._internal.net.http.Http_t_http2connerror_static_extension.T_http2connError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_http2inflowPointer = stdgo._internal.net.http.Http_t_http2inflowpointer.T_http2inflowPointer;
@:dox(hide) class T_http2inflow_static_extension {

}
@:dox(hide) typedef T_http2outflowPointer = stdgo._internal.net.http.Http_t_http2outflowpointer.T_http2outflowPointer;
@:dox(hide) class T_http2outflow_static_extension {

}
@:dox(hide) typedef T_http2FrameHeaderPointer = stdgo._internal.net.http.Http_t_http2frameheaderpointer.T_http2FrameHeaderPointer;
@:dox(hide) class T_http2FrameHeader_static_extension {
    static public function string(_h:T_http2FrameHeader):String {
        return stdgo._internal.net.http.Http_t_http2frameheader_static_extension.T_http2FrameHeader_static_extension.string(_h);
    }
    static public function header(_h:T_http2FrameHeader):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_t_http2frameheader_static_extension.T_http2FrameHeader_static_extension.header(_h);
    }
}
@:dox(hide) typedef T_http2FramerPointer = stdgo._internal.net.http.Http_t_http2framerpointer.T_http2FramerPointer;
@:dox(hide) class T_http2Framer_static_extension {
    static public function writeRawFrame(_f:T_http2Framer, _t:T_http2FrameType, _flags:T_http2Flags, _streamID:std.UInt, _payload:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        final _payload = ([for (i in _payload) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_t_http2framer_static_extension.T_http2Framer_static_extension.writeRawFrame(_f, _t, _flags, _streamID, _payload);
    }
    static public function writePushPromise(_f:T_http2Framer, _p:T_http2PushPromiseParam):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>);
        return stdgo._internal.net.http.Http_t_http2framer_static_extension.T_http2Framer_static_extension.writePushPromise(_f, _p);
    }
    static public function writeContinuation(_f:T_http2Framer, _streamID:std.UInt, _endHeaders:Bool, _headerBlockFragment:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        final _headerBlockFragment = ([for (i in _headerBlockFragment) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_t_http2framer_static_extension.T_http2Framer_static_extension.writeContinuation(_f, _streamID, _endHeaders, _headerBlockFragment);
    }
    static public function writeRSTStream(_f:T_http2Framer, _streamID:std.UInt, _code:T_http2ErrCode):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        return stdgo._internal.net.http.Http_t_http2framer_static_extension.T_http2Framer_static_extension.writeRSTStream(_f, _streamID, _code);
    }
    static public function writePriority(_f:T_http2Framer, _streamID:std.UInt, _p:T_http2PriorityParam):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        return stdgo._internal.net.http.Http_t_http2framer_static_extension.T_http2Framer_static_extension.writePriority(_f, _streamID, _p);
    }
    static public function writeHeaders(_f:T_http2Framer, _p:T_http2HeadersFrameParam):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>);
        return stdgo._internal.net.http.Http_t_http2framer_static_extension.T_http2Framer_static_extension.writeHeaders(_f, _p);
    }
    static public function writeWindowUpdate(_f:T_http2Framer, _streamID:std.UInt, _incr:std.UInt):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        final _incr = (_incr : stdgo.GoUInt32);
        return stdgo._internal.net.http.Http_t_http2framer_static_extension.T_http2Framer_static_extension.writeWindowUpdate(_f, _streamID, _incr);
    }
    static public function writeGoAway(_f:T_http2Framer, _maxStreamID:std.UInt, _code:T_http2ErrCode, _debugData:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>);
        final _maxStreamID = (_maxStreamID : stdgo.GoUInt32);
        final _debugData = ([for (i in _debugData) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_t_http2framer_static_extension.T_http2Framer_static_extension.writeGoAway(_f, _maxStreamID, _code, _debugData);
    }
    static public function writePing(_f:T_http2Framer, _ack:Bool, _data:haxe.ds.Vector<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_t_http2framer_static_extension.T_http2Framer_static_extension.writePing(_f, _ack, _data);
    }
    static public function writeSettingsAck(_f:T_http2Framer):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>);
        return stdgo._internal.net.http.Http_t_http2framer_static_extension.T_http2Framer_static_extension.writeSettingsAck(_f);
    }
    static public function writeSettings(_f:T_http2Framer, _settings:haxe.Rest<T_http2Setting>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>);
        return stdgo._internal.net.http.Http_t_http2framer_static_extension.T_http2Framer_static_extension.writeSettings(_f, ...[for (i in _settings) i]);
    }
    static public function writeDataPadded(_f:T_http2Framer, _streamID:std.UInt, _endStream:Bool, _data:Array<std.UInt>, _pad:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _pad = ([for (i in _pad) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_t_http2framer_static_extension.T_http2Framer_static_extension.writeDataPadded(_f, _streamID, _endStream, _data, _pad);
    }
    static public function writeData(_f:T_http2Framer, _streamID:std.UInt, _endStream:Bool, _data:Array<std.UInt>):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_t_http2framer_static_extension.T_http2Framer_static_extension.writeData(_f, _streamID, _endStream, _data);
    }
    static public function readFrame(_fr:T_http2Framer):stdgo.Tuple<T_http2Frame, stdgo.Error> {
        final _fr = (_fr : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2framer_static_extension.T_http2Framer_static_extension.readFrame(_fr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function errorDetail(_fr:T_http2Framer):stdgo.Error {
        final _fr = (_fr : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>);
        return stdgo._internal.net.http.Http_t_http2framer_static_extension.T_http2Framer_static_extension.errorDetail(_fr);
    }
    static public function setMaxReadFrameSize(_fr:T_http2Framer, _v:std.UInt):Void {
        final _fr = (_fr : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>);
        final _v = (_v : stdgo.GoUInt32);
        stdgo._internal.net.http.Http_t_http2framer_static_extension.T_http2Framer_static_extension.setMaxReadFrameSize(_fr, _v);
    }
    static public function setReuseFrames(_fr:T_http2Framer):Void {
        final _fr = (_fr : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>);
        stdgo._internal.net.http.Http_t_http2framer_static_extension.T_http2Framer_static_extension.setReuseFrames(_fr);
    }
}
@:dox(hide) typedef T_http2frameCachePointer = stdgo._internal.net.http.Http_t_http2framecachepointer.T_http2frameCachePointer;
@:dox(hide) class T_http2frameCache_static_extension {

}
@:dox(hide) typedef T_http2DataFramePointer = stdgo._internal.net.http.Http_t_http2dataframepointer.T_http2DataFramePointer;
@:dox(hide) class T_http2DataFrame_static_extension {
    static public function data(_f:T_http2DataFrame):Array<std.UInt> {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame>);
        return [for (i in stdgo._internal.net.http.Http_t_http2dataframe_static_extension.T_http2DataFrame_static_extension.data(_f)) i];
    }
    static public function streamEnded(_f:T_http2DataFrame):Bool {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame>);
        return stdgo._internal.net.http.Http_t_http2dataframe_static_extension.T_http2DataFrame_static_extension.streamEnded(_f);
    }
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame, _0:stdgo._internal.bytes.Bytes_buffer.Buffer):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        stdgo._internal.net.http.Http_t_http2dataframe_static_extension.T_http2DataFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame):Void {
        stdgo._internal.net.http.Http_t_http2dataframe_static_extension.T_http2DataFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame):Void {
        stdgo._internal.net.http.Http_t_http2dataframe_static_extension.T_http2DataFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame):String {
        return stdgo._internal.net.http.Http_t_http2dataframe_static_extension.T_http2DataFrame_static_extension.string(__self__);
    }
    public static function header(__self__:stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_t_http2dataframe_static_extension.T_http2DataFrame_static_extension.header(__self__);
    }
}
@:dox(hide) typedef T_http2SettingsFramePointer = stdgo._internal.net.http.Http_t_http2settingsframepointer.T_http2SettingsFramePointer;
@:dox(hide) class T_http2SettingsFrame_static_extension {
    static public function foreachSetting(_f:T_http2SettingsFrame, _fn:T_http2Setting -> stdgo.Error):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>);
        final _fn = _fn;
        return stdgo._internal.net.http.Http_t_http2settingsframe_static_extension.T_http2SettingsFrame_static_extension.foreachSetting(_f, _fn);
    }
    static public function hasDuplicates(_f:T_http2SettingsFrame):Bool {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>);
        return stdgo._internal.net.http.Http_t_http2settingsframe_static_extension.T_http2SettingsFrame_static_extension.hasDuplicates(_f);
    }
    static public function numSettings(_f:T_http2SettingsFrame):StdTypes.Int {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>);
        return stdgo._internal.net.http.Http_t_http2settingsframe_static_extension.T_http2SettingsFrame_static_extension.numSettings(_f);
    }
    static public function setting(_f:T_http2SettingsFrame, _i:StdTypes.Int):T_http2Setting {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.net.http.Http_t_http2settingsframe_static_extension.T_http2SettingsFrame_static_extension.setting(_f, _i);
    }
    static public function value(_f:T_http2SettingsFrame, _id:T_http2SettingID):stdgo.Tuple<std.UInt, Bool> {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2settingsframe_static_extension.T_http2SettingsFrame_static_extension.value(_f, _id);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function isAck(_f:T_http2SettingsFrame):Bool {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>);
        return stdgo._internal.net.http.Http_t_http2settingsframe_static_extension.T_http2SettingsFrame_static_extension.isAck(_f);
    }
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame, _0:stdgo._internal.bytes.Bytes_buffer.Buffer):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        stdgo._internal.net.http.Http_t_http2settingsframe_static_extension.T_http2SettingsFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame):Void {
        stdgo._internal.net.http.Http_t_http2settingsframe_static_extension.T_http2SettingsFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame):Void {
        stdgo._internal.net.http.Http_t_http2settingsframe_static_extension.T_http2SettingsFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame):String {
        return stdgo._internal.net.http.Http_t_http2settingsframe_static_extension.T_http2SettingsFrame_static_extension.string(__self__);
    }
    public static function header(__self__:stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_t_http2settingsframe_static_extension.T_http2SettingsFrame_static_extension.header(__self__);
    }
}
@:dox(hide) typedef T_http2PingFramePointer = stdgo._internal.net.http.Http_t_http2pingframepointer.T_http2PingFramePointer;
@:dox(hide) class T_http2PingFrame_static_extension {
    static public function isAck(_f:T_http2PingFrame):Bool {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame>);
        return stdgo._internal.net.http.Http_t_http2pingframe_static_extension.T_http2PingFrame_static_extension.isAck(_f);
    }
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame, _0:stdgo._internal.bytes.Bytes_buffer.Buffer):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        stdgo._internal.net.http.Http_t_http2pingframe_static_extension.T_http2PingFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame):Void {
        stdgo._internal.net.http.Http_t_http2pingframe_static_extension.T_http2PingFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame):Void {
        stdgo._internal.net.http.Http_t_http2pingframe_static_extension.T_http2PingFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame):String {
        return stdgo._internal.net.http.Http_t_http2pingframe_static_extension.T_http2PingFrame_static_extension.string(__self__);
    }
    public static function header(__self__:stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_t_http2pingframe_static_extension.T_http2PingFrame_static_extension.header(__self__);
    }
}
@:dox(hide) typedef T_http2GoAwayFramePointer = stdgo._internal.net.http.Http_t_http2goawayframepointer.T_http2GoAwayFramePointer;
@:dox(hide) class T_http2GoAwayFrame_static_extension {
    static public function debugData(_f:T_http2GoAwayFrame):Array<std.UInt> {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame>);
        return [for (i in stdgo._internal.net.http.Http_t_http2goawayframe_static_extension.T_http2GoAwayFrame_static_extension.debugData(_f)) i];
    }
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame, _0:stdgo._internal.bytes.Bytes_buffer.Buffer):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        stdgo._internal.net.http.Http_t_http2goawayframe_static_extension.T_http2GoAwayFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame):Void {
        stdgo._internal.net.http.Http_t_http2goawayframe_static_extension.T_http2GoAwayFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame):Void {
        stdgo._internal.net.http.Http_t_http2goawayframe_static_extension.T_http2GoAwayFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame):String {
        return stdgo._internal.net.http.Http_t_http2goawayframe_static_extension.T_http2GoAwayFrame_static_extension.string(__self__);
    }
    public static function header(__self__:stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_t_http2goawayframe_static_extension.T_http2GoAwayFrame_static_extension.header(__self__);
    }
}
@:dox(hide) typedef T_http2UnknownFramePointer = stdgo._internal.net.http.Http_t_http2unknownframepointer.T_http2UnknownFramePointer;
@:dox(hide) class T_http2UnknownFrame_static_extension {
    static public function payload(_f:T_http2UnknownFrame):Array<std.UInt> {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2unknownframe.T_http2UnknownFrame>);
        return [for (i in stdgo._internal.net.http.Http_t_http2unknownframe_static_extension.T_http2UnknownFrame_static_extension.payload(_f)) i];
    }
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_t_http2unknownframe.T_http2UnknownFrame, _0:stdgo._internal.bytes.Bytes_buffer.Buffer):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        stdgo._internal.net.http.Http_t_http2unknownframe_static_extension.T_http2UnknownFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_t_http2unknownframe.T_http2UnknownFrame):Void {
        stdgo._internal.net.http.Http_t_http2unknownframe_static_extension.T_http2UnknownFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_t_http2unknownframe.T_http2UnknownFrame):Void {
        stdgo._internal.net.http.Http_t_http2unknownframe_static_extension.T_http2UnknownFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_t_http2unknownframe.T_http2UnknownFrame):String {
        return stdgo._internal.net.http.Http_t_http2unknownframe_static_extension.T_http2UnknownFrame_static_extension.string(__self__);
    }
    public static function header(__self__:stdgo._internal.net.http.Http_t_http2unknownframe.T_http2UnknownFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_t_http2unknownframe_static_extension.T_http2UnknownFrame_static_extension.header(__self__);
    }
}
@:dox(hide) typedef T_http2WindowUpdateFramePointer = stdgo._internal.net.http.Http_t_http2windowupdateframepointer.T_http2WindowUpdateFramePointer;
@:dox(hide) class T_http2WindowUpdateFrame_static_extension {
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_t_http2windowupdateframe.T_http2WindowUpdateFrame, _0:stdgo._internal.bytes.Bytes_buffer.Buffer):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        stdgo._internal.net.http.Http_t_http2windowupdateframe_static_extension.T_http2WindowUpdateFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_t_http2windowupdateframe.T_http2WindowUpdateFrame):Void {
        stdgo._internal.net.http.Http_t_http2windowupdateframe_static_extension.T_http2WindowUpdateFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_t_http2windowupdateframe.T_http2WindowUpdateFrame):Void {
        stdgo._internal.net.http.Http_t_http2windowupdateframe_static_extension.T_http2WindowUpdateFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_t_http2windowupdateframe.T_http2WindowUpdateFrame):String {
        return stdgo._internal.net.http.Http_t_http2windowupdateframe_static_extension.T_http2WindowUpdateFrame_static_extension.string(__self__);
    }
    public static function header(__self__:stdgo._internal.net.http.Http_t_http2windowupdateframe.T_http2WindowUpdateFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_t_http2windowupdateframe_static_extension.T_http2WindowUpdateFrame_static_extension.header(__self__);
    }
}
@:dox(hide) typedef T_http2HeadersFramePointer = stdgo._internal.net.http.Http_t_http2headersframepointer.T_http2HeadersFramePointer;
@:dox(hide) class T_http2HeadersFrame_static_extension {
    static public function hasPriority(_f:T_http2HeadersFrame):Bool {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2headersframe.T_http2HeadersFrame>);
        return stdgo._internal.net.http.Http_t_http2headersframe_static_extension.T_http2HeadersFrame_static_extension.hasPriority(_f);
    }
    static public function streamEnded(_f:T_http2HeadersFrame):Bool {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2headersframe.T_http2HeadersFrame>);
        return stdgo._internal.net.http.Http_t_http2headersframe_static_extension.T_http2HeadersFrame_static_extension.streamEnded(_f);
    }
    static public function headersEnded(_f:T_http2HeadersFrame):Bool {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2headersframe.T_http2HeadersFrame>);
        return stdgo._internal.net.http.Http_t_http2headersframe_static_extension.T_http2HeadersFrame_static_extension.headersEnded(_f);
    }
    static public function headerBlockFragment(_f:T_http2HeadersFrame):Array<std.UInt> {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2headersframe.T_http2HeadersFrame>);
        return [for (i in stdgo._internal.net.http.Http_t_http2headersframe_static_extension.T_http2HeadersFrame_static_extension.headerBlockFragment(_f)) i];
    }
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_t_http2headersframe.T_http2HeadersFrame, _0:stdgo._internal.bytes.Bytes_buffer.Buffer):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        stdgo._internal.net.http.Http_t_http2headersframe_static_extension.T_http2HeadersFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_t_http2headersframe.T_http2HeadersFrame):Void {
        stdgo._internal.net.http.Http_t_http2headersframe_static_extension.T_http2HeadersFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_t_http2headersframe.T_http2HeadersFrame):Void {
        stdgo._internal.net.http.Http_t_http2headersframe_static_extension.T_http2HeadersFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_t_http2headersframe.T_http2HeadersFrame):String {
        return stdgo._internal.net.http.Http_t_http2headersframe_static_extension.T_http2HeadersFrame_static_extension.string(__self__);
    }
    public static function header(__self__:stdgo._internal.net.http.Http_t_http2headersframe.T_http2HeadersFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_t_http2headersframe_static_extension.T_http2HeadersFrame_static_extension.header(__self__);
    }
}
@:dox(hide) typedef T_http2HeadersFrameParamPointer = stdgo._internal.net.http.Http_t_http2headersframeparampointer.T_http2HeadersFrameParamPointer;
@:dox(hide) class T_http2HeadersFrameParam_static_extension {

}
@:dox(hide) typedef T_http2PriorityFramePointer = stdgo._internal.net.http.Http_t_http2priorityframepointer.T_http2PriorityFramePointer;
@:dox(hide) class T_http2PriorityFrame_static_extension {
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_t_http2priorityframe.T_http2PriorityFrame, _0:stdgo._internal.bytes.Bytes_buffer.Buffer):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        stdgo._internal.net.http.Http_t_http2priorityframe_static_extension.T_http2PriorityFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_t_http2priorityframe.T_http2PriorityFrame):Void {
        stdgo._internal.net.http.Http_t_http2priorityframe_static_extension.T_http2PriorityFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_t_http2priorityframe.T_http2PriorityFrame):Void {
        stdgo._internal.net.http.Http_t_http2priorityframe_static_extension.T_http2PriorityFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_t_http2priorityframe.T_http2PriorityFrame):String {
        return stdgo._internal.net.http.Http_t_http2priorityframe_static_extension.T_http2PriorityFrame_static_extension.string(__self__);
    }
    public static function isZero(__self__:stdgo._internal.net.http.Http_t_http2priorityframe.T_http2PriorityFrame):Bool {
        return stdgo._internal.net.http.Http_t_http2priorityframe_static_extension.T_http2PriorityFrame_static_extension.isZero(__self__);
    }
    public static function header(__self__:stdgo._internal.net.http.Http_t_http2priorityframe.T_http2PriorityFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_t_http2priorityframe_static_extension.T_http2PriorityFrame_static_extension.header(__self__);
    }
}
@:dox(hide) typedef T_http2PriorityParamPointer = stdgo._internal.net.http.Http_t_http2priorityparampointer.T_http2PriorityParamPointer;
@:dox(hide) class T_http2PriorityParam_static_extension {
    static public function isZero(_p:T_http2PriorityParam):Bool {
        return stdgo._internal.net.http.Http_t_http2priorityparam_static_extension.T_http2PriorityParam_static_extension.isZero(_p);
    }
}
@:dox(hide) typedef T_http2RSTStreamFramePointer = stdgo._internal.net.http.Http_t_http2rststreamframepointer.T_http2RSTStreamFramePointer;
@:dox(hide) class T_http2RSTStreamFrame_static_extension {
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_t_http2rststreamframe.T_http2RSTStreamFrame, _0:stdgo._internal.bytes.Bytes_buffer.Buffer):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        stdgo._internal.net.http.Http_t_http2rststreamframe_static_extension.T_http2RSTStreamFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_t_http2rststreamframe.T_http2RSTStreamFrame):Void {
        stdgo._internal.net.http.Http_t_http2rststreamframe_static_extension.T_http2RSTStreamFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_t_http2rststreamframe.T_http2RSTStreamFrame):Void {
        stdgo._internal.net.http.Http_t_http2rststreamframe_static_extension.T_http2RSTStreamFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_t_http2rststreamframe.T_http2RSTStreamFrame):String {
        return stdgo._internal.net.http.Http_t_http2rststreamframe_static_extension.T_http2RSTStreamFrame_static_extension.string(__self__);
    }
    public static function header(__self__:stdgo._internal.net.http.Http_t_http2rststreamframe.T_http2RSTStreamFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_t_http2rststreamframe_static_extension.T_http2RSTStreamFrame_static_extension.header(__self__);
    }
}
@:dox(hide) typedef T_http2ContinuationFramePointer = stdgo._internal.net.http.Http_t_http2continuationframepointer.T_http2ContinuationFramePointer;
@:dox(hide) class T_http2ContinuationFrame_static_extension {
    static public function headersEnded(_f:T_http2ContinuationFrame):Bool {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2continuationframe.T_http2ContinuationFrame>);
        return stdgo._internal.net.http.Http_t_http2continuationframe_static_extension.T_http2ContinuationFrame_static_extension.headersEnded(_f);
    }
    static public function headerBlockFragment(_f:T_http2ContinuationFrame):Array<std.UInt> {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2continuationframe.T_http2ContinuationFrame>);
        return [for (i in stdgo._internal.net.http.Http_t_http2continuationframe_static_extension.T_http2ContinuationFrame_static_extension.headerBlockFragment(_f)) i];
    }
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_t_http2continuationframe.T_http2ContinuationFrame, _0:stdgo._internal.bytes.Bytes_buffer.Buffer):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        stdgo._internal.net.http.Http_t_http2continuationframe_static_extension.T_http2ContinuationFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_t_http2continuationframe.T_http2ContinuationFrame):Void {
        stdgo._internal.net.http.Http_t_http2continuationframe_static_extension.T_http2ContinuationFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_t_http2continuationframe.T_http2ContinuationFrame):Void {
        stdgo._internal.net.http.Http_t_http2continuationframe_static_extension.T_http2ContinuationFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_t_http2continuationframe.T_http2ContinuationFrame):String {
        return stdgo._internal.net.http.Http_t_http2continuationframe_static_extension.T_http2ContinuationFrame_static_extension.string(__self__);
    }
    public static function header(__self__:stdgo._internal.net.http.Http_t_http2continuationframe.T_http2ContinuationFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_t_http2continuationframe_static_extension.T_http2ContinuationFrame_static_extension.header(__self__);
    }
}
@:dox(hide) typedef T_http2PushPromiseFramePointer = stdgo._internal.net.http.Http_t_http2pushpromiseframepointer.T_http2PushPromiseFramePointer;
@:dox(hide) class T_http2PushPromiseFrame_static_extension {
    static public function headersEnded(_f:T_http2PushPromiseFrame):Bool {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pushpromiseframe.T_http2PushPromiseFrame>);
        return stdgo._internal.net.http.Http_t_http2pushpromiseframe_static_extension.T_http2PushPromiseFrame_static_extension.headersEnded(_f);
    }
    static public function headerBlockFragment(_f:T_http2PushPromiseFrame):Array<std.UInt> {
        final _f = (_f : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pushpromiseframe.T_http2PushPromiseFrame>);
        return [for (i in stdgo._internal.net.http.Http_t_http2pushpromiseframe_static_extension.T_http2PushPromiseFrame_static_extension.headerBlockFragment(_f)) i];
    }
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_t_http2pushpromiseframe.T_http2PushPromiseFrame, _0:stdgo._internal.bytes.Bytes_buffer.Buffer):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        stdgo._internal.net.http.Http_t_http2pushpromiseframe_static_extension.T_http2PushPromiseFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_t_http2pushpromiseframe.T_http2PushPromiseFrame):Void {
        stdgo._internal.net.http.Http_t_http2pushpromiseframe_static_extension.T_http2PushPromiseFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_t_http2pushpromiseframe.T_http2PushPromiseFrame):Void {
        stdgo._internal.net.http.Http_t_http2pushpromiseframe_static_extension.T_http2PushPromiseFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_t_http2pushpromiseframe.T_http2PushPromiseFrame):String {
        return stdgo._internal.net.http.Http_t_http2pushpromiseframe_static_extension.T_http2PushPromiseFrame_static_extension.string(__self__);
    }
    public static function header(__self__:stdgo._internal.net.http.Http_t_http2pushpromiseframe.T_http2PushPromiseFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_t_http2pushpromiseframe_static_extension.T_http2PushPromiseFrame_static_extension.header(__self__);
    }
}
@:dox(hide) typedef T_http2PushPromiseParamPointer = stdgo._internal.net.http.Http_t_http2pushpromiseparampointer.T_http2PushPromiseParamPointer;
@:dox(hide) class T_http2PushPromiseParam_static_extension {

}
@:dox(hide) typedef T_http2MetaHeadersFramePointer = stdgo._internal.net.http.Http_t_http2metaheadersframepointer.T_http2MetaHeadersFramePointer;
@:dox(hide) class T_http2MetaHeadersFrame_static_extension {
    static public function pseudoFields(_mh:T_http2MetaHeadersFrame):Array<vendor.golang_dot_org.x.net.http2.hpack.Hpack.HeaderField> {
        final _mh = (_mh : stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>);
        return [for (i in stdgo._internal.net.http.Http_t_http2metaheadersframe_static_extension.T_http2MetaHeadersFrame_static_extension.pseudoFields(_mh)) i];
    }
    static public function regularFields(_mh:T_http2MetaHeadersFrame):Array<vendor.golang_dot_org.x.net.http2.hpack.Hpack.HeaderField> {
        final _mh = (_mh : stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>);
        return [for (i in stdgo._internal.net.http.Http_t_http2metaheadersframe_static_extension.T_http2MetaHeadersFrame_static_extension.regularFields(_mh)) i];
    }
    static public function pseudoValue(_mh:T_http2MetaHeadersFrame, _pseudo:String):String {
        final _mh = (_mh : stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>);
        final _pseudo = (_pseudo : stdgo.GoString);
        return stdgo._internal.net.http.Http_t_http2metaheadersframe_static_extension.T_http2MetaHeadersFrame_static_extension.pseudoValue(_mh, _pseudo);
    }
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame, _0:stdgo._internal.bytes.Bytes_buffer.Buffer):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        stdgo._internal.net.http.Http_t_http2metaheadersframe_static_extension.T_http2MetaHeadersFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame):Void {
        stdgo._internal.net.http.Http_t_http2metaheadersframe_static_extension.T_http2MetaHeadersFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame):Void {
        stdgo._internal.net.http.Http_t_http2metaheadersframe_static_extension.T_http2MetaHeadersFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame):String {
        return stdgo._internal.net.http.Http_t_http2metaheadersframe_static_extension.T_http2MetaHeadersFrame_static_extension.string(__self__);
    }
    public static function streamEnded(__self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame):Bool {
        return stdgo._internal.net.http.Http_t_http2metaheadersframe_static_extension.T_http2MetaHeadersFrame_static_extension.streamEnded(__self__);
    }
    public static function headersEnded(__self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame):Bool {
        return stdgo._internal.net.http.Http_t_http2metaheadersframe_static_extension.T_http2MetaHeadersFrame_static_extension.headersEnded(__self__);
    }
    public static function headerBlockFragment(__self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame):Array<std.UInt> {
        return [for (i in stdgo._internal.net.http.Http_t_http2metaheadersframe_static_extension.T_http2MetaHeadersFrame_static_extension.headerBlockFragment(__self__)) i];
    }
    public static function header(__self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_t_http2metaheadersframe_static_extension.T_http2MetaHeadersFrame_static_extension.header(__self__);
    }
    public static function hasPriority(__self__:stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame):Bool {
        return stdgo._internal.net.http.Http_t_http2metaheadersframe_static_extension.T_http2MetaHeadersFrame_static_extension.hasPriority(__self__);
    }
}
@:dox(hide) typedef T_http2SettingPointer = stdgo._internal.net.http.Http_t_http2settingpointer.T_http2SettingPointer;
@:dox(hide) class T_http2Setting_static_extension {
    static public function valid(_s:T_http2Setting):stdgo.Error {
        return stdgo._internal.net.http.Http_t_http2setting_static_extension.T_http2Setting_static_extension.valid(_s);
    }
    static public function string(_s:T_http2Setting):String {
        return stdgo._internal.net.http.Http_t_http2setting_static_extension.T_http2Setting_static_extension.string(_s);
    }
}
@:dox(hide) typedef T_http2bufferedWriterPointer = stdgo._internal.net.http.Http_t_http2bufferedwriterpointer.T_http2bufferedWriterPointer;
@:dox(hide) class T_http2bufferedWriter_static_extension {
    static public function flush(_w:T_http2bufferedWriter):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_t_http2bufferedwriter.T_http2bufferedWriter>);
        return stdgo._internal.net.http.Http_t_http2bufferedwriter_static_extension.T_http2bufferedWriter_static_extension.flush(_w);
    }
    static public function write(_w:T_http2bufferedWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_t_http2bufferedwriter.T_http2bufferedWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2bufferedwriter_static_extension.T_http2bufferedWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function available(_w:T_http2bufferedWriter):StdTypes.Int {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_t_http2bufferedwriter.T_http2bufferedWriter>);
        return stdgo._internal.net.http.Http_t_http2bufferedwriter_static_extension.T_http2bufferedWriter_static_extension.available(_w);
    }
}
@:dox(hide) typedef T_http2httpErrorPointer = stdgo._internal.net.http.Http_t_http2httperrorpointer.T_http2httpErrorPointer;
@:dox(hide) class T_http2httpError_static_extension {
    static public function temporary(_e:T_http2httpError):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.http.Http_t_http2httperror.T_http2httpError>);
        return stdgo._internal.net.http.Http_t_http2httperror_static_extension.T_http2httpError_static_extension.temporary(_e);
    }
    static public function timeout(_e:T_http2httpError):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.http.Http_t_http2httperror.T_http2httpError>);
        return stdgo._internal.net.http.Http_t_http2httperror_static_extension.T_http2httpError_static_extension.timeout(_e);
    }
    static public function error(_e:T_http2httpError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.http.Http_t_http2httperror.T_http2httpError>);
        return stdgo._internal.net.http.Http_t_http2httperror_static_extension.T_http2httpError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_http2sorterPointer = stdgo._internal.net.http.Http_t_http2sorterpointer.T_http2sorterPointer;
@:dox(hide) class T_http2sorter_static_extension {
    static public function sortStrings(_s:T_http2sorter, _ss:Array<String>):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter>);
        final _ss = ([for (i in _ss) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.net.http.Http_t_http2sorter_static_extension.T_http2sorter_static_extension.sortStrings(_s, _ss);
    }
    static public function keys(_s:T_http2sorter, _h:Header):Array<String> {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter>);
        return [for (i in stdgo._internal.net.http.Http_t_http2sorter_static_extension.T_http2sorter_static_extension.keys(_s, _h)) i];
    }
    static public function less(_s:T_http2sorter, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter>);
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.net.http.Http_t_http2sorter_static_extension.T_http2sorter_static_extension.less(_s, _i, _j);
    }
    static public function swap(_s:T_http2sorter, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter>);
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.net.http.Http_t_http2sorter_static_extension.T_http2sorter_static_extension.swap(_s, _i, _j);
    }
    static public function len(_s:T_http2sorter):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter>);
        return stdgo._internal.net.http.Http_t_http2sorter_static_extension.T_http2sorter_static_extension.len(_s);
    }
}
@:dox(hide) typedef T_http2pipePointer = stdgo._internal.net.http.Http_t_http2pipepointer.T_http2pipePointer;
@:dox(hide) class T_http2pipe_static_extension {
    static public function done(_p:T_http2pipe):stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>);
        return stdgo._internal.net.http.Http_t_http2pipe_static_extension.T_http2pipe_static_extension.done(_p);
    }
    static public function err(_p:T_http2pipe):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>);
        return stdgo._internal.net.http.Http_t_http2pipe_static_extension.T_http2pipe_static_extension.err(_p);
    }
    static public function breakWithError(_p:T_http2pipe, _err:stdgo.Error):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.net.http.Http_t_http2pipe_static_extension.T_http2pipe_static_extension.breakWithError(_p, _err);
    }
    static public function closeWithError(_p:T_http2pipe, _err:stdgo.Error):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.net.http.Http_t_http2pipe_static_extension.T_http2pipe_static_extension.closeWithError(_p, _err);
    }
    static public function write(_p:T_http2pipe, _d:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>);
        final _d = ([for (i in _d) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2pipe_static_extension.T_http2pipe_static_extension.write(_p, _d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_p:T_http2pipe, _d:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>);
        final _d = ([for (i in _d) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2pipe_static_extension.T_http2pipe_static_extension.read(_p, _d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function len(_p:T_http2pipe):StdTypes.Int {
        final _p = (_p : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>);
        return stdgo._internal.net.http.Http_t_http2pipe_static_extension.T_http2pipe_static_extension.len(_p);
    }
}
@:dox(hide) typedef T_http2ServerPointer = stdgo._internal.net.http.Http_t_http2serverpointer.T_http2ServerPointer;
@:dox(hide) class T_http2Server_static_extension {
    static public function serveConn(_s:T_http2Server, _c:stdgo._internal.net.Net_conn.Conn, _opts:T_http2ServeConnOpts):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.Http_t_http2server.T_http2Server>);
        final _opts = (_opts : stdgo.Ref<stdgo._internal.net.http.Http_t_http2serveconnopts.T_http2ServeConnOpts>);
        stdgo._internal.net.http.Http_t_http2server_static_extension.T_http2Server_static_extension.serveConn(_s, _c, _opts);
    }
}
@:dox(hide) typedef T_http2serverInternalStatePointer = stdgo._internal.net.http.Http_t_http2serverinternalstatepointer.T_http2serverInternalStatePointer;
@:dox(hide) class T_http2serverInternalState_static_extension {

}
@:dox(hide) typedef T_http2ServeConnOptsPointer = stdgo._internal.net.http.Http_t_http2serveconnoptspointer.T_http2ServeConnOptsPointer;
@:dox(hide) class T_http2ServeConnOpts_static_extension {

}
@:dox(hide) typedef T_http2serverConnPointer = stdgo._internal.net.http.Http_t_http2serverconnpointer.T_http2serverConnPointer;
@:dox(hide) class T_http2serverConn_static_extension {
    static public function headerEncoder(_sc:T_http2serverConn):stdgo.Tuple<vendor.golang_dot_org.x.net.http2.hpack.Hpack.Encoder, stdgo._internal.bytes.Bytes_buffer.Buffer> {
        final _sc = (_sc : stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2serverconn_static_extension.T_http2serverConn_static_extension.headerEncoder(_sc);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function flush(_sc:T_http2serverConn):stdgo.Error {
        final _sc = (_sc : stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>);
        return stdgo._internal.net.http.Http_t_http2serverconn_static_extension.T_http2serverConn_static_extension.flush(_sc);
    }
    static public function closeConn(_sc:T_http2serverConn):stdgo.Error {
        final _sc = (_sc : stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>);
        return stdgo._internal.net.http.Http_t_http2serverconn_static_extension.T_http2serverConn_static_extension.closeConn(_sc);
    }
    static public function framer(_sc:T_http2serverConn):T_http2Framer {
        final _sc = (_sc : stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>);
        return stdgo._internal.net.http.Http_t_http2serverconn_static_extension.T_http2serverConn_static_extension.framer(_sc);
    }
}
@:dox(hide) typedef T_http2streamPointer = stdgo._internal.net.http.Http_t_http2streampointer.T_http2streamPointer;
@:dox(hide) class T_http2stream_static_extension {

}
@:dox(hide) typedef T_http2readFrameResultPointer = stdgo._internal.net.http.Http_t_http2readframeresultpointer.T_http2readFrameResultPointer;
@:dox(hide) class T_http2readFrameResult_static_extension {

}
@:dox(hide) typedef T_http2frameWriteResultPointer = stdgo._internal.net.http.Http_t_http2framewriteresultpointer.T_http2frameWriteResultPointer;
@:dox(hide) class T_http2frameWriteResult_static_extension {

}
@:dox(hide) typedef T_http2requestParamPointer = stdgo._internal.net.http.Http_t_http2requestparampointer.T_http2requestParamPointer;
@:dox(hide) class T_http2requestParam_static_extension {

}
@:dox(hide) typedef T_http2unstartedHandlerPointer = stdgo._internal.net.http.Http_t_http2unstartedhandlerpointer.T_http2unstartedHandlerPointer;
@:dox(hide) class T_http2unstartedHandler_static_extension {

}
@:dox(hide) typedef T_http2bodyReadMsgPointer = stdgo._internal.net.http.Http_t_http2bodyreadmsgpointer.T_http2bodyReadMsgPointer;
@:dox(hide) class T_http2bodyReadMsg_static_extension {

}
@:dox(hide) typedef T_http2requestBodyPointer = stdgo._internal.net.http.Http_t_http2requestbodypointer.T_http2requestBodyPointer;
@:dox(hide) class T_http2requestBody_static_extension {
    static public function read(_b:T_http2requestBody, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.net.http.Http_t_http2requestbody.T_http2requestBody>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2requestbody_static_extension.T_http2requestBody_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_b:T_http2requestBody):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.net.http.Http_t_http2requestbody.T_http2requestBody>);
        return stdgo._internal.net.http.Http_t_http2requestbody_static_extension.T_http2requestBody_static_extension.close(_b);
    }
}
@:dox(hide) typedef T_http2responseWriterPointer = stdgo._internal.net.http.Http_t_http2responsewriterpointer.T_http2responseWriterPointer;
@:dox(hide) class T_http2responseWriter_static_extension {
    static public function push(_w:T_http2responseWriter, _target:String, _opts:PushOptions):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>);
        final _target = (_target : stdgo.GoString);
        final _opts = (_opts : stdgo.Ref<stdgo._internal.net.http.Http_pushoptions.PushOptions>);
        return stdgo._internal.net.http.Http_t_http2responsewriter_static_extension.T_http2responseWriter_static_extension.push(_w, _target, _opts);
    }
    static public function writeString(_w:T_http2responseWriter, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2responsewriter_static_extension.T_http2responseWriter_static_extension.writeString(_w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_w:T_http2responseWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2responsewriter_static_extension.T_http2responseWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeHeader(_w:T_http2responseWriter, _code:StdTypes.Int):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>);
        final _code = (_code : stdgo.GoInt);
        stdgo._internal.net.http.Http_t_http2responsewriter_static_extension.T_http2responseWriter_static_extension.writeHeader(_w, _code);
    }
    static public function header(_w:T_http2responseWriter):Header {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>);
        return stdgo._internal.net.http.Http_t_http2responsewriter_static_extension.T_http2responseWriter_static_extension.header(_w);
    }
    static public function closeNotify(_w:T_http2responseWriter):stdgo.Chan<Bool> {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>);
        return stdgo._internal.net.http.Http_t_http2responsewriter_static_extension.T_http2responseWriter_static_extension.closeNotify(_w);
    }
    static public function flushError(_w:T_http2responseWriter):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>);
        return stdgo._internal.net.http.Http_t_http2responsewriter_static_extension.T_http2responseWriter_static_extension.flushError(_w);
    }
    static public function flush(_w:T_http2responseWriter):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>);
        stdgo._internal.net.http.Http_t_http2responsewriter_static_extension.T_http2responseWriter_static_extension.flush(_w);
    }
    static public function setWriteDeadline(_w:T_http2responseWriter, _deadline:stdgo._internal.time.Time_time.Time):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>);
        return stdgo._internal.net.http.Http_t_http2responsewriter_static_extension.T_http2responseWriter_static_extension.setWriteDeadline(_w, _deadline);
    }
    static public function setReadDeadline(_w:T_http2responseWriter, _deadline:stdgo._internal.time.Time_time.Time):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>);
        return stdgo._internal.net.http.Http_t_http2responsewriter_static_extension.T_http2responseWriter_static_extension.setReadDeadline(_w, _deadline);
    }
}
@:dox(hide) typedef T_http2responseWriterStatePointer = stdgo._internal.net.http.Http_t_http2responsewriterstatepointer.T_http2responseWriterStatePointer;
@:dox(hide) class T_http2responseWriterState_static_extension {

}
@:dox(hide) typedef T_http2chunkWriterPointer = stdgo._internal.net.http.Http_t_http2chunkwriterpointer.T_http2chunkWriterPointer;
@:dox(hide) class T_http2chunkWriter_static_extension {
    static public function write(_cw:T_http2chunkWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2chunkwriter_static_extension.T_http2chunkWriter_static_extension.write(_cw, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_http2startPushRequestPointer = stdgo._internal.net.http.Http_t_http2startpushrequestpointer.T_http2startPushRequestPointer;
@:dox(hide) class T_http2startPushRequest_static_extension {

}
@:dox(hide) typedef T_http2TransportPointer = stdgo._internal.net.http.Http_t_http2transportpointer.T_http2TransportPointer;
@:dox(hide) class T_http2Transport_static_extension {
    static public function newClientConn(_t:T_http2Transport, _c:stdgo._internal.net.Net_conn.Conn):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2transport_static_extension.T_http2Transport_static_extension.newClientConn(_t, _c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function closeIdleConnections(_t:T_http2Transport):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>);
        stdgo._internal.net.http.Http_t_http2transport_static_extension.T_http2Transport_static_extension.closeIdleConnections(_t);
    }
    static public function roundTripOpt(_t:T_http2Transport, _req:Request, _opt:T_http2RoundTripOpt):stdgo.Tuple<Response, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2transport_static_extension.T_http2Transport_static_extension.roundTripOpt(_t, _req, _opt);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function roundTrip(_t:T_http2Transport, _req:Request):stdgo.Tuple<Response, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2transport_static_extension.T_http2Transport_static_extension.roundTrip(_t, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_http2ClientConnPointer = stdgo._internal.net.http.Http_t_http2clientconnpointer.T_http2ClientConnPointer;
@:dox(hide) class T_http2ClientConn_static_extension {
    static public function ping(_cc:T_http2ClientConn, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        final _cc = (_cc : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>);
        return stdgo._internal.net.http.Http_t_http2clientconn_static_extension.T_http2ClientConn_static_extension.ping(_cc, _ctx);
    }
    static public function roundTrip(_cc:T_http2ClientConn, _req:Request):stdgo.Tuple<Response, stdgo.Error> {
        final _cc = (_cc : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2clientconn_static_extension.T_http2ClientConn_static_extension.roundTrip(_cc, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_cc:T_http2ClientConn):stdgo.Error {
        final _cc = (_cc : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>);
        return stdgo._internal.net.http.Http_t_http2clientconn_static_extension.T_http2ClientConn_static_extension.close(_cc);
    }
    static public function shutdown(_cc:T_http2ClientConn, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        final _cc = (_cc : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>);
        return stdgo._internal.net.http.Http_t_http2clientconn_static_extension.T_http2ClientConn_static_extension.shutdown(_cc, _ctx);
    }
    static public function state(_cc:T_http2ClientConn):T_http2ClientConnState {
        final _cc = (_cc : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>);
        return stdgo._internal.net.http.Http_t_http2clientconn_static_extension.T_http2ClientConn_static_extension.state(_cc);
    }
    static public function reserveNewRequest(_cc:T_http2ClientConn):Bool {
        final _cc = (_cc : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>);
        return stdgo._internal.net.http.Http_t_http2clientconn_static_extension.T_http2ClientConn_static_extension.reserveNewRequest(_cc);
    }
    static public function canTakeNewRequest(_cc:T_http2ClientConn):Bool {
        final _cc = (_cc : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>);
        return stdgo._internal.net.http.Http_t_http2clientconn_static_extension.T_http2ClientConn_static_extension.canTakeNewRequest(_cc);
    }
    static public function setDoNotReuse(_cc:T_http2ClientConn):Void {
        final _cc = (_cc : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>);
        stdgo._internal.net.http.Http_t_http2clientconn_static_extension.T_http2ClientConn_static_extension.setDoNotReuse(_cc);
    }
}
@:dox(hide) typedef T_http2clientStreamPointer = stdgo._internal.net.http.Http_t_http2clientstreampointer.T_http2clientStreamPointer;
@:dox(hide) class T_http2clientStream_static_extension {

}
@:dox(hide) typedef T_http2stickyErrWriterPointer = stdgo._internal.net.http.Http_t_http2stickyerrwriterpointer.T_http2stickyErrWriterPointer;
@:dox(hide) class T_http2stickyErrWriter_static_extension {
    static public function write(_sew:T_http2stickyErrWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2stickyerrwriter_static_extension.T_http2stickyErrWriter_static_extension.write(_sew, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_http2noCachedConnErrorPointer = stdgo._internal.net.http.Http_t_http2nocachedconnerrorpointer.T_http2noCachedConnErrorPointer;
@:dox(hide) class T_http2noCachedConnError_static_extension {
    static public function error(_:T_http2noCachedConnError):String {
        return stdgo._internal.net.http.Http_t_http2nocachedconnerror_static_extension.T_http2noCachedConnError_static_extension.error(_);
    }
    static public function isHTTP2NoCachedConnError(_:T_http2noCachedConnError):Void {
        stdgo._internal.net.http.Http_t_http2nocachedconnerror_static_extension.T_http2noCachedConnError_static_extension.isHTTP2NoCachedConnError(_);
    }
}
@:dox(hide) typedef T_http2RoundTripOptPointer = stdgo._internal.net.http.Http_t_http2roundtripoptpointer.T_http2RoundTripOptPointer;
@:dox(hide) class T_http2RoundTripOpt_static_extension {

}
@:dox(hide) typedef T_http2ClientConnStatePointer = stdgo._internal.net.http.Http_t_http2clientconnstatepointer.T_http2ClientConnStatePointer;
@:dox(hide) class T_http2ClientConnState_static_extension {

}
@:dox(hide) typedef T_http2clientConnIdleStatePointer = stdgo._internal.net.http.Http_t_http2clientconnidlestatepointer.T_http2clientConnIdleStatePointer;
@:dox(hide) class T_http2clientConnIdleState_static_extension {

}
@:dox(hide) typedef T_http2resAndErrorPointer = stdgo._internal.net.http.Http_t_http2resanderrorpointer.T_http2resAndErrorPointer;
@:dox(hide) class T_http2resAndError_static_extension {

}
@:dox(hide) typedef T_http2clientConnReadLoopPointer = stdgo._internal.net.http.Http_t_http2clientconnreadlooppointer.T_http2clientConnReadLoopPointer;
@:dox(hide) class T_http2clientConnReadLoop_static_extension {

}
@:dox(hide) typedef T_http2GoAwayErrorPointer = stdgo._internal.net.http.Http_t_http2goawayerrorpointer.T_http2GoAwayErrorPointer;
@:dox(hide) class T_http2GoAwayError_static_extension {
    static public function error(_e:T_http2GoAwayError):String {
        return stdgo._internal.net.http.Http_t_http2goawayerror_static_extension.T_http2GoAwayError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_http2transportResponseBodyPointer = stdgo._internal.net.http.Http_t_http2transportresponsebodypointer.T_http2transportResponseBodyPointer;
@:dox(hide) class T_http2transportResponseBody_static_extension {
    static public function close(_b:T_http2transportResponseBody):stdgo.Error {
        return stdgo._internal.net.http.Http_t_http2transportresponsebody_static_extension.T_http2transportResponseBody_static_extension.close(_b);
    }
    static public function read(_b:T_http2transportResponseBody, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2transportresponsebody_static_extension.T_http2transportResponseBody_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_http2noBodyReaderPointer = stdgo._internal.net.http.Http_t_http2nobodyreaderpointer.T_http2noBodyReaderPointer;
@:dox(hide) class T_http2noBodyReader_static_extension {
    static public function read(_:T_http2noBodyReader, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2nobodyreader_static_extension.T_http2noBodyReader_static_extension.read(_, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_:T_http2noBodyReader):stdgo.Error {
        return stdgo._internal.net.http.Http_t_http2nobodyreader_static_extension.T_http2noBodyReader_static_extension.close(_);
    }
}
@:dox(hide) typedef T_http2missingBodyPointer = stdgo._internal.net.http.Http_t_http2missingbodypointer.T_http2missingBodyPointer;
@:dox(hide) class T_http2missingBody_static_extension {
    static public function read(_:T_http2missingBody, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2missingbody_static_extension.T_http2missingBody_static_extension.read(_, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_:T_http2missingBody):stdgo.Error {
        return stdgo._internal.net.http.Http_t_http2missingbody_static_extension.T_http2missingBody_static_extension.close(_);
    }
}
@:dox(hide) typedef T_http2erringRoundTripperPointer = stdgo._internal.net.http.Http_t_http2erringroundtripperpointer.T_http2erringRoundTripperPointer;
@:dox(hide) class T_http2erringRoundTripper_static_extension {
    static public function roundTrip(_rt:T_http2erringRoundTripper, _0:Request):stdgo.Tuple<Response, stdgo.Error> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2erringroundtripper_static_extension.T_http2erringRoundTripper_static_extension.roundTrip(_rt, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function roundTripErr(_rt:T_http2erringRoundTripper):stdgo.Error {
        return stdgo._internal.net.http.Http_t_http2erringroundtripper_static_extension.T_http2erringRoundTripper_static_extension.roundTripErr(_rt);
    }
}
@:dox(hide) typedef T_http2gzipReaderPointer = stdgo._internal.net.http.Http_t_http2gzipreaderpointer.T_http2gzipReaderPointer;
@:dox(hide) class T_http2gzipReader_static_extension {
    static public function close(_gz:T_http2gzipReader):stdgo.Error {
        final _gz = (_gz : stdgo.Ref<stdgo._internal.net.http.Http_t_http2gzipreader.T_http2gzipReader>);
        return stdgo._internal.net.http.Http_t_http2gzipreader_static_extension.T_http2gzipReader_static_extension.close(_gz);
    }
    static public function read(_gz:T_http2gzipReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _gz = (_gz : stdgo.Ref<stdgo._internal.net.http.Http_t_http2gzipreader.T_http2gzipReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2gzipreader_static_extension.T_http2gzipReader_static_extension.read(_gz, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_http2errorReaderPointer = stdgo._internal.net.http.Http_t_http2errorreaderpointer.T_http2errorReaderPointer;
@:dox(hide) class T_http2errorReader_static_extension {
    static public function read(_r:T_http2errorReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2errorreader_static_extension.T_http2errorReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_http2noDialH2RoundTripperPointer = stdgo._internal.net.http.Http_t_http2nodialh2roundtripperpointer.T_http2noDialH2RoundTripperPointer;
@:dox(hide) class T_http2noDialH2RoundTripper_static_extension {
    static public function roundTrip(_rt:T_http2noDialH2RoundTripper, _req:Request):stdgo.Tuple<Response, stdgo.Error> {
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2nodialh2roundtripper_static_extension.T_http2noDialH2RoundTripper_static_extension.roundTrip(_rt, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _vlogf(__self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.net.http.Http_t_http2nodialh2roundtripper_static_extension.T_http2noDialH2RoundTripper_static_extension._vlogf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function _pingTimeout(__self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper):stdgo._internal.time.Time_duration.Duration {
        return stdgo._internal.net.http.Http_t_http2nodialh2roundtripper_static_extension.T_http2noDialH2RoundTripper_static_extension._pingTimeout(__self__);
    }
    public static function _newTLSConfig(__self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper, _0:String):stdgo._internal.crypto.tls.Tls_config.Config {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.net.http.Http_t_http2nodialh2roundtripper_static_extension.T_http2noDialH2RoundTripper_static_extension._newTLSConfig(__self__, _0);
    }
    public static function _newClientConn(__self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper, _0:stdgo._internal.net.Net_conn.Conn, _1:Bool):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_t_http2nodialh2roundtripper_static_extension.T_http2noDialH2RoundTripper_static_extension._newClientConn(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _maxHeaderListSize(__self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper):std.UInt {
        return stdgo._internal.net.http.Http_t_http2nodialh2roundtripper_static_extension.T_http2noDialH2RoundTripper_static_extension._maxHeaderListSize(__self__);
    }
    public static function _maxFrameReadSize(__self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper):std.UInt {
        return stdgo._internal.net.http.Http_t_http2nodialh2roundtripper_static_extension.T_http2noDialH2RoundTripper_static_extension._maxFrameReadSize(__self__);
    }
    public static function _maxEncoderHeaderTableSize(__self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper):std.UInt {
        return stdgo._internal.net.http.Http_t_http2nodialh2roundtripper_static_extension.T_http2noDialH2RoundTripper_static_extension._maxEncoderHeaderTableSize(__self__);
    }
    public static function _maxDecoderHeaderTableSize(__self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper):std.UInt {
        return stdgo._internal.net.http.Http_t_http2nodialh2roundtripper_static_extension.T_http2noDialH2RoundTripper_static_extension._maxDecoderHeaderTableSize(__self__);
    }
    public static function _logf(__self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        final _0 = (_0 : stdgo.GoString);
        stdgo._internal.net.http.Http_t_http2nodialh2roundtripper_static_extension.T_http2noDialH2RoundTripper_static_extension._logf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function _initConnPool(__self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper):Void {
        stdgo._internal.net.http.Http_t_http2nodialh2roundtripper_static_extension.T_http2noDialH2RoundTripper_static_extension._initConnPool(__self__);
    }
    public static function _idleConnTimeout(__self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper):stdgo._internal.time.Time_duration.Duration {
        return stdgo._internal.net.http.Http_t_http2nodialh2roundtripper_static_extension.T_http2noDialH2RoundTripper_static_extension._idleConnTimeout(__self__);
    }
    public static function _expectContinueTimeout(__self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper):stdgo._internal.time.Time_duration.Duration {
        return stdgo._internal.net.http.Http_t_http2nodialh2roundtripper_static_extension.T_http2noDialH2RoundTripper_static_extension._expectContinueTimeout(__self__);
    }
    public static function _disableKeepAlives(__self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper):Bool {
        return stdgo._internal.net.http.Http_t_http2nodialh2roundtripper_static_extension.T_http2noDialH2RoundTripper_static_extension._disableKeepAlives(__self__);
    }
    public static function _disableCompression(__self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper):Bool {
        return stdgo._internal.net.http.Http_t_http2nodialh2roundtripper_static_extension.T_http2noDialH2RoundTripper_static_extension._disableCompression(__self__);
    }
    public static function _dialTLSWithContext(__self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper, _0:stdgo._internal.context.Context_context.Context, _1:String, _2:String, _3:stdgo._internal.crypto.tls.Tls_config.Config):stdgo.Tuple<stdgo._internal.crypto.tls.Tls_conn.Conn, stdgo.Error> {
        final _1 = (_1 : stdgo.GoString);
        final _2 = (_2 : stdgo.GoString);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2nodialh2roundtripper_static_extension.T_http2noDialH2RoundTripper_static_extension._dialTLSWithContext(__self__, _0, _1, _2, _3);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _dialTLS(__self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper, _0:stdgo._internal.context.Context_context.Context, _1:String, _2:String, _3:stdgo._internal.crypto.tls.Tls_config.Config):stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error> {
        final _1 = (_1 : stdgo.GoString);
        final _2 = (_2 : stdgo.GoString);
        final _3 = (_3 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2nodialh2roundtripper_static_extension.T_http2noDialH2RoundTripper_static_extension._dialTLS(__self__, _0, _1, _2, _3);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _dialClientConn(__self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper, _0:stdgo._internal.context.Context_context.Context, _1:String, _2:Bool):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        final _1 = (_1 : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2nodialh2roundtripper_static_extension.T_http2noDialH2RoundTripper_static_extension._dialClientConn(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _connPool(__self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper):T_http2ClientConnPool {
        return stdgo._internal.net.http.Http_t_http2nodialh2roundtripper_static_extension.T_http2noDialH2RoundTripper_static_extension._connPool(__self__);
    }
    public static function roundTripOpt(__self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper, _0:Request, _1:T_http2RoundTripOpt):stdgo.Tuple<Response, stdgo.Error> {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2nodialh2roundtripper_static_extension.T_http2noDialH2RoundTripper_static_extension.roundTripOpt(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function newClientConn(__self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper, _0:stdgo._internal.net.Net_conn.Conn):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_t_http2nodialh2roundtripper_static_extension.T_http2noDialH2RoundTripper_static_extension.newClientConn(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function closeIdleConnections(__self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper):Void {
        stdgo._internal.net.http.Http_t_http2nodialh2roundtripper_static_extension.T_http2noDialH2RoundTripper_static_extension.closeIdleConnections(__self__);
    }
}
@:dox(hide) typedef T_http2flushFrameWriterPointer = stdgo._internal.net.http.Http_t_http2flushframewriterpointer.T_http2flushFrameWriterPointer;
@:dox(hide) class T_http2flushFrameWriter_static_extension {

}
@:dox(hide) typedef T_http2writeGoAwayPointer = stdgo._internal.net.http.Http_t_http2writegoawaypointer.T_http2writeGoAwayPointer;
@:dox(hide) class T_http2writeGoAway_static_extension {

}
@:dox(hide) typedef T_http2writeDataPointer = stdgo._internal.net.http.Http_t_http2writedatapointer.T_http2writeDataPointer;
@:dox(hide) class T_http2writeData_static_extension {
    static public function string(_w:T_http2writeData):String {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData>);
        return stdgo._internal.net.http.Http_t_http2writedata_static_extension.T_http2writeData_static_extension.string(_w);
    }
}
@:dox(hide) typedef T_http2handlerPanicRSTPointer = stdgo._internal.net.http.Http_t_http2handlerpanicrstpointer.T_http2handlerPanicRSTPointer;
@:dox(hide) class T_http2handlerPanicRST_static_extension {

}
@:dox(hide) typedef T_http2writePingAckPointer = stdgo._internal.net.http.Http_t_http2writepingackpointer.T_http2writePingAckPointer;
@:dox(hide) class T_http2writePingAck_static_extension {

}
@:dox(hide) typedef T_http2writeSettingsAckPointer = stdgo._internal.net.http.Http_t_http2writesettingsackpointer.T_http2writeSettingsAckPointer;
@:dox(hide) class T_http2writeSettingsAck_static_extension {

}
@:dox(hide) typedef T_http2writeResHeadersPointer = stdgo._internal.net.http.Http_t_http2writeresheaderspointer.T_http2writeResHeadersPointer;
@:dox(hide) class T_http2writeResHeaders_static_extension {

}
@:dox(hide) typedef T_http2writePushPromisePointer = stdgo._internal.net.http.Http_t_http2writepushpromisepointer.T_http2writePushPromisePointer;
@:dox(hide) class T_http2writePushPromise_static_extension {

}
@:dox(hide) typedef T_http2write100ContinueHeadersFramePointer = stdgo._internal.net.http.Http_t_http2write100continueheadersframepointer.T_http2write100ContinueHeadersFramePointer;
@:dox(hide) class T_http2write100ContinueHeadersFrame_static_extension {

}
@:dox(hide) typedef T_http2writeWindowUpdatePointer = stdgo._internal.net.http.Http_t_http2writewindowupdatepointer.T_http2writeWindowUpdatePointer;
@:dox(hide) class T_http2writeWindowUpdate_static_extension {

}
@:dox(hide) typedef T_http2OpenStreamOptionsPointer = stdgo._internal.net.http.Http_t_http2openstreamoptionspointer.T_http2OpenStreamOptionsPointer;
@:dox(hide) class T_http2OpenStreamOptions_static_extension {

}
@:dox(hide) typedef T_http2FrameWriteRequestPointer = stdgo._internal.net.http.Http_t_http2framewriterequestpointer.T_http2FrameWriteRequestPointer;
@:dox(hide) class T_http2FrameWriteRequest_static_extension {
    static public function string(_wr:T_http2FrameWriteRequest):String {
        return stdgo._internal.net.http.Http_t_http2framewriterequest_static_extension.T_http2FrameWriteRequest_static_extension.string(_wr);
    }
    static public function consume(_wr:T_http2FrameWriteRequest, _n:StdTypes.Int):stdgo.Tuple.Tuple3<T_http2FrameWriteRequest, T_http2FrameWriteRequest, StdTypes.Int> {
        final _n = (_n : stdgo.GoInt32);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2framewriterequest_static_extension.T_http2FrameWriteRequest_static_extension.consume(_wr, _n);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function dataSize(_wr:T_http2FrameWriteRequest):StdTypes.Int {
        return stdgo._internal.net.http.Http_t_http2framewriterequest_static_extension.T_http2FrameWriteRequest_static_extension.dataSize(_wr);
    }
    static public function streamID(_wr:T_http2FrameWriteRequest):std.UInt {
        return stdgo._internal.net.http.Http_t_http2framewriterequest_static_extension.T_http2FrameWriteRequest_static_extension.streamID(_wr);
    }
}
@:dox(hide) typedef T_http2writeQueuePointer = stdgo._internal.net.http.Http_t_http2writequeuepointer.T_http2writeQueuePointer;
@:dox(hide) class T_http2writeQueue_static_extension {

}
@:dox(hide) typedef T_http2PriorityWriteSchedulerConfigPointer = stdgo._internal.net.http.Http_t_http2prioritywriteschedulerconfigpointer.T_http2PriorityWriteSchedulerConfigPointer;
@:dox(hide) class T_http2PriorityWriteSchedulerConfig_static_extension {

}
@:dox(hide) typedef T_http2priorityNodePointer = stdgo._internal.net.http.Http_t_http2prioritynodepointer.T_http2priorityNodePointer;
@:dox(hide) class T_http2priorityNode_static_extension {

}
@:dox(hide) typedef T_http2priorityWriteSchedulerPointer = stdgo._internal.net.http.Http_t_http2prioritywriteschedulerpointer.T_http2priorityWriteSchedulerPointer;
@:dox(hide) class T_http2priorityWriteScheduler_static_extension {
    static public function pop(_ws:T_http2priorityWriteScheduler):stdgo.Tuple<T_http2FrameWriteRequest, Bool> {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2prioritywritescheduler_static_extension.T_http2priorityWriteScheduler_static_extension.pop(_ws);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function push(_ws:T_http2priorityWriteScheduler, _wr:T_http2FrameWriteRequest):Void {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler>);
        stdgo._internal.net.http.Http_t_http2prioritywritescheduler_static_extension.T_http2priorityWriteScheduler_static_extension.push(_ws, _wr);
    }
    static public function adjustStream(_ws:T_http2priorityWriteScheduler, _streamID:std.UInt, _priority:T_http2PriorityParam):Void {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        stdgo._internal.net.http.Http_t_http2prioritywritescheduler_static_extension.T_http2priorityWriteScheduler_static_extension.adjustStream(_ws, _streamID, _priority);
    }
    static public function closeStream(_ws:T_http2priorityWriteScheduler, _streamID:std.UInt):Void {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        stdgo._internal.net.http.Http_t_http2prioritywritescheduler_static_extension.T_http2priorityWriteScheduler_static_extension.closeStream(_ws, _streamID);
    }
    static public function openStream(_ws:T_http2priorityWriteScheduler, _streamID:std.UInt, _options:T_http2OpenStreamOptions):Void {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        stdgo._internal.net.http.Http_t_http2prioritywritescheduler_static_extension.T_http2priorityWriteScheduler_static_extension.openStream(_ws, _streamID, _options);
    }
}
@:dox(hide) typedef T_http2randomWriteSchedulerPointer = stdgo._internal.net.http.Http_t_http2randomwriteschedulerpointer.T_http2randomWriteSchedulerPointer;
@:dox(hide) class T_http2randomWriteScheduler_static_extension {
    static public function pop(_ws:T_http2randomWriteScheduler):stdgo.Tuple<T_http2FrameWriteRequest, Bool> {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2randomwritescheduler_static_extension.T_http2randomWriteScheduler_static_extension.pop(_ws);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function push(_ws:T_http2randomWriteScheduler, _wr:T_http2FrameWriteRequest):Void {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler>);
        stdgo._internal.net.http.Http_t_http2randomwritescheduler_static_extension.T_http2randomWriteScheduler_static_extension.push(_ws, _wr);
    }
    static public function adjustStream(_ws:T_http2randomWriteScheduler, _streamID:std.UInt, _priority:T_http2PriorityParam):Void {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        stdgo._internal.net.http.Http_t_http2randomwritescheduler_static_extension.T_http2randomWriteScheduler_static_extension.adjustStream(_ws, _streamID, _priority);
    }
    static public function closeStream(_ws:T_http2randomWriteScheduler, _streamID:std.UInt):Void {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        stdgo._internal.net.http.Http_t_http2randomwritescheduler_static_extension.T_http2randomWriteScheduler_static_extension.closeStream(_ws, _streamID);
    }
    static public function openStream(_ws:T_http2randomWriteScheduler, _streamID:std.UInt, _options:T_http2OpenStreamOptions):Void {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        stdgo._internal.net.http.Http_t_http2randomwritescheduler_static_extension.T_http2randomWriteScheduler_static_extension.openStream(_ws, _streamID, _options);
    }
}
@:dox(hide) typedef T_http2roundRobinWriteSchedulerPointer = stdgo._internal.net.http.Http_t_http2roundrobinwriteschedulerpointer.T_http2roundRobinWriteSchedulerPointer;
@:dox(hide) class T_http2roundRobinWriteScheduler_static_extension {
    static public function pop(_ws:T_http2roundRobinWriteScheduler):stdgo.Tuple<T_http2FrameWriteRequest, Bool> {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler>);
        return {
            final obj = stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler_static_extension.T_http2roundRobinWriteScheduler_static_extension.pop(_ws);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function push(_ws:T_http2roundRobinWriteScheduler, _wr:T_http2FrameWriteRequest):Void {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler>);
        stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler_static_extension.T_http2roundRobinWriteScheduler_static_extension.push(_ws, _wr);
    }
    static public function adjustStream(_ws:T_http2roundRobinWriteScheduler, _streamID:std.UInt, _priority:T_http2PriorityParam):Void {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler_static_extension.T_http2roundRobinWriteScheduler_static_extension.adjustStream(_ws, _streamID, _priority);
    }
    static public function closeStream(_ws:T_http2roundRobinWriteScheduler, _streamID:std.UInt):Void {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler_static_extension.T_http2roundRobinWriteScheduler_static_extension.closeStream(_ws, _streamID);
    }
    static public function openStream(_ws:T_http2roundRobinWriteScheduler, _streamID:std.UInt, _options:T_http2OpenStreamOptions):Void {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler_static_extension.T_http2roundRobinWriteScheduler_static_extension.openStream(_ws, _streamID, _options);
    }
}
@:dox(hide) typedef T_stringWriterPointer = stdgo._internal.net.http.Http_t_stringwriterpointer.T_stringWriterPointer;
@:dox(hide) class T_stringWriter_static_extension {
    static public function writeString(_w:T_stringWriter, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_t_stringwriter_static_extension.T_stringWriter_static_extension.writeString(_w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_keyValuesPointer = stdgo._internal.net.http.Http_t_keyvaluespointer.T_keyValuesPointer;
@:dox(hide) class T_keyValues_static_extension {

}
@:dox(hide) typedef T_headerSorterPointer = stdgo._internal.net.http.Http_t_headersorterpointer.T_headerSorterPointer;
@:dox(hide) class T_headerSorter_static_extension {
    static public function less(_s:T_headerSorter, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.Http_t_headersorter.T_headerSorter>);
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.net.http.Http_t_headersorter_static_extension.T_headerSorter_static_extension.less(_s, _i, _j);
    }
    static public function swap(_s:T_headerSorter, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.Http_t_headersorter.T_headerSorter>);
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.net.http.Http_t_headersorter_static_extension.T_headerSorter_static_extension.swap(_s, _i, _j);
    }
    static public function len(_s:T_headerSorter):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.Http_t_headersorter.T_headerSorter>);
        return stdgo._internal.net.http.Http_t_headersorter_static_extension.T_headerSorter_static_extension.len(_s);
    }
}
@:dox(hide) typedef T_contextKeyPointer = stdgo._internal.net.http.Http_t_contextkeypointer.T_contextKeyPointer;
@:dox(hide) class T_contextKey_static_extension {
    static public function string(_k:T_contextKey):String {
        final _k = (_k : stdgo.Ref<stdgo._internal.net.http.Http_t_contextkey.T_contextKey>);
        return stdgo._internal.net.http.Http_t_contextkey_static_extension.T_contextKey_static_extension.string(_k);
    }
}
@:dox(hide) typedef T_noBodyPointer = stdgo._internal.net.http.Http_t_nobodypointer.T_noBodyPointer;
@:dox(hide) class T_noBody_static_extension {
    static public function writeTo(_:T_noBody, _0:stdgo._internal.io.Io_writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_t_nobody_static_extension.T_noBody_static_extension.writeTo(_, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_:T_noBody):stdgo.Error {
        return stdgo._internal.net.http.Http_t_nobody_static_extension.T_noBody_static_extension.close(_);
    }
    static public function read(_:T_noBody, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_nobody_static_extension.T_noBody_static_extension.read(_, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef PushOptionsPointer = stdgo._internal.net.http.Http_pushoptionspointer.PushOptionsPointer;
class PushOptions_static_extension {

}
typedef ProtocolErrorPointer = stdgo._internal.net.http.Http_protocolerrorpointer.ProtocolErrorPointer;
class ProtocolError_static_extension {
    static public function is_(_pe:ProtocolError, _err:stdgo.Error):Bool {
        final _pe = (_pe : stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.net.http.Http_protocolerror_static_extension.ProtocolError_static_extension.is_(_pe, _err);
    }
    static public function error(_pe:ProtocolError):String {
        final _pe = (_pe : stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>);
        return stdgo._internal.net.http.Http_protocolerror_static_extension.ProtocolError_static_extension.error(_pe);
    }
}
typedef RequestPointer = stdgo._internal.net.http.Http_requestpointer.RequestPointer;
class Request_static_extension {
    static public function formFile(_r:Request, _key:String):stdgo.Tuple.Tuple3<stdgo._internal.mime.multipart.Multipart_file.File, stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        final _key = (_key : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_request_static_extension.Request_static_extension.formFile(_r, _key);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function postFormValue(_r:Request, _key:String):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.net.http.Http_request_static_extension.Request_static_extension.postFormValue(_r, _key);
    }
    static public function formValue(_r:Request, _key:String):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.net.http.Http_request_static_extension.Request_static_extension.formValue(_r, _key);
    }
    static public function parseMultipartForm(_r:Request, _maxMemory:haxe.Int64):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        final _maxMemory = (_maxMemory : stdgo.GoInt64);
        return stdgo._internal.net.http.Http_request_static_extension.Request_static_extension.parseMultipartForm(_r, _maxMemory);
    }
    static public function parseForm(_r:Request):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return stdgo._internal.net.http.Http_request_static_extension.Request_static_extension.parseForm(_r);
    }
    static public function setBasicAuth(_r:Request, _username:String, _password:String):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        final _username = (_username : stdgo.GoString);
        final _password = (_password : stdgo.GoString);
        stdgo._internal.net.http.Http_request_static_extension.Request_static_extension.setBasicAuth(_r, _username, _password);
    }
    static public function basicAuth(_r:Request):stdgo.Tuple.Tuple3<String, String, Bool> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_request_static_extension.Request_static_extension.basicAuth(_r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function writeProxy(_r:Request, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return stdgo._internal.net.http.Http_request_static_extension.Request_static_extension.writeProxy(_r, _w);
    }
    static public function write(_r:Request, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return stdgo._internal.net.http.Http_request_static_extension.Request_static_extension.write(_r, _w);
    }
    static public function multipartReader(_r:Request):stdgo.Tuple<stdgo._internal.mime.multipart.Multipart_reader.Reader, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_request_static_extension.Request_static_extension.multipartReader(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function referer(_r:Request):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return stdgo._internal.net.http.Http_request_static_extension.Request_static_extension.referer(_r);
    }
    static public function addCookie(_r:Request, _c:Cookie):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>);
        stdgo._internal.net.http.Http_request_static_extension.Request_static_extension.addCookie(_r, _c);
    }
    static public function cookie(_r:Request, _name:String):stdgo.Tuple<Cookie, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_request_static_extension.Request_static_extension.cookie(_r, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function cookies(_r:Request):Array<Cookie> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return [for (i in stdgo._internal.net.http.Http_request_static_extension.Request_static_extension.cookies(_r)) i];
    }
    static public function userAgent(_r:Request):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return stdgo._internal.net.http.Http_request_static_extension.Request_static_extension.userAgent(_r);
    }
    static public function protoAtLeast(_r:Request, _major:StdTypes.Int, _minor:StdTypes.Int):Bool {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        final _major = (_major : stdgo.GoInt);
        final _minor = (_minor : stdgo.GoInt);
        return stdgo._internal.net.http.Http_request_static_extension.Request_static_extension.protoAtLeast(_r, _major, _minor);
    }
    static public function clone(_r:Request, _ctx:stdgo._internal.context.Context_context.Context):Request {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return stdgo._internal.net.http.Http_request_static_extension.Request_static_extension.clone(_r, _ctx);
    }
    static public function withContext(_r:Request, _ctx:stdgo._internal.context.Context_context.Context):Request {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return stdgo._internal.net.http.Http_request_static_extension.Request_static_extension.withContext(_r, _ctx);
    }
    static public function context(_r:Request):stdgo._internal.context.Context_context.Context {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return stdgo._internal.net.http.Http_request_static_extension.Request_static_extension.context(_r);
    }
}
@:dox(hide) typedef T_requestBodyReadErrorPointer = stdgo._internal.net.http.Http_t_requestbodyreaderrorpointer.T_requestBodyReadErrorPointer;
@:dox(hide) class T_requestBodyReadError_static_extension {
    public static function error(__self__:stdgo._internal.net.http.Http_t_requestbodyreaderror.T_requestBodyReadError):String {
        return stdgo._internal.net.http.Http_t_requestbodyreaderror_static_extension.T_requestBodyReadError_static_extension.error(__self__);
    }
}
typedef MaxBytesErrorPointer = stdgo._internal.net.http.Http_maxbyteserrorpointer.MaxBytesErrorPointer;
class MaxBytesError_static_extension {
    static public function error(_e:MaxBytesError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.http.Http_maxbyteserror.MaxBytesError>);
        return stdgo._internal.net.http.Http_maxbyteserror_static_extension.MaxBytesError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_maxBytesReaderPointer = stdgo._internal.net.http.Http_t_maxbytesreaderpointer.T_maxBytesReaderPointer;
@:dox(hide) class T_maxBytesReader_static_extension {
    static public function close(_l:T_maxBytesReader):stdgo.Error {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.http.Http_t_maxbytesreader.T_maxBytesReader>);
        return stdgo._internal.net.http.Http_t_maxbytesreader_static_extension.T_maxBytesReader_static_extension.close(_l);
    }
    static public function read(_l:T_maxBytesReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _l = (_l : stdgo.Ref<stdgo._internal.net.http.Http_t_maxbytesreader.T_maxBytesReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_maxbytesreader_static_extension.T_maxBytesReader_static_extension.read(_l, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) class T_read___localname___requestTooLarger_39156_static_extension {
    static public function _requestTooLarge(t:stdgo._internal.net.http.Http_t_read___localname___requesttoolarger_39156.T_read___localname___requestTooLarger_39156):Void {
        stdgo._internal.net.http.Http_t_read___localname___requesttoolarger_39156_static_extension.T_read___localname___requestTooLarger_39156_static_extension._requestTooLarge(t);
    }
}
@:dox(hide) @:forward abstract T_read___localname___requestTooLarger_39156(stdgo._internal.net.http.Http_t_read___localname___requesttoolarger_39156.T_read___localname___requestTooLarger_39156) from stdgo._internal.net.http.Http_t_read___localname___requesttoolarger_39156.T_read___localname___requestTooLarger_39156 to stdgo._internal.net.http.Http_t_read___localname___requesttoolarger_39156.T_read___localname___requestTooLarger_39156 {
    @:from
    static function fromHaxeInterface(x:{ function _requestTooLarge():Void; }):T_read___localname___requestTooLarger_39156 {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_read___localname___requestTooLarger_39156 = { _requestTooLarge : () -> x._requestTooLarge(), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
typedef ResponsePointer = stdgo._internal.net.http.Http_responsepointer.ResponsePointer;
class Response_static_extension {
    static public function write(_r:Response, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>);
        return stdgo._internal.net.http.Http_response_static_extension.Response_static_extension.write(_r, _w);
    }
    static public function protoAtLeast(_r:Response, _major:StdTypes.Int, _minor:StdTypes.Int):Bool {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>);
        final _major = (_major : stdgo.GoInt);
        final _minor = (_minor : stdgo.GoInt);
        return stdgo._internal.net.http.Http_response_static_extension.Response_static_extension.protoAtLeast(_r, _major, _minor);
    }
    static public function location(_r:Response):stdgo.Tuple<stdgo._internal.net.url.Url_url.URL, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>);
        return {
            final obj = stdgo._internal.net.http.Http_response_static_extension.Response_static_extension.location(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function cookies(_r:Response):Array<Cookie> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>);
        return [for (i in stdgo._internal.net.http.Http_response_static_extension.Response_static_extension.cookies(_r)) i];
    }
}
typedef ResponseControllerPointer = stdgo._internal.net.http.Http_responsecontrollerpointer.ResponseControllerPointer;
class ResponseController_static_extension {
    static public function enableFullDuplex(_c:ResponseController):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController>);
        return stdgo._internal.net.http.Http_responsecontroller_static_extension.ResponseController_static_extension.enableFullDuplex(_c);
    }
    static public function setWriteDeadline(_c:ResponseController, _deadline:stdgo._internal.time.Time_time.Time):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController>);
        return stdgo._internal.net.http.Http_responsecontroller_static_extension.ResponseController_static_extension.setWriteDeadline(_c, _deadline);
    }
    static public function setReadDeadline(_c:ResponseController, _deadline:stdgo._internal.time.Time_time.Time):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController>);
        return stdgo._internal.net.http.Http_responsecontroller_static_extension.ResponseController_static_extension.setReadDeadline(_c, _deadline);
    }
    static public function hijack(_c:ResponseController):stdgo.Tuple.Tuple3<stdgo._internal.net.Net_conn.Conn, stdgo._internal.bufio.Bufio_readwriter.ReadWriter, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController>);
        return {
            final obj = stdgo._internal.net.http.Http_responsecontroller_static_extension.ResponseController_static_extension.hijack(_c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function flush(_c:ResponseController):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController>);
        return stdgo._internal.net.http.Http_responsecontroller_static_extension.ResponseController_static_extension.flush(_c);
    }
}
@:dox(hide) typedef T_streamReaderPointer = stdgo._internal.net.http.Http_t_streamreaderpointer.T_streamReaderPointer;
@:dox(hide) class T_streamReader_static_extension {
    static public function close(_r:T_streamReader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_t_streamreader.T_streamReader>);
        return stdgo._internal.net.http.Http_t_streamreader_static_extension.T_streamReader_static_extension.close(_r);
    }
    static public function read(_r:T_streamReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_t_streamreader.T_streamReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_streamreader_static_extension.T_streamReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_arrayReaderPointer = stdgo._internal.net.http.Http_t_arrayreaderpointer.T_arrayReaderPointer;
@:dox(hide) class T_arrayReader_static_extension {
    static public function close(_r:T_arrayReader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_t_arrayreader.T_arrayReader>);
        return stdgo._internal.net.http.Http_t_arrayreader_static_extension.T_arrayReader_static_extension.close(_r);
    }
    static public function read(_r:T_arrayReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_t_arrayreader.T_arrayReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_arrayreader_static_extension.T_arrayReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_connPointer = stdgo._internal.net.http.Http_t_connpointer.T_connPointer;
@:dox(hide) class T_conn_static_extension {

}
@:dox(hide) typedef T_chunkWriterPointer = stdgo._internal.net.http.Http_t_chunkwriterpointer.T_chunkWriterPointer;
@:dox(hide) class T_chunkWriter_static_extension {
    static public function write(_cw:T_chunkWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _cw = (_cw : stdgo.Ref<stdgo._internal.net.http.Http_t_chunkwriter.T_chunkWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_chunkwriter_static_extension.T_chunkWriter_static_extension.write(_cw, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_responsePointer = stdgo._internal.net.http.Http_t_responsepointer.T_responsePointer;
@:dox(hide) class T_response_static_extension {
    static public function closeNotify(_w:T_response):stdgo.Chan<Bool> {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>);
        return stdgo._internal.net.http.Http_t_response_static_extension.T_response_static_extension.closeNotify(_w);
    }
    static public function hijack(_w:T_response):stdgo.Tuple.Tuple3<stdgo._internal.net.Net_conn.Conn, stdgo._internal.bufio.Bufio_readwriter.ReadWriter, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>);
        return {
            final obj = stdgo._internal.net.http.Http_t_response_static_extension.T_response_static_extension.hijack(_w);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function flushError(_w:T_response):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>);
        return stdgo._internal.net.http.Http_t_response_static_extension.T_response_static_extension.flushError(_w);
    }
    static public function flush(_w:T_response):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>);
        stdgo._internal.net.http.Http_t_response_static_extension.T_response_static_extension.flush(_w);
    }
    static public function writeString(_w:T_response, _data:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>);
        final _data = (_data : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_t_response_static_extension.T_response_static_extension.writeString(_w, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_w:T_response, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_response_static_extension.T_response_static_extension.write(_w, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeHeader(_w:T_response, _code:StdTypes.Int):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>);
        final _code = (_code : stdgo.GoInt);
        stdgo._internal.net.http.Http_t_response_static_extension.T_response_static_extension.writeHeader(_w, _code);
    }
    static public function header(_w:T_response):Header {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>);
        return stdgo._internal.net.http.Http_t_response_static_extension.T_response_static_extension.header(_w);
    }
    static public function readFrom(_w:T_response, _src:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>);
        return {
            final obj = stdgo._internal.net.http.Http_t_response_static_extension.T_response_static_extension.readFrom(_w, _src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function enableFullDuplex(_c:T_response):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>);
        return stdgo._internal.net.http.Http_t_response_static_extension.T_response_static_extension.enableFullDuplex(_c);
    }
    static public function setWriteDeadline(_c:T_response, _deadline:stdgo._internal.time.Time_time.Time):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>);
        return stdgo._internal.net.http.Http_t_response_static_extension.T_response_static_extension.setWriteDeadline(_c, _deadline);
    }
    static public function setReadDeadline(_c:T_response, _deadline:stdgo._internal.time.Time_time.Time):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>);
        return stdgo._internal.net.http.Http_t_response_static_extension.T_response_static_extension.setReadDeadline(_c, _deadline);
    }
}
@:dox(hide) typedef T_writerOnlyPointer = stdgo._internal.net.http.Http_t_writeronlypointer.T_writerOnlyPointer;
@:dox(hide) class T_writerOnly_static_extension {
    public static function write(__self__:stdgo._internal.net.http.Http_t_writeronly.T_writerOnly, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_writeronly_static_extension.T_writerOnly_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_readResultPointer = stdgo._internal.net.http.Http_t_readresultpointer.T_readResultPointer;
@:dox(hide) class T_readResult_static_extension {

}
@:dox(hide) typedef T_connReaderPointer = stdgo._internal.net.http.Http_t_connreaderpointer.T_connReaderPointer;
@:dox(hide) class T_connReader_static_extension {
    static public function read(_cr:T_connReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _cr = (_cr : stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_connreader_static_extension.T_connReader_static_extension.read(_cr, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_expectContinueReaderPointer = stdgo._internal.net.http.Http_t_expectcontinuereaderpointer.T_expectContinueReaderPointer;
@:dox(hide) class T_expectContinueReader_static_extension {
    static public function close(_ecr:T_expectContinueReader):stdgo.Error {
        final _ecr = (_ecr : stdgo.Ref<stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader>);
        return stdgo._internal.net.http.Http_t_expectcontinuereader_static_extension.T_expectContinueReader_static_extension.close(_ecr);
    }
    static public function read(_ecr:T_expectContinueReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _ecr = (_ecr : stdgo.Ref<stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_expectcontinuereader_static_extension.T_expectContinueReader_static_extension.read(_ecr, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_extraHeaderPointer = stdgo._internal.net.http.Http_t_extraheaderpointer.T_extraHeaderPointer;
@:dox(hide) class T_extraHeader_static_extension {
    static public function write(_h:T_extraHeader, _w:stdgo._internal.bufio.Bufio_writer.Writer):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
        stdgo._internal.net.http.Http_t_extraheader_static_extension.T_extraHeader_static_extension.write(_h, _w);
    }
}
@:dox(hide) typedef T_statusErrorPointer = stdgo._internal.net.http.Http_t_statuserrorpointer.T_statusErrorPointer;
@:dox(hide) class T_statusError_static_extension {
    static public function error(_e:T_statusError):String {
        return stdgo._internal.net.http.Http_t_statuserror_static_extension.T_statusError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_redirectHandlerPointer = stdgo._internal.net.http.Http_t_redirecthandlerpointer.T_redirectHandlerPointer;
@:dox(hide) class T_redirectHandler_static_extension {
    static public function serveHTTP(_rh:T_redirectHandler, _w:ResponseWriter, _r:Request):Void {
        final _rh = (_rh : stdgo.Ref<stdgo._internal.net.http.Http_t_redirecthandler.T_redirectHandler>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        stdgo._internal.net.http.Http_t_redirecthandler_static_extension.T_redirectHandler_static_extension.serveHTTP(_rh, _w, _r);
    }
}
typedef ServeMuxPointer = stdgo._internal.net.http.Http_servemuxpointer.ServeMuxPointer;
class ServeMux_static_extension {
    static public function handleFunc(_mux:ServeMux, _pattern:String, _handler:(ResponseWriter, Request) -> Void):Void {
        final _mux = (_mux : stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux>);
        final _pattern = (_pattern : stdgo.GoString);
        final _handler = _handler;
        stdgo._internal.net.http.Http_servemux_static_extension.ServeMux_static_extension.handleFunc(_mux, _pattern, _handler);
    }
    static public function handle(_mux:ServeMux, _pattern:String, _handler:Handler):Void {
        final _mux = (_mux : stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux>);
        final _pattern = (_pattern : stdgo.GoString);
        stdgo._internal.net.http.Http_servemux_static_extension.ServeMux_static_extension.handle(_mux, _pattern, _handler);
    }
    static public function serveHTTP(_mux:ServeMux, _w:ResponseWriter, _r:Request):Void {
        final _mux = (_mux : stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        stdgo._internal.net.http.Http_servemux_static_extension.ServeMux_static_extension.serveHTTP(_mux, _w, _r);
    }
    static public function handler(_mux:ServeMux, _r:Request):stdgo.Tuple<Handler, String> {
        final _mux = (_mux : stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_servemux_static_extension.ServeMux_static_extension.handler(_mux, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_muxEntryPointer = stdgo._internal.net.http.Http_t_muxentrypointer.T_muxEntryPointer;
@:dox(hide) class T_muxEntry_static_extension {

}
typedef ServerPointer = stdgo._internal.net.http.Http_serverpointer.ServerPointer;
class Server_static_extension {
    static public function listenAndServeTLS(_srv:Server, _certFile:String, _keyFile:String):stdgo.Error {
        final _srv = (_srv : stdgo.Ref<stdgo._internal.net.http.Http_server.Server>);
        final _certFile = (_certFile : stdgo.GoString);
        final _keyFile = (_keyFile : stdgo.GoString);
        return stdgo._internal.net.http.Http_server_static_extension.Server_static_extension.listenAndServeTLS(_srv, _certFile, _keyFile);
    }
    static public function setKeepAlivesEnabled(_srv:Server, _v:Bool):Void {
        final _srv = (_srv : stdgo.Ref<stdgo._internal.net.http.Http_server.Server>);
        stdgo._internal.net.http.Http_server_static_extension.Server_static_extension.setKeepAlivesEnabled(_srv, _v);
    }
    static public function serveTLS(_srv:Server, _l:stdgo._internal.net.Net_listener.Listener, _certFile:String, _keyFile:String):stdgo.Error {
        final _srv = (_srv : stdgo.Ref<stdgo._internal.net.http.Http_server.Server>);
        final _certFile = (_certFile : stdgo.GoString);
        final _keyFile = (_keyFile : stdgo.GoString);
        return stdgo._internal.net.http.Http_server_static_extension.Server_static_extension.serveTLS(_srv, _l, _certFile, _keyFile);
    }
    static public function serve(_srv:Server, _l:stdgo._internal.net.Net_listener.Listener):stdgo.Error {
        final _srv = (_srv : stdgo.Ref<stdgo._internal.net.http.Http_server.Server>);
        return stdgo._internal.net.http.Http_server_static_extension.Server_static_extension.serve(_srv, _l);
    }
    static public function listenAndServe(_srv:Server):stdgo.Error {
        final _srv = (_srv : stdgo.Ref<stdgo._internal.net.http.Http_server.Server>);
        return stdgo._internal.net.http.Http_server_static_extension.Server_static_extension.listenAndServe(_srv);
    }
    static public function registerOnShutdown(_srv:Server, _f:() -> Void):Void {
        final _srv = (_srv : stdgo.Ref<stdgo._internal.net.http.Http_server.Server>);
        final _f = _f;
        stdgo._internal.net.http.Http_server_static_extension.Server_static_extension.registerOnShutdown(_srv, _f);
    }
    static public function shutdown(_srv:Server, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Error {
        final _srv = (_srv : stdgo.Ref<stdgo._internal.net.http.Http_server.Server>);
        return stdgo._internal.net.http.Http_server_static_extension.Server_static_extension.shutdown(_srv, _ctx);
    }
    static public function close(_srv:Server):stdgo.Error {
        final _srv = (_srv : stdgo.Ref<stdgo._internal.net.http.Http_server.Server>);
        return stdgo._internal.net.http.Http_server_static_extension.Server_static_extension.close(_srv);
    }
}
@:dox(hide) typedef T_serverHandlerPointer = stdgo._internal.net.http.Http_t_serverhandlerpointer.T_serverHandlerPointer;
@:dox(hide) class T_serverHandler_static_extension {
    static public function serveHTTP(_sh:T_serverHandler, _rw:ResponseWriter, _req:Request):Void {
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        stdgo._internal.net.http.Http_t_serverhandler_static_extension.T_serverHandler_static_extension.serveHTTP(_sh, _rw, _req);
    }
}
@:dox(hide) typedef T_timeoutHandlerPointer = stdgo._internal.net.http.Http_t_timeouthandlerpointer.T_timeoutHandlerPointer;
@:dox(hide) class T_timeoutHandler_static_extension {
    static public function serveHTTP(_h:T_timeoutHandler, _w:ResponseWriter, _r:Request):Void {
        final _h = (_h : stdgo.Ref<stdgo._internal.net.http.Http_t_timeouthandler.T_timeoutHandler>);
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        stdgo._internal.net.http.Http_t_timeouthandler_static_extension.T_timeoutHandler_static_extension.serveHTTP(_h, _w, _r);
    }
}
@:dox(hide) typedef T_timeoutWriterPointer = stdgo._internal.net.http.Http_t_timeoutwriterpointer.T_timeoutWriterPointer;
@:dox(hide) class T_timeoutWriter_static_extension {
    static public function writeHeader(_tw:T_timeoutWriter, _code:StdTypes.Int):Void {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter>);
        final _code = (_code : stdgo.GoInt);
        stdgo._internal.net.http.Http_t_timeoutwriter_static_extension.T_timeoutWriter_static_extension.writeHeader(_tw, _code);
    }
    static public function write(_tw:T_timeoutWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_timeoutwriter_static_extension.T_timeoutWriter_static_extension.write(_tw, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function header(_tw:T_timeoutWriter):Header {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter>);
        return stdgo._internal.net.http.Http_t_timeoutwriter_static_extension.T_timeoutWriter_static_extension.header(_tw);
    }
    static public function push(_tw:T_timeoutWriter, _target:String, _opts:PushOptions):stdgo.Error {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.net.http.Http_t_timeoutwriter.T_timeoutWriter>);
        final _target = (_target : stdgo.GoString);
        final _opts = (_opts : stdgo.Ref<stdgo._internal.net.http.Http_pushoptions.PushOptions>);
        return stdgo._internal.net.http.Http_t_timeoutwriter_static_extension.T_timeoutWriter_static_extension.push(_tw, _target, _opts);
    }
}
@:dox(hide) typedef T_onceCloseListenerPointer = stdgo._internal.net.http.Http_t_oncecloselistenerpointer.T_onceCloseListenerPointer;
@:dox(hide) class T_onceCloseListener_static_extension {
    static public function close(_oc:T_onceCloseListener):stdgo.Error {
        final _oc = (_oc : stdgo.Ref<stdgo._internal.net.http.Http_t_oncecloselistener.T_onceCloseListener>);
        return stdgo._internal.net.http.Http_t_oncecloselistener_static_extension.T_onceCloseListener_static_extension.close(_oc);
    }
    public static function addr(__self__:stdgo._internal.net.http.Http_t_oncecloselistener.T_onceCloseListener):stdgo._internal.net.Net_addr.Addr {
        return stdgo._internal.net.http.Http_t_oncecloselistener_static_extension.T_onceCloseListener_static_extension.addr(__self__);
    }
    public static function accept(__self__:stdgo._internal.net.http.Http_t_oncecloselistener.T_onceCloseListener):stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_t_oncecloselistener_static_extension.T_onceCloseListener_static_extension.accept(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_globalOptionsHandlerPointer = stdgo._internal.net.http.Http_t_globaloptionshandlerpointer.T_globalOptionsHandlerPointer;
@:dox(hide) class T_globalOptionsHandler_static_extension {
    static public function serveHTTP(_:T_globalOptionsHandler, _w:ResponseWriter, _r:Request):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        stdgo._internal.net.http.Http_t_globaloptionshandler_static_extension.T_globalOptionsHandler_static_extension.serveHTTP(_, _w, _r);
    }
}
@:dox(hide) typedef T_initALPNRequestPointer = stdgo._internal.net.http.Http_t_initalpnrequestpointer.T_initALPNRequestPointer;
@:dox(hide) class T_initALPNRequest_static_extension {
    static public function serveHTTP(_h:T_initALPNRequest, _rw:ResponseWriter, _req:Request):Void {
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        stdgo._internal.net.http.Http_t_initalpnrequest_static_extension.T_initALPNRequest_static_extension.serveHTTP(_h, _rw, _req);
    }
    static public function baseContext(_h:T_initALPNRequest):stdgo._internal.context.Context_context.Context {
        return stdgo._internal.net.http.Http_t_initalpnrequest_static_extension.T_initALPNRequest_static_extension.baseContext(_h);
    }
}
@:dox(hide) typedef T_loggingConnPointer = stdgo._internal.net.http.Http_t_loggingconnpointer.T_loggingConnPointer;
@:dox(hide) class T_loggingConn_static_extension {
    static public function close(_c:T_loggingConn):stdgo.Error {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn>);
        return stdgo._internal.net.http.Http_t_loggingconn_static_extension.T_loggingConn_static_extension.close(_c);
    }
    static public function read(_c:T_loggingConn, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_loggingconn_static_extension.T_loggingConn_static_extension.read(_c, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_c:T_loggingConn, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_loggingconn_static_extension.T_loggingConn_static_extension.write(_c, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function setWriteDeadline(__self__:stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_t_loggingconn_static_extension.T_loggingConn_static_extension.setWriteDeadline(__self__, _0);
    }
    public static function setReadDeadline(__self__:stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_t_loggingconn_static_extension.T_loggingConn_static_extension.setReadDeadline(__self__, _0);
    }
    public static function setDeadline(__self__:stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_t_loggingconn_static_extension.T_loggingConn_static_extension.setDeadline(__self__, _0);
    }
    public static function remoteAddr(__self__:stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn):stdgo._internal.net.Net_addr.Addr {
        return stdgo._internal.net.http.Http_t_loggingconn_static_extension.T_loggingConn_static_extension.remoteAddr(__self__);
    }
    public static function localAddr(__self__:stdgo._internal.net.http.Http_t_loggingconn.T_loggingConn):stdgo._internal.net.Net_addr.Addr {
        return stdgo._internal.net.http.Http_t_loggingconn_static_extension.T_loggingConn_static_extension.localAddr(__self__);
    }
}
@:dox(hide) typedef T_checkConnErrorWriterPointer = stdgo._internal.net.http.Http_t_checkconnerrorwriterpointer.T_checkConnErrorWriterPointer;
@:dox(hide) class T_checkConnErrorWriter_static_extension {
    static public function write(_w:T_checkConnErrorWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_checkconnerrorwriter_static_extension.T_checkConnErrorWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_exactSigPointer = stdgo._internal.net.http.Http_t_exactsigpointer.T_exactSigPointer;
@:dox(hide) class T_exactSig_static_extension {

}
@:dox(hide) typedef T_maskedSigPointer = stdgo._internal.net.http.Http_t_maskedsigpointer.T_maskedSigPointer;
@:dox(hide) class T_maskedSig_static_extension {

}
@:dox(hide) typedef T_mp4SigPointer = stdgo._internal.net.http.Http_t_mp4sigpointer.T_mp4SigPointer;
@:dox(hide) class T_mp4Sig_static_extension {

}
@:dox(hide) typedef T_textSigPointer = stdgo._internal.net.http.Http_t_textsigpointer.T_textSigPointer;
@:dox(hide) class T_textSig_static_extension {

}
@:dox(hide) typedef T_socksAddrPointer = stdgo._internal.net.http.Http_t_socksaddrpointer.T_socksAddrPointer;
@:dox(hide) class T_socksAddr_static_extension {
    static public function string(_a:T_socksAddr):String {
        final _a = (_a : stdgo.Ref<stdgo._internal.net.http.Http_t_socksaddr.T_socksAddr>);
        return stdgo._internal.net.http.Http_t_socksaddr_static_extension.T_socksAddr_static_extension.string(_a);
    }
    static public function network(_a:T_socksAddr):String {
        final _a = (_a : stdgo.Ref<stdgo._internal.net.http.Http_t_socksaddr.T_socksAddr>);
        return stdgo._internal.net.http.Http_t_socksaddr_static_extension.T_socksAddr_static_extension.network(_a);
    }
}
@:dox(hide) typedef T_socksConnPointer = stdgo._internal.net.http.Http_t_socksconnpointer.T_socksConnPointer;
@:dox(hide) class T_socksConn_static_extension {
    static public function boundAddr(_c:T_socksConn):stdgo._internal.net.Net_addr.Addr {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_t_socksconn.T_socksConn>);
        return stdgo._internal.net.http.Http_t_socksconn_static_extension.T_socksConn_static_extension.boundAddr(_c);
    }
    public static function write(__self__:stdgo._internal.net.http.Http_t_socksconn.T_socksConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_socksconn_static_extension.T_socksConn_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function setWriteDeadline(__self__:stdgo._internal.net.http.Http_t_socksconn.T_socksConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_t_socksconn_static_extension.T_socksConn_static_extension.setWriteDeadline(__self__, _0);
    }
    public static function setReadDeadline(__self__:stdgo._internal.net.http.Http_t_socksconn.T_socksConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_t_socksconn_static_extension.T_socksConn_static_extension.setReadDeadline(__self__, _0);
    }
    public static function setDeadline(__self__:stdgo._internal.net.http.Http_t_socksconn.T_socksConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_t_socksconn_static_extension.T_socksConn_static_extension.setDeadline(__self__, _0);
    }
    public static function remoteAddr(__self__:stdgo._internal.net.http.Http_t_socksconn.T_socksConn):stdgo._internal.net.Net_addr.Addr {
        return stdgo._internal.net.http.Http_t_socksconn_static_extension.T_socksConn_static_extension.remoteAddr(__self__);
    }
    public static function read(__self__:stdgo._internal.net.http.Http_t_socksconn.T_socksConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_socksconn_static_extension.T_socksConn_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function localAddr(__self__:stdgo._internal.net.http.Http_t_socksconn.T_socksConn):stdgo._internal.net.Net_addr.Addr {
        return stdgo._internal.net.http.Http_t_socksconn_static_extension.T_socksConn_static_extension.localAddr(__self__);
    }
    public static function close(__self__:stdgo._internal.net.http.Http_t_socksconn.T_socksConn):stdgo.Error {
        return stdgo._internal.net.http.Http_t_socksconn_static_extension.T_socksConn_static_extension.close(__self__);
    }
}
@:dox(hide) typedef T_socksDialerPointer = stdgo._internal.net.http.Http_t_socksdialerpointer.T_socksDialerPointer;
@:dox(hide) class T_socksDialer_static_extension {
    static public function dial(_d:T_socksDialer, _network:String, _address:String):stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer>);
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_t_socksdialer_static_extension.T_socksDialer_static_extension.dial(_d, _network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function dialWithConn(_d:T_socksDialer, _ctx:stdgo._internal.context.Context_context.Context, _c:stdgo._internal.net.Net_conn.Conn, _network:String, _address:String):stdgo.Tuple<stdgo._internal.net.Net_addr.Addr, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer>);
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_t_socksdialer_static_extension.T_socksDialer_static_extension.dialWithConn(_d, _ctx, _c, _network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function dialContext(_d:T_socksDialer, _ctx:stdgo._internal.context.Context_context.Context, _network:String, _address:String):stdgo.Tuple<stdgo._internal.net.Net_conn.Conn, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.net.http.Http_t_socksdialer.T_socksDialer>);
        final _network = (_network : stdgo.GoString);
        final _address = (_address : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_t_socksdialer_static_extension.T_socksDialer_static_extension.dialContext(_d, _ctx, _network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_socksUsernamePasswordPointer = stdgo._internal.net.http.Http_t_socksusernamepasswordpointer.T_socksUsernamePasswordPointer;
@:dox(hide) class T_socksUsernamePassword_static_extension {
    static public function authenticate(_up:T_socksUsernamePassword, _ctx:stdgo._internal.context.Context_context.Context, _rw:stdgo._internal.io.Io_readwriter.ReadWriter, _auth:T_socksAuthMethod):stdgo.Error {
        final _up = (_up : stdgo.Ref<stdgo._internal.net.http.Http_t_socksusernamepassword.T_socksUsernamePassword>);
        return stdgo._internal.net.http.Http_t_socksusernamepassword_static_extension.T_socksUsernamePassword_static_extension.authenticate(_up, _ctx, _rw, _auth);
    }
}
@:dox(hide) typedef T_errorReaderPointer = stdgo._internal.net.http.Http_t_errorreaderpointer.T_errorReaderPointer;
@:dox(hide) class T_errorReader_static_extension {
    static public function read(_r:T_errorReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_errorreader_static_extension.T_errorReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_byteReaderPointer = stdgo._internal.net.http.Http_t_bytereaderpointer.T_byteReaderPointer;
@:dox(hide) class T_byteReader_static_extension {
    static public function read(_br:T_byteReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _br = (_br : stdgo.Ref<stdgo._internal.net.http.Http_t_bytereader.T_byteReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_bytereader_static_extension.T_byteReader_static_extension.read(_br, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_transferWriterPointer = stdgo._internal.net.http.Http_t_transferwriterpointer.T_transferWriterPointer;
@:dox(hide) class T_transferWriter_static_extension {

}
@:dox(hide) typedef T_transferReaderPointer = stdgo._internal.net.http.Http_t_transferreaderpointer.T_transferReaderPointer;
@:dox(hide) class T_transferReader_static_extension {

}
@:dox(hide) typedef T_unsupportedTEErrorPointer = stdgo._internal.net.http.Http_t_unsupportedteerrorpointer.T_unsupportedTEErrorPointer;
@:dox(hide) class T_unsupportedTEError_static_extension {
    static public function error(_uste:T_unsupportedTEError):String {
        final _uste = (_uste : stdgo.Ref<stdgo._internal.net.http.Http_t_unsupportedteerror.T_unsupportedTEError>);
        return stdgo._internal.net.http.Http_t_unsupportedteerror_static_extension.T_unsupportedTEError_static_extension.error(_uste);
    }
}
@:dox(hide) typedef T_bodyPointer = stdgo._internal.net.http.Http_t_bodypointer.T_bodyPointer;
@:dox(hide) class T_body_static_extension {
    static public function close(_b:T_body):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body>);
        return stdgo._internal.net.http.Http_t_body_static_extension.T_body_static_extension.close(_b);
    }
    static public function read(_b:T_body, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_body_static_extension.T_body_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_bodyLockedPointer = stdgo._internal.net.http.Http_t_bodylockedpointer.T_bodyLockedPointer;
@:dox(hide) class T_bodyLocked_static_extension {
    static public function read(_bl:T_bodyLocked, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_bodylocked_static_extension.T_bodyLocked_static_extension.read(_bl, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_finishAsyncByteReadPointer = stdgo._internal.net.http.Http_t_finishasyncbytereadpointer.T_finishAsyncByteReadPointer;
@:dox(hide) class T_finishAsyncByteRead_static_extension {
    static public function read(_fr:T_finishAsyncByteRead, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_finishasyncbyteread_static_extension.T_finishAsyncByteRead_static_extension.read(_fr, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_bufioFlushWriterPointer = stdgo._internal.net.http.Http_t_bufioflushwriterpointer.T_bufioFlushWriterPointer;
@:dox(hide) class T_bufioFlushWriter_static_extension {
    static public function write(_fw:T_bufioFlushWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_bufioflushwriter_static_extension.T_bufioFlushWriter_static_extension.write(_fw, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef TransportPointer = stdgo._internal.net.http.Http_transportpointer.TransportPointer;
class Transport_static_extension {
    static public function cancelRequest(_t:Transport, _req:Request):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        stdgo._internal.net.http.Http_transport_static_extension.Transport_static_extension.cancelRequest(_t, _req);
    }
    static public function closeIdleConnections(_t:Transport):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>);
        stdgo._internal.net.http.Http_transport_static_extension.Transport_static_extension.closeIdleConnections(_t);
    }
    static public function registerProtocol(_t:Transport, _scheme:String, _rt:RoundTripper):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>);
        final _scheme = (_scheme : stdgo.GoString);
        stdgo._internal.net.http.Http_transport_static_extension.Transport_static_extension.registerProtocol(_t, _scheme, _rt);
    }
    static public function clone(_t:Transport):Transport {
        final _t = (_t : stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>);
        return stdgo._internal.net.http.Http_transport_static_extension.Transport_static_extension.clone(_t);
    }
    static public function roundTrip(_t:Transport, _req:Request):stdgo.Tuple<Response, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_transport_static_extension.Transport_static_extension.roundTrip(_t, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_cancelKeyPointer = stdgo._internal.net.http.Http_t_cancelkeypointer.T_cancelKeyPointer;
@:dox(hide) class T_cancelKey_static_extension {

}
@:dox(hide) typedef T_transportRequestPointer = stdgo._internal.net.http.Http_t_transportrequestpointer.T_transportRequestPointer;
@:dox(hide) class T_transportRequest_static_extension {
    public static function _write(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo._internal.io.Io_writer.Writer, _1:Bool, _2:Header, _3:() -> Bool):stdgo.Error {
        final _3 = _3;
        return stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension._write(__self__, _0, _1, _2, _3);
    }
    public static function _wantsHttp10KeepAlive(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):Bool {
        return stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension._wantsHttp10KeepAlive(__self__);
    }
    public static function _wantsClose(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):Bool {
        return stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension._wantsClose(__self__);
    }
    public static function _requiresHTTP1(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):Bool {
        return stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension._requiresHTTP1(__self__);
    }
    public static function _outgoingLength(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):haxe.Int64 {
        return stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension._outgoingLength(__self__);
    }
    public static function _multipartReader(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:Bool):stdgo.Tuple<stdgo._internal.mime.multipart.Multipart_reader.Reader, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension._multipartReader(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _isReplayable(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):Bool {
        return stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension._isReplayable(__self__);
    }
    public static function _isH2Upgrade(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):Bool {
        return stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension._isH2Upgrade(__self__);
    }
    public static function _expectsContinue(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):Bool {
        return stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension._expectsContinue(__self__);
    }
    public static function _closeBody(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):stdgo.Error {
        return stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension._closeBody(__self__);
    }
    public static function writeProxy(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        return stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension.writeProxy(__self__, _0);
    }
    public static function write(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        return stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension.write(__self__, _0);
    }
    public static function withContext(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo._internal.context.Context_context.Context):Request {
        return stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension.withContext(__self__, _0);
    }
    public static function userAgent(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):String {
        return stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension.userAgent(__self__);
    }
    public static function setBasicAuth(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:String, _1:String):Void {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoString);
        stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension.setBasicAuth(__self__, _0, _1);
    }
    public static function referer(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):String {
        return stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension.referer(__self__);
    }
    public static function protoAtLeast(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:StdTypes.Int, _1:StdTypes.Int):Bool {
        final _0 = (_0 : stdgo.GoInt);
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension.protoAtLeast(__self__, _0, _1);
    }
    public static function postFormValue(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:String):String {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension.postFormValue(__self__, _0);
    }
    public static function parseMultipartForm(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:haxe.Int64):stdgo.Error {
        final _0 = (_0 : stdgo.GoInt64);
        return stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension.parseMultipartForm(__self__, _0);
    }
    public static function parseForm(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):stdgo.Error {
        return stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension.parseForm(__self__);
    }
    public static function multipartReader(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):stdgo.Tuple<stdgo._internal.mime.multipart.Multipart_reader.Reader, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension.multipartReader(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function formValue(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:String):String {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension.formValue(__self__, _0);
    }
    public static function formFile(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:String):stdgo.Tuple.Tuple3<stdgo._internal.mime.multipart.Multipart_file.File, stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension.formFile(__self__, _0);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function cookies(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):Array<Cookie> {
        return [for (i in stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension.cookies(__self__)) i];
    }
    public static function cookie(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:String):stdgo.Tuple<Cookie, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension.cookie(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function context(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):stdgo._internal.context.Context_context.Context {
        return stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension.context(__self__);
    }
    public static function clone(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo._internal.context.Context_context.Context):Request {
        return stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension.clone(__self__, _0);
    }
    public static function basicAuth(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):stdgo.Tuple.Tuple3<String, String, Bool> {
        return {
            final obj = stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension.basicAuth(__self__);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function addCookie(__self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:Cookie):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>);
        stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension.addCookie(__self__, _0);
    }
}
@:dox(hide) typedef T_readTrackingBodyPointer = stdgo._internal.net.http.Http_t_readtrackingbodypointer.T_readTrackingBodyPointer;
@:dox(hide) class T_readTrackingBody_static_extension {
    static public function close(_r:T_readTrackingBody):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_t_readtrackingbody.T_readTrackingBody>);
        return stdgo._internal.net.http.Http_t_readtrackingbody_static_extension.T_readTrackingBody_static_extension.close(_r);
    }
    static public function read(_r:T_readTrackingBody, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_t_readtrackingbody.T_readTrackingBody>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_readtrackingbody_static_extension.T_readTrackingBody_static_extension.read(_r, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_transportReadFromServerErrorPointer = stdgo._internal.net.http.Http_t_transportreadfromservererrorpointer.T_transportReadFromServerErrorPointer;
@:dox(hide) class T_transportReadFromServerError_static_extension {
    static public function error(_e:T_transportReadFromServerError):String {
        return stdgo._internal.net.http.Http_t_transportreadfromservererror_static_extension.T_transportReadFromServerError_static_extension.error(_e);
    }
    static public function unwrap(_e:T_transportReadFromServerError):stdgo.Error {
        return stdgo._internal.net.http.Http_t_transportreadfromservererror_static_extension.T_transportReadFromServerError_static_extension.unwrap(_e);
    }
}
@:dox(hide) typedef T_wantConnPointer = stdgo._internal.net.http.Http_t_wantconnpointer.T_wantConnPointer;
@:dox(hide) class T_wantConn_static_extension {

}
@:dox(hide) typedef T_wantConnQueuePointer = stdgo._internal.net.http.Http_t_wantconnqueuepointer.T_wantConnQueuePointer;
@:dox(hide) class T_wantConnQueue_static_extension {

}
@:dox(hide) typedef T_persistConnWriterPointer = stdgo._internal.net.http.Http_t_persistconnwriterpointer.T_persistConnWriterPointer;
@:dox(hide) class T_persistConnWriter_static_extension {
    static public function readFrom(_w:T_persistConnWriter, _r:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_t_persistconnwriter_static_extension.T_persistConnWriter_static_extension.readFrom(_w, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_w:T_persistConnWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_persistconnwriter_static_extension.T_persistConnWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_connectMethodPointer = stdgo._internal.net.http.Http_t_connectmethodpointer.T_connectMethodPointer;
@:dox(hide) class T_connectMethod_static_extension {

}
@:dox(hide) typedef T_connectMethodKeyPointer = stdgo._internal.net.http.Http_t_connectmethodkeypointer.T_connectMethodKeyPointer;
@:dox(hide) class T_connectMethodKey_static_extension {
    static public function string(_k:T_connectMethodKey):String {
        return stdgo._internal.net.http.Http_t_connectmethodkey_static_extension.T_connectMethodKey_static_extension.string(_k);
    }
}
@:dox(hide) typedef T_persistConnPointer = stdgo._internal.net.http.Http_t_persistconnpointer.T_persistConnPointer;
@:dox(hide) class T_persistConn_static_extension {
    static public function read(_pc:T_persistConn, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _pc = (_pc : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_persistconn_static_extension.T_persistConn_static_extension.read(_pc, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_readWriteCloserBodyPointer = stdgo._internal.net.http.Http_t_readwritecloserbodypointer.T_readWriteCloserBodyPointer;
@:dox(hide) class T_readWriteCloserBody_static_extension {
    static public function read(_b:T_readWriteCloserBody, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.net.http.Http_t_readwritecloserbody.T_readWriteCloserBody>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_readwritecloserbody_static_extension.T_readWriteCloserBody_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function write(__self__:stdgo._internal.net.http.Http_t_readwritecloserbody.T_readWriteCloserBody, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_readwritecloserbody_static_extension.T_readWriteCloserBody_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function close(__self__:stdgo._internal.net.http.Http_t_readwritecloserbody.T_readWriteCloserBody):stdgo.Error {
        return stdgo._internal.net.http.Http_t_readwritecloserbody_static_extension.T_readWriteCloserBody_static_extension.close(__self__);
    }
}
@:dox(hide) typedef T_nothingWrittenErrorPointer = stdgo._internal.net.http.Http_t_nothingwrittenerrorpointer.T_nothingWrittenErrorPointer;
@:dox(hide) class T_nothingWrittenError_static_extension {
    static public function unwrap(_nwe:T_nothingWrittenError):stdgo.Error {
        return stdgo._internal.net.http.Http_t_nothingwrittenerror_static_extension.T_nothingWrittenError_static_extension.unwrap(_nwe);
    }
    public static function error(__self__:stdgo._internal.net.http.Http_t_nothingwrittenerror.T_nothingWrittenError):String {
        return stdgo._internal.net.http.Http_t_nothingwrittenerror_static_extension.T_nothingWrittenError_static_extension.error(__self__);
    }
}
@:dox(hide) typedef T_responseAndErrorPointer = stdgo._internal.net.http.Http_t_responseanderrorpointer.T_responseAndErrorPointer;
@:dox(hide) class T_responseAndError_static_extension {

}
@:dox(hide) typedef T_requestAndChanPointer = stdgo._internal.net.http.Http_t_requestandchanpointer.T_requestAndChanPointer;
@:dox(hide) class T_requestAndChan_static_extension {

}
@:dox(hide) typedef T_writeRequestPointer = stdgo._internal.net.http.Http_t_writerequestpointer.T_writeRequestPointer;
@:dox(hide) class T_writeRequest_static_extension {

}
@:dox(hide) typedef T_httpErrorPointer = stdgo._internal.net.http.Http_t_httperrorpointer.T_httpErrorPointer;
@:dox(hide) class T_httpError_static_extension {
    static public function temporary(_e:T_httpError):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.http.Http_t_httperror.T_httpError>);
        return stdgo._internal.net.http.Http_t_httperror_static_extension.T_httpError_static_extension.temporary(_e);
    }
    static public function timeout(_e:T_httpError):Bool {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.http.Http_t_httperror.T_httpError>);
        return stdgo._internal.net.http.Http_t_httperror_static_extension.T_httpError_static_extension.timeout(_e);
    }
    static public function error(_e:T_httpError):String {
        final _e = (_e : stdgo.Ref<stdgo._internal.net.http.Http_t_httperror.T_httpError>);
        return stdgo._internal.net.http.Http_t_httperror_static_extension.T_httpError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_tLogKeyPointer = stdgo._internal.net.http.Http_t_tlogkeypointer.T_tLogKeyPointer;
@:dox(hide) class T_tLogKey_static_extension {

}
@:dox(hide) typedef T_bodyEOFSignalPointer = stdgo._internal.net.http.Http_t_bodyeofsignalpointer.T_bodyEOFSignalPointer;
@:dox(hide) class T_bodyEOFSignal_static_extension {
    static public function close(_es:T_bodyEOFSignal):stdgo.Error {
        final _es = (_es : stdgo.Ref<stdgo._internal.net.http.Http_t_bodyeofsignal.T_bodyEOFSignal>);
        return stdgo._internal.net.http.Http_t_bodyeofsignal_static_extension.T_bodyEOFSignal_static_extension.close(_es);
    }
    static public function read(_es:T_bodyEOFSignal, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _es = (_es : stdgo.Ref<stdgo._internal.net.http.Http_t_bodyeofsignal.T_bodyEOFSignal>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_bodyeofsignal_static_extension.T_bodyEOFSignal_static_extension.read(_es, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_gzipReaderPointer = stdgo._internal.net.http.Http_t_gzipreaderpointer.T_gzipReaderPointer;
@:dox(hide) class T_gzipReader_static_extension {
    static public function close(_gz:T_gzipReader):stdgo.Error {
        final _gz = (_gz : stdgo.Ref<stdgo._internal.net.http.Http_t_gzipreader.T_gzipReader>);
        return stdgo._internal.net.http.Http_t_gzipreader_static_extension.T_gzipReader_static_extension.close(_gz);
    }
    static public function read(_gz:T_gzipReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _gz = (_gz : stdgo.Ref<stdgo._internal.net.http.Http_t_gzipreader.T_gzipReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_gzipreader_static_extension.T_gzipReader_static_extension.read(_gz, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_tlsHandshakeTimeoutErrorPointer = stdgo._internal.net.http.Http_t_tlshandshaketimeouterrorpointer.T_tlsHandshakeTimeoutErrorPointer;
@:dox(hide) class T_tlsHandshakeTimeoutError_static_extension {
    static public function error(_:T_tlsHandshakeTimeoutError):String {
        return stdgo._internal.net.http.Http_t_tlshandshaketimeouterror_static_extension.T_tlsHandshakeTimeoutError_static_extension.error(_);
    }
    static public function temporary(_:T_tlsHandshakeTimeoutError):Bool {
        return stdgo._internal.net.http.Http_t_tlshandshaketimeouterror_static_extension.T_tlsHandshakeTimeoutError_static_extension.temporary(_);
    }
    static public function timeout(_:T_tlsHandshakeTimeoutError):Bool {
        return stdgo._internal.net.http.Http_t_tlshandshaketimeouterror_static_extension.T_tlsHandshakeTimeoutError_static_extension.timeout(_);
    }
}
@:dox(hide) typedef T_fakeLockerPointer = stdgo._internal.net.http.Http_t_fakelockerpointer.T_fakeLockerPointer;
@:dox(hide) class T_fakeLocker_static_extension {
    static public function unlock(_:T_fakeLocker):Void {
        stdgo._internal.net.http.Http_t_fakelocker_static_extension.T_fakeLocker_static_extension.unlock(_);
    }
    static public function lock(_:T_fakeLocker):Void {
        stdgo._internal.net.http.Http_t_fakelocker_static_extension.T_fakeLocker_static_extension.lock(_);
    }
}
@:dox(hide) typedef T_connLRUPointer = stdgo._internal.net.http.Http_t_connlrupointer.T_connLRUPointer;
@:dox(hide) class T_connLRU_static_extension {

}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.net.http.Http_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T__struct_1PointerPointer = stdgo._internal.net.http.Http_t__struct_1pointerpointer.T__struct_1PointerPointer;
@:dox(hide) class T__struct_1Pointer_static_extension {

}
typedef SameSitePointer = stdgo._internal.net.http.Http_samesitepointer.SameSitePointer;
class SameSite_static_extension {

}
typedef DirPointer = stdgo._internal.net.http.Http_dirpointer.DirPointer;
class Dir_static_extension {
    static public function open(_d:Dir, _name:String):stdgo.Tuple<File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_dir_static_extension.Dir_static_extension.open(_d, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_fileInfoDirsPointer = stdgo._internal.net.http.Http_t_fileinfodirspointer.T_fileInfoDirsPointer;
@:dox(hide) class T_fileInfoDirs_static_extension {

}
@:dox(hide) typedef T_dirEntryDirsPointer = stdgo._internal.net.http.Http_t_direntrydirspointer.T_dirEntryDirsPointer;
@:dox(hide) class T_dirEntryDirs_static_extension {

}
@:dox(hide) typedef T_condResultPointer = stdgo._internal.net.http.Http_t_condresultpointer.T_condResultPointer;
@:dox(hide) class T_condResult_static_extension {

}
@:dox(hide) typedef T_countingWriterPointer = stdgo._internal.net.http.Http_t_countingwriterpointer.T_countingWriterPointer;
@:dox(hide) class T_countingWriter_static_extension {
    static public function write(_w:stdgo.Pointer<T_countingWriter>, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_t_countingwriter_static_extension.T_countingWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_http2ErrCodePointer = stdgo._internal.net.http.Http_t_http2errcodepointer.T_http2ErrCodePointer;
@:dox(hide) class T_http2ErrCode_static_extension {
    static public function string(_e:T_http2ErrCode):String {
        return stdgo._internal.net.http.Http_t_http2errcode_static_extension.T_http2ErrCode_static_extension.string(_e);
    }
}
@:dox(hide) typedef T_http2ConnectionErrorPointer = stdgo._internal.net.http.Http_t_http2connectionerrorpointer.T_http2ConnectionErrorPointer;
@:dox(hide) class T_http2ConnectionError_static_extension {
    static public function error(_e:T_http2ConnectionError):String {
        return stdgo._internal.net.http.Http_t_http2connectionerror_static_extension.T_http2ConnectionError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_http2pseudoHeaderErrorPointer = stdgo._internal.net.http.Http_t_http2pseudoheadererrorpointer.T_http2pseudoHeaderErrorPointer;
@:dox(hide) class T_http2pseudoHeaderError_static_extension {
    static public function error(_e:T_http2pseudoHeaderError):String {
        return stdgo._internal.net.http.Http_t_http2pseudoheadererror_static_extension.T_http2pseudoHeaderError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_http2duplicatePseudoHeaderErrorPointer = stdgo._internal.net.http.Http_t_http2duplicatepseudoheadererrorpointer.T_http2duplicatePseudoHeaderErrorPointer;
@:dox(hide) class T_http2duplicatePseudoHeaderError_static_extension {
    static public function error(_e:T_http2duplicatePseudoHeaderError):String {
        return stdgo._internal.net.http.Http_t_http2duplicatepseudoheadererror_static_extension.T_http2duplicatePseudoHeaderError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_http2headerFieldNameErrorPointer = stdgo._internal.net.http.Http_t_http2headerfieldnameerrorpointer.T_http2headerFieldNameErrorPointer;
@:dox(hide) class T_http2headerFieldNameError_static_extension {
    static public function error(_e:T_http2headerFieldNameError):String {
        return stdgo._internal.net.http.Http_t_http2headerfieldnameerror_static_extension.T_http2headerFieldNameError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_http2headerFieldValueErrorPointer = stdgo._internal.net.http.Http_t_http2headerfieldvalueerrorpointer.T_http2headerFieldValueErrorPointer;
@:dox(hide) class T_http2headerFieldValueError_static_extension {
    static public function error(_e:T_http2headerFieldValueError):String {
        return stdgo._internal.net.http.Http_t_http2headerfieldvalueerror_static_extension.T_http2headerFieldValueError_static_extension.error(_e);
    }
}
@:dox(hide) typedef T_http2FrameTypePointer = stdgo._internal.net.http.Http_t_http2frametypepointer.T_http2FrameTypePointer;
@:dox(hide) class T_http2FrameType_static_extension {
    static public function string(_t:T_http2FrameType):String {
        return stdgo._internal.net.http.Http_t_http2frametype_static_extension.T_http2FrameType_static_extension.string(_t);
    }
}
@:dox(hide) typedef T_http2FlagsPointer = stdgo._internal.net.http.Http_t_http2flagspointer.T_http2FlagsPointer;
@:dox(hide) class T_http2Flags_static_extension {
    static public function has(_f:T_http2Flags, _v:T_http2Flags):Bool {
        return stdgo._internal.net.http.Http_t_http2flags_static_extension.T_http2Flags_static_extension.has(_f, _v);
    }
}
@:dox(hide) typedef T_http2frameParserPointer = stdgo._internal.net.http.Http_t_http2frameparserpointer.T_http2frameParserPointer;
@:dox(hide) class T_http2frameParser_static_extension {

}
@:dox(hide) typedef T_http2goroutineLockPointer = stdgo._internal.net.http.Http_t_http2goroutinelockpointer.T_http2goroutineLockPointer;
@:dox(hide) class T_http2goroutineLock_static_extension {

}
@:dox(hide) typedef T_http2streamStatePointer = stdgo._internal.net.http.Http_t_http2streamstatepointer.T_http2streamStatePointer;
@:dox(hide) class T_http2streamState_static_extension {
    static public function string(_st:T_http2streamState):String {
        return stdgo._internal.net.http.Http_t_http2streamstate_static_extension.T_http2streamState_static_extension.string(_st);
    }
}
@:dox(hide) typedef T_http2SettingIDPointer = stdgo._internal.net.http.Http_t_http2settingidpointer.T_http2SettingIDPointer;
@:dox(hide) class T_http2SettingID_static_extension {
    static public function string(_s:T_http2SettingID):String {
        return stdgo._internal.net.http.Http_t_http2settingid_static_extension.T_http2SettingID_static_extension.string(_s);
    }
}
@:dox(hide) typedef T_http2gatePointer = stdgo._internal.net.http.Http_t_http2gatepointer.T_http2gatePointer;
@:dox(hide) class T_http2gate_static_extension {
    static public function wait_(_g:T_http2gate):Void {
        stdgo._internal.net.http.Http_t_http2gate_static_extension.T_http2gate_static_extension.wait_(_g);
    }
    static public function done(_g:T_http2gate):Void {
        stdgo._internal.net.http.Http_t_http2gate_static_extension.T_http2gate_static_extension.done(_g);
    }
}
@:dox(hide) typedef T_http2closeWaiterPointer = stdgo._internal.net.http.Http_t_http2closewaiterpointer.T_http2closeWaiterPointer;
@:dox(hide) class T_http2closeWaiter_static_extension {
    static public function wait_(_cw:T_http2closeWaiter):Void {
        stdgo._internal.net.http.Http_t_http2closewaiter_static_extension.T_http2closeWaiter_static_extension.wait_(_cw);
    }
    static public function close(_cw:T_http2closeWaiter):Void {
        stdgo._internal.net.http.Http_t_http2closewaiter_static_extension.T_http2closeWaiter_static_extension.close(_cw);
    }
    static public function init(_cw:T_http2closeWaiter):Void {
        final _cw = (_cw : stdgo.Ref<stdgo._internal.net.http.Http_t_http2closewaiter.T_http2closeWaiter>);
        stdgo._internal.net.http.Http_t_http2closewaiter_static_extension.T_http2closeWaiter_static_extension.init(_cw);
    }
}
@:dox(hide) typedef T_http2incomparablePointer = stdgo._internal.net.http.Http_t_http2incomparablepointer.T_http2incomparablePointer;
@:dox(hide) class T_http2incomparable_static_extension {

}
@:dox(hide) typedef T_http2serverMessagePointer = stdgo._internal.net.http.Http_t_http2servermessagepointer.T_http2serverMessagePointer;
@:dox(hide) class T_http2serverMessage_static_extension {

}
@:dox(hide) typedef T_http2writeSettingsPointer = stdgo._internal.net.http.Http_t_http2writesettingspointer.T_http2writeSettingsPointer;
@:dox(hide) class T_http2writeSettings_static_extension {

}
@:dox(hide) typedef T_http2writeQueuePoolPointer = stdgo._internal.net.http.Http_t_http2writequeuepoolpointer.T_http2writeQueuePoolPointer;
@:dox(hide) class T_http2writeQueuePool_static_extension {

}
@:dox(hide) typedef T_http2priorityNodeStatePointer = stdgo._internal.net.http.Http_t_http2prioritynodestatepointer.T_http2priorityNodeStatePointer;
@:dox(hide) class T_http2priorityNodeState_static_extension {

}
@:dox(hide) typedef T_http2sortPriorityNodeSiblingsPointer = stdgo._internal.net.http.Http_t_http2sortprioritynodesiblingspointer.T_http2sortPriorityNodeSiblingsPointer;
@:dox(hide) class T_http2sortPriorityNodeSiblings_static_extension {
    static public function less(_z:T_http2sortPriorityNodeSiblings, _i:StdTypes.Int, _k:StdTypes.Int):Bool {
        final _i = (_i : stdgo.GoInt);
        final _k = (_k : stdgo.GoInt);
        return stdgo._internal.net.http.Http_t_http2sortprioritynodesiblings_static_extension.T_http2sortPriorityNodeSiblings_static_extension.less(_z, _i, _k);
    }
    static public function swap(_z:T_http2sortPriorityNodeSiblings, _i:StdTypes.Int, _k:StdTypes.Int):Void {
        final _i = (_i : stdgo.GoInt);
        final _k = (_k : stdgo.GoInt);
        stdgo._internal.net.http.Http_t_http2sortprioritynodesiblings_static_extension.T_http2sortPriorityNodeSiblings_static_extension.swap(_z, _i, _k);
    }
    static public function len(_z:T_http2sortPriorityNodeSiblings):StdTypes.Int {
        return stdgo._internal.net.http.Http_t_http2sortprioritynodesiblings_static_extension.T_http2sortPriorityNodeSiblings_static_extension.len(_z);
    }
}
typedef HeaderPointer = stdgo._internal.net.http.Http_headerpointer.HeaderPointer;
class Header_static_extension {
    static public function writeSubset(_h:Header, _w:stdgo._internal.io.Io_writer.Writer, _exclude:Map<String, Bool>):stdgo.Error {
        final _exclude = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, Bool>();
            for (key => value in _exclude) {
                __obj__[(key : stdgo.GoString)] = value;
            };
            __obj__;
        };
        return stdgo._internal.net.http.Http_header_static_extension.Header_static_extension.writeSubset(_h, _w, _exclude);
    }
    static public function clone(_h:Header):Header {
        return stdgo._internal.net.http.Http_header_static_extension.Header_static_extension.clone(_h);
    }
    static public function write(_h:Header, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        return stdgo._internal.net.http.Http_header_static_extension.Header_static_extension.write(_h, _w);
    }
    static public function del(_h:Header, _key:String):Void {
        final _key = (_key : stdgo.GoString);
        stdgo._internal.net.http.Http_header_static_extension.Header_static_extension.del(_h, _key);
    }
    static public function values(_h:Header, _key:String):Array<String> {
        final _key = (_key : stdgo.GoString);
        return [for (i in stdgo._internal.net.http.Http_header_static_extension.Header_static_extension.values(_h, _key)) i];
    }
    static public function get(_h:Header, _key:String):String {
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.net.http.Http_header_static_extension.Header_static_extension.get(_h, _key);
    }
    static public function set(_h:Header, _key:String, _value:String):Void {
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        stdgo._internal.net.http.Http_header_static_extension.Header_static_extension.set(_h, _key, _value);
    }
    static public function add(_h:Header, _key:String, _value:String):Void {
        final _key = (_key : stdgo.GoString);
        final _value = (_value : stdgo.GoString);
        stdgo._internal.net.http.Http_header_static_extension.Header_static_extension.add(_h, _key, _value);
    }
}
@:dox(hide) typedef T_incomparablePointer = stdgo._internal.net.http.Http_t_incomparablepointer.T_incomparablePointer;
@:dox(hide) class T_incomparable_static_extension {

}
typedef HandlerFuncPointer = stdgo._internal.net.http.Http_handlerfuncpointer.HandlerFuncPointer;
class HandlerFunc_static_extension {
    static public function serveHTTP(_f:HandlerFunc, _w:ResponseWriter, _r:Request):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        stdgo._internal.net.http.Http_handlerfunc_static_extension.HandlerFunc_static_extension.serveHTTP(_f, _w, _r);
    }
}
typedef ConnStatePointer = stdgo._internal.net.http.Http_connstatepointer.ConnStatePointer;
class ConnState_static_extension {
    static public function string(_c:ConnState):String {
        return stdgo._internal.net.http.Http_connstate_static_extension.ConnState_static_extension.string(_c);
    }
}
@:dox(hide) typedef T_htmlSigPointer = stdgo._internal.net.http.Http_t_htmlsigpointer.T_htmlSigPointer;
@:dox(hide) class T_htmlSig_static_extension {

}
@:dox(hide) typedef T_socksCommandPointer = stdgo._internal.net.http.Http_t_sockscommandpointer.T_socksCommandPointer;
@:dox(hide) class T_socksCommand_static_extension {
    static public function string(_cmd:T_socksCommand):String {
        return stdgo._internal.net.http.Http_t_sockscommand_static_extension.T_socksCommand_static_extension.string(_cmd);
    }
}
@:dox(hide) typedef T_socksAuthMethodPointer = stdgo._internal.net.http.Http_t_socksauthmethodpointer.T_socksAuthMethodPointer;
@:dox(hide) class T_socksAuthMethod_static_extension {

}
@:dox(hide) typedef T_socksReplyPointer = stdgo._internal.net.http.Http_t_socksreplypointer.T_socksReplyPointer;
@:dox(hide) class T_socksReply_static_extension {
    static public function string(_code:T_socksReply):String {
        return stdgo._internal.net.http.Http_t_socksreply_static_extension.T_socksReply_static_extension.string(_code);
    }
}
/**
    * 
    * Package http provides HTTP client and server implementations.
    * 
    * Get, Head, Post, and PostForm make HTTP (or HTTPS) requests:
    * 
    * 	resp, err := http.Get("http://example.com/")
    * 	...
    * 	resp, err := http.Post("http://example.com/upload", "image/jpeg", &buf)
    * 	...
    * 	resp, err := http.PostForm("http://example.com/form",
    * 		url.Values{"key": {"Value"}, "id": {"123"}})
    * 
    * The caller must close the response body when finished with it:
    * 
    * 	resp, err := http.Get("http://example.com/")
    * 	if err != nil {
    * 		// handle error
    * 	}
    * 	defer resp.Body.Close()
    * 	body, err := io.ReadAll(resp.Body)
    * 	// ...
    * 
    * # Clients and Transports
    * 
    * For control over HTTP client headers, redirect policy, and other
    * settings, create a Client:
    * 
    * 	client := &http.Client{
    * 		CheckRedirect: redirectPolicyFunc,
    * 	}
    * 
    * 	resp, err := client.Get("http://example.com")
    * 	// ...
    * 
    * 	req, err := http.NewRequest("GET", "http://example.com", nil)
    * 	// ...
    * 	req.Header.Add("If-None-Match", `W/"wyzzy"`)
    * 	resp, err := client.Do(req)
    * 	// ...
    * 
    * For control over proxies, TLS configuration, keep-alives,
    * compression, and other settings, create a Transport:
    * 
    * 	tr := &http.Transport{
    * 		MaxIdleConns:       10,
    * 		IdleConnTimeout:    30 * time.Second,
    * 		DisableCompression: true,
    * 	}
    * 	client := &http.Client{Transport: tr}
    * 	resp, err := client.Get("https://example.com")
    * 
    * Clients and Transports are safe for concurrent use by multiple
    * goroutines and for efficiency should only be created once and re-used.
    * 
    * # Servers
    * 
    * ListenAndServe starts an HTTP server with a given address and handler.
    * The handler is usually nil, which means to use DefaultServeMux.
    * Handle and HandleFunc add handlers to DefaultServeMux:
    * 
    * 	http.Handle("/foo", fooHandler)
    * 
    * 	http.HandleFunc("/bar", func(w http.ResponseWriter, r *http.Request) {
    * 		fmt.Fprintf(w, "Hello, %q", html.EscapeString(r.URL.Path))
    * 	})
    * 
    * 	log.Fatal(http.ListenAndServe(":8080", nil))
    * 
    * More control over the server's behavior is available by creating a
    * custom Server:
    * 
    * 	s := &http.Server{
    * 		Addr:           ":8080",
    * 		Handler:        myHandler,
    * 		ReadTimeout:    10 * time.Second,
    * 		WriteTimeout:   10 * time.Second,
    * 		MaxHeaderBytes: 1 << 20,
    * 	}
    * 	log.Fatal(s.ListenAndServe())
    * 
    * # HTTP/2
    * 
    * Starting with Go 1.6, the http package has transparent support for the
    * HTTP/2 protocol when using HTTPS. Programs that must disable HTTP/2
    * can do so by setting Transport.TLSNextProto (for clients) or
    * Server.TLSNextProto (for servers) to a non-nil, empty
    * map. Alternatively, the following GODEBUG settings are
    * currently supported:
    * 
    * 	GODEBUG=http2client=0  # disable HTTP/2 client support
    * 	GODEBUG=http2server=0  # disable HTTP/2 server support
    * 	GODEBUG=http2debug=1   # enable verbose HTTP/2 debug logs
    * 	GODEBUG=http2debug=2   # ... even more verbose, with frame dumps
    * 
    * Please report any issues before disabling HTTP/2 support: https://golang.org/s/http2bug
    * 
    * The http package's Transport and Server both automatically enable
    * HTTP/2 support for simple configurations. To enable HTTP/2 for more
    * complex configurations, to use lower-level HTTP/2 features, or to use
    * a newer version of Go's http2 package, import "golang.org/x/net/http2"
    * directly and use its ConfigureTransport and/or ConfigureServer
    * functions. Manually configuring HTTP/2 via the golang.org/x/net/http2
    * package takes precedence over the net/http package's built-in HTTP/2
    * support.
    * 
**/
class Http {
    /**
        * Get issues a GET to the specified URL. If the response is one of
        * the following redirect codes, Get follows the redirect, up to a
        * maximum of 10 redirects:
        * 
        * 	301 (Moved Permanently)
        * 	302 (Found)
        * 	303 (See Other)
        * 	307 (Temporary Redirect)
        * 	308 (Permanent Redirect)
        * 
        * An error is returned if there were too many redirects or if there
        * was an HTTP protocol error. A non-2xx response doesn't cause an
        * error. Any returned error will be of type *url.Error. The url.Error
        * value's Timeout method will report true if the request timed out.
        * 
        * When err is nil, resp always contains a non-nil resp.Body.
        * Caller should close resp.Body when done reading from it.
        * 
        * Get is a wrapper around DefaultClient.Get.
        * 
        * To make a request with custom headers, use NewRequest and
        * DefaultClient.Do.
        * 
        * To make a request with a specified context.Context, use NewRequestWithContext
        * and DefaultClient.Do.
    **/
    static public inline function get(_url:String):stdgo.Tuple<Response, stdgo.Error> {
        final _url = (_url : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_get.get(_url);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Post issues a POST to the specified URL.
        * 
        * Caller should close resp.Body when done reading from it.
        * 
        * If the provided body is an io.Closer, it is closed after the
        * request.
        * 
        * Post is a wrapper around DefaultClient.Post.
        * 
        * To set custom headers, use NewRequest and DefaultClient.Do.
        * 
        * See the Client.Do method documentation for details on how redirects
        * are handled.
        * 
        * To make a request with a specified context.Context, use NewRequestWithContext
        * and DefaultClient.Do.
    **/
    static public inline function post(_url:String, _contentType:String, _body:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<Response, stdgo.Error> {
        final _url = (_url : stdgo.GoString);
        final _contentType = (_contentType : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_post.post(_url, _contentType, _body);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * PostForm issues a POST to the specified URL, with data's keys and
        * values URL-encoded as the request body.
        * 
        * The Content-Type header is set to application/x-www-form-urlencoded.
        * To set other headers, use NewRequest and DefaultClient.Do.
        * 
        * When err is nil, resp always contains a non-nil resp.Body.
        * Caller should close resp.Body when done reading from it.
        * 
        * PostForm is a wrapper around DefaultClient.PostForm.
        * 
        * See the Client.Do method documentation for details on how redirects
        * are handled.
        * 
        * To make a request with a specified context.Context, use NewRequestWithContext
        * and DefaultClient.Do.
    **/
    static public inline function postForm(_url:String, _data:stdgo._internal.net.url.Url_values.Values):stdgo.Tuple<Response, stdgo.Error> {
        final _url = (_url : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_postform.postForm(_url, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * Head issues a HEAD to the specified URL. If the response is one of
        * the following redirect codes, Head follows the redirect, up to a
        * maximum of 10 redirects:
        * 
        * 	301 (Moved Permanently)
        * 	302 (Found)
        * 	303 (See Other)
        * 	307 (Temporary Redirect)
        * 	308 (Permanent Redirect)
        * 
        * Head is a wrapper around DefaultClient.Head.
        * 
        * To make a request with a specified context.Context, use NewRequestWithContext
        * and DefaultClient.Do.
    **/
    static public inline function head(_url:String):stdgo.Tuple<Response, stdgo.Error> {
        final _url = (_url : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_head.head(_url);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * SetCookie adds a Set-Cookie header to the provided ResponseWriter's headers.
        * The provided cookie must have a valid Name. Invalid cookies may be
        * silently dropped.
    **/
    static public inline function setCookie(_w:ResponseWriter, _cookie:Cookie):Void {
        final _cookie = (_cookie : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>);
        stdgo._internal.net.http.Http_setcookie.setCookie(_w, _cookie);
    }
    /**
        * NewFileTransport returns a new RoundTripper, serving the provided
        * FileSystem. The returned RoundTripper ignores the URL host in its
        * incoming requests, as well as most other properties of the
        * request.
        * 
        * The typical use case for NewFileTransport is to register the "file"
        * protocol with a Transport, as in:
        * 
        * 	t := &http.Transport{}
        * 	t.RegisterProtocol("file", http.NewFileTransport(http.Dir("/")))
        * 	c := &http.Client{Transport: t}
        * 	res, err := c.Get("file:///etc/passwd")
        * 	...
    **/
    static public inline function newFileTransport(_fs:FileSystem):RoundTripper {
        return stdgo._internal.net.http.Http_newfiletransport.newFileTransport(_fs);
    }
    /**
        * ServeContent replies to the request using the content in the
        * provided ReadSeeker. The main benefit of ServeContent over io.Copy
        * is that it handles Range requests properly, sets the MIME type, and
        * handles If-Match, If-Unmodified-Since, If-None-Match, If-Modified-Since,
        * and If-Range requests.
        * 
        * If the response's Content-Type header is not set, ServeContent
        * first tries to deduce the type from name's file extension and,
        * if that fails, falls back to reading the first block of the content
        * and passing it to DetectContentType.
        * The name is otherwise unused; in particular it can be empty and is
        * never sent in the response.
        * 
        * If modtime is not the zero time or Unix epoch, ServeContent
        * includes it in a Last-Modified header in the response. If the
        * request includes an If-Modified-Since header, ServeContent uses
        * modtime to decide whether the content needs to be sent at all.
        * 
        * The content's Seek method must work: ServeContent uses
        * a seek to the end of the content to determine its size.
        * 
        * If the caller has set w's ETag header formatted per RFC 7232, section 2.3,
        * ServeContent uses it to handle requests using If-Match, If-None-Match, or If-Range.
        * 
        * Note that *os.File implements the io.ReadSeeker interface.
    **/
    static public inline function serveContent(_w:ResponseWriter, _req:Request, _name:String, _modtime:stdgo._internal.time.Time_time.Time, _content:stdgo._internal.io.Io_readseeker.ReadSeeker):Void {
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        final _name = (_name : stdgo.GoString);
        stdgo._internal.net.http.Http_servecontent.serveContent(_w, _req, _name, _modtime, _content);
    }
    /**
        * ServeFile replies to the request with the contents of the named
        * file or directory.
        * 
        * If the provided file or directory name is a relative path, it is
        * interpreted relative to the current directory and may ascend to
        * parent directories. If the provided name is constructed from user
        * input, it should be sanitized before calling ServeFile.
        * 
        * As a precaution, ServeFile will reject requests where r.URL.Path
        * contains a ".." path element; this protects against callers who
        * might unsafely use filepath.Join on r.URL.Path without sanitizing
        * it and then use that filepath.Join result as the name argument.
        * 
        * As another special case, ServeFile redirects any request where r.URL.Path
        * ends in "/index.html" to the same path, without the final
        * "index.html". To avoid such redirects either modify the path or
        * use ServeContent.
        * 
        * Outside of those two special cases, ServeFile does not use
        * r.URL.Path for selecting the file or directory to serve; only the
        * file or directory provided in the name argument is used.
    **/
    static public inline function serveFile(_w:ResponseWriter, _r:Request, _name:String):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        final _name = (_name : stdgo.GoString);
        stdgo._internal.net.http.Http_servefile.serveFile(_w, _r, _name);
    }
    /**
        * FS converts fsys to a FileSystem implementation,
        * for use with FileServer and NewFileTransport.
        * The files provided by fsys must implement io.Seeker.
    **/
    static public inline function fS(_fsys:stdgo._internal.io.fs.Fs_fs.FS):FileSystem {
        return stdgo._internal.net.http.Http_fs.fS(_fsys);
    }
    /**
        * FileServer returns a handler that serves HTTP requests
        * with the contents of the file system rooted at root.
        * 
        * As a special case, the returned file server redirects any request
        * ending in "/index.html" to the same path, without the final
        * "index.html".
        * 
        * To use the operating system's file system implementation,
        * use http.Dir:
        * 
        * 	http.Handle("/", http.FileServer(http.Dir("/tmp")))
        * 
        * To use an fs.FS implementation, use http.FS to convert it:
        * 
        * 	http.Handle("/", http.FileServer(http.FS(fsys)))
    **/
    static public inline function fileServer(_root:FileSystem):Handler {
        return stdgo._internal.net.http.Http_fileserver.fileServer(_root);
    }
    /**
        * ParseTime parses a time header (such as the Date: header),
        * trying each of the three formats allowed by HTTP/1.1:
        * TimeFormat, time.RFC850, and time.ANSIC.
    **/
    static public inline function parseTime(_text:String):stdgo.Tuple<stdgo._internal.time.Time_time.Time, stdgo.Error> {
        final _text = (_text : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_parsetime.parseTime(_text);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * CanonicalHeaderKey returns the canonical format of the
        * header key s. The canonicalization converts the first
        * letter and any letter following a hyphen to upper case;
        * the rest are converted to lowercase. For example, the
        * canonical key for "accept-encoding" is "Accept-Encoding".
        * If s contains a space or invalid header field bytes, it is
        * returned without modifications.
    **/
    static public inline function canonicalHeaderKey(_s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.net.http.Http_canonicalheaderkey.canonicalHeaderKey(_s);
    }
    /**
        * ParseHTTPVersion parses an HTTP version string according to RFC 7230, section 2.6.
        * "HTTP/1.0" returns (1, 0, true). Note that strings without
        * a minor version, such as "HTTP/2", are not valid.
    **/
    static public inline function parseHTTPVersion(_vers:String):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, Bool> {
        final _vers = (_vers : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_parsehttpversion.parseHTTPVersion(_vers);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        * NewRequest wraps NewRequestWithContext using context.Background.
    **/
    static public inline function newRequest(_method:String, _url:String, _body:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<Request, stdgo.Error> {
        final _method = (_method : stdgo.GoString);
        final _url = (_url : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_newrequest.newRequest(_method, _url, _body);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * NewRequestWithContext returns a new Request given a method, URL, and
        * optional body.
        * 
        * If the provided body is also an io.Closer, the returned
        * Request.Body is set to body and will be closed by the Client
        * methods Do, Post, and PostForm, and Transport.RoundTrip.
        * 
        * NewRequestWithContext returns a Request suitable for use with
        * Client.Do or Transport.RoundTrip. To create a request for use with
        * testing a Server Handler, either use the NewRequest function in the
        * net/http/httptest package, use ReadRequest, or manually update the
        * Request fields. For an outgoing client request, the context
        * controls the entire lifetime of a request and its response:
        * obtaining a connection, sending the request, and reading the
        * response headers and body. See the Request type's documentation for
        * the difference between inbound and outbound request fields.
        * 
        * If body is of type *bytes.Buffer, *bytes.Reader, or
        * *strings.Reader, the returned request's ContentLength is set to its
        * exact value (instead of -1), GetBody is populated (so 307 and 308
        * redirects can replay the body), and Body is set to NoBody if the
        * ContentLength is 0.
    **/
    static public inline function newRequestWithContext(_ctx:stdgo._internal.context.Context_context.Context, _method:String, _url:String, _body:stdgo._internal.io.Io_reader.Reader):stdgo.Tuple<Request, stdgo.Error> {
        final _method = (_method : stdgo.GoString);
        final _url = (_url : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_newrequestwithcontext.newRequestWithContext(_ctx, _method, _url, _body);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ReadRequest reads and parses an incoming request from b.
        * 
        * ReadRequest is a low-level function and should only be used for
        * specialized applications; most code should use the Server to read
        * requests and handle them via the Handler interface. ReadRequest
        * only supports HTTP/1.x requests. For HTTP/2, use golang.org/x/net/http2.
    **/
    static public inline function readRequest(_b:stdgo._internal.bufio.Bufio_reader.Reader):stdgo.Tuple<Request, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        return {
            final obj = stdgo._internal.net.http.Http_readrequest.readRequest(_b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * MaxBytesReader is similar to io.LimitReader but is intended for
        * limiting the size of incoming request bodies. In contrast to
        * io.LimitReader, MaxBytesReader's result is a ReadCloser, returns a
        * non-nil error of type *MaxBytesError for a Read beyond the limit,
        * and closes the underlying reader when its Close method is called.
        * 
        * MaxBytesReader prevents clients from accidentally or maliciously
        * sending a large request and wasting server resources. If possible,
        * it tells the ResponseWriter to close the connection after the limit
        * has been reached.
    **/
    static public inline function maxBytesReader(_w:ResponseWriter, _r:stdgo._internal.io.Io_readcloser.ReadCloser, _n:haxe.Int64):stdgo._internal.io.Io_readcloser.ReadCloser {
        final _n = (_n : stdgo.GoInt64);
        return stdgo._internal.net.http.Http_maxbytesreader.maxBytesReader(_w, _r, _n);
    }
    /**
        * ReadResponse reads and returns an HTTP response from r.
        * The req parameter optionally specifies the Request that corresponds
        * to this Response. If nil, a GET request is assumed.
        * Clients must call resp.Body.Close when finished reading resp.Body.
        * After that call, clients can inspect resp.Trailer to find key/value
        * pairs included in the response trailer.
    **/
    static public inline function readResponse(_r:stdgo._internal.bufio.Bufio_reader.Reader, _req:Request):stdgo.Tuple<Response, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_readresponse.readResponse(_r, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * NewResponseController creates a ResponseController for a request.
        * 
        * The ResponseWriter should be the original value passed to the Handler.ServeHTTP method,
        * or have an Unwrap method returning the original ResponseWriter.
        * 
        * If the ResponseWriter implements any of the following methods, the ResponseController
        * will call them as appropriate:
        * 
        * 	Flush()
        * 	FlushError() error // alternative Flush returning an error
        * 	Hijack() (net.Conn, *bufio.ReadWriter, error)
        * 	SetReadDeadline(deadline time.Time) error
        * 	SetWriteDeadline(deadline time.Time) error
        * 	EnableFullDuplex() error
        * 
        * If the ResponseWriter does not support a method, ResponseController returns
        * an error matching ErrNotSupported.
    **/
    static public inline function newResponseController(_rw:ResponseWriter):ResponseController {
        return stdgo._internal.net.http.Http_newresponsecontroller.newResponseController(_rw);
    }
    /**
        * Error replies to the request with the specified error message and HTTP code.
        * It does not otherwise end the request; the caller should ensure no further
        * writes are done to w.
        * The error message should be plain text.
    **/
    static public inline function error(_w:ResponseWriter, _error:String, _code:StdTypes.Int):Void {
        final _error = (_error : stdgo.GoString);
        final _code = (_code : stdgo.GoInt);
        stdgo._internal.net.http.Http_error.error(_w, _error, _code);
    }
    /**
        * NotFound replies to the request with an HTTP 404 not found error.
    **/
    static public inline function notFound(_w:ResponseWriter, _r:Request):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        stdgo._internal.net.http.Http_notfound.notFound(_w, _r);
    }
    /**
        * NotFoundHandler returns a simple request handler
        * that replies to each request with a “404 page not found” reply.
    **/
    static public inline function notFoundHandler():Handler {
        return stdgo._internal.net.http.Http_notfoundhandler.notFoundHandler();
    }
    /**
        * StripPrefix returns a handler that serves HTTP requests by removing the
        * given prefix from the request URL's Path (and RawPath if set) and invoking
        * the handler h. StripPrefix handles a request for a path that doesn't begin
        * with prefix by replying with an HTTP 404 not found error. The prefix must
        * match exactly: if the prefix in the request contains escaped characters
        * the reply is also an HTTP 404 not found error.
    **/
    static public inline function stripPrefix(_prefix:String, _h:Handler):Handler {
        final _prefix = (_prefix : stdgo.GoString);
        return stdgo._internal.net.http.Http_stripprefix.stripPrefix(_prefix, _h);
    }
    /**
        * Redirect replies to the request with a redirect to url,
        * which may be a path relative to the request path.
        * 
        * The provided code should be in the 3xx range and is usually
        * StatusMovedPermanently, StatusFound or StatusSeeOther.
        * 
        * If the Content-Type header has not been set, Redirect sets it
        * to "text/html; charset=utf-8" and writes a small HTML body.
        * Setting the Content-Type header to any value, including nil,
        * disables that behavior.
    **/
    static public inline function redirect(_w:ResponseWriter, _r:Request, _url:String, _code:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        final _url = (_url : stdgo.GoString);
        final _code = (_code : stdgo.GoInt);
        stdgo._internal.net.http.Http_redirect.redirect(_w, _r, _url, _code);
    }
    /**
        * RedirectHandler returns a request handler that redirects
        * each request it receives to the given url using the given
        * status code.
        * 
        * The provided code should be in the 3xx range and is usually
        * StatusMovedPermanently, StatusFound or StatusSeeOther.
    **/
    static public inline function redirectHandler(_url:String, _code:StdTypes.Int):Handler {
        final _url = (_url : stdgo.GoString);
        final _code = (_code : stdgo.GoInt);
        return stdgo._internal.net.http.Http_redirecthandler.redirectHandler(_url, _code);
    }
    /**
        * NewServeMux allocates and returns a new ServeMux.
    **/
    static public inline function newServeMux():ServeMux {
        return stdgo._internal.net.http.Http_newservemux.newServeMux();
    }
    /**
        * Handle registers the handler for the given pattern
        * in the DefaultServeMux.
        * The documentation for ServeMux explains how patterns are matched.
    **/
    static public inline function handle(_pattern:String, _handler:Handler):Void {
        final _pattern = (_pattern : stdgo.GoString);
        stdgo._internal.net.http.Http_handle.handle(_pattern, _handler);
    }
    /**
        * HandleFunc registers the handler function for the given pattern
        * in the DefaultServeMux.
        * The documentation for ServeMux explains how patterns are matched.
    **/
    static public inline function handleFunc(_pattern:String, _handler:(ResponseWriter, Request) -> Void):Void {
        final _pattern = (_pattern : stdgo.GoString);
        final _handler = _handler;
        stdgo._internal.net.http.Http_handlefunc.handleFunc(_pattern, _handler);
    }
    /**
        * Serve accepts incoming HTTP connections on the listener l,
        * creating a new service goroutine for each. The service goroutines
        * read requests and then call handler to reply to them.
        * 
        * The handler is typically nil, in which case the DefaultServeMux is used.
        * 
        * HTTP/2 support is only enabled if the Listener returns *tls.Conn
        * connections and they were configured with "h2" in the TLS
        * Config.NextProtos.
        * 
        * Serve always returns a non-nil error.
    **/
    static public inline function serve(_l:stdgo._internal.net.Net_listener.Listener, _handler:Handler):stdgo.Error {
        return stdgo._internal.net.http.Http_serve.serve(_l, _handler);
    }
    /**
        * ServeTLS accepts incoming HTTPS connections on the listener l,
        * creating a new service goroutine for each. The service goroutines
        * read requests and then call handler to reply to them.
        * 
        * The handler is typically nil, in which case the DefaultServeMux is used.
        * 
        * Additionally, files containing a certificate and matching private key
        * for the server must be provided. If the certificate is signed by a
        * certificate authority, the certFile should be the concatenation
        * of the server's certificate, any intermediates, and the CA's certificate.
        * 
        * ServeTLS always returns a non-nil error.
    **/
    static public inline function serveTLS(_l:stdgo._internal.net.Net_listener.Listener, _handler:Handler, _certFile:String, _keyFile:String):stdgo.Error {
        final _certFile = (_certFile : stdgo.GoString);
        final _keyFile = (_keyFile : stdgo.GoString);
        return stdgo._internal.net.http.Http_servetls.serveTLS(_l, _handler, _certFile, _keyFile);
    }
    /**
        * AllowQuerySemicolons returns a handler that serves requests by converting any
        * unescaped semicolons in the URL query to ampersands, and invoking the handler h.
        * 
        * This restores the pre-Go 1.17 behavior of splitting query parameters on both
        * semicolons and ampersands. (See golang.org/issue/25192). Note that this
        * behavior doesn't match that of many proxies, and the mismatch can lead to
        * security issues.
        * 
        * AllowQuerySemicolons should be invoked before Request.ParseForm is called.
    **/
    static public inline function allowQuerySemicolons(_h:Handler):Handler {
        return stdgo._internal.net.http.Http_allowquerysemicolons.allowQuerySemicolons(_h);
    }
    /**
        * ListenAndServe listens on the TCP network address addr and then calls
        * Serve with handler to handle requests on incoming connections.
        * Accepted connections are configured to enable TCP keep-alives.
        * 
        * The handler is typically nil, in which case the DefaultServeMux is used.
        * 
        * ListenAndServe always returns a non-nil error.
    **/
    static public inline function listenAndServe(_addr:String, _handler:Handler):stdgo.Error {
        final _addr = (_addr : stdgo.GoString);
        return stdgo._internal.net.http.Http_listenandserve.listenAndServe(_addr, _handler);
    }
    /**
        * ListenAndServeTLS acts identically to ListenAndServe, except that it
        * expects HTTPS connections. Additionally, files containing a certificate and
        * matching private key for the server must be provided. If the certificate
        * is signed by a certificate authority, the certFile should be the concatenation
        * of the server's certificate, any intermediates, and the CA's certificate.
    **/
    static public inline function listenAndServeTLS(_addr:String, _certFile:String, _keyFile:String, _handler:Handler):stdgo.Error {
        final _addr = (_addr : stdgo.GoString);
        final _certFile = (_certFile : stdgo.GoString);
        final _keyFile = (_keyFile : stdgo.GoString);
        return stdgo._internal.net.http.Http_listenandservetls.listenAndServeTLS(_addr, _certFile, _keyFile, _handler);
    }
    /**
        * TimeoutHandler returns a Handler that runs h with the given time limit.
        * 
        * The new Handler calls h.ServeHTTP to handle each request, but if a
        * call runs for longer than its time limit, the handler responds with
        * a 503 Service Unavailable error and the given message in its body.
        * (If msg is empty, a suitable default message will be sent.)
        * After such a timeout, writes by h to its ResponseWriter will return
        * ErrHandlerTimeout.
        * 
        * TimeoutHandler supports the Pusher interface but does not support
        * the Hijacker or Flusher interfaces.
    **/
    static public inline function timeoutHandler(_h:Handler, _dt:stdgo._internal.time.Time_duration.Duration, _msg:String):Handler {
        final _msg = (_msg : stdgo.GoString);
        return stdgo._internal.net.http.Http_timeouthandler.timeoutHandler(_h, _dt, _msg);
    }
    /**
        * MaxBytesHandler returns a Handler that runs h with its ResponseWriter and Request.Body wrapped by a MaxBytesReader.
    **/
    static public inline function maxBytesHandler(_h:Handler, _n:haxe.Int64):Handler {
        final _n = (_n : stdgo.GoInt64);
        return stdgo._internal.net.http.Http_maxbyteshandler.maxBytesHandler(_h, _n);
    }
    /**
        * DetectContentType implements the algorithm described
        * at https://mimesniff.spec.whatwg.org/ to determine the
        * Content-Type of the given data. It considers at most the
        * first 512 bytes of data. DetectContentType always returns
        * a valid MIME type: if it cannot determine a more specific one, it
        * returns "application/octet-stream".
    **/
    static public inline function detectContentType(_data:Array<std.UInt>):String {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_detectcontenttype.detectContentType(_data);
    }
    /**
        * StatusText returns a text for the HTTP status code. It returns the empty
        * string if the code is unknown.
    **/
    static public inline function statusText(_code:StdTypes.Int):String {
        final _code = (_code : stdgo.GoInt);
        return stdgo._internal.net.http.Http_statustext.statusText(_code);
    }
    /**
        * ProxyFromEnvironment returns the URL of the proxy to use for a
        * given request, as indicated by the environment variables
        * HTTP_PROXY, HTTPS_PROXY and NO_PROXY (or the lowercase versions
        * thereof). Requests use the proxy from the environment variable
        * matching their scheme, unless excluded by NO_PROXY.
        * 
        * The environment values may be either a complete URL or a
        * "host[:port]", in which case the "http" scheme is assumed.
        * The schemes "http", "https", and "socks5" are supported.
        * An error is returned if the value is a different form.
        * 
        * A nil URL and nil error are returned if no proxy is defined in the
        * environment, or a proxy should not be used for the given request,
        * as defined by NO_PROXY.
        * 
        * As a special case, if req.URL.Host is "localhost" (with or without
        * a port number), then a nil URL and nil error will be returned.
    **/
    static public inline function proxyFromEnvironment(_req:Request):stdgo.Tuple<stdgo._internal.net.url.Url_url.URL, stdgo.Error> {
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_proxyfromenvironment.proxyFromEnvironment(_req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * ProxyURL returns a proxy function (for use in a Transport)
        * that always returns the same URL.
    **/
    static public inline function proxyURL(_fixedURL:stdgo._internal.net.url.Url_url.URL):Request -> stdgo.Tuple<stdgo._internal.net.url.Url_url.URL, stdgo.Error> {
        final _fixedURL = (_fixedURL : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        return _0 -> stdgo._internal.net.http.Http_proxyurl.proxyURL(_fixedURL)(_0);
    }
}
