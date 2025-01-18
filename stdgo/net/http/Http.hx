package stdgo.net.http;
final sameSiteDefaultMode : SameSite = stdgo._internal.net.http.Http_sameSiteDefaultMode.sameSiteDefaultMode;
final sameSiteLaxMode = stdgo._internal.net.http.Http_sameSiteLaxMode.sameSiteLaxMode;
final sameSiteStrictMode = stdgo._internal.net.http.Http_sameSiteStrictMode.sameSiteStrictMode;
final sameSiteNoneMode = stdgo._internal.net.http.Http_sameSiteNoneMode.sameSiteNoneMode;
final methodGet : String = stdgo._internal.net.http.Http_methodGet.methodGet;
final methodHead : String = stdgo._internal.net.http.Http_methodHead.methodHead;
final methodPost : String = stdgo._internal.net.http.Http_methodPost.methodPost;
final methodPut : String = stdgo._internal.net.http.Http_methodPut.methodPut;
final methodPatch : String = stdgo._internal.net.http.Http_methodPatch.methodPatch;
final methodDelete : String = stdgo._internal.net.http.Http_methodDelete.methodDelete;
final methodConnect : String = stdgo._internal.net.http.Http_methodConnect.methodConnect;
final methodOptions : String = stdgo._internal.net.http.Http_methodOptions.methodOptions;
final methodTrace : String = stdgo._internal.net.http.Http_methodTrace.methodTrace;
final trailerPrefix : String = stdgo._internal.net.http.Http_trailerPrefix.trailerPrefix;
final defaultMaxHeaderBytes : haxe.UInt64 = stdgo._internal.net.http.Http_defaultMaxHeaderBytes.defaultMaxHeaderBytes;
final timeFormat : String = stdgo._internal.net.http.Http_timeFormat.timeFormat;
final stateNew : ConnState = stdgo._internal.net.http.Http_stateNew.stateNew;
final stateActive = stdgo._internal.net.http.Http_stateActive.stateActive;
final stateIdle = stdgo._internal.net.http.Http_stateIdle.stateIdle;
final stateHijacked = stdgo._internal.net.http.Http_stateHijacked.stateHijacked;
final stateClosed = stdgo._internal.net.http.Http_stateClosed.stateClosed;
final statusContinue : haxe.UInt64 = stdgo._internal.net.http.Http_statusContinue.statusContinue;
final statusSwitchingProtocols : haxe.UInt64 = stdgo._internal.net.http.Http_statusSwitchingProtocols.statusSwitchingProtocols;
final statusProcessing : haxe.UInt64 = stdgo._internal.net.http.Http_statusProcessing.statusProcessing;
final statusEarlyHints : haxe.UInt64 = stdgo._internal.net.http.Http_statusEarlyHints.statusEarlyHints;
final statusOK : haxe.UInt64 = stdgo._internal.net.http.Http_statusOK.statusOK;
final statusCreated : haxe.UInt64 = stdgo._internal.net.http.Http_statusCreated.statusCreated;
final statusAccepted : haxe.UInt64 = stdgo._internal.net.http.Http_statusAccepted.statusAccepted;
final statusNonAuthoritativeInfo : haxe.UInt64 = stdgo._internal.net.http.Http_statusNonAuthoritativeInfo.statusNonAuthoritativeInfo;
final statusNoContent : haxe.UInt64 = stdgo._internal.net.http.Http_statusNoContent.statusNoContent;
final statusResetContent : haxe.UInt64 = stdgo._internal.net.http.Http_statusResetContent.statusResetContent;
final statusPartialContent : haxe.UInt64 = stdgo._internal.net.http.Http_statusPartialContent.statusPartialContent;
final statusMultiStatus : haxe.UInt64 = stdgo._internal.net.http.Http_statusMultiStatus.statusMultiStatus;
final statusAlreadyReported : haxe.UInt64 = stdgo._internal.net.http.Http_statusAlreadyReported.statusAlreadyReported;
final statusIMUsed : haxe.UInt64 = stdgo._internal.net.http.Http_statusIMUsed.statusIMUsed;
final statusMultipleChoices : haxe.UInt64 = stdgo._internal.net.http.Http_statusMultipleChoices.statusMultipleChoices;
final statusMovedPermanently : haxe.UInt64 = stdgo._internal.net.http.Http_statusMovedPermanently.statusMovedPermanently;
final statusFound : haxe.UInt64 = stdgo._internal.net.http.Http_statusFound.statusFound;
final statusSeeOther : haxe.UInt64 = stdgo._internal.net.http.Http_statusSeeOther.statusSeeOther;
final statusNotModified : haxe.UInt64 = stdgo._internal.net.http.Http_statusNotModified.statusNotModified;
final statusUseProxy : haxe.UInt64 = stdgo._internal.net.http.Http_statusUseProxy.statusUseProxy;
final statusTemporaryRedirect : haxe.UInt64 = stdgo._internal.net.http.Http_statusTemporaryRedirect.statusTemporaryRedirect;
final statusPermanentRedirect : haxe.UInt64 = stdgo._internal.net.http.Http_statusPermanentRedirect.statusPermanentRedirect;
final statusBadRequest : haxe.UInt64 = stdgo._internal.net.http.Http_statusBadRequest.statusBadRequest;
final statusUnauthorized : haxe.UInt64 = stdgo._internal.net.http.Http_statusUnauthorized.statusUnauthorized;
final statusPaymentRequired : haxe.UInt64 = stdgo._internal.net.http.Http_statusPaymentRequired.statusPaymentRequired;
final statusForbidden : haxe.UInt64 = stdgo._internal.net.http.Http_statusForbidden.statusForbidden;
final statusNotFound : haxe.UInt64 = stdgo._internal.net.http.Http_statusNotFound.statusNotFound;
final statusMethodNotAllowed : haxe.UInt64 = stdgo._internal.net.http.Http_statusMethodNotAllowed.statusMethodNotAllowed;
final statusNotAcceptable : haxe.UInt64 = stdgo._internal.net.http.Http_statusNotAcceptable.statusNotAcceptable;
final statusProxyAuthRequired : haxe.UInt64 = stdgo._internal.net.http.Http_statusProxyAuthRequired.statusProxyAuthRequired;
final statusRequestTimeout : haxe.UInt64 = stdgo._internal.net.http.Http_statusRequestTimeout.statusRequestTimeout;
final statusConflict : haxe.UInt64 = stdgo._internal.net.http.Http_statusConflict.statusConflict;
final statusGone : haxe.UInt64 = stdgo._internal.net.http.Http_statusGone.statusGone;
final statusLengthRequired : haxe.UInt64 = stdgo._internal.net.http.Http_statusLengthRequired.statusLengthRequired;
final statusPreconditionFailed : haxe.UInt64 = stdgo._internal.net.http.Http_statusPreconditionFailed.statusPreconditionFailed;
final statusRequestEntityTooLarge : haxe.UInt64 = stdgo._internal.net.http.Http_statusRequestEntityTooLarge.statusRequestEntityTooLarge;
final statusRequestURITooLong : haxe.UInt64 = stdgo._internal.net.http.Http_statusRequestURITooLong.statusRequestURITooLong;
final statusUnsupportedMediaType : haxe.UInt64 = stdgo._internal.net.http.Http_statusUnsupportedMediaType.statusUnsupportedMediaType;
final statusRequestedRangeNotSatisfiable : haxe.UInt64 = stdgo._internal.net.http.Http_statusRequestedRangeNotSatisfiable.statusRequestedRangeNotSatisfiable;
final statusExpectationFailed : haxe.UInt64 = stdgo._internal.net.http.Http_statusExpectationFailed.statusExpectationFailed;
final statusTeapot : haxe.UInt64 = stdgo._internal.net.http.Http_statusTeapot.statusTeapot;
final statusMisdirectedRequest : haxe.UInt64 = stdgo._internal.net.http.Http_statusMisdirectedRequest.statusMisdirectedRequest;
final statusUnprocessableEntity : haxe.UInt64 = stdgo._internal.net.http.Http_statusUnprocessableEntity.statusUnprocessableEntity;
final statusLocked : haxe.UInt64 = stdgo._internal.net.http.Http_statusLocked.statusLocked;
final statusFailedDependency : haxe.UInt64 = stdgo._internal.net.http.Http_statusFailedDependency.statusFailedDependency;
final statusTooEarly : haxe.UInt64 = stdgo._internal.net.http.Http_statusTooEarly.statusTooEarly;
final statusUpgradeRequired : haxe.UInt64 = stdgo._internal.net.http.Http_statusUpgradeRequired.statusUpgradeRequired;
final statusPreconditionRequired : haxe.UInt64 = stdgo._internal.net.http.Http_statusPreconditionRequired.statusPreconditionRequired;
final statusTooManyRequests : haxe.UInt64 = stdgo._internal.net.http.Http_statusTooManyRequests.statusTooManyRequests;
final statusRequestHeaderFieldsTooLarge : haxe.UInt64 = stdgo._internal.net.http.Http_statusRequestHeaderFieldsTooLarge.statusRequestHeaderFieldsTooLarge;
final statusUnavailableForLegalReasons : haxe.UInt64 = stdgo._internal.net.http.Http_statusUnavailableForLegalReasons.statusUnavailableForLegalReasons;
final statusInternalServerError : haxe.UInt64 = stdgo._internal.net.http.Http_statusInternalServerError.statusInternalServerError;
final statusNotImplemented : haxe.UInt64 = stdgo._internal.net.http.Http_statusNotImplemented.statusNotImplemented;
final statusBadGateway : haxe.UInt64 = stdgo._internal.net.http.Http_statusBadGateway.statusBadGateway;
final statusServiceUnavailable : haxe.UInt64 = stdgo._internal.net.http.Http_statusServiceUnavailable.statusServiceUnavailable;
final statusGatewayTimeout : haxe.UInt64 = stdgo._internal.net.http.Http_statusGatewayTimeout.statusGatewayTimeout;
final statusHTTPVersionNotSupported : haxe.UInt64 = stdgo._internal.net.http.Http_statusHTTPVersionNotSupported.statusHTTPVersionNotSupported;
final statusVariantAlsoNegotiates : haxe.UInt64 = stdgo._internal.net.http.Http_statusVariantAlsoNegotiates.statusVariantAlsoNegotiates;
final statusInsufficientStorage : haxe.UInt64 = stdgo._internal.net.http.Http_statusInsufficientStorage.statusInsufficientStorage;
final statusLoopDetected : haxe.UInt64 = stdgo._internal.net.http.Http_statusLoopDetected.statusLoopDetected;
final statusNotExtended : haxe.UInt64 = stdgo._internal.net.http.Http_statusNotExtended.statusNotExtended;
final statusNetworkAuthenticationRequired : haxe.UInt64 = stdgo._internal.net.http.Http_statusNetworkAuthenticationRequired.statusNetworkAuthenticationRequired;
final defaultMaxIdleConnsPerHost : haxe.UInt64 = stdgo._internal.net.http.Http_defaultMaxIdleConnsPerHost.defaultMaxIdleConnsPerHost;
var defaultClient(get, set) : Client;
private function get_defaultClient():Client return stdgo._internal.net.http.Http_defaultClient.defaultClient;
private function set_defaultClient(v:Client):Client {
        stdgo._internal.net.http.Http_defaultClient.defaultClient = v;
        return v;
    }
var errSchemeMismatch(get, set) : stdgo.Error;
private function get_errSchemeMismatch():stdgo.Error return stdgo._internal.net.http.Http_errSchemeMismatch.errSchemeMismatch;
private function set_errSchemeMismatch(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errSchemeMismatch.errSchemeMismatch = v;
        return v;
    }
var errUseLastResponse(get, set) : stdgo.Error;
private function get_errUseLastResponse():stdgo.Error return stdgo._internal.net.http.Http_errUseLastResponse.errUseLastResponse;
private function set_errUseLastResponse(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errUseLastResponse.errUseLastResponse = v;
        return v;
    }
var noBody(get, set) : T_noBody;
private function get_noBody():T_noBody return stdgo._internal.net.http.Http_noBody.noBody;
private function set_noBody(v:T_noBody):T_noBody {
        stdgo._internal.net.http.Http_noBody.noBody = v;
        return v;
    }
var errMissingFile(get, set) : stdgo.Error;
private function get_errMissingFile():stdgo.Error return stdgo._internal.net.http.Http_errMissingFile.errMissingFile;
private function set_errMissingFile(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errMissingFile.errMissingFile = v;
        return v;
    }
var errNotSupported(get, set) : ProtocolError;
private function get_errNotSupported():ProtocolError return stdgo._internal.net.http.Http_errNotSupported.errNotSupported;
private function set_errNotSupported(v:ProtocolError):ProtocolError {
        stdgo._internal.net.http.Http_errNotSupported.errNotSupported = v;
        return v;
    }
var errUnexpectedTrailer(get, set) : ProtocolError;
private function get_errUnexpectedTrailer():ProtocolError return stdgo._internal.net.http.Http_errUnexpectedTrailer.errUnexpectedTrailer;
private function set_errUnexpectedTrailer(v:ProtocolError):ProtocolError {
        stdgo._internal.net.http.Http_errUnexpectedTrailer.errUnexpectedTrailer = v;
        return v;
    }
var errMissingBoundary(get, set) : ProtocolError;
private function get_errMissingBoundary():ProtocolError return stdgo._internal.net.http.Http_errMissingBoundary.errMissingBoundary;
private function set_errMissingBoundary(v:ProtocolError):ProtocolError {
        stdgo._internal.net.http.Http_errMissingBoundary.errMissingBoundary = v;
        return v;
    }
var errNotMultipart(get, set) : ProtocolError;
private function get_errNotMultipart():ProtocolError return stdgo._internal.net.http.Http_errNotMultipart.errNotMultipart;
private function set_errNotMultipart(v:ProtocolError):ProtocolError {
        stdgo._internal.net.http.Http_errNotMultipart.errNotMultipart = v;
        return v;
    }
var errHeaderTooLong(get, set) : ProtocolError;
private function get_errHeaderTooLong():ProtocolError return stdgo._internal.net.http.Http_errHeaderTooLong.errHeaderTooLong;
private function set_errHeaderTooLong(v:ProtocolError):ProtocolError {
        stdgo._internal.net.http.Http_errHeaderTooLong.errHeaderTooLong = v;
        return v;
    }
var errShortBody(get, set) : ProtocolError;
private function get_errShortBody():ProtocolError return stdgo._internal.net.http.Http_errShortBody.errShortBody;
private function set_errShortBody(v:ProtocolError):ProtocolError {
        stdgo._internal.net.http.Http_errShortBody.errShortBody = v;
        return v;
    }
var errMissingContentLength(get, set) : ProtocolError;
private function get_errMissingContentLength():ProtocolError return stdgo._internal.net.http.Http_errMissingContentLength.errMissingContentLength;
private function set_errMissingContentLength(v:ProtocolError):ProtocolError {
        stdgo._internal.net.http.Http_errMissingContentLength.errMissingContentLength = v;
        return v;
    }
var errNoCookie(get, set) : stdgo.Error;
private function get_errNoCookie():stdgo.Error return stdgo._internal.net.http.Http_errNoCookie.errNoCookie;
private function set_errNoCookie(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errNoCookie.errNoCookie = v;
        return v;
    }
var errNoLocation(get, set) : stdgo.Error;
private function get_errNoLocation():stdgo.Error return stdgo._internal.net.http.Http_errNoLocation.errNoLocation;
private function set_errNoLocation(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errNoLocation.errNoLocation = v;
        return v;
    }
var errBodyNotAllowed(get, set) : stdgo.Error;
private function get_errBodyNotAllowed():stdgo.Error return stdgo._internal.net.http.Http_errBodyNotAllowed.errBodyNotAllowed;
private function set_errBodyNotAllowed(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errBodyNotAllowed.errBodyNotAllowed = v;
        return v;
    }
var errHijacked(get, set) : stdgo.Error;
private function get_errHijacked():stdgo.Error return stdgo._internal.net.http.Http_errHijacked.errHijacked;
private function set_errHijacked(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errHijacked.errHijacked = v;
        return v;
    }
var errContentLength(get, set) : stdgo.Error;
private function get_errContentLength():stdgo.Error return stdgo._internal.net.http.Http_errContentLength.errContentLength;
private function set_errContentLength(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errContentLength.errContentLength = v;
        return v;
    }
var errWriteAfterFlush(get, set) : stdgo.Error;
private function get_errWriteAfterFlush():stdgo.Error return stdgo._internal.net.http.Http_errWriteAfterFlush.errWriteAfterFlush;
private function set_errWriteAfterFlush(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errWriteAfterFlush.errWriteAfterFlush = v;
        return v;
    }
var serverContextKey(get, set) : T_contextKey;
private function get_serverContextKey():T_contextKey return stdgo._internal.net.http.Http_serverContextKey.serverContextKey;
private function set_serverContextKey(v:T_contextKey):T_contextKey {
        stdgo._internal.net.http.Http_serverContextKey.serverContextKey = v;
        return v;
    }
var localAddrContextKey(get, set) : T_contextKey;
private function get_localAddrContextKey():T_contextKey return stdgo._internal.net.http.Http_localAddrContextKey.localAddrContextKey;
private function set_localAddrContextKey(v:T_contextKey):T_contextKey {
        stdgo._internal.net.http.Http_localAddrContextKey.localAddrContextKey = v;
        return v;
    }
var errAbortHandler(get, set) : stdgo.Error;
private function get_errAbortHandler():stdgo.Error return stdgo._internal.net.http.Http_errAbortHandler.errAbortHandler;
private function set_errAbortHandler(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errAbortHandler.errAbortHandler = v;
        return v;
    }
var defaultServeMux(get, set) : ServeMux;
private function get_defaultServeMux():ServeMux return stdgo._internal.net.http.Http_defaultServeMux.defaultServeMux;
private function set_defaultServeMux(v:ServeMux):ServeMux {
        stdgo._internal.net.http.Http_defaultServeMux.defaultServeMux = v;
        return v;
    }
var errServerClosed(get, set) : stdgo.Error;
private function get_errServerClosed():stdgo.Error return stdgo._internal.net.http.Http_errServerClosed.errServerClosed;
private function set_errServerClosed(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errServerClosed.errServerClosed = v;
        return v;
    }
var errHandlerTimeout(get, set) : stdgo.Error;
private function get_errHandlerTimeout():stdgo.Error return stdgo._internal.net.http.Http_errHandlerTimeout.errHandlerTimeout;
private function set_errHandlerTimeout(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errHandlerTimeout.errHandlerTimeout = v;
        return v;
    }
var errLineTooLong(get, set) : stdgo.Error;
private function get_errLineTooLong():stdgo.Error return stdgo._internal.net.http.Http_errLineTooLong.errLineTooLong;
private function set_errLineTooLong(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errLineTooLong.errLineTooLong = v;
        return v;
    }
var errBodyReadAfterClose(get, set) : stdgo.Error;
private function get_errBodyReadAfterClose():stdgo.Error return stdgo._internal.net.http.Http_errBodyReadAfterClose.errBodyReadAfterClose;
private function set_errBodyReadAfterClose(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errBodyReadAfterClose.errBodyReadAfterClose = v;
        return v;
    }
var errSkipAltProtocol(get, set) : stdgo.Error;
private function get_errSkipAltProtocol():stdgo.Error return stdgo._internal.net.http.Http_errSkipAltProtocol.errSkipAltProtocol;
private function set_errSkipAltProtocol(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errSkipAltProtocol.errSkipAltProtocol = v;
        return v;
    }
var defaultTransport(get, set) : RoundTripper;
private function get_defaultTransport():RoundTripper return stdgo._internal.net.http.Http_defaultTransport.defaultTransport;
private function set_defaultTransport(v:RoundTripper):RoundTripper {
        stdgo._internal.net.http.Http_defaultTransport.defaultTransport = v;
        return v;
    }
class RoundTripper_static_extension {
    static public function roundTrip(t:stdgo._internal.net.http.Http_RoundTripper.RoundTripper, _0:Request):stdgo.Tuple<Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_RoundTripper_static_extension.RoundTripper_static_extension.roundTrip(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef RoundTripper = stdgo._internal.net.http.Http_RoundTripper.RoundTripper;
class FileSystem_static_extension {
    static public function open(t:stdgo._internal.net.http.Http_FileSystem.FileSystem, _name:String):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_FileSystem_static_extension.FileSystem_static_extension.open(t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef FileSystem = stdgo._internal.net.http.Http_FileSystem.FileSystem;
class File_static_extension {
    static public function stat(t:stdgo._internal.net.http.Http_File.File):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_File_static_extension.File_static_extension.stat(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readdir(t:stdgo._internal.net.http.Http_File.File, _count:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_File_static_extension.File_static_extension.readdir(t, _count);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
}
typedef File = stdgo._internal.net.http.Http_File.File;
class T_anyDirs_static_extension {
    static public function _isDir(t:stdgo._internal.net.http.Http_T_anyDirs.T_anyDirs, _i:StdTypes.Int):Bool {
        return stdgo._internal.net.http.Http_T_anyDirs_static_extension.T_anyDirs_static_extension._isDir(t, _i);
    }
    static public function _name(t:stdgo._internal.net.http.Http_T_anyDirs.T_anyDirs, _i:StdTypes.Int):String {
        return stdgo._internal.net.http.Http_T_anyDirs_static_extension.T_anyDirs_static_extension._name(t, _i);
    }
    static public function _len(t:stdgo._internal.net.http.Http_T_anyDirs.T_anyDirs):StdTypes.Int {
        return stdgo._internal.net.http.Http_T_anyDirs_static_extension.T_anyDirs_static_extension._len(t);
    }
}
typedef T_anyDirs = stdgo._internal.net.http.Http_T_anyDirs.T_anyDirs;
class T_http2ClientConnPool_static_extension {
    static public function markDead(t:stdgo._internal.net.http.Http_T_http2ClientConnPool.T_http2ClientConnPool, _0:T_http2ClientConn):Void {
        stdgo._internal.net.http.Http_T_http2ClientConnPool_static_extension.T_http2ClientConnPool_static_extension.markDead(t, _0);
    }
    static public function getClientConn(t:stdgo._internal.net.http.Http_T_http2ClientConnPool.T_http2ClientConnPool, _req:Request, _addr:String):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2ClientConnPool_static_extension.T_http2ClientConnPool_static_extension.getClientConn(t, _req, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_http2ClientConnPool = stdgo._internal.net.http.Http_T_http2ClientConnPool.T_http2ClientConnPool;
class T_http2clientConnPoolIdleCloser_static_extension {
    static public function _closeIdleConnections(t:stdgo._internal.net.http.Http_T_http2clientConnPoolIdleCloser.T_http2clientConnPoolIdleCloser):Void {
        stdgo._internal.net.http.Http_T_http2clientConnPoolIdleCloser_static_extension.T_http2clientConnPoolIdleCloser_static_extension._closeIdleConnections(t);
    }
}
typedef T_http2clientConnPoolIdleCloser = stdgo._internal.net.http.Http_T_http2clientConnPoolIdleCloser.T_http2clientConnPoolIdleCloser;
class T_http2Frame_static_extension {
    static public function _invalidate(t:stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame):Void {
        stdgo._internal.net.http.Http_T_http2Frame_static_extension.T_http2Frame_static_extension._invalidate(t);
    }
    static public function header(t:stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_T_http2Frame_static_extension.T_http2Frame_static_extension.header(t);
    }
}
typedef T_http2Frame = stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame;
class T_http2streamEnder_static_extension {
    static public function streamEnded(t:stdgo._internal.net.http.Http_T_http2streamEnder.T_http2streamEnder):Bool {
        return stdgo._internal.net.http.Http_T_http2streamEnder_static_extension.T_http2streamEnder_static_extension.streamEnded(t);
    }
}
typedef T_http2streamEnder = stdgo._internal.net.http.Http_T_http2streamEnder.T_http2streamEnder;
class T_http2headersEnder_static_extension {
    static public function headersEnded(t:stdgo._internal.net.http.Http_T_http2headersEnder.T_http2headersEnder):Bool {
        return stdgo._internal.net.http.Http_T_http2headersEnder_static_extension.T_http2headersEnder_static_extension.headersEnded(t);
    }
}
typedef T_http2headersEnder = stdgo._internal.net.http.Http_T_http2headersEnder.T_http2headersEnder;
class T_http2headersOrContinuation_static_extension {
    static public function headerBlockFragment(t:stdgo._internal.net.http.Http_T_http2headersOrContinuation.T_http2headersOrContinuation):Array<std.UInt> {
        return [for (i in stdgo._internal.net.http.Http_T_http2headersOrContinuation_static_extension.T_http2headersOrContinuation_static_extension.headerBlockFragment(t)) i];
    }
}
typedef T_http2headersOrContinuation = stdgo._internal.net.http.Http_T_http2headersOrContinuation.T_http2headersOrContinuation;
class T_http2stringWriter_static_extension {
    static public function writeString(t:stdgo._internal.net.http.Http_T_http2stringWriter.T_http2stringWriter, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2stringWriter_static_extension.T_http2stringWriter_static_extension.writeString(t, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_http2stringWriter = stdgo._internal.net.http.Http_T_http2stringWriter.T_http2stringWriter;
class T_http2connectionStater_static_extension {
    static public function connectionState(t:stdgo._internal.net.http.Http_T_http2connectionStater.T_http2connectionStater):stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState {
        return stdgo._internal.net.http.Http_T_http2connectionStater_static_extension.T_http2connectionStater_static_extension.connectionState(t);
    }
}
typedef T_http2connectionStater = stdgo._internal.net.http.Http_T_http2connectionStater.T_http2connectionStater;
class T_http2pipeBuffer_static_extension {
    static public function len(t:stdgo._internal.net.http.Http_T_http2pipeBuffer.T_http2pipeBuffer):StdTypes.Int {
        return stdgo._internal.net.http.Http_T_http2pipeBuffer_static_extension.T_http2pipeBuffer_static_extension.len(t);
    }
}
typedef T_http2pipeBuffer = stdgo._internal.net.http.Http_T_http2pipeBuffer.T_http2pipeBuffer;
class T_http2writeFramer_static_extension {
    static public function _staysWithinBuffer(t:stdgo._internal.net.http.Http_T_http2writeFramer.T_http2writeFramer, _size:StdTypes.Int):Bool {
        return stdgo._internal.net.http.Http_T_http2writeFramer_static_extension.T_http2writeFramer_static_extension._staysWithinBuffer(t, _size);
    }
    static public function _writeFrame(t:stdgo._internal.net.http.Http_T_http2writeFramer.T_http2writeFramer, _0:T_http2writeContext):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2writeFramer_static_extension.T_http2writeFramer_static_extension._writeFrame(t, _0);
    }
}
typedef T_http2writeFramer = stdgo._internal.net.http.Http_T_http2writeFramer.T_http2writeFramer;
class T_http2writeContext_static_extension {
    static public function headerEncoder(t:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext):stdgo.Tuple<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder, stdgo._internal.bytes.Bytes_Buffer.Buffer> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2writeContext_static_extension.T_http2writeContext_static_extension.headerEncoder(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function closeConn(t:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2writeContext_static_extension.T_http2writeContext_static_extension.closeConn(t);
    }
    static public function flush(t:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2writeContext_static_extension.T_http2writeContext_static_extension.flush(t);
    }
    static public function framer(t:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext):T_http2Framer {
        return stdgo._internal.net.http.Http_T_http2writeContext_static_extension.T_http2writeContext_static_extension.framer(t);
    }
}
typedef T_http2writeContext = stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext;
class T_http2WriteScheduler_static_extension {
    static public function pop(t:stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler):stdgo.Tuple<T_http2FrameWriteRequest, Bool> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2WriteScheduler_static_extension.T_http2WriteScheduler_static_extension.pop(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function push(t:stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler, _wr:T_http2FrameWriteRequest):Void {
        stdgo._internal.net.http.Http_T_http2WriteScheduler_static_extension.T_http2WriteScheduler_static_extension.push(t, _wr);
    }
    static public function adjustStream(t:stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler, _streamID:std.UInt, _priority:T_http2PriorityParam):Void {
        stdgo._internal.net.http.Http_T_http2WriteScheduler_static_extension.T_http2WriteScheduler_static_extension.adjustStream(t, _streamID, _priority);
    }
    static public function closeStream(t:stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler, _streamID:std.UInt):Void {
        stdgo._internal.net.http.Http_T_http2WriteScheduler_static_extension.T_http2WriteScheduler_static_extension.closeStream(t, _streamID);
    }
    static public function openStream(t:stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler, _streamID:std.UInt, _options:T_http2OpenStreamOptions):Void {
        stdgo._internal.net.http.Http_T_http2WriteScheduler_static_extension.T_http2WriteScheduler_static_extension.openStream(t, _streamID, _options);
    }
}
typedef T_http2WriteScheduler = stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler;
class Pusher_static_extension {
    static public function push(t:stdgo._internal.net.http.Http_Pusher.Pusher, _target:String, _opts:PushOptions):stdgo.Error {
        return stdgo._internal.net.http.Http_Pusher_static_extension.Pusher_static_extension.push(t, _target, _opts);
    }
}
typedef Pusher = stdgo._internal.net.http.Http_Pusher.Pusher;
class CookieJar_static_extension {
    static public function cookies(t:stdgo._internal.net.http.Http_CookieJar.CookieJar, _u:stdgo._internal.net.url.Url_URL.URL):Array<Cookie> {
        return [for (i in stdgo._internal.net.http.Http_CookieJar_static_extension.CookieJar_static_extension.cookies(t, _u)) i];
    }
    static public function setCookies(t:stdgo._internal.net.http.Http_CookieJar.CookieJar, _u:stdgo._internal.net.url.Url_URL.URL, _cookies:Array<Cookie>):Void {
        final _cookies = ([for (i in _cookies) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>);
        stdgo._internal.net.http.Http_CookieJar_static_extension.CookieJar_static_extension.setCookies(t, _u, _cookies);
    }
}
typedef CookieJar = stdgo._internal.net.http.Http_CookieJar.CookieJar;
class T_rwUnwrapper_static_extension {
    static public function unwrap(t:stdgo._internal.net.http.Http_T_rwUnwrapper.T_rwUnwrapper):ResponseWriter {
        return stdgo._internal.net.http.Http_T_rwUnwrapper_static_extension.T_rwUnwrapper_static_extension.unwrap(t);
    }
}
typedef T_rwUnwrapper = stdgo._internal.net.http.Http_T_rwUnwrapper.T_rwUnwrapper;
class Handler_static_extension {
    static public function serveHTTP(t:stdgo._internal.net.http.Http_Handler.Handler, _0:ResponseWriter, _1:Request):Void {
        stdgo._internal.net.http.Http_Handler_static_extension.Handler_static_extension.serveHTTP(t, _0, _1);
    }
}
typedef Handler = stdgo._internal.net.http.Http_Handler.Handler;
class ResponseWriter_static_extension {
    static public function writeHeader(t:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _statusCode:StdTypes.Int):Void {
        stdgo._internal.net.http.Http_ResponseWriter_static_extension.ResponseWriter_static_extension.writeHeader(t, _statusCode);
    }
    static public function write(t:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_ResponseWriter_static_extension.ResponseWriter_static_extension.write(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function header(t:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter):Header {
        return stdgo._internal.net.http.Http_ResponseWriter_static_extension.ResponseWriter_static_extension.header(t);
    }
}
typedef ResponseWriter = stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter;
class Flusher_static_extension {
    static public function flush(t:stdgo._internal.net.http.Http_Flusher.Flusher):Void {
        stdgo._internal.net.http.Http_Flusher_static_extension.Flusher_static_extension.flush(t);
    }
}
typedef Flusher = stdgo._internal.net.http.Http_Flusher.Flusher;
class Hijacker_static_extension {
    static public function hijack(t:stdgo._internal.net.http.Http_Hijacker.Hijacker):stdgo.Tuple.Tuple3<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_Hijacker_static_extension.Hijacker_static_extension.hijack(t);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
}
typedef Hijacker = stdgo._internal.net.http.Http_Hijacker.Hijacker;
class CloseNotifier_static_extension {
    static public function closeNotify(t:stdgo._internal.net.http.Http_CloseNotifier.CloseNotifier):stdgo.Chan<Bool> {
        return stdgo._internal.net.http.Http_CloseNotifier_static_extension.CloseNotifier_static_extension.closeNotify(t);
    }
}
typedef CloseNotifier = stdgo._internal.net.http.Http_CloseNotifier.CloseNotifier;
class T_closeWriter_static_extension {
    static public function closeWrite(t:stdgo._internal.net.http.Http_T_closeWriter.T_closeWriter):stdgo.Error {
        return stdgo._internal.net.http.Http_T_closeWriter_static_extension.T_closeWriter_static_extension.closeWrite(t);
    }
}
typedef T_closeWriter = stdgo._internal.net.http.Http_T_closeWriter.T_closeWriter;
class T_sniffSig_static_extension {
    static public function _match(t:stdgo._internal.net.http.Http_T_sniffSig.T_sniffSig, _data:Array<std.UInt>, _firstNonWS:StdTypes.Int):String {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_T_sniffSig_static_extension.T_sniffSig_static_extension._match(t, _data, _firstNonWS);
    }
}
typedef T_sniffSig = stdgo._internal.net.http.Http_T_sniffSig.T_sniffSig;
class T_h2Transport_static_extension {
    static public function closeIdleConnections(t:stdgo._internal.net.http.Http_T_h2Transport.T_h2Transport):Void {
        stdgo._internal.net.http.Http_T_h2Transport_static_extension.T_h2Transport_static_extension.closeIdleConnections(t);
    }
}
typedef T_h2Transport = stdgo._internal.net.http.Http_T_h2Transport.T_h2Transport;
class T_erringRoundTripper_static_extension {
    static public function roundTripErr(t:stdgo._internal.net.http.Http_T_erringRoundTripper.T_erringRoundTripper):stdgo.Error {
        return stdgo._internal.net.http.Http_T_erringRoundTripper_static_extension.T_erringRoundTripper_static_extension.roundTripErr(t);
    }
}
typedef T_erringRoundTripper = stdgo._internal.net.http.Http_T_erringRoundTripper.T_erringRoundTripper;
class T__interface_0_static_extension {
    static public function isHTTP2NoCachedConnError(t:stdgo._internal.net.http.Http_T__interface_0.T__interface_0):Void {
        stdgo._internal.net.http.Http_T__interface_0_static_extension.T__interface_0_static_extension.isHTTP2NoCachedConnError(t);
    }
}
typedef T__interface_0 = stdgo._internal.net.http.Http_T__interface_0.T__interface_0;
class T__interface_1_static_extension {
    static public function flushError(t:stdgo._internal.net.http.Http_T__interface_1.T__interface_1):stdgo.Error {
        return stdgo._internal.net.http.Http_T__interface_1_static_extension.T__interface_1_static_extension.flushError(t);
    }
}
typedef T__interface_1 = stdgo._internal.net.http.Http_T__interface_1.T__interface_1;
class T__interface_2_static_extension {
    static public function setReadDeadline(t:stdgo._internal.net.http.Http_T__interface_2.T__interface_2, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_T__interface_2_static_extension.T__interface_2_static_extension.setReadDeadline(t, _0);
    }
}
typedef T__interface_2 = stdgo._internal.net.http.Http_T__interface_2.T__interface_2;
class T__interface_3_static_extension {
    static public function setWriteDeadline(t:stdgo._internal.net.http.Http_T__interface_3.T__interface_3, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_T__interface_3_static_extension.T__interface_3_static_extension.setWriteDeadline(t, _0);
    }
}
typedef T__interface_3 = stdgo._internal.net.http.Http_T__interface_3.T__interface_3;
class T__interface_4_static_extension {
    static public function enableFullDuplex(t:stdgo._internal.net.http.Http_T__interface_4.T__interface_4):stdgo.Error {
        return stdgo._internal.net.http.Http_T__interface_4_static_extension.T__interface_4_static_extension.enableFullDuplex(t);
    }
}
typedef T__interface_4 = stdgo._internal.net.http.Http_T__interface_4.T__interface_4;
@:structInit @:using(stdgo.net.http.Http.Client_static_extension) abstract Client(stdgo._internal.net.http.Http_Client.Client) from stdgo._internal.net.http.Http_Client.Client to stdgo._internal.net.http.Http_Client.Client {
    public var transport(get, set) : RoundTripper;
    function get_transport():RoundTripper return this.transport;
    function set_transport(v:RoundTripper):RoundTripper {
        this.transport = v;
        return v;
    }
    public var checkRedirect(get, set) : (stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>>) -> stdgo.Error;
    function get_checkRedirect():(stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>>) -> stdgo.Error return (_0, _1) -> this.checkRedirect(_0, [for (i in _1) i]);
    function set_checkRedirect(v:(stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>>) -> stdgo.Error):(stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>>) -> stdgo.Error {
        this.checkRedirect = v;
        return v;
    }
    public var jar(get, set) : CookieJar;
    function get_jar():CookieJar return this.jar;
    function set_jar(v:CookieJar):CookieJar {
        this.jar = v;
        return v;
    }
    public var timeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_timeout():stdgo._internal.time.Time_Duration.Duration return this.timeout;
    function set_timeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.timeout = v;
        return v;
    }
    public function new(?transport:RoundTripper, ?checkRedirect:(stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>>) -> stdgo.Error, ?jar:CookieJar, ?timeout:stdgo._internal.time.Time_Duration.Duration) this = new stdgo._internal.net.http.Http_Client.Client(transport, checkRedirect, jar, timeout);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_cancelTimerBody_static_extension) abstract T_cancelTimerBody(stdgo._internal.net.http.Http_T_cancelTimerBody.T_cancelTimerBody) from stdgo._internal.net.http.Http_T_cancelTimerBody.T_cancelTimerBody to stdgo._internal.net.http.Http_T_cancelTimerBody.T_cancelTimerBody {
    public var _stop(get, set) : () -> Void;
    function get__stop():() -> Void return () -> this._stop();
    function set__stop(v:() -> Void):() -> Void {
        this._stop = v;
        return v;
    }
    public var _rc(get, set) : stdgo._internal.io.Io_ReadCloser.ReadCloser;
    function get__rc():stdgo._internal.io.Io_ReadCloser.ReadCloser return this._rc;
    function set__rc(v:stdgo._internal.io.Io_ReadCloser.ReadCloser):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        this._rc = v;
        return v;
    }
    public var _reqDidTimeout(get, set) : () -> Bool;
    function get__reqDidTimeout():() -> Bool return () -> this._reqDidTimeout();
    function set__reqDidTimeout(v:() -> Bool):() -> Bool {
        this._reqDidTimeout = v;
        return v;
    }
    public function new(?_stop:() -> Void, ?_rc:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_reqDidTimeout:() -> Bool) this = new stdgo._internal.net.http.Http_T_cancelTimerBody.T_cancelTimerBody(_stop, _rc, _reqDidTimeout);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.Cookie_static_extension) abstract Cookie(stdgo._internal.net.http.Http_Cookie.Cookie) from stdgo._internal.net.http.Http_Cookie.Cookie to stdgo._internal.net.http.Http_Cookie.Cookie {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var value(get, set) : String;
    function get_value():String return this.value;
    function set_value(v:String):String {
        this.value = v;
        return v;
    }
    public var path(get, set) : String;
    function get_path():String return this.path;
    function set_path(v:String):String {
        this.path = v;
        return v;
    }
    public var domain(get, set) : String;
    function get_domain():String return this.domain;
    function set_domain(v:String):String {
        this.domain = v;
        return v;
    }
    public var expires(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_expires():stdgo._internal.time.Time_Time.Time return this.expires;
    function set_expires(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.expires = v;
        return v;
    }
    public var rawExpires(get, set) : String;
    function get_rawExpires():String return this.rawExpires;
    function set_rawExpires(v:String):String {
        this.rawExpires = v;
        return v;
    }
    public var maxAge(get, set) : StdTypes.Int;
    function get_maxAge():StdTypes.Int return this.maxAge;
    function set_maxAge(v:StdTypes.Int):StdTypes.Int {
        this.maxAge = v;
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
        this.raw = v;
        return v;
    }
    public var unparsed(get, set) : Array<String>;
    function get_unparsed():Array<String> return [for (i in this.unparsed) i];
    function set_unparsed(v:Array<String>):Array<String> {
        this.unparsed = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?name:String, ?value:String, ?path:String, ?domain:String, ?expires:stdgo._internal.time.Time_Time.Time, ?rawExpires:String, ?maxAge:StdTypes.Int, ?secure:Bool, ?httpOnly:Bool, ?sameSite:SameSite, ?raw:String, ?unparsed:Array<String>) this = new stdgo._internal.net.http.Http_Cookie.Cookie(
name,
value,
path,
domain,
expires,
rawExpires,
maxAge,
secure,
httpOnly,
sameSite,
raw,
([for (i in unparsed) i] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_fileTransport_static_extension) abstract T_fileTransport(stdgo._internal.net.http.Http_T_fileTransport.T_fileTransport) from stdgo._internal.net.http.Http_T_fileTransport.T_fileTransport to stdgo._internal.net.http.Http_T_fileTransport.T_fileTransport {
    public var _fh(get, set) : T_fileHandler;
    function get__fh():T_fileHandler return this._fh;
    function set__fh(v:T_fileHandler):T_fileHandler {
        this._fh = v;
        return v;
    }
    public function new(?_fh:T_fileHandler) this = new stdgo._internal.net.http.Http_T_fileTransport.T_fileTransport(_fh);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_populateResponse_static_extension) abstract T_populateResponse(stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse) from stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse to stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse {
    public var _res(get, set) : Response;
    function get__res():Response return this._res;
    function set__res(v:Response):Response {
        this._res = v;
        return v;
    }
    public var _ch(get, set) : stdgo.Chan<stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>>;
    function get__ch():stdgo.Chan<stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>> return this._ch;
    function set__ch(v:stdgo.Chan<stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>>):stdgo.Chan<stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>> {
        this._ch = v;
        return v;
    }
    public var _wroteHeader(get, set) : Bool;
    function get__wroteHeader():Bool return this._wroteHeader;
    function set__wroteHeader(v:Bool):Bool {
        this._wroteHeader = v;
        return v;
    }
    public var _hasContent(get, set) : Bool;
    function get__hasContent():Bool return this._hasContent;
    function set__hasContent(v:Bool):Bool {
        this._hasContent = v;
        return v;
    }
    public var _sentResponse(get, set) : Bool;
    function get__sentResponse():Bool return this._sentResponse;
    function set__sentResponse(v:Bool):Bool {
        this._sentResponse = v;
        return v;
    }
    public var _pw(get, set) : stdgo._internal.io.Io_PipeWriter.PipeWriter;
    function get__pw():stdgo._internal.io.Io_PipeWriter.PipeWriter return this._pw;
    function set__pw(v:stdgo._internal.io.Io_PipeWriter.PipeWriter):stdgo._internal.io.Io_PipeWriter.PipeWriter {
        this._pw = v;
        return v;
    }
    public function new(?_res:Response, ?_ch:stdgo.Chan<stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>>, ?_wroteHeader:Bool, ?_hasContent:Bool, ?_sentResponse:Bool, ?_pw:stdgo._internal.io.Io_PipeWriter.PipeWriter) this = new stdgo._internal.net.http.Http_T_populateResponse.T_populateResponse(_res, _ch, _wroteHeader, _hasContent, _sentResponse, _pw);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_fileHandler_static_extension) abstract T_fileHandler(stdgo._internal.net.http.Http_T_fileHandler.T_fileHandler) from stdgo._internal.net.http.Http_T_fileHandler.T_fileHandler to stdgo._internal.net.http.Http_T_fileHandler.T_fileHandler {
    public var _root(get, set) : FileSystem;
    function get__root():FileSystem return this._root;
    function set__root(v:FileSystem):FileSystem {
        this._root = v;
        return v;
    }
    public function new(?_root:FileSystem) this = new stdgo._internal.net.http.Http_T_fileHandler.T_fileHandler(_root);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_ioFS_static_extension) abstract T_ioFS(stdgo._internal.net.http.Http_T_ioFS.T_ioFS) from stdgo._internal.net.http.Http_T_ioFS.T_ioFS to stdgo._internal.net.http.Http_T_ioFS.T_ioFS {
    public var _fsys(get, set) : stdgo._internal.io.fs.Fs_FS.FS;
    function get__fsys():stdgo._internal.io.fs.Fs_FS.FS return this._fsys;
    function set__fsys(v:stdgo._internal.io.fs.Fs_FS.FS):stdgo._internal.io.fs.Fs_FS.FS {
        this._fsys = v;
        return v;
    }
    public function new(?_fsys:stdgo._internal.io.fs.Fs_FS.FS) this = new stdgo._internal.net.http.Http_T_ioFS.T_ioFS(_fsys);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_ioFile_static_extension) abstract T_ioFile(stdgo._internal.net.http.Http_T_ioFile.T_ioFile) from stdgo._internal.net.http.Http_T_ioFile.T_ioFile to stdgo._internal.net.http.Http_T_ioFile.T_ioFile {
    public var _file(get, set) : stdgo._internal.io.fs.Fs_File.File;
    function get__file():stdgo._internal.io.fs.Fs_File.File return this._file;
    function set__file(v:stdgo._internal.io.fs.Fs_File.File):stdgo._internal.io.fs.Fs_File.File {
        this._file = v;
        return v;
    }
    public function new(?_file:stdgo._internal.io.fs.Fs_File.File) this = new stdgo._internal.net.http.Http_T_ioFile.T_ioFile(_file);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_httpRange_static_extension) abstract T_httpRange(stdgo._internal.net.http.Http_T_httpRange.T_httpRange) from stdgo._internal.net.http.Http_T_httpRange.T_httpRange to stdgo._internal.net.http.Http_T_httpRange.T_httpRange {
    public var _start(get, set) : haxe.Int64;
    function get__start():haxe.Int64 return this._start;
    function set__start(v:haxe.Int64):haxe.Int64 {
        this._start = v;
        return v;
    }
    public var _length(get, set) : haxe.Int64;
    function get__length():haxe.Int64 return this._length;
    function set__length(v:haxe.Int64):haxe.Int64 {
        this._length = v;
        return v;
    }
    public function new(?_start:haxe.Int64, ?_length:haxe.Int64) this = new stdgo._internal.net.http.Http_T_httpRange.T_httpRange(_start, _length);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2clientConnPool_static_extension) abstract T_http2clientConnPool(stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool) from stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool to stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool {
    public var _t(get, set) : T_http2Transport;
    function get__t():T_http2Transport return this._t;
    function set__t(v:T_http2Transport):T_http2Transport {
        this._t = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _conns(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>>;
    function get__conns():stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>> return this._conns;
    function set__conns(v:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>>):stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>> {
        this._conns = v;
        return v;
    }
    public var _dialing(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall>>;
    function get__dialing():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall>> return this._dialing;
    function set__dialing(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall>> {
        this._dialing = v;
        return v;
    }
    public var _keys(get, set) : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, stdgo.Slice<stdgo.GoString>>;
    function get__keys():stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, stdgo.Slice<stdgo.GoString>> return this._keys;
    function set__keys(v:stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, stdgo.Slice<stdgo.GoString>>):stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, stdgo.Slice<stdgo.GoString>> {
        this._keys = v;
        return v;
    }
    public var _addConnCalls(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall>>;
    function get__addConnCalls():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall>> return this._addConnCalls;
    function set__addConnCalls(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall>> {
        this._addConnCalls = v;
        return v;
    }
    public function new(?_t:T_http2Transport, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_conns:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>>, ?_dialing:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall>>, ?_keys:stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, stdgo.Slice<stdgo.GoString>>, ?_addConnCalls:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall>>) this = new stdgo._internal.net.http.Http_T_http2clientConnPool.T_http2clientConnPool(_t, _mu, _conns, _dialing, _keys, _addConnCalls);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2dialCall_static_extension) abstract T_http2dialCall(stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall) from stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall to stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall {
    public var __5(get, set) : T_http2incomparable;
    function get___5():T_http2incomparable return this.__5;
    function set___5(v:T_http2incomparable):T_http2incomparable {
        this.__5 = v;
        return v;
    }
    public var _p(get, set) : T_http2clientConnPool;
    function get__p():T_http2clientConnPool return this._p;
    function set__p(v:T_http2clientConnPool):T_http2clientConnPool {
        this._p = v;
        return v;
    }
    public var _ctx(get, set) : stdgo._internal.context.Context_Context.Context;
    function get__ctx():stdgo._internal.context.Context_Context.Context return this._ctx;
    function set__ctx(v:stdgo._internal.context.Context_Context.Context):stdgo._internal.context.Context_Context.Context {
        this._ctx = v;
        return v;
    }
    public var _done(get, set) : stdgo.Chan<{ }>;
    function get__done():stdgo.Chan<{ }> return this._done;
    function set__done(v:stdgo.Chan<{ }>):stdgo.Chan<{ }> {
        this._done = v;
        return v;
    }
    public var _res(get, set) : T_http2ClientConn;
    function get__res():T_http2ClientConn return this._res;
    function set__res(v:T_http2ClientConn):T_http2ClientConn {
        this._res = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?__5:T_http2incomparable, ?_p:T_http2clientConnPool, ?_ctx:stdgo._internal.context.Context_Context.Context, ?_done:stdgo.Chan<{ }>, ?_res:T_http2ClientConn, ?_err:stdgo.Error) this = new stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall(__5, _p, _ctx, _done, _res, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2addConnCall_static_extension) abstract T_http2addConnCall(stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall) from stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall to stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall {
    public var __7(get, set) : T_http2incomparable;
    function get___7():T_http2incomparable return this.__7;
    function set___7(v:T_http2incomparable):T_http2incomparable {
        this.__7 = v;
        return v;
    }
    public var _p(get, set) : T_http2clientConnPool;
    function get__p():T_http2clientConnPool return this._p;
    function set__p(v:T_http2clientConnPool):T_http2clientConnPool {
        this._p = v;
        return v;
    }
    public var _done(get, set) : stdgo.Chan<{ }>;
    function get__done():stdgo.Chan<{ }> return this._done;
    function set__done(v:stdgo.Chan<{ }>):stdgo.Chan<{ }> {
        this._done = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?__7:T_http2incomparable, ?_p:T_http2clientConnPool, ?_done:stdgo.Chan<{ }>, ?_err:stdgo.Error) this = new stdgo._internal.net.http.Http_T_http2addConnCall.T_http2addConnCall(__7, _p, _done, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2noDialClientConnPool_static_extension) abstract T_http2noDialClientConnPool(stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool) from stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool to stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool {
    public var _http2clientConnPool(get, set) : T_http2clientConnPool;
    function get__http2clientConnPool():T_http2clientConnPool return this._http2clientConnPool;
    function set__http2clientConnPool(v:T_http2clientConnPool):T_http2clientConnPool {
        this._http2clientConnPool = v;
        return v;
    }
    public function new(?_http2clientConnPool:T_http2clientConnPool) this = new stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool(_http2clientConnPool);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2dataBuffer_static_extension) abstract T_http2dataBuffer(stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer) from stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer to stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer {
    public var _chunks(get, set) : Array<Array<std.UInt>>;
    function get__chunks():Array<Array<std.UInt>> return [for (i in this._chunks) [for (i in i) i]];
    function set__chunks(v:Array<Array<std.UInt>>):Array<Array<std.UInt>> {
        this._chunks = ([for (i in v) ([for (i in i) i] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        return v;
    }
    public var _r(get, set) : StdTypes.Int;
    function get__r():StdTypes.Int return this._r;
    function set__r(v:StdTypes.Int):StdTypes.Int {
        this._r = v;
        return v;
    }
    public var _w(get, set) : StdTypes.Int;
    function get__w():StdTypes.Int return this._w;
    function set__w(v:StdTypes.Int):StdTypes.Int {
        this._w = v;
        return v;
    }
    public var _size(get, set) : StdTypes.Int;
    function get__size():StdTypes.Int return this._size;
    function set__size(v:StdTypes.Int):StdTypes.Int {
        this._size = v;
        return v;
    }
    public var _expected(get, set) : haxe.Int64;
    function get__expected():haxe.Int64 return this._expected;
    function set__expected(v:haxe.Int64):haxe.Int64 {
        this._expected = v;
        return v;
    }
    public function new(?_chunks:Array<Array<std.UInt>>, ?_r:StdTypes.Int, ?_w:StdTypes.Int, ?_size:StdTypes.Int, ?_expected:haxe.Int64) this = new stdgo._internal.net.http.Http_T_http2dataBuffer.T_http2dataBuffer(([for (i in _chunks) ([for (i in i) i] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>), _r, _w, _size, _expected);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2StreamError_static_extension) abstract T_http2StreamError(stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError) from stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError to stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError {
    public var streamID(get, set) : std.UInt;
    function get_streamID():std.UInt return this.streamID;
    function set_streamID(v:std.UInt):std.UInt {
        this.streamID = v;
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
        this.cause = v;
        return v;
    }
    public function new(?streamID:std.UInt, ?code:T_http2ErrCode, ?cause:stdgo.Error) this = new stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError(streamID, code, cause);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2goAwayFlowError_static_extension) abstract T_http2goAwayFlowError(stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError) from stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError to stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError {
    public function new() this = new stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2connError_static_extension) abstract T_http2connError(stdgo._internal.net.http.Http_T_http2connError.T_http2connError) from stdgo._internal.net.http.Http_T_http2connError.T_http2connError to stdgo._internal.net.http.Http_T_http2connError.T_http2connError {
    public var code(get, set) : T_http2ErrCode;
    function get_code():T_http2ErrCode return this.code;
    function set_code(v:T_http2ErrCode):T_http2ErrCode {
        this.code = v;
        return v;
    }
    public var reason(get, set) : String;
    function get_reason():String return this.reason;
    function set_reason(v:String):String {
        this.reason = v;
        return v;
    }
    public function new(?code:T_http2ErrCode, ?reason:String) this = new stdgo._internal.net.http.Http_T_http2connError.T_http2connError(code, reason);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2inflow_static_extension) abstract T_http2inflow(stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow) from stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow to stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow {
    public var _avail(get, set) : StdTypes.Int;
    function get__avail():StdTypes.Int return this._avail;
    function set__avail(v:StdTypes.Int):StdTypes.Int {
        this._avail = v;
        return v;
    }
    public var _unsent(get, set) : StdTypes.Int;
    function get__unsent():StdTypes.Int return this._unsent;
    function set__unsent(v:StdTypes.Int):StdTypes.Int {
        this._unsent = v;
        return v;
    }
    public function new(?_avail:StdTypes.Int, ?_unsent:StdTypes.Int) this = new stdgo._internal.net.http.Http_T_http2inflow.T_http2inflow(_avail, _unsent);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2outflow_static_extension) abstract T_http2outflow(stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow) from stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow to stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow {
    public var __11(get, set) : T_http2incomparable;
    function get___11():T_http2incomparable return this.__11;
    function set___11(v:T_http2incomparable):T_http2incomparable {
        this.__11 = v;
        return v;
    }
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = v;
        return v;
    }
    public var _conn(get, set) : T_http2outflow;
    function get__conn():T_http2outflow return this._conn;
    function set__conn(v:T_http2outflow):T_http2outflow {
        this._conn = v;
        return v;
    }
    public function new(?__11:T_http2incomparable, ?_n:StdTypes.Int, ?_conn:T_http2outflow) this = new stdgo._internal.net.http.Http_T_http2outflow.T_http2outflow(__11, _n, _conn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2FrameHeader_static_extension) abstract T_http2FrameHeader(stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader) from stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader to stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader {
    public var _valid(get, set) : Bool;
    function get__valid():Bool return this._valid;
    function set__valid(v:Bool):Bool {
        this._valid = v;
        return v;
    }
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
        this.length_ = v;
        return v;
    }
    public var streamID(get, set) : std.UInt;
    function get_streamID():std.UInt return this.streamID;
    function set_streamID(v:std.UInt):std.UInt {
        this.streamID = v;
        return v;
    }
    public function new(?_valid:Bool, ?type:T_http2FrameType, ?flags:T_http2Flags, ?length_:std.UInt, ?streamID:std.UInt) this = new stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader(_valid, type, flags, length_, streamID);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2Framer_static_extension) abstract T_http2Framer(stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer) from stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer to stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer {
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _lastFrame(get, set) : T_http2Frame;
    function get__lastFrame():T_http2Frame return this._lastFrame;
    function set__lastFrame(v:T_http2Frame):T_http2Frame {
        this._lastFrame = v;
        return v;
    }
    public var _errDetail(get, set) : stdgo.Error;
    function get__errDetail():stdgo.Error return this._errDetail;
    function set__errDetail(v:stdgo.Error):stdgo.Error {
        this._errDetail = v;
        return v;
    }
    public var _countError(get, set) : stdgo.GoString -> Void;
    function get__countError():stdgo.GoString -> Void return _0 -> this._countError(_0);
    function set__countError(v:stdgo.GoString -> Void):stdgo.GoString -> Void {
        this._countError = v;
        return v;
    }
    public var _lastHeaderStream(get, set) : std.UInt;
    function get__lastHeaderStream():std.UInt return this._lastHeaderStream;
    function set__lastHeaderStream(v:std.UInt):std.UInt {
        this._lastHeaderStream = v;
        return v;
    }
    public var _maxReadSize(get, set) : std.UInt;
    function get__maxReadSize():std.UInt return this._maxReadSize;
    function set__maxReadSize(v:std.UInt):std.UInt {
        this._maxReadSize = v;
        return v;
    }
    public var _headerBuf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__headerBuf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._headerBuf) i]);
    function set__headerBuf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._headerBuf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _getReadBuf(get, set) : stdgo.GoUInt32 -> stdgo.Slice<stdgo.GoUInt8>;
    function get__getReadBuf():stdgo.GoUInt32 -> stdgo.Slice<stdgo.GoUInt8> return _0 -> this._getReadBuf(_0);
    function set__getReadBuf(v:stdgo.GoUInt32 -> stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 -> stdgo.Slice<stdgo.GoUInt8> {
        this._getReadBuf = v;
        return v;
    }
    public var _readBuf(get, set) : Array<std.UInt>;
    function get__readBuf():Array<std.UInt> return [for (i in this._readBuf) i];
    function set__readBuf(v:Array<std.UInt>):Array<std.UInt> {
        this._readBuf = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _maxWriteSize(get, set) : std.UInt;
    function get__maxWriteSize():std.UInt return this._maxWriteSize;
    function set__maxWriteSize(v:std.UInt):std.UInt {
        this._maxWriteSize = v;
        return v;
    }
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _wbuf(get, set) : Array<std.UInt>;
    function get__wbuf():Array<std.UInt> return [for (i in this._wbuf) i];
    function set__wbuf(v:Array<std.UInt>):Array<std.UInt> {
        this._wbuf = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
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
    public var readMetaHeaders(get, set) : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder;
    function get_readMetaHeaders():_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder return this.readMetaHeaders;
    function set_readMetaHeaders(v:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder):_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder {
        this.readMetaHeaders = v;
        return v;
    }
    public var maxHeaderListSize(get, set) : std.UInt;
    function get_maxHeaderListSize():std.UInt return this.maxHeaderListSize;
    function set_maxHeaderListSize(v:std.UInt):std.UInt {
        this.maxHeaderListSize = v;
        return v;
    }
    public var _logReads(get, set) : Bool;
    function get__logReads():Bool return this._logReads;
    function set__logReads(v:Bool):Bool {
        this._logReads = v;
        return v;
    }
    public var _logWrites(get, set) : Bool;
    function get__logWrites():Bool return this._logWrites;
    function set__logWrites(v:Bool):Bool {
        this._logWrites = v;
        return v;
    }
    public var _debugFramer(get, set) : T_http2Framer;
    function get__debugFramer():T_http2Framer return this._debugFramer;
    function set__debugFramer(v:T_http2Framer):T_http2Framer {
        this._debugFramer = v;
        return v;
    }
    public var _debugFramerBuf(get, set) : stdgo._internal.bytes.Bytes_Buffer.Buffer;
    function get__debugFramerBuf():stdgo._internal.bytes.Bytes_Buffer.Buffer return this._debugFramerBuf;
    function set__debugFramerBuf(v:stdgo._internal.bytes.Bytes_Buffer.Buffer):stdgo._internal.bytes.Bytes_Buffer.Buffer {
        this._debugFramerBuf = v;
        return v;
    }
    public var _debugReadLoggerf(get, set) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void;
    function get__debugReadLoggerf():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void return (_0, _1) -> this._debugReadLoggerf(_0, _1);
    function set__debugReadLoggerf(v:(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void):(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void {
        this._debugReadLoggerf = v;
        return v;
    }
    public var _debugWriteLoggerf(get, set) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void;
    function get__debugWriteLoggerf():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void return (_0, _1) -> this._debugWriteLoggerf(_0, _1);
    function set__debugWriteLoggerf(v:(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void):(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void {
        this._debugWriteLoggerf = v;
        return v;
    }
    public var _frameCache(get, set) : T_http2frameCache;
    function get__frameCache():T_http2frameCache return this._frameCache;
    function set__frameCache(v:T_http2frameCache):T_http2frameCache {
        this._frameCache = v;
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_lastFrame:T_http2Frame, ?_errDetail:stdgo.Error, ?_countError:stdgo.GoString -> Void, ?_lastHeaderStream:std.UInt, ?_maxReadSize:std.UInt, ?_headerBuf:haxe.ds.Vector<std.UInt>, ?_getReadBuf:stdgo.GoUInt32 -> stdgo.Slice<stdgo.GoUInt8>, ?_readBuf:Array<std.UInt>, ?_maxWriteSize:std.UInt, ?_w:stdgo._internal.io.Io_Writer.Writer, ?_wbuf:Array<std.UInt>, ?allowIllegalWrites:Bool, ?allowIllegalReads:Bool, ?readMetaHeaders:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Decoder.Decoder, ?maxHeaderListSize:std.UInt, ?_logReads:Bool, ?_logWrites:Bool, ?_debugFramer:T_http2Framer, ?_debugFramerBuf:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_debugReadLoggerf:(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void, ?_debugWriteLoggerf:(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void, ?_frameCache:T_http2frameCache) this = new stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer(
_r,
_lastFrame,
_errDetail,
_countError,
_lastHeaderStream,
_maxReadSize,
([for (i in _headerBuf) i] : stdgo.GoArray<stdgo.GoUInt8>),
_getReadBuf,
([for (i in _readBuf) i] : stdgo.Slice<stdgo.GoUInt8>),
_maxWriteSize,
_w,
([for (i in _wbuf) i] : stdgo.Slice<stdgo.GoUInt8>),
allowIllegalWrites,
allowIllegalReads,
readMetaHeaders,
maxHeaderListSize,
_logReads,
_logWrites,
_debugFramer,
_debugFramerBuf,
_debugReadLoggerf,
_debugWriteLoggerf,
_frameCache);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2frameCache_static_extension) abstract T_http2frameCache(stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache) from stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache to stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache {
    public var _dataFrame(get, set) : T_http2DataFrame;
    function get__dataFrame():T_http2DataFrame return this._dataFrame;
    function set__dataFrame(v:T_http2DataFrame):T_http2DataFrame {
        this._dataFrame = v;
        return v;
    }
    public function new(?_dataFrame:T_http2DataFrame) this = new stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache(_dataFrame);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2DataFrame_static_extension) abstract T_http2DataFrame(stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame) from stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame to stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame {
    public var _http2FrameHeader(get, set) : T_http2FrameHeader;
    function get__http2FrameHeader():T_http2FrameHeader return this._http2FrameHeader;
    function set__http2FrameHeader(v:T_http2FrameHeader):T_http2FrameHeader {
        this._http2FrameHeader = v;
        return v;
    }
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_http2FrameHeader:T_http2FrameHeader, ?_data:Array<std.UInt>) this = new stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame(_http2FrameHeader, ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2SettingsFrame_static_extension) abstract T_http2SettingsFrame(stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame) from stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame to stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame {
    public var _http2FrameHeader(get, set) : T_http2FrameHeader;
    function get__http2FrameHeader():T_http2FrameHeader return this._http2FrameHeader;
    function set__http2FrameHeader(v:T_http2FrameHeader):T_http2FrameHeader {
        this._http2FrameHeader = v;
        return v;
    }
    public var _p(get, set) : Array<std.UInt>;
    function get__p():Array<std.UInt> return [for (i in this._p) i];
    function set__p(v:Array<std.UInt>):Array<std.UInt> {
        this._p = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_http2FrameHeader:T_http2FrameHeader, ?_p:Array<std.UInt>) this = new stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame(_http2FrameHeader, ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2PingFrame_static_extension) abstract T_http2PingFrame(stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame) from stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame to stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame {
    public var _http2FrameHeader(get, set) : T_http2FrameHeader;
    function get__http2FrameHeader():T_http2FrameHeader return this._http2FrameHeader;
    function set__http2FrameHeader(v:T_http2FrameHeader):T_http2FrameHeader {
        this._http2FrameHeader = v;
        return v;
    }
    public var data(get, set) : haxe.ds.Vector<std.UInt>;
    function get_data():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.data) i]);
    function set_data(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.data = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_http2FrameHeader:T_http2FrameHeader, ?data:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame(_http2FrameHeader, ([for (i in data) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2GoAwayFrame_static_extension) abstract T_http2GoAwayFrame(stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame) from stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame to stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame {
    public var _http2FrameHeader(get, set) : T_http2FrameHeader;
    function get__http2FrameHeader():T_http2FrameHeader return this._http2FrameHeader;
    function set__http2FrameHeader(v:T_http2FrameHeader):T_http2FrameHeader {
        this._http2FrameHeader = v;
        return v;
    }
    public var lastStreamID(get, set) : std.UInt;
    function get_lastStreamID():std.UInt return this.lastStreamID;
    function set_lastStreamID(v:std.UInt):std.UInt {
        this.lastStreamID = v;
        return v;
    }
    public var errCode(get, set) : T_http2ErrCode;
    function get_errCode():T_http2ErrCode return this.errCode;
    function set_errCode(v:T_http2ErrCode):T_http2ErrCode {
        this.errCode = v;
        return v;
    }
    public var _debugData(get, set) : Array<std.UInt>;
    function get__debugData():Array<std.UInt> return [for (i in this._debugData) i];
    function set__debugData(v:Array<std.UInt>):Array<std.UInt> {
        this._debugData = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_http2FrameHeader:T_http2FrameHeader, ?lastStreamID:std.UInt, ?errCode:T_http2ErrCode, ?_debugData:Array<std.UInt>) this = new stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame(_http2FrameHeader, lastStreamID, errCode, ([for (i in _debugData) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2UnknownFrame_static_extension) abstract T_http2UnknownFrame(stdgo._internal.net.http.Http_T_http2UnknownFrame.T_http2UnknownFrame) from stdgo._internal.net.http.Http_T_http2UnknownFrame.T_http2UnknownFrame to stdgo._internal.net.http.Http_T_http2UnknownFrame.T_http2UnknownFrame {
    public var _http2FrameHeader(get, set) : T_http2FrameHeader;
    function get__http2FrameHeader():T_http2FrameHeader return this._http2FrameHeader;
    function set__http2FrameHeader(v:T_http2FrameHeader):T_http2FrameHeader {
        this._http2FrameHeader = v;
        return v;
    }
    public var _p(get, set) : Array<std.UInt>;
    function get__p():Array<std.UInt> return [for (i in this._p) i];
    function set__p(v:Array<std.UInt>):Array<std.UInt> {
        this._p = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_http2FrameHeader:T_http2FrameHeader, ?_p:Array<std.UInt>) this = new stdgo._internal.net.http.Http_T_http2UnknownFrame.T_http2UnknownFrame(_http2FrameHeader, ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2WindowUpdateFrame_static_extension) abstract T_http2WindowUpdateFrame(stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame) from stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame to stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame {
    public var _http2FrameHeader(get, set) : T_http2FrameHeader;
    function get__http2FrameHeader():T_http2FrameHeader return this._http2FrameHeader;
    function set__http2FrameHeader(v:T_http2FrameHeader):T_http2FrameHeader {
        this._http2FrameHeader = v;
        return v;
    }
    public var increment(get, set) : std.UInt;
    function get_increment():std.UInt return this.increment;
    function set_increment(v:std.UInt):std.UInt {
        this.increment = v;
        return v;
    }
    public function new(?_http2FrameHeader:T_http2FrameHeader, ?increment:std.UInt) this = new stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame(_http2FrameHeader, increment);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2HeadersFrame_static_extension) abstract T_http2HeadersFrame(stdgo._internal.net.http.Http_T_http2HeadersFrame.T_http2HeadersFrame) from stdgo._internal.net.http.Http_T_http2HeadersFrame.T_http2HeadersFrame to stdgo._internal.net.http.Http_T_http2HeadersFrame.T_http2HeadersFrame {
    public var _http2FrameHeader(get, set) : T_http2FrameHeader;
    function get__http2FrameHeader():T_http2FrameHeader return this._http2FrameHeader;
    function set__http2FrameHeader(v:T_http2FrameHeader):T_http2FrameHeader {
        this._http2FrameHeader = v;
        return v;
    }
    public var priority(get, set) : T_http2PriorityParam;
    function get_priority():T_http2PriorityParam return this.priority;
    function set_priority(v:T_http2PriorityParam):T_http2PriorityParam {
        this.priority = v;
        return v;
    }
    public var _headerFragBuf(get, set) : Array<std.UInt>;
    function get__headerFragBuf():Array<std.UInt> return [for (i in this._headerFragBuf) i];
    function set__headerFragBuf(v:Array<std.UInt>):Array<std.UInt> {
        this._headerFragBuf = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_http2FrameHeader:T_http2FrameHeader, ?priority:T_http2PriorityParam, ?_headerFragBuf:Array<std.UInt>) this = new stdgo._internal.net.http.Http_T_http2HeadersFrame.T_http2HeadersFrame(_http2FrameHeader, priority, ([for (i in _headerFragBuf) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_http2HeadersFrameParam(stdgo._internal.net.http.Http_T_http2HeadersFrameParam.T_http2HeadersFrameParam) from stdgo._internal.net.http.Http_T_http2HeadersFrameParam.T_http2HeadersFrameParam to stdgo._internal.net.http.Http_T_http2HeadersFrameParam.T_http2HeadersFrameParam {
    public var streamID(get, set) : std.UInt;
    function get_streamID():std.UInt return this.streamID;
    function set_streamID(v:std.UInt):std.UInt {
        this.streamID = v;
        return v;
    }
    public var blockFragment(get, set) : Array<std.UInt>;
    function get_blockFragment():Array<std.UInt> return [for (i in this.blockFragment) i];
    function set_blockFragment(v:Array<std.UInt>):Array<std.UInt> {
        this.blockFragment = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
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
        this.padLength = v;
        return v;
    }
    public var priority(get, set) : T_http2PriorityParam;
    function get_priority():T_http2PriorityParam return this.priority;
    function set_priority(v:T_http2PriorityParam):T_http2PriorityParam {
        this.priority = v;
        return v;
    }
    public function new(?streamID:std.UInt, ?blockFragment:Array<std.UInt>, ?endStream:Bool, ?endHeaders:Bool, ?padLength:std.UInt, ?priority:T_http2PriorityParam) this = new stdgo._internal.net.http.Http_T_http2HeadersFrameParam.T_http2HeadersFrameParam(streamID, ([for (i in blockFragment) i] : stdgo.Slice<stdgo.GoUInt8>), endStream, endHeaders, padLength, priority);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2PriorityFrame_static_extension) abstract T_http2PriorityFrame(stdgo._internal.net.http.Http_T_http2PriorityFrame.T_http2PriorityFrame) from stdgo._internal.net.http.Http_T_http2PriorityFrame.T_http2PriorityFrame to stdgo._internal.net.http.Http_T_http2PriorityFrame.T_http2PriorityFrame {
    public var _http2FrameHeader(get, set) : T_http2FrameHeader;
    function get__http2FrameHeader():T_http2FrameHeader return this._http2FrameHeader;
    function set__http2FrameHeader(v:T_http2FrameHeader):T_http2FrameHeader {
        this._http2FrameHeader = v;
        return v;
    }
    public var _http2PriorityParam(get, set) : T_http2PriorityParam;
    function get__http2PriorityParam():T_http2PriorityParam return this._http2PriorityParam;
    function set__http2PriorityParam(v:T_http2PriorityParam):T_http2PriorityParam {
        this._http2PriorityParam = v;
        return v;
    }
    public function new(?_http2FrameHeader:T_http2FrameHeader, ?_http2PriorityParam:T_http2PriorityParam) this = new stdgo._internal.net.http.Http_T_http2PriorityFrame.T_http2PriorityFrame(_http2FrameHeader, _http2PriorityParam);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2PriorityParam_static_extension) abstract T_http2PriorityParam(stdgo._internal.net.http.Http_T_http2PriorityParam.T_http2PriorityParam) from stdgo._internal.net.http.Http_T_http2PriorityParam.T_http2PriorityParam to stdgo._internal.net.http.Http_T_http2PriorityParam.T_http2PriorityParam {
    public var streamDep(get, set) : std.UInt;
    function get_streamDep():std.UInt return this.streamDep;
    function set_streamDep(v:std.UInt):std.UInt {
        this.streamDep = v;
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
        this.weight = v;
        return v;
    }
    public function new(?streamDep:std.UInt, ?exclusive:Bool, ?weight:std.UInt) this = new stdgo._internal.net.http.Http_T_http2PriorityParam.T_http2PriorityParam(streamDep, exclusive, weight);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2RSTStreamFrame_static_extension) abstract T_http2RSTStreamFrame(stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame) from stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame to stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame {
    public var _http2FrameHeader(get, set) : T_http2FrameHeader;
    function get__http2FrameHeader():T_http2FrameHeader return this._http2FrameHeader;
    function set__http2FrameHeader(v:T_http2FrameHeader):T_http2FrameHeader {
        this._http2FrameHeader = v;
        return v;
    }
    public var errCode(get, set) : T_http2ErrCode;
    function get_errCode():T_http2ErrCode return this.errCode;
    function set_errCode(v:T_http2ErrCode):T_http2ErrCode {
        this.errCode = v;
        return v;
    }
    public function new(?_http2FrameHeader:T_http2FrameHeader, ?errCode:T_http2ErrCode) this = new stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame(_http2FrameHeader, errCode);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2ContinuationFrame_static_extension) abstract T_http2ContinuationFrame(stdgo._internal.net.http.Http_T_http2ContinuationFrame.T_http2ContinuationFrame) from stdgo._internal.net.http.Http_T_http2ContinuationFrame.T_http2ContinuationFrame to stdgo._internal.net.http.Http_T_http2ContinuationFrame.T_http2ContinuationFrame {
    public var _http2FrameHeader(get, set) : T_http2FrameHeader;
    function get__http2FrameHeader():T_http2FrameHeader return this._http2FrameHeader;
    function set__http2FrameHeader(v:T_http2FrameHeader):T_http2FrameHeader {
        this._http2FrameHeader = v;
        return v;
    }
    public var _headerFragBuf(get, set) : Array<std.UInt>;
    function get__headerFragBuf():Array<std.UInt> return [for (i in this._headerFragBuf) i];
    function set__headerFragBuf(v:Array<std.UInt>):Array<std.UInt> {
        this._headerFragBuf = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_http2FrameHeader:T_http2FrameHeader, ?_headerFragBuf:Array<std.UInt>) this = new stdgo._internal.net.http.Http_T_http2ContinuationFrame.T_http2ContinuationFrame(_http2FrameHeader, ([for (i in _headerFragBuf) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2PushPromiseFrame_static_extension) abstract T_http2PushPromiseFrame(stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame) from stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame to stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame {
    public var _http2FrameHeader(get, set) : T_http2FrameHeader;
    function get__http2FrameHeader():T_http2FrameHeader return this._http2FrameHeader;
    function set__http2FrameHeader(v:T_http2FrameHeader):T_http2FrameHeader {
        this._http2FrameHeader = v;
        return v;
    }
    public var promiseID(get, set) : std.UInt;
    function get_promiseID():std.UInt return this.promiseID;
    function set_promiseID(v:std.UInt):std.UInt {
        this.promiseID = v;
        return v;
    }
    public var _headerFragBuf(get, set) : Array<std.UInt>;
    function get__headerFragBuf():Array<std.UInt> return [for (i in this._headerFragBuf) i];
    function set__headerFragBuf(v:Array<std.UInt>):Array<std.UInt> {
        this._headerFragBuf = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_http2FrameHeader:T_http2FrameHeader, ?promiseID:std.UInt, ?_headerFragBuf:Array<std.UInt>) this = new stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame(_http2FrameHeader, promiseID, ([for (i in _headerFragBuf) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_http2PushPromiseParam(stdgo._internal.net.http.Http_T_http2PushPromiseParam.T_http2PushPromiseParam) from stdgo._internal.net.http.Http_T_http2PushPromiseParam.T_http2PushPromiseParam to stdgo._internal.net.http.Http_T_http2PushPromiseParam.T_http2PushPromiseParam {
    public var streamID(get, set) : std.UInt;
    function get_streamID():std.UInt return this.streamID;
    function set_streamID(v:std.UInt):std.UInt {
        this.streamID = v;
        return v;
    }
    public var promiseID(get, set) : std.UInt;
    function get_promiseID():std.UInt return this.promiseID;
    function set_promiseID(v:std.UInt):std.UInt {
        this.promiseID = v;
        return v;
    }
    public var blockFragment(get, set) : Array<std.UInt>;
    function get_blockFragment():Array<std.UInt> return [for (i in this.blockFragment) i];
    function set_blockFragment(v:Array<std.UInt>):Array<std.UInt> {
        this.blockFragment = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
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
        this.padLength = v;
        return v;
    }
    public function new(?streamID:std.UInt, ?promiseID:std.UInt, ?blockFragment:Array<std.UInt>, ?endHeaders:Bool, ?padLength:std.UInt) this = new stdgo._internal.net.http.Http_T_http2PushPromiseParam.T_http2PushPromiseParam(streamID, promiseID, ([for (i in blockFragment) i] : stdgo.Slice<stdgo.GoUInt8>), endHeaders, padLength);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2MetaHeadersFrame_static_extension) abstract T_http2MetaHeadersFrame(stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame) from stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame to stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame {
    public var _http2HeadersFrame(get, set) : T_http2HeadersFrame;
    function get__http2HeadersFrame():T_http2HeadersFrame return this._http2HeadersFrame;
    function set__http2HeadersFrame(v:T_http2HeadersFrame):T_http2HeadersFrame {
        this._http2HeadersFrame = v;
        return v;
    }
    public var fields(get, set) : Array<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>;
    function get_fields():Array<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField> return [for (i in this.fields) i];
    function set_fields(v:Array<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>):Array<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField> {
        this.fields = ([for (i in v) i] : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>);
        return v;
    }
    public var truncated(get, set) : Bool;
    function get_truncated():Bool return this.truncated;
    function set_truncated(v:Bool):Bool {
        this.truncated = v;
        return v;
    }
    public function new(?_http2HeadersFrame:T_http2HeadersFrame, ?fields:Array<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>, ?truncated:Bool) this = new stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame(_http2HeadersFrame, ([for (i in fields) i] : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField>), truncated);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2Setting_static_extension) abstract T_http2Setting(stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting) from stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting to stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting {
    public var iD(get, set) : T_http2SettingID;
    function get_iD():T_http2SettingID return this.iD;
    function set_iD(v:T_http2SettingID):T_http2SettingID {
        this.iD = v;
        return v;
    }
    public var val(get, set) : std.UInt;
    function get_val():std.UInt return this.val;
    function set_val(v:std.UInt):std.UInt {
        this.val = v;
        return v;
    }
    public function new(?iD:T_http2SettingID, ?val:std.UInt) this = new stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting(iD, val);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2bufferedWriter_static_extension) abstract T_http2bufferedWriter(stdgo._internal.net.http.Http_T_http2bufferedWriter.T_http2bufferedWriter) from stdgo._internal.net.http.Http_T_http2bufferedWriter.T_http2bufferedWriter to stdgo._internal.net.http.Http_T_http2bufferedWriter.T_http2bufferedWriter {
    public var __14(get, set) : T_http2incomparable;
    function get___14():T_http2incomparable return this.__14;
    function set___14(v:T_http2incomparable):T_http2incomparable {
        this.__14 = v;
        return v;
    }
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _bw(get, set) : stdgo._internal.bufio.Bufio_Writer.Writer;
    function get__bw():stdgo._internal.bufio.Bufio_Writer.Writer return this._bw;
    function set__bw(v:stdgo._internal.bufio.Bufio_Writer.Writer):stdgo._internal.bufio.Bufio_Writer.Writer {
        this._bw = v;
        return v;
    }
    public function new(?__14:T_http2incomparable, ?_w:stdgo._internal.io.Io_Writer.Writer, ?_bw:stdgo._internal.bufio.Bufio_Writer.Writer) this = new stdgo._internal.net.http.Http_T_http2bufferedWriter.T_http2bufferedWriter(__14, _w, _bw);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2httpError_static_extension) abstract T_http2httpError(stdgo._internal.net.http.Http_T_http2httpError.T_http2httpError) from stdgo._internal.net.http.Http_T_http2httpError.T_http2httpError to stdgo._internal.net.http.Http_T_http2httpError.T_http2httpError {
    public var __16(get, set) : T_http2incomparable;
    function get___16():T_http2incomparable return this.__16;
    function set___16(v:T_http2incomparable):T_http2incomparable {
        this.__16 = v;
        return v;
    }
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = v;
        return v;
    }
    public var _timeout(get, set) : Bool;
    function get__timeout():Bool return this._timeout;
    function set__timeout(v:Bool):Bool {
        this._timeout = v;
        return v;
    }
    public function new(?__16:T_http2incomparable, ?_msg:String, ?_timeout:Bool) this = new stdgo._internal.net.http.Http_T_http2httpError.T_http2httpError(__16, _msg, _timeout);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2sorter_static_extension) abstract T_http2sorter(stdgo._internal.net.http.Http_T_http2sorter.T_http2sorter) from stdgo._internal.net.http.Http_T_http2sorter.T_http2sorter to stdgo._internal.net.http.Http_T_http2sorter.T_http2sorter {
    public var _v(get, set) : Array<String>;
    function get__v():Array<String> return [for (i in this._v) i];
    function set__v(v:Array<String>):Array<String> {
        this._v = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_v:Array<String>) this = new stdgo._internal.net.http.Http_T_http2sorter.T_http2sorter(([for (i in _v) i] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2pipe_static_extension) abstract T_http2pipe(stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe) from stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe to stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe {
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _c(get, set) : stdgo._internal.sync.Sync_Cond.Cond;
    function get__c():stdgo._internal.sync.Sync_Cond.Cond return this._c;
    function set__c(v:stdgo._internal.sync.Sync_Cond.Cond):stdgo._internal.sync.Sync_Cond.Cond {
        this._c = v;
        return v;
    }
    public var _b(get, set) : T_http2pipeBuffer;
    function get__b():T_http2pipeBuffer return this._b;
    function set__b(v:T_http2pipeBuffer):T_http2pipeBuffer {
        this._b = v;
        return v;
    }
    public var _unread(get, set) : StdTypes.Int;
    function get__unread():StdTypes.Int return this._unread;
    function set__unread(v:StdTypes.Int):StdTypes.Int {
        this._unread = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _breakErr(get, set) : stdgo.Error;
    function get__breakErr():stdgo.Error return this._breakErr;
    function set__breakErr(v:stdgo.Error):stdgo.Error {
        this._breakErr = v;
        return v;
    }
    public var _donec(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>;
    function get__donec():stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> return this._donec;
    function set__donec(v:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> {
        this._donec = v;
        return v;
    }
    public var _readFn(get, set) : () -> Void;
    function get__readFn():() -> Void return () -> this._readFn();
    function set__readFn(v:() -> Void):() -> Void {
        this._readFn = v;
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_c:stdgo._internal.sync.Sync_Cond.Cond, ?_b:T_http2pipeBuffer, ?_unread:StdTypes.Int, ?_err:stdgo.Error, ?_breakErr:stdgo.Error, ?_donec:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_readFn:() -> Void) this = new stdgo._internal.net.http.Http_T_http2pipe.T_http2pipe(_mu, _c, _b, _unread, _err, _breakErr, _donec, _readFn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2Server_static_extension) abstract T_http2Server(stdgo._internal.net.http.Http_T_http2Server.T_http2Server) from stdgo._internal.net.http.Http_T_http2Server.T_http2Server to stdgo._internal.net.http.Http_T_http2Server.T_http2Server {
    public var maxHandlers(get, set) : StdTypes.Int;
    function get_maxHandlers():StdTypes.Int return this.maxHandlers;
    function set_maxHandlers(v:StdTypes.Int):StdTypes.Int {
        this.maxHandlers = v;
        return v;
    }
    public var maxConcurrentStreams(get, set) : std.UInt;
    function get_maxConcurrentStreams():std.UInt return this.maxConcurrentStreams;
    function set_maxConcurrentStreams(v:std.UInt):std.UInt {
        this.maxConcurrentStreams = v;
        return v;
    }
    public var maxDecoderHeaderTableSize(get, set) : std.UInt;
    function get_maxDecoderHeaderTableSize():std.UInt return this.maxDecoderHeaderTableSize;
    function set_maxDecoderHeaderTableSize(v:std.UInt):std.UInt {
        this.maxDecoderHeaderTableSize = v;
        return v;
    }
    public var maxEncoderHeaderTableSize(get, set) : std.UInt;
    function get_maxEncoderHeaderTableSize():std.UInt return this.maxEncoderHeaderTableSize;
    function set_maxEncoderHeaderTableSize(v:std.UInt):std.UInt {
        this.maxEncoderHeaderTableSize = v;
        return v;
    }
    public var maxReadFrameSize(get, set) : std.UInt;
    function get_maxReadFrameSize():std.UInt return this.maxReadFrameSize;
    function set_maxReadFrameSize(v:std.UInt):std.UInt {
        this.maxReadFrameSize = v;
        return v;
    }
    public var permitProhibitedCipherSuites(get, set) : Bool;
    function get_permitProhibitedCipherSuites():Bool return this.permitProhibitedCipherSuites;
    function set_permitProhibitedCipherSuites(v:Bool):Bool {
        this.permitProhibitedCipherSuites = v;
        return v;
    }
    public var idleTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_idleTimeout():stdgo._internal.time.Time_Duration.Duration return this.idleTimeout;
    function set_idleTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.idleTimeout = v;
        return v;
    }
    public var maxUploadBufferPerConnection(get, set) : StdTypes.Int;
    function get_maxUploadBufferPerConnection():StdTypes.Int return this.maxUploadBufferPerConnection;
    function set_maxUploadBufferPerConnection(v:StdTypes.Int):StdTypes.Int {
        this.maxUploadBufferPerConnection = v;
        return v;
    }
    public var maxUploadBufferPerStream(get, set) : StdTypes.Int;
    function get_maxUploadBufferPerStream():StdTypes.Int return this.maxUploadBufferPerStream;
    function set_maxUploadBufferPerStream(v:StdTypes.Int):StdTypes.Int {
        this.maxUploadBufferPerStream = v;
        return v;
    }
    public var newWriteScheduler(get, set) : () -> stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler;
    function get_newWriteScheduler():() -> stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler return () -> this.newWriteScheduler();
    function set_newWriteScheduler(v:() -> stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler):() -> stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler {
        this.newWriteScheduler = v;
        return v;
    }
    public var countError(get, set) : stdgo.GoString -> Void;
    function get_countError():stdgo.GoString -> Void return _0 -> this.countError(_0);
    function set_countError(v:stdgo.GoString -> Void):stdgo.GoString -> Void {
        this.countError = v;
        return v;
    }
    public var _state(get, set) : T_http2serverInternalState;
    function get__state():T_http2serverInternalState return this._state;
    function set__state(v:T_http2serverInternalState):T_http2serverInternalState {
        this._state = v;
        return v;
    }
    public function new(?maxHandlers:StdTypes.Int, ?maxConcurrentStreams:std.UInt, ?maxDecoderHeaderTableSize:std.UInt, ?maxEncoderHeaderTableSize:std.UInt, ?maxReadFrameSize:std.UInt, ?permitProhibitedCipherSuites:Bool, ?idleTimeout:stdgo._internal.time.Time_Duration.Duration, ?maxUploadBufferPerConnection:StdTypes.Int, ?maxUploadBufferPerStream:StdTypes.Int, ?newWriteScheduler:() -> stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler, ?countError:stdgo.GoString -> Void, ?_state:T_http2serverInternalState) this = new stdgo._internal.net.http.Http_T_http2Server.T_http2Server(
maxHandlers,
maxConcurrentStreams,
maxDecoderHeaderTableSize,
maxEncoderHeaderTableSize,
maxReadFrameSize,
permitProhibitedCipherSuites,
idleTimeout,
maxUploadBufferPerConnection,
maxUploadBufferPerStream,
newWriteScheduler,
countError,
_state);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2serverInternalState_static_extension) abstract T_http2serverInternalState(stdgo._internal.net.http.Http_T_http2serverInternalState.T_http2serverInternalState) from stdgo._internal.net.http.Http_T_http2serverInternalState.T_http2serverInternalState to stdgo._internal.net.http.Http_T_http2serverInternalState.T_http2serverInternalState {
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _activeConns(get, set) : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>;
    function get__activeConns():stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> return this._activeConns;
    function set__activeConns(v:stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> {
        this._activeConns = v;
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_activeConns:stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>) this = new stdgo._internal.net.http.Http_T_http2serverInternalState.T_http2serverInternalState(_mu, _activeConns);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2ServeConnOpts_static_extension) abstract T_http2ServeConnOpts(stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts) from stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts to stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts {
    public var context(get, set) : stdgo._internal.context.Context_Context.Context;
    function get_context():stdgo._internal.context.Context_Context.Context return this.context;
    function set_context(v:stdgo._internal.context.Context_Context.Context):stdgo._internal.context.Context_Context.Context {
        this.context = v;
        return v;
    }
    public var baseConfig(get, set) : Server;
    function get_baseConfig():Server return this.baseConfig;
    function set_baseConfig(v:Server):Server {
        this.baseConfig = v;
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
        this.upgradeRequest = v;
        return v;
    }
    public var settings(get, set) : Array<std.UInt>;
    function get_settings():Array<std.UInt> return [for (i in this.settings) i];
    function set_settings(v:Array<std.UInt>):Array<std.UInt> {
        this.settings = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var sawClientPreface(get, set) : Bool;
    function get_sawClientPreface():Bool return this.sawClientPreface;
    function set_sawClientPreface(v:Bool):Bool {
        this.sawClientPreface = v;
        return v;
    }
    public function new(?context:stdgo._internal.context.Context_Context.Context, ?baseConfig:Server, ?handler:Handler, ?upgradeRequest:Request, ?settings:Array<std.UInt>, ?sawClientPreface:Bool) this = new stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts(context, baseConfig, handler, upgradeRequest, ([for (i in settings) i] : stdgo.Slice<stdgo.GoUInt8>), sawClientPreface);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2serverConn_static_extension) abstract T_http2serverConn(stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn) from stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn to stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn {
    public var _srv(get, set) : T_http2Server;
    function get__srv():T_http2Server return this._srv;
    function set__srv(v:T_http2Server):T_http2Server {
        this._srv = v;
        return v;
    }
    public var _hs(get, set) : Server;
    function get__hs():Server return this._hs;
    function set__hs(v:Server):Server {
        this._hs = v;
        return v;
    }
    public var _conn(get, set) : stdgo._internal.net.Net_Conn.Conn;
    function get__conn():stdgo._internal.net.Net_Conn.Conn return this._conn;
    function set__conn(v:stdgo._internal.net.Net_Conn.Conn):stdgo._internal.net.Net_Conn.Conn {
        this._conn = v;
        return v;
    }
    public var _bw(get, set) : T_http2bufferedWriter;
    function get__bw():T_http2bufferedWriter return this._bw;
    function set__bw(v:T_http2bufferedWriter):T_http2bufferedWriter {
        this._bw = v;
        return v;
    }
    public var _handler(get, set) : Handler;
    function get__handler():Handler return this._handler;
    function set__handler(v:Handler):Handler {
        this._handler = v;
        return v;
    }
    public var _baseCtx(get, set) : stdgo._internal.context.Context_Context.Context;
    function get__baseCtx():stdgo._internal.context.Context_Context.Context return this._baseCtx;
    function set__baseCtx(v:stdgo._internal.context.Context_Context.Context):stdgo._internal.context.Context_Context.Context {
        this._baseCtx = v;
        return v;
    }
    public var _framer(get, set) : T_http2Framer;
    function get__framer():T_http2Framer return this._framer;
    function set__framer(v:T_http2Framer):T_http2Framer {
        this._framer = v;
        return v;
    }
    public var _doneServing(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>;
    function get__doneServing():stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> return this._doneServing;
    function set__doneServing(v:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> {
        this._doneServing = v;
        return v;
    }
    public var _readFrameCh(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2readFrameResult.T_http2readFrameResult>;
    function get__readFrameCh():stdgo.Chan<stdgo._internal.net.http.Http_T_http2readFrameResult.T_http2readFrameResult> return this._readFrameCh;
    function set__readFrameCh(v:stdgo.Chan<stdgo._internal.net.http.Http_T_http2readFrameResult.T_http2readFrameResult>):stdgo.Chan<stdgo._internal.net.http.Http_T_http2readFrameResult.T_http2readFrameResult> {
        this._readFrameCh = v;
        return v;
    }
    public var _wantWriteFrameCh(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest>;
    function get__wantWriteFrameCh():stdgo.Chan<stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest> return this._wantWriteFrameCh;
    function set__wantWriteFrameCh(v:stdgo.Chan<stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest>):stdgo.Chan<stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest> {
        this._wantWriteFrameCh = v;
        return v;
    }
    public var _wroteFrameCh(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2frameWriteResult.T_http2frameWriteResult>;
    function get__wroteFrameCh():stdgo.Chan<stdgo._internal.net.http.Http_T_http2frameWriteResult.T_http2frameWriteResult> return this._wroteFrameCh;
    function set__wroteFrameCh(v:stdgo.Chan<stdgo._internal.net.http.Http_T_http2frameWriteResult.T_http2frameWriteResult>):stdgo.Chan<stdgo._internal.net.http.Http_T_http2frameWriteResult.T_http2frameWriteResult> {
        this._wroteFrameCh = v;
        return v;
    }
    public var _bodyReadCh(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2bodyReadMsg.T_http2bodyReadMsg>;
    function get__bodyReadCh():stdgo.Chan<stdgo._internal.net.http.Http_T_http2bodyReadMsg.T_http2bodyReadMsg> return this._bodyReadCh;
    function set__bodyReadCh(v:stdgo.Chan<stdgo._internal.net.http.Http_T_http2bodyReadMsg.T_http2bodyReadMsg>):stdgo.Chan<stdgo._internal.net.http.Http_T_http2bodyReadMsg.T_http2bodyReadMsg> {
        this._bodyReadCh = v;
        return v;
    }
    public var _serveMsgCh(get, set) : stdgo.Chan<stdgo.AnyInterface>;
    function get__serveMsgCh():stdgo.Chan<stdgo.AnyInterface> return this._serveMsgCh;
    function set__serveMsgCh(v:stdgo.Chan<stdgo.AnyInterface>):stdgo.Chan<stdgo.AnyInterface> {
        this._serveMsgCh = v;
        return v;
    }
    public var _flow(get, set) : T_http2outflow;
    function get__flow():T_http2outflow return this._flow;
    function set__flow(v:T_http2outflow):T_http2outflow {
        this._flow = v;
        return v;
    }
    public var _inflow(get, set) : T_http2inflow;
    function get__inflow():T_http2inflow return this._inflow;
    function set__inflow(v:T_http2inflow):T_http2inflow {
        this._inflow = v;
        return v;
    }
    public var _tlsState(get, set) : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState;
    function get__tlsState():stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState return this._tlsState;
    function set__tlsState(v:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState):stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState {
        this._tlsState = v;
        return v;
    }
    public var _remoteAddrStr(get, set) : String;
    function get__remoteAddrStr():String return this._remoteAddrStr;
    function set__remoteAddrStr(v:String):String {
        this._remoteAddrStr = v;
        return v;
    }
    public var _writeSched(get, set) : T_http2WriteScheduler;
    function get__writeSched():T_http2WriteScheduler return this._writeSched;
    function set__writeSched(v:T_http2WriteScheduler):T_http2WriteScheduler {
        this._writeSched = v;
        return v;
    }
    public var _serveG(get, set) : T_http2goroutineLock;
    function get__serveG():T_http2goroutineLock return this._serveG;
    function set__serveG(v:T_http2goroutineLock):T_http2goroutineLock {
        this._serveG = v;
        return v;
    }
    public var _pushEnabled(get, set) : Bool;
    function get__pushEnabled():Bool return this._pushEnabled;
    function set__pushEnabled(v:Bool):Bool {
        this._pushEnabled = v;
        return v;
    }
    public var _sawClientPreface(get, set) : Bool;
    function get__sawClientPreface():Bool return this._sawClientPreface;
    function set__sawClientPreface(v:Bool):Bool {
        this._sawClientPreface = v;
        return v;
    }
    public var _sawFirstSettings(get, set) : Bool;
    function get__sawFirstSettings():Bool return this._sawFirstSettings;
    function set__sawFirstSettings(v:Bool):Bool {
        this._sawFirstSettings = v;
        return v;
    }
    public var _needToSendSettingsAck(get, set) : Bool;
    function get__needToSendSettingsAck():Bool return this._needToSendSettingsAck;
    function set__needToSendSettingsAck(v:Bool):Bool {
        this._needToSendSettingsAck = v;
        return v;
    }
    public var _unackedSettings(get, set) : StdTypes.Int;
    function get__unackedSettings():StdTypes.Int return this._unackedSettings;
    function set__unackedSettings(v:StdTypes.Int):StdTypes.Int {
        this._unackedSettings = v;
        return v;
    }
    public var _queuedControlFrames(get, set) : StdTypes.Int;
    function get__queuedControlFrames():StdTypes.Int return this._queuedControlFrames;
    function set__queuedControlFrames(v:StdTypes.Int):StdTypes.Int {
        this._queuedControlFrames = v;
        return v;
    }
    public var _clientMaxStreams(get, set) : std.UInt;
    function get__clientMaxStreams():std.UInt return this._clientMaxStreams;
    function set__clientMaxStreams(v:std.UInt):std.UInt {
        this._clientMaxStreams = v;
        return v;
    }
    public var _advMaxStreams(get, set) : std.UInt;
    function get__advMaxStreams():std.UInt return this._advMaxStreams;
    function set__advMaxStreams(v:std.UInt):std.UInt {
        this._advMaxStreams = v;
        return v;
    }
    public var _curClientStreams(get, set) : std.UInt;
    function get__curClientStreams():std.UInt return this._curClientStreams;
    function set__curClientStreams(v:std.UInt):std.UInt {
        this._curClientStreams = v;
        return v;
    }
    public var _curPushedStreams(get, set) : std.UInt;
    function get__curPushedStreams():std.UInt return this._curPushedStreams;
    function set__curPushedStreams(v:std.UInt):std.UInt {
        this._curPushedStreams = v;
        return v;
    }
    public var _curHandlers(get, set) : std.UInt;
    function get__curHandlers():std.UInt return this._curHandlers;
    function set__curHandlers(v:std.UInt):std.UInt {
        this._curHandlers = v;
        return v;
    }
    public var _maxClientStreamID(get, set) : std.UInt;
    function get__maxClientStreamID():std.UInt return this._maxClientStreamID;
    function set__maxClientStreamID(v:std.UInt):std.UInt {
        this._maxClientStreamID = v;
        return v;
    }
    public var _maxPushPromiseID(get, set) : std.UInt;
    function get__maxPushPromiseID():std.UInt return this._maxPushPromiseID;
    function set__maxPushPromiseID(v:std.UInt):std.UInt {
        this._maxPushPromiseID = v;
        return v;
    }
    public var _streams(get, set) : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>>;
    function get__streams():stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>> return this._streams;
    function set__streams(v:stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>>):stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>> {
        this._streams = v;
        return v;
    }
    public var _unstartedHandlers(get, set) : Array<T_http2unstartedHandler>;
    function get__unstartedHandlers():Array<T_http2unstartedHandler> return [for (i in this._unstartedHandlers) i];
    function set__unstartedHandlers(v:Array<T_http2unstartedHandler>):Array<T_http2unstartedHandler> {
        this._unstartedHandlers = ([for (i in v) i] : stdgo.Slice<stdgo._internal.net.http.Http_T_http2unstartedHandler.T_http2unstartedHandler>);
        return v;
    }
    public var _initialStreamSendWindowSize(get, set) : StdTypes.Int;
    function get__initialStreamSendWindowSize():StdTypes.Int return this._initialStreamSendWindowSize;
    function set__initialStreamSendWindowSize(v:StdTypes.Int):StdTypes.Int {
        this._initialStreamSendWindowSize = v;
        return v;
    }
    public var _maxFrameSize(get, set) : StdTypes.Int;
    function get__maxFrameSize():StdTypes.Int return this._maxFrameSize;
    function set__maxFrameSize(v:StdTypes.Int):StdTypes.Int {
        this._maxFrameSize = v;
        return v;
    }
    public var _peerMaxHeaderListSize(get, set) : std.UInt;
    function get__peerMaxHeaderListSize():std.UInt return this._peerMaxHeaderListSize;
    function set__peerMaxHeaderListSize(v:std.UInt):std.UInt {
        this._peerMaxHeaderListSize = v;
        return v;
    }
    public var _canonHeader(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get__canonHeader():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this._canonHeader;
    function set__canonHeader(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this._canonHeader = v;
        return v;
    }
    public var _canonHeaderKeysSize(get, set) : StdTypes.Int;
    function get__canonHeaderKeysSize():StdTypes.Int return this._canonHeaderKeysSize;
    function set__canonHeaderKeysSize(v:StdTypes.Int):StdTypes.Int {
        this._canonHeaderKeysSize = v;
        return v;
    }
    public var _writingFrame(get, set) : Bool;
    function get__writingFrame():Bool return this._writingFrame;
    function set__writingFrame(v:Bool):Bool {
        this._writingFrame = v;
        return v;
    }
    public var _writingFrameAsync(get, set) : Bool;
    function get__writingFrameAsync():Bool return this._writingFrameAsync;
    function set__writingFrameAsync(v:Bool):Bool {
        this._writingFrameAsync = v;
        return v;
    }
    public var _needsFrameFlush(get, set) : Bool;
    function get__needsFrameFlush():Bool return this._needsFrameFlush;
    function set__needsFrameFlush(v:Bool):Bool {
        this._needsFrameFlush = v;
        return v;
    }
    public var _inGoAway(get, set) : Bool;
    function get__inGoAway():Bool return this._inGoAway;
    function set__inGoAway(v:Bool):Bool {
        this._inGoAway = v;
        return v;
    }
    public var _inFrameScheduleLoop(get, set) : Bool;
    function get__inFrameScheduleLoop():Bool return this._inFrameScheduleLoop;
    function set__inFrameScheduleLoop(v:Bool):Bool {
        this._inFrameScheduleLoop = v;
        return v;
    }
    public var _needToSendGoAway(get, set) : Bool;
    function get__needToSendGoAway():Bool return this._needToSendGoAway;
    function set__needToSendGoAway(v:Bool):Bool {
        this._needToSendGoAway = v;
        return v;
    }
    public var _goAwayCode(get, set) : T_http2ErrCode;
    function get__goAwayCode():T_http2ErrCode return this._goAwayCode;
    function set__goAwayCode(v:T_http2ErrCode):T_http2ErrCode {
        this._goAwayCode = v;
        return v;
    }
    public var _shutdownTimer(get, set) : stdgo._internal.time.Time_Timer.Timer;
    function get__shutdownTimer():stdgo._internal.time.Time_Timer.Timer return this._shutdownTimer;
    function set__shutdownTimer(v:stdgo._internal.time.Time_Timer.Timer):stdgo._internal.time.Time_Timer.Timer {
        this._shutdownTimer = v;
        return v;
    }
    public var _idleTimer(get, set) : stdgo._internal.time.Time_Timer.Timer;
    function get__idleTimer():stdgo._internal.time.Time_Timer.Timer return this._idleTimer;
    function set__idleTimer(v:stdgo._internal.time.Time_Timer.Timer):stdgo._internal.time.Time_Timer.Timer {
        this._idleTimer = v;
        return v;
    }
    public var _headerWriteBuf(get, set) : stdgo._internal.bytes.Bytes_Buffer.Buffer;
    function get__headerWriteBuf():stdgo._internal.bytes.Bytes_Buffer.Buffer return this._headerWriteBuf;
    function set__headerWriteBuf(v:stdgo._internal.bytes.Bytes_Buffer.Buffer):stdgo._internal.bytes.Bytes_Buffer.Buffer {
        this._headerWriteBuf = v;
        return v;
    }
    public var _hpackEncoder(get, set) : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder;
    function get__hpackEncoder():_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder return this._hpackEncoder;
    function set__hpackEncoder(v:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder):_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder {
        this._hpackEncoder = v;
        return v;
    }
    public var _shutdownOnce(get, set) : stdgo._internal.sync.Sync_Once.Once;
    function get__shutdownOnce():stdgo._internal.sync.Sync_Once.Once return this._shutdownOnce;
    function set__shutdownOnce(v:stdgo._internal.sync.Sync_Once.Once):stdgo._internal.sync.Sync_Once.Once {
        this._shutdownOnce = v;
        return v;
    }
    public function new(?_srv:T_http2Server, ?_hs:Server, ?_conn:stdgo._internal.net.Net_Conn.Conn, ?_bw:T_http2bufferedWriter, ?_handler:Handler, ?_baseCtx:stdgo._internal.context.Context_Context.Context, ?_framer:T_http2Framer, ?_doneServing:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_readFrameCh:stdgo.Chan<stdgo._internal.net.http.Http_T_http2readFrameResult.T_http2readFrameResult>, ?_wantWriteFrameCh:stdgo.Chan<stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest>, ?_wroteFrameCh:stdgo.Chan<stdgo._internal.net.http.Http_T_http2frameWriteResult.T_http2frameWriteResult>, ?_bodyReadCh:stdgo.Chan<stdgo._internal.net.http.Http_T_http2bodyReadMsg.T_http2bodyReadMsg>, ?_serveMsgCh:stdgo.Chan<stdgo.AnyInterface>, ?_flow:T_http2outflow, ?_inflow:T_http2inflow, ?_tlsState:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState, ?_remoteAddrStr:String, ?_writeSched:T_http2WriteScheduler, ?_serveG:T_http2goroutineLock, ?_pushEnabled:Bool, ?_sawClientPreface:Bool, ?_sawFirstSettings:Bool, ?_needToSendSettingsAck:Bool, ?_unackedSettings:StdTypes.Int, ?_queuedControlFrames:StdTypes.Int, ?_clientMaxStreams:std.UInt, ?_advMaxStreams:std.UInt, ?_curClientStreams:std.UInt, ?_curPushedStreams:std.UInt, ?_curHandlers:std.UInt, ?_maxClientStreamID:std.UInt, ?_maxPushPromiseID:std.UInt, ?_streams:stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2stream.T_http2stream>>, ?_unstartedHandlers:Array<T_http2unstartedHandler>, ?_initialStreamSendWindowSize:StdTypes.Int, ?_maxFrameSize:StdTypes.Int, ?_peerMaxHeaderListSize:std.UInt, ?_canonHeader:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_canonHeaderKeysSize:StdTypes.Int, ?_writingFrame:Bool, ?_writingFrameAsync:Bool, ?_needsFrameFlush:Bool, ?_inGoAway:Bool, ?_inFrameScheduleLoop:Bool, ?_needToSendGoAway:Bool, ?_goAwayCode:T_http2ErrCode, ?_shutdownTimer:stdgo._internal.time.Time_Timer.Timer, ?_idleTimer:stdgo._internal.time.Time_Timer.Timer, ?_headerWriteBuf:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_hpackEncoder:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder, ?_shutdownOnce:stdgo._internal.sync.Sync_Once.Once) this = new stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn(
_srv,
_hs,
_conn,
_bw,
_handler,
_baseCtx,
_framer,
_doneServing,
_readFrameCh,
_wantWriteFrameCh,
_wroteFrameCh,
_bodyReadCh,
_serveMsgCh,
_flow,
_inflow,
_tlsState,
_remoteAddrStr,
_writeSched,
_serveG,
_pushEnabled,
_sawClientPreface,
_sawFirstSettings,
_needToSendSettingsAck,
_unackedSettings,
_queuedControlFrames,
_clientMaxStreams,
_advMaxStreams,
_curClientStreams,
_curPushedStreams,
_curHandlers,
_maxClientStreamID,
_maxPushPromiseID,
_streams,
([for (i in _unstartedHandlers) i] : stdgo.Slice<stdgo._internal.net.http.Http_T_http2unstartedHandler.T_http2unstartedHandler>),
_initialStreamSendWindowSize,
_maxFrameSize,
_peerMaxHeaderListSize,
_canonHeader,
_canonHeaderKeysSize,
_writingFrame,
_writingFrameAsync,
_needsFrameFlush,
_inGoAway,
_inFrameScheduleLoop,
_needToSendGoAway,
_goAwayCode,
_shutdownTimer,
_idleTimer,
_headerWriteBuf,
_hpackEncoder,
_shutdownOnce);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2stream_static_extension) abstract T_http2stream(stdgo._internal.net.http.Http_T_http2stream.T_http2stream) from stdgo._internal.net.http.Http_T_http2stream.T_http2stream to stdgo._internal.net.http.Http_T_http2stream.T_http2stream {
    public var _sc(get, set) : T_http2serverConn;
    function get__sc():T_http2serverConn return this._sc;
    function set__sc(v:T_http2serverConn):T_http2serverConn {
        this._sc = v;
        return v;
    }
    public var _id(get, set) : std.UInt;
    function get__id():std.UInt return this._id;
    function set__id(v:std.UInt):std.UInt {
        this._id = v;
        return v;
    }
    public var _body(get, set) : T_http2pipe;
    function get__body():T_http2pipe return this._body;
    function set__body(v:T_http2pipe):T_http2pipe {
        this._body = v;
        return v;
    }
    public var _cw(get, set) : T_http2closeWaiter;
    function get__cw():T_http2closeWaiter return this._cw;
    function set__cw(v:T_http2closeWaiter):T_http2closeWaiter {
        this._cw = v;
        return v;
    }
    public var _ctx(get, set) : stdgo._internal.context.Context_Context.Context;
    function get__ctx():stdgo._internal.context.Context_Context.Context return this._ctx;
    function set__ctx(v:stdgo._internal.context.Context_Context.Context):stdgo._internal.context.Context_Context.Context {
        this._ctx = v;
        return v;
    }
    public var _cancelCtx(get, set) : () -> Void;
    function get__cancelCtx():() -> Void return () -> this._cancelCtx();
    function set__cancelCtx(v:() -> Void):() -> Void {
        this._cancelCtx = v;
        return v;
    }
    public var _bodyBytes(get, set) : haxe.Int64;
    function get__bodyBytes():haxe.Int64 return this._bodyBytes;
    function set__bodyBytes(v:haxe.Int64):haxe.Int64 {
        this._bodyBytes = v;
        return v;
    }
    public var _declBodyBytes(get, set) : haxe.Int64;
    function get__declBodyBytes():haxe.Int64 return this._declBodyBytes;
    function set__declBodyBytes(v:haxe.Int64):haxe.Int64 {
        this._declBodyBytes = v;
        return v;
    }
    public var _flow(get, set) : T_http2outflow;
    function get__flow():T_http2outflow return this._flow;
    function set__flow(v:T_http2outflow):T_http2outflow {
        this._flow = v;
        return v;
    }
    public var _inflow(get, set) : T_http2inflow;
    function get__inflow():T_http2inflow return this._inflow;
    function set__inflow(v:T_http2inflow):T_http2inflow {
        this._inflow = v;
        return v;
    }
    public var _state(get, set) : T_http2streamState;
    function get__state():T_http2streamState return this._state;
    function set__state(v:T_http2streamState):T_http2streamState {
        this._state = v;
        return v;
    }
    public var _resetQueued(get, set) : Bool;
    function get__resetQueued():Bool return this._resetQueued;
    function set__resetQueued(v:Bool):Bool {
        this._resetQueued = v;
        return v;
    }
    public var _gotTrailerHeader(get, set) : Bool;
    function get__gotTrailerHeader():Bool return this._gotTrailerHeader;
    function set__gotTrailerHeader(v:Bool):Bool {
        this._gotTrailerHeader = v;
        return v;
    }
    public var _wroteHeaders(get, set) : Bool;
    function get__wroteHeaders():Bool return this._wroteHeaders;
    function set__wroteHeaders(v:Bool):Bool {
        this._wroteHeaders = v;
        return v;
    }
    public var _readDeadline(get, set) : stdgo._internal.time.Time_Timer.Timer;
    function get__readDeadline():stdgo._internal.time.Time_Timer.Timer return this._readDeadline;
    function set__readDeadline(v:stdgo._internal.time.Time_Timer.Timer):stdgo._internal.time.Time_Timer.Timer {
        this._readDeadline = v;
        return v;
    }
    public var _writeDeadline(get, set) : stdgo._internal.time.Time_Timer.Timer;
    function get__writeDeadline():stdgo._internal.time.Time_Timer.Timer return this._writeDeadline;
    function set__writeDeadline(v:stdgo._internal.time.Time_Timer.Timer):stdgo._internal.time.Time_Timer.Timer {
        this._writeDeadline = v;
        return v;
    }
    public var _closeErr(get, set) : stdgo.Error;
    function get__closeErr():stdgo.Error return this._closeErr;
    function set__closeErr(v:stdgo.Error):stdgo.Error {
        this._closeErr = v;
        return v;
    }
    public var _trailer(get, set) : Header;
    function get__trailer():Header return this._trailer;
    function set__trailer(v:Header):Header {
        this._trailer = v;
        return v;
    }
    public var _reqTrailer(get, set) : Header;
    function get__reqTrailer():Header return this._reqTrailer;
    function set__reqTrailer(v:Header):Header {
        this._reqTrailer = v;
        return v;
    }
    public function new(?_sc:T_http2serverConn, ?_id:std.UInt, ?_body:T_http2pipe, ?_cw:T_http2closeWaiter, ?_ctx:stdgo._internal.context.Context_Context.Context, ?_cancelCtx:() -> Void, ?_bodyBytes:haxe.Int64, ?_declBodyBytes:haxe.Int64, ?_flow:T_http2outflow, ?_inflow:T_http2inflow, ?_state:T_http2streamState, ?_resetQueued:Bool, ?_gotTrailerHeader:Bool, ?_wroteHeaders:Bool, ?_readDeadline:stdgo._internal.time.Time_Timer.Timer, ?_writeDeadline:stdgo._internal.time.Time_Timer.Timer, ?_closeErr:stdgo.Error, ?_trailer:Header, ?_reqTrailer:Header) this = new stdgo._internal.net.http.Http_T_http2stream.T_http2stream(
_sc,
_id,
_body,
_cw,
_ctx,
_cancelCtx,
_bodyBytes,
_declBodyBytes,
_flow,
_inflow,
_state,
_resetQueued,
_gotTrailerHeader,
_wroteHeaders,
_readDeadline,
_writeDeadline,
_closeErr,
_trailer,
_reqTrailer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_http2readFrameResult(stdgo._internal.net.http.Http_T_http2readFrameResult.T_http2readFrameResult) from stdgo._internal.net.http.Http_T_http2readFrameResult.T_http2readFrameResult to stdgo._internal.net.http.Http_T_http2readFrameResult.T_http2readFrameResult {
    public var _f(get, set) : T_http2Frame;
    function get__f():T_http2Frame return this._f;
    function set__f(v:T_http2Frame):T_http2Frame {
        this._f = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _readMore(get, set) : () -> Void;
    function get__readMore():() -> Void return () -> this._readMore();
    function set__readMore(v:() -> Void):() -> Void {
        this._readMore = v;
        return v;
    }
    public function new(?_f:T_http2Frame, ?_err:stdgo.Error, ?_readMore:() -> Void) this = new stdgo._internal.net.http.Http_T_http2readFrameResult.T_http2readFrameResult(_f, _err, _readMore);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_http2frameWriteResult(stdgo._internal.net.http.Http_T_http2frameWriteResult.T_http2frameWriteResult) from stdgo._internal.net.http.Http_T_http2frameWriteResult.T_http2frameWriteResult to stdgo._internal.net.http.Http_T_http2frameWriteResult.T_http2frameWriteResult {
    public var __27(get, set) : T_http2incomparable;
    function get___27():T_http2incomparable return this.__27;
    function set___27(v:T_http2incomparable):T_http2incomparable {
        this.__27 = v;
        return v;
    }
    public var _wr(get, set) : T_http2FrameWriteRequest;
    function get__wr():T_http2FrameWriteRequest return this._wr;
    function set__wr(v:T_http2FrameWriteRequest):T_http2FrameWriteRequest {
        this._wr = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?__27:T_http2incomparable, ?_wr:T_http2FrameWriteRequest, ?_err:stdgo.Error) this = new stdgo._internal.net.http.Http_T_http2frameWriteResult.T_http2frameWriteResult(__27, _wr, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_http2requestParam(stdgo._internal.net.http.Http_T_http2requestParam.T_http2requestParam) from stdgo._internal.net.http.Http_T_http2requestParam.T_http2requestParam to stdgo._internal.net.http.Http_T_http2requestParam.T_http2requestParam {
    public var _method(get, set) : String;
    function get__method():String return this._method;
    function set__method(v:String):String {
        this._method = v;
        return v;
    }
    public var _scheme(get, set) : String;
    function get__scheme():String return this._scheme;
    function set__scheme(v:String):String {
        this._scheme = v;
        return v;
    }
    public var _authority(get, set) : String;
    function get__authority():String return this._authority;
    function set__authority(v:String):String {
        this._authority = v;
        return v;
    }
    public var _path(get, set) : String;
    function get__path():String return this._path;
    function set__path(v:String):String {
        this._path = v;
        return v;
    }
    public var _header(get, set) : Header;
    function get__header():Header return this._header;
    function set__header(v:Header):Header {
        this._header = v;
        return v;
    }
    public function new(?_method:String, ?_scheme:String, ?_authority:String, ?_path:String, ?_header:Header) this = new stdgo._internal.net.http.Http_T_http2requestParam.T_http2requestParam(_method, _scheme, _authority, _path, _header);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_http2unstartedHandler(stdgo._internal.net.http.Http_T_http2unstartedHandler.T_http2unstartedHandler) from stdgo._internal.net.http.Http_T_http2unstartedHandler.T_http2unstartedHandler to stdgo._internal.net.http.Http_T_http2unstartedHandler.T_http2unstartedHandler {
    public var _streamID(get, set) : std.UInt;
    function get__streamID():std.UInt return this._streamID;
    function set__streamID(v:std.UInt):std.UInt {
        this._streamID = v;
        return v;
    }
    public var _rw(get, set) : T_http2responseWriter;
    function get__rw():T_http2responseWriter return this._rw;
    function set__rw(v:T_http2responseWriter):T_http2responseWriter {
        this._rw = v;
        return v;
    }
    public var _req(get, set) : Request;
    function get__req():Request return this._req;
    function set__req(v:Request):Request {
        this._req = v;
        return v;
    }
    public var _handler(get, set) : (stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) -> Void;
    function get__handler():(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) -> Void return (_0, _1) -> this._handler(_0, _1);
    function set__handler(v:(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) -> Void):(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) -> Void {
        this._handler = v;
        return v;
    }
    public function new(?_streamID:std.UInt, ?_rw:T_http2responseWriter, ?_req:Request, ?_handler:(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) -> Void) this = new stdgo._internal.net.http.Http_T_http2unstartedHandler.T_http2unstartedHandler(_streamID, _rw, _req, _handler);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_http2bodyReadMsg(stdgo._internal.net.http.Http_T_http2bodyReadMsg.T_http2bodyReadMsg) from stdgo._internal.net.http.Http_T_http2bodyReadMsg.T_http2bodyReadMsg to stdgo._internal.net.http.Http_T_http2bodyReadMsg.T_http2bodyReadMsg {
    public var _st(get, set) : T_http2stream;
    function get__st():T_http2stream return this._st;
    function set__st(v:T_http2stream):T_http2stream {
        this._st = v;
        return v;
    }
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = v;
        return v;
    }
    public function new(?_st:T_http2stream, ?_n:StdTypes.Int) this = new stdgo._internal.net.http.Http_T_http2bodyReadMsg.T_http2bodyReadMsg(_st, _n);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2requestBody_static_extension) abstract T_http2requestBody(stdgo._internal.net.http.Http_T_http2requestBody.T_http2requestBody) from stdgo._internal.net.http.Http_T_http2requestBody.T_http2requestBody to stdgo._internal.net.http.Http_T_http2requestBody.T_http2requestBody {
    public var __29(get, set) : T_http2incomparable;
    function get___29():T_http2incomparable return this.__29;
    function set___29(v:T_http2incomparable):T_http2incomparable {
        this.__29 = v;
        return v;
    }
    public var _stream(get, set) : T_http2stream;
    function get__stream():T_http2stream return this._stream;
    function set__stream(v:T_http2stream):T_http2stream {
        this._stream = v;
        return v;
    }
    public var _conn(get, set) : T_http2serverConn;
    function get__conn():T_http2serverConn return this._conn;
    function set__conn(v:T_http2serverConn):T_http2serverConn {
        this._conn = v;
        return v;
    }
    public var _closeOnce(get, set) : stdgo._internal.sync.Sync_Once.Once;
    function get__closeOnce():stdgo._internal.sync.Sync_Once.Once return this._closeOnce;
    function set__closeOnce(v:stdgo._internal.sync.Sync_Once.Once):stdgo._internal.sync.Sync_Once.Once {
        this._closeOnce = v;
        return v;
    }
    public var _sawEOF(get, set) : Bool;
    function get__sawEOF():Bool return this._sawEOF;
    function set__sawEOF(v:Bool):Bool {
        this._sawEOF = v;
        return v;
    }
    public var _pipe(get, set) : T_http2pipe;
    function get__pipe():T_http2pipe return this._pipe;
    function set__pipe(v:T_http2pipe):T_http2pipe {
        this._pipe = v;
        return v;
    }
    public var _needsContinue(get, set) : Bool;
    function get__needsContinue():Bool return this._needsContinue;
    function set__needsContinue(v:Bool):Bool {
        this._needsContinue = v;
        return v;
    }
    public function new(?__29:T_http2incomparable, ?_stream:T_http2stream, ?_conn:T_http2serverConn, ?_closeOnce:stdgo._internal.sync.Sync_Once.Once, ?_sawEOF:Bool, ?_pipe:T_http2pipe, ?_needsContinue:Bool) this = new stdgo._internal.net.http.Http_T_http2requestBody.T_http2requestBody(__29, _stream, _conn, _closeOnce, _sawEOF, _pipe, _needsContinue);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2responseWriter_static_extension) abstract T_http2responseWriter(stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter) from stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter to stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter {
    public var _rws(get, set) : T_http2responseWriterState;
    function get__rws():T_http2responseWriterState return this._rws;
    function set__rws(v:T_http2responseWriterState):T_http2responseWriterState {
        this._rws = v;
        return v;
    }
    public function new(?_rws:T_http2responseWriterState) this = new stdgo._internal.net.http.Http_T_http2responseWriter.T_http2responseWriter(_rws);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2responseWriterState_static_extension) abstract T_http2responseWriterState(stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState) from stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState to stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState {
    public var _stream(get, set) : T_http2stream;
    function get__stream():T_http2stream return this._stream;
    function set__stream(v:T_http2stream):T_http2stream {
        this._stream = v;
        return v;
    }
    public var _req(get, set) : Request;
    function get__req():Request return this._req;
    function set__req(v:Request):Request {
        this._req = v;
        return v;
    }
    public var _conn(get, set) : T_http2serverConn;
    function get__conn():T_http2serverConn return this._conn;
    function set__conn(v:T_http2serverConn):T_http2serverConn {
        this._conn = v;
        return v;
    }
    public var _bw(get, set) : stdgo._internal.bufio.Bufio_Writer.Writer;
    function get__bw():stdgo._internal.bufio.Bufio_Writer.Writer return this._bw;
    function set__bw(v:stdgo._internal.bufio.Bufio_Writer.Writer):stdgo._internal.bufio.Bufio_Writer.Writer {
        this._bw = v;
        return v;
    }
    public var _handlerHeader(get, set) : Header;
    function get__handlerHeader():Header return this._handlerHeader;
    function set__handlerHeader(v:Header):Header {
        this._handlerHeader = v;
        return v;
    }
    public var _snapHeader(get, set) : Header;
    function get__snapHeader():Header return this._snapHeader;
    function set__snapHeader(v:Header):Header {
        this._snapHeader = v;
        return v;
    }
    public var _trailers(get, set) : Array<String>;
    function get__trailers():Array<String> return [for (i in this._trailers) i];
    function set__trailers(v:Array<String>):Array<String> {
        this._trailers = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _status(get, set) : StdTypes.Int;
    function get__status():StdTypes.Int return this._status;
    function set__status(v:StdTypes.Int):StdTypes.Int {
        this._status = v;
        return v;
    }
    public var _wroteHeader(get, set) : Bool;
    function get__wroteHeader():Bool return this._wroteHeader;
    function set__wroteHeader(v:Bool):Bool {
        this._wroteHeader = v;
        return v;
    }
    public var _sentHeader(get, set) : Bool;
    function get__sentHeader():Bool return this._sentHeader;
    function set__sentHeader(v:Bool):Bool {
        this._sentHeader = v;
        return v;
    }
    public var _handlerDone(get, set) : Bool;
    function get__handlerDone():Bool return this._handlerDone;
    function set__handlerDone(v:Bool):Bool {
        this._handlerDone = v;
        return v;
    }
    public var _dirty(get, set) : Bool;
    function get__dirty():Bool return this._dirty;
    function set__dirty(v:Bool):Bool {
        this._dirty = v;
        return v;
    }
    public var _sentContentLen(get, set) : haxe.Int64;
    function get__sentContentLen():haxe.Int64 return this._sentContentLen;
    function set__sentContentLen(v:haxe.Int64):haxe.Int64 {
        this._sentContentLen = v;
        return v;
    }
    public var _wroteBytes(get, set) : haxe.Int64;
    function get__wroteBytes():haxe.Int64 return this._wroteBytes;
    function set__wroteBytes(v:haxe.Int64):haxe.Int64 {
        this._wroteBytes = v;
        return v;
    }
    public var _closeNotifierMu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__closeNotifierMu():stdgo._internal.sync.Sync_Mutex.Mutex return this._closeNotifierMu;
    function set__closeNotifierMu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._closeNotifierMu = v;
        return v;
    }
    public var _closeNotifierCh(get, set) : stdgo.Chan<Bool>;
    function get__closeNotifierCh():stdgo.Chan<Bool> return this._closeNotifierCh;
    function set__closeNotifierCh(v:stdgo.Chan<Bool>):stdgo.Chan<Bool> {
        this._closeNotifierCh = v;
        return v;
    }
    public function new(?_stream:T_http2stream, ?_req:Request, ?_conn:T_http2serverConn, ?_bw:stdgo._internal.bufio.Bufio_Writer.Writer, ?_handlerHeader:Header, ?_snapHeader:Header, ?_trailers:Array<String>, ?_status:StdTypes.Int, ?_wroteHeader:Bool, ?_sentHeader:Bool, ?_handlerDone:Bool, ?_dirty:Bool, ?_sentContentLen:haxe.Int64, ?_wroteBytes:haxe.Int64, ?_closeNotifierMu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_closeNotifierCh:stdgo.Chan<Bool>) this = new stdgo._internal.net.http.Http_T_http2responseWriterState.T_http2responseWriterState(
_stream,
_req,
_conn,
_bw,
_handlerHeader,
_snapHeader,
([for (i in _trailers) i] : stdgo.Slice<stdgo.GoString>),
_status,
_wroteHeader,
_sentHeader,
_handlerDone,
_dirty,
_sentContentLen,
_wroteBytes,
_closeNotifierMu,
_closeNotifierCh);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2chunkWriter_static_extension) abstract T_http2chunkWriter(stdgo._internal.net.http.Http_T_http2chunkWriter.T_http2chunkWriter) from stdgo._internal.net.http.Http_T_http2chunkWriter.T_http2chunkWriter to stdgo._internal.net.http.Http_T_http2chunkWriter.T_http2chunkWriter {
    public var _rws(get, set) : T_http2responseWriterState;
    function get__rws():T_http2responseWriterState return this._rws;
    function set__rws(v:T_http2responseWriterState):T_http2responseWriterState {
        this._rws = v;
        return v;
    }
    public function new(?_rws:T_http2responseWriterState) this = new stdgo._internal.net.http.Http_T_http2chunkWriter.T_http2chunkWriter(_rws);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_http2startPushRequest(stdgo._internal.net.http.Http_T_http2startPushRequest.T_http2startPushRequest) from stdgo._internal.net.http.Http_T_http2startPushRequest.T_http2startPushRequest to stdgo._internal.net.http.Http_T_http2startPushRequest.T_http2startPushRequest {
    public var _parent(get, set) : T_http2stream;
    function get__parent():T_http2stream return this._parent;
    function set__parent(v:T_http2stream):T_http2stream {
        this._parent = v;
        return v;
    }
    public var _method(get, set) : String;
    function get__method():String return this._method;
    function set__method(v:String):String {
        this._method = v;
        return v;
    }
    public var _url(get, set) : stdgo._internal.net.url.Url_URL.URL;
    function get__url():stdgo._internal.net.url.Url_URL.URL return this._url;
    function set__url(v:stdgo._internal.net.url.Url_URL.URL):stdgo._internal.net.url.Url_URL.URL {
        this._url = v;
        return v;
    }
    public var _header(get, set) : Header;
    function get__header():Header return this._header;
    function set__header(v:Header):Header {
        this._header = v;
        return v;
    }
    public var _done(get, set) : stdgo.Chan<stdgo.Error>;
    function get__done():stdgo.Chan<stdgo.Error> return this._done;
    function set__done(v:stdgo.Chan<stdgo.Error>):stdgo.Chan<stdgo.Error> {
        this._done = v;
        return v;
    }
    public function new(?_parent:T_http2stream, ?_method:String, ?_url:stdgo._internal.net.url.Url_URL.URL, ?_header:Header, ?_done:stdgo.Chan<stdgo.Error>) this = new stdgo._internal.net.http.Http_T_http2startPushRequest.T_http2startPushRequest(_parent, _method, _url, _header, _done);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2Transport_static_extension) abstract T_http2Transport(stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport) from stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport to stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport {
    public var dialTLSContext(get, set) : (stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; };
    function get_dialTLSContext():(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return (_0, _1, _2, _3) -> this.dialTLSContext(_0, _1, _2, _3);
    function set_dialTLSContext(v:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }):(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } {
        this.dialTLSContext = v;
        return v;
    }
    public var dialTLS(get, set) : (stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; };
    function get_dialTLS():(stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return (_0, _1, _2) -> this.dialTLS(_0, _1, _2);
    function set_dialTLS(v:(stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }):(stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } {
        this.dialTLS = v;
        return v;
    }
    public var tLSClientConfig(get, set) : stdgo._internal.crypto.tls.Tls_Config.Config;
    function get_tLSClientConfig():stdgo._internal.crypto.tls.Tls_Config.Config return this.tLSClientConfig;
    function set_tLSClientConfig(v:stdgo._internal.crypto.tls.Tls_Config.Config):stdgo._internal.crypto.tls.Tls_Config.Config {
        this.tLSClientConfig = v;
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
        this.maxHeaderListSize = v;
        return v;
    }
    public var maxReadFrameSize(get, set) : std.UInt;
    function get_maxReadFrameSize():std.UInt return this.maxReadFrameSize;
    function set_maxReadFrameSize(v:std.UInt):std.UInt {
        this.maxReadFrameSize = v;
        return v;
    }
    public var maxDecoderHeaderTableSize(get, set) : std.UInt;
    function get_maxDecoderHeaderTableSize():std.UInt return this.maxDecoderHeaderTableSize;
    function set_maxDecoderHeaderTableSize(v:std.UInt):std.UInt {
        this.maxDecoderHeaderTableSize = v;
        return v;
    }
    public var maxEncoderHeaderTableSize(get, set) : std.UInt;
    function get_maxEncoderHeaderTableSize():std.UInt return this.maxEncoderHeaderTableSize;
    function set_maxEncoderHeaderTableSize(v:std.UInt):std.UInt {
        this.maxEncoderHeaderTableSize = v;
        return v;
    }
    public var strictMaxConcurrentStreams(get, set) : Bool;
    function get_strictMaxConcurrentStreams():Bool return this.strictMaxConcurrentStreams;
    function set_strictMaxConcurrentStreams(v:Bool):Bool {
        this.strictMaxConcurrentStreams = v;
        return v;
    }
    public var readIdleTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_readIdleTimeout():stdgo._internal.time.Time_Duration.Duration return this.readIdleTimeout;
    function set_readIdleTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.readIdleTimeout = v;
        return v;
    }
    public var pingTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_pingTimeout():stdgo._internal.time.Time_Duration.Duration return this.pingTimeout;
    function set_pingTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.pingTimeout = v;
        return v;
    }
    public var writeByteTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_writeByteTimeout():stdgo._internal.time.Time_Duration.Duration return this.writeByteTimeout;
    function set_writeByteTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.writeByteTimeout = v;
        return v;
    }
    public var countError(get, set) : stdgo.GoString -> Void;
    function get_countError():stdgo.GoString -> Void return _0 -> this.countError(_0);
    function set_countError(v:stdgo.GoString -> Void):stdgo.GoString -> Void {
        this.countError = v;
        return v;
    }
    public var _t1(get, set) : Transport;
    function get__t1():Transport return this._t1;
    function set__t1(v:Transport):Transport {
        this._t1 = v;
        return v;
    }
    public var _connPoolOnce(get, set) : stdgo._internal.sync.Sync_Once.Once;
    function get__connPoolOnce():stdgo._internal.sync.Sync_Once.Once return this._connPoolOnce;
    function set__connPoolOnce(v:stdgo._internal.sync.Sync_Once.Once):stdgo._internal.sync.Sync_Once.Once {
        this._connPoolOnce = v;
        return v;
    }
    public var _connPoolOrDef(get, set) : T_http2ClientConnPool;
    function get__connPoolOrDef():T_http2ClientConnPool return this._connPoolOrDef;
    function set__connPoolOrDef(v:T_http2ClientConnPool):T_http2ClientConnPool {
        this._connPoolOrDef = v;
        return v;
    }
    public function new(?dialTLSContext:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }, ?dialTLS:(stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }, ?tLSClientConfig:stdgo._internal.crypto.tls.Tls_Config.Config, ?connPool:T_http2ClientConnPool, ?disableCompression:Bool, ?allowHTTP:Bool, ?maxHeaderListSize:std.UInt, ?maxReadFrameSize:std.UInt, ?maxDecoderHeaderTableSize:std.UInt, ?maxEncoderHeaderTableSize:std.UInt, ?strictMaxConcurrentStreams:Bool, ?readIdleTimeout:stdgo._internal.time.Time_Duration.Duration, ?pingTimeout:stdgo._internal.time.Time_Duration.Duration, ?writeByteTimeout:stdgo._internal.time.Time_Duration.Duration, ?countError:stdgo.GoString -> Void, ?_t1:Transport, ?_connPoolOnce:stdgo._internal.sync.Sync_Once.Once, ?_connPoolOrDef:T_http2ClientConnPool) this = new stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport(
dialTLSContext,
dialTLS,
tLSClientConfig,
connPool,
disableCompression,
allowHTTP,
maxHeaderListSize,
maxReadFrameSize,
maxDecoderHeaderTableSize,
maxEncoderHeaderTableSize,
strictMaxConcurrentStreams,
readIdleTimeout,
pingTimeout,
writeByteTimeout,
countError,
_t1,
_connPoolOnce,
_connPoolOrDef);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2ClientConn_static_extension) abstract T_http2ClientConn(stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn) from stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn to stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn {
    public var _t(get, set) : T_http2Transport;
    function get__t():T_http2Transport return this._t;
    function set__t(v:T_http2Transport):T_http2Transport {
        this._t = v;
        return v;
    }
    public var _tconn(get, set) : stdgo._internal.net.Net_Conn.Conn;
    function get__tconn():stdgo._internal.net.Net_Conn.Conn return this._tconn;
    function set__tconn(v:stdgo._internal.net.Net_Conn.Conn):stdgo._internal.net.Net_Conn.Conn {
        this._tconn = v;
        return v;
    }
    public var _tconnClosed(get, set) : Bool;
    function get__tconnClosed():Bool return this._tconnClosed;
    function set__tconnClosed(v:Bool):Bool {
        this._tconnClosed = v;
        return v;
    }
    public var _tlsState(get, set) : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState;
    function get__tlsState():stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState return this._tlsState;
    function set__tlsState(v:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState):stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState {
        this._tlsState = v;
        return v;
    }
    public var _reused(get, set) : std.UInt;
    function get__reused():std.UInt return this._reused;
    function set__reused(v:std.UInt):std.UInt {
        this._reused = v;
        return v;
    }
    public var _singleUse(get, set) : Bool;
    function get__singleUse():Bool return this._singleUse;
    function set__singleUse(v:Bool):Bool {
        this._singleUse = v;
        return v;
    }
    public var _getConnCalled(get, set) : Bool;
    function get__getConnCalled():Bool return this._getConnCalled;
    function set__getConnCalled(v:Bool):Bool {
        this._getConnCalled = v;
        return v;
    }
    public var _readerDone(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>;
    function get__readerDone():stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> return this._readerDone;
    function set__readerDone(v:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> {
        this._readerDone = v;
        return v;
    }
    public var _readerErr(get, set) : stdgo.Error;
    function get__readerErr():stdgo.Error return this._readerErr;
    function set__readerErr(v:stdgo.Error):stdgo.Error {
        this._readerErr = v;
        return v;
    }
    public var _idleTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get__idleTimeout():stdgo._internal.time.Time_Duration.Duration return this._idleTimeout;
    function set__idleTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this._idleTimeout = v;
        return v;
    }
    public var _idleTimer(get, set) : stdgo._internal.time.Time_Timer.Timer;
    function get__idleTimer():stdgo._internal.time.Time_Timer.Timer return this._idleTimer;
    function set__idleTimer(v:stdgo._internal.time.Time_Timer.Timer):stdgo._internal.time.Time_Timer.Timer {
        this._idleTimer = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _cond(get, set) : stdgo._internal.sync.Sync_Cond.Cond;
    function get__cond():stdgo._internal.sync.Sync_Cond.Cond return this._cond;
    function set__cond(v:stdgo._internal.sync.Sync_Cond.Cond):stdgo._internal.sync.Sync_Cond.Cond {
        this._cond = v;
        return v;
    }
    public var _flow(get, set) : T_http2outflow;
    function get__flow():T_http2outflow return this._flow;
    function set__flow(v:T_http2outflow):T_http2outflow {
        this._flow = v;
        return v;
    }
    public var _inflow(get, set) : T_http2inflow;
    function get__inflow():T_http2inflow return this._inflow;
    function set__inflow(v:T_http2inflow):T_http2inflow {
        this._inflow = v;
        return v;
    }
    public var _doNotReuse(get, set) : Bool;
    function get__doNotReuse():Bool return this._doNotReuse;
    function set__doNotReuse(v:Bool):Bool {
        this._doNotReuse = v;
        return v;
    }
    public var _closing(get, set) : Bool;
    function get__closing():Bool return this._closing;
    function set__closing(v:Bool):Bool {
        this._closing = v;
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _seenSettings(get, set) : Bool;
    function get__seenSettings():Bool return this._seenSettings;
    function set__seenSettings(v:Bool):Bool {
        this._seenSettings = v;
        return v;
    }
    public var _wantSettingsAck(get, set) : Bool;
    function get__wantSettingsAck():Bool return this._wantSettingsAck;
    function set__wantSettingsAck(v:Bool):Bool {
        this._wantSettingsAck = v;
        return v;
    }
    public var _goAway(get, set) : T_http2GoAwayFrame;
    function get__goAway():T_http2GoAwayFrame return this._goAway;
    function set__goAway(v:T_http2GoAwayFrame):T_http2GoAwayFrame {
        this._goAway = v;
        return v;
    }
    public var _goAwayDebug(get, set) : String;
    function get__goAwayDebug():String return this._goAwayDebug;
    function set__goAwayDebug(v:String):String {
        this._goAwayDebug = v;
        return v;
    }
    public var _streams(get, set) : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>>;
    function get__streams():stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>> return this._streams;
    function set__streams(v:stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>>):stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>> {
        this._streams = v;
        return v;
    }
    public var _streamsReserved(get, set) : StdTypes.Int;
    function get__streamsReserved():StdTypes.Int return this._streamsReserved;
    function set__streamsReserved(v:StdTypes.Int):StdTypes.Int {
        this._streamsReserved = v;
        return v;
    }
    public var _nextStreamID(get, set) : std.UInt;
    function get__nextStreamID():std.UInt return this._nextStreamID;
    function set__nextStreamID(v:std.UInt):std.UInt {
        this._nextStreamID = v;
        return v;
    }
    public var _pendingRequests(get, set) : StdTypes.Int;
    function get__pendingRequests():StdTypes.Int return this._pendingRequests;
    function set__pendingRequests(v:StdTypes.Int):StdTypes.Int {
        this._pendingRequests = v;
        return v;
    }
    public var _pings(get, set) : stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>>;
    function get__pings():stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>> return this._pings;
    function set__pings(v:stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>>):stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>> {
        this._pings = v;
        return v;
    }
    public var _br(get, set) : stdgo._internal.bufio.Bufio_Reader.Reader;
    function get__br():stdgo._internal.bufio.Bufio_Reader.Reader return this._br;
    function set__br(v:stdgo._internal.bufio.Bufio_Reader.Reader):stdgo._internal.bufio.Bufio_Reader.Reader {
        this._br = v;
        return v;
    }
    public var _lastActive(get, set) : stdgo._internal.time.Time_Time.Time;
    function get__lastActive():stdgo._internal.time.Time_Time.Time return this._lastActive;
    function set__lastActive(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this._lastActive = v;
        return v;
    }
    public var _lastIdle(get, set) : stdgo._internal.time.Time_Time.Time;
    function get__lastIdle():stdgo._internal.time.Time_Time.Time return this._lastIdle;
    function set__lastIdle(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this._lastIdle = v;
        return v;
    }
    public var _maxFrameSize(get, set) : std.UInt;
    function get__maxFrameSize():std.UInt return this._maxFrameSize;
    function set__maxFrameSize(v:std.UInt):std.UInt {
        this._maxFrameSize = v;
        return v;
    }
    public var _maxConcurrentStreams(get, set) : std.UInt;
    function get__maxConcurrentStreams():std.UInt return this._maxConcurrentStreams;
    function set__maxConcurrentStreams(v:std.UInt):std.UInt {
        this._maxConcurrentStreams = v;
        return v;
    }
    public var _peerMaxHeaderListSize(get, set) : haxe.UInt64;
    function get__peerMaxHeaderListSize():haxe.UInt64 return this._peerMaxHeaderListSize;
    function set__peerMaxHeaderListSize(v:haxe.UInt64):haxe.UInt64 {
        this._peerMaxHeaderListSize = v;
        return v;
    }
    public var _peerMaxHeaderTableSize(get, set) : std.UInt;
    function get__peerMaxHeaderTableSize():std.UInt return this._peerMaxHeaderTableSize;
    function set__peerMaxHeaderTableSize(v:std.UInt):std.UInt {
        this._peerMaxHeaderTableSize = v;
        return v;
    }
    public var _initialWindowSize(get, set) : std.UInt;
    function get__initialWindowSize():std.UInt return this._initialWindowSize;
    function set__initialWindowSize(v:std.UInt):std.UInt {
        this._initialWindowSize = v;
        return v;
    }
    public var _reqHeaderMu(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>;
    function get__reqHeaderMu():stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> return this._reqHeaderMu;
    function set__reqHeaderMu(v:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> {
        this._reqHeaderMu = v;
        return v;
    }
    public var _wmu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__wmu():stdgo._internal.sync.Sync_Mutex.Mutex return this._wmu;
    function set__wmu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._wmu = v;
        return v;
    }
    public var _bw(get, set) : stdgo._internal.bufio.Bufio_Writer.Writer;
    function get__bw():stdgo._internal.bufio.Bufio_Writer.Writer return this._bw;
    function set__bw(v:stdgo._internal.bufio.Bufio_Writer.Writer):stdgo._internal.bufio.Bufio_Writer.Writer {
        this._bw = v;
        return v;
    }
    public var _fr(get, set) : T_http2Framer;
    function get__fr():T_http2Framer return this._fr;
    function set__fr(v:T_http2Framer):T_http2Framer {
        this._fr = v;
        return v;
    }
    public var _werr(get, set) : stdgo.Error;
    function get__werr():stdgo.Error return this._werr;
    function set__werr(v:stdgo.Error):stdgo.Error {
        this._werr = v;
        return v;
    }
    public var _hbuf(get, set) : stdgo._internal.bytes.Bytes_Buffer.Buffer;
    function get__hbuf():stdgo._internal.bytes.Bytes_Buffer.Buffer return this._hbuf;
    function set__hbuf(v:stdgo._internal.bytes.Bytes_Buffer.Buffer):stdgo._internal.bytes.Bytes_Buffer.Buffer {
        this._hbuf = v;
        return v;
    }
    public var _henc(get, set) : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder;
    function get__henc():_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder return this._henc;
    function set__henc(v:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder):_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder {
        this._henc = v;
        return v;
    }
    public function new(?_t:T_http2Transport, ?_tconn:stdgo._internal.net.Net_Conn.Conn, ?_tconnClosed:Bool, ?_tlsState:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState, ?_reused:std.UInt, ?_singleUse:Bool, ?_getConnCalled:Bool, ?_readerDone:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_readerErr:stdgo.Error, ?_idleTimeout:stdgo._internal.time.Time_Duration.Duration, ?_idleTimer:stdgo._internal.time.Time_Timer.Timer, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_cond:stdgo._internal.sync.Sync_Cond.Cond, ?_flow:T_http2outflow, ?_inflow:T_http2inflow, ?_doNotReuse:Bool, ?_closing:Bool, ?_closed:Bool, ?_seenSettings:Bool, ?_wantSettingsAck:Bool, ?_goAway:T_http2GoAwayFrame, ?_goAwayDebug:String, ?_streams:stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream>>, ?_streamsReserved:StdTypes.Int, ?_nextStreamID:std.UInt, ?_pendingRequests:StdTypes.Int, ?_pings:stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>>, ?_br:stdgo._internal.bufio.Bufio_Reader.Reader, ?_lastActive:stdgo._internal.time.Time_Time.Time, ?_lastIdle:stdgo._internal.time.Time_Time.Time, ?_maxFrameSize:std.UInt, ?_maxConcurrentStreams:std.UInt, ?_peerMaxHeaderListSize:haxe.UInt64, ?_peerMaxHeaderTableSize:std.UInt, ?_initialWindowSize:std.UInt, ?_reqHeaderMu:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_wmu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_bw:stdgo._internal.bufio.Bufio_Writer.Writer, ?_fr:T_http2Framer, ?_werr:stdgo.Error, ?_hbuf:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_henc:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder) this = new stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn(
_t,
_tconn,
_tconnClosed,
_tlsState,
_reused,
_singleUse,
_getConnCalled,
_readerDone,
_readerErr,
_idleTimeout,
_idleTimer,
_mu,
_cond,
_flow,
_inflow,
_doNotReuse,
_closing,
_closed,
_seenSettings,
_wantSettingsAck,
_goAway,
_goAwayDebug,
_streams,
_streamsReserved,
_nextStreamID,
_pendingRequests,
_pings,
_br,
_lastActive,
_lastIdle,
_maxFrameSize,
_maxConcurrentStreams,
_peerMaxHeaderListSize,
_peerMaxHeaderTableSize,
_initialWindowSize,
_reqHeaderMu,
_wmu,
_bw,
_fr,
_werr,
_hbuf,
_henc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2clientStream_static_extension) abstract T_http2clientStream(stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream) from stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream to stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream {
    public var _cc(get, set) : T_http2ClientConn;
    function get__cc():T_http2ClientConn return this._cc;
    function set__cc(v:T_http2ClientConn):T_http2ClientConn {
        this._cc = v;
        return v;
    }
    public var _ctx(get, set) : stdgo._internal.context.Context_Context.Context;
    function get__ctx():stdgo._internal.context.Context_Context.Context return this._ctx;
    function set__ctx(v:stdgo._internal.context.Context_Context.Context):stdgo._internal.context.Context_Context.Context {
        this._ctx = v;
        return v;
    }
    public var _reqCancel(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>;
    function get__reqCancel():stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> return this._reqCancel;
    function set__reqCancel(v:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> {
        this._reqCancel = v;
        return v;
    }
    public var _trace(get, set) : ClientTrace;
    function get__trace():ClientTrace return this._trace;
    function set__trace(v:ClientTrace):ClientTrace {
        this._trace = v;
        return v;
    }
    public var iD(get, set) : std.UInt;
    function get_iD():std.UInt return this.iD;
    function set_iD(v:std.UInt):std.UInt {
        this.iD = v;
        return v;
    }
    public var _bufPipe(get, set) : T_http2pipe;
    function get__bufPipe():T_http2pipe return this._bufPipe;
    function set__bufPipe(v:T_http2pipe):T_http2pipe {
        this._bufPipe = v;
        return v;
    }
    public var _requestedGzip(get, set) : Bool;
    function get__requestedGzip():Bool return this._requestedGzip;
    function set__requestedGzip(v:Bool):Bool {
        this._requestedGzip = v;
        return v;
    }
    public var _isHead(get, set) : Bool;
    function get__isHead():Bool return this._isHead;
    function set__isHead(v:Bool):Bool {
        this._isHead = v;
        return v;
    }
    public var _abortOnce(get, set) : stdgo._internal.sync.Sync_Once.Once;
    function get__abortOnce():stdgo._internal.sync.Sync_Once.Once return this._abortOnce;
    function set__abortOnce(v:stdgo._internal.sync.Sync_Once.Once):stdgo._internal.sync.Sync_Once.Once {
        this._abortOnce = v;
        return v;
    }
    public var _abort(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>;
    function get__abort():stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> return this._abort;
    function set__abort(v:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> {
        this._abort = v;
        return v;
    }
    public var _abortErr(get, set) : stdgo.Error;
    function get__abortErr():stdgo.Error return this._abortErr;
    function set__abortErr(v:stdgo.Error):stdgo.Error {
        this._abortErr = v;
        return v;
    }
    public var _peerClosed(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>;
    function get__peerClosed():stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> return this._peerClosed;
    function set__peerClosed(v:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> {
        this._peerClosed = v;
        return v;
    }
    public var _donec(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>;
    function get__donec():stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> return this._donec;
    function set__donec(v:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> {
        this._donec = v;
        return v;
    }
    public var _on100(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>;
    function get__on100():stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> return this._on100;
    function set__on100(v:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> {
        this._on100 = v;
        return v;
    }
    public var _respHeaderRecv(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>;
    function get__respHeaderRecv():stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> return this._respHeaderRecv;
    function set__respHeaderRecv(v:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> {
        this._respHeaderRecv = v;
        return v;
    }
    public var _res(get, set) : Response;
    function get__res():Response return this._res;
    function set__res(v:Response):Response {
        this._res = v;
        return v;
    }
    public var _flow(get, set) : T_http2outflow;
    function get__flow():T_http2outflow return this._flow;
    function set__flow(v:T_http2outflow):T_http2outflow {
        this._flow = v;
        return v;
    }
    public var _inflow(get, set) : T_http2inflow;
    function get__inflow():T_http2inflow return this._inflow;
    function set__inflow(v:T_http2inflow):T_http2inflow {
        this._inflow = v;
        return v;
    }
    public var _bytesRemain(get, set) : haxe.Int64;
    function get__bytesRemain():haxe.Int64 return this._bytesRemain;
    function set__bytesRemain(v:haxe.Int64):haxe.Int64 {
        this._bytesRemain = v;
        return v;
    }
    public var _readErr(get, set) : stdgo.Error;
    function get__readErr():stdgo.Error return this._readErr;
    function set__readErr(v:stdgo.Error):stdgo.Error {
        this._readErr = v;
        return v;
    }
    public var _reqBody(get, set) : stdgo._internal.io.Io_ReadCloser.ReadCloser;
    function get__reqBody():stdgo._internal.io.Io_ReadCloser.ReadCloser return this._reqBody;
    function set__reqBody(v:stdgo._internal.io.Io_ReadCloser.ReadCloser):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        this._reqBody = v;
        return v;
    }
    public var _reqBodyContentLength(get, set) : haxe.Int64;
    function get__reqBodyContentLength():haxe.Int64 return this._reqBodyContentLength;
    function set__reqBodyContentLength(v:haxe.Int64):haxe.Int64 {
        this._reqBodyContentLength = v;
        return v;
    }
    public var _reqBodyClosed(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>;
    function get__reqBodyClosed():stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> return this._reqBodyClosed;
    function set__reqBodyClosed(v:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> {
        this._reqBodyClosed = v;
        return v;
    }
    public var _sentEndStream(get, set) : Bool;
    function get__sentEndStream():Bool return this._sentEndStream;
    function set__sentEndStream(v:Bool):Bool {
        this._sentEndStream = v;
        return v;
    }
    public var _sentHeaders(get, set) : Bool;
    function get__sentHeaders():Bool return this._sentHeaders;
    function set__sentHeaders(v:Bool):Bool {
        this._sentHeaders = v;
        return v;
    }
    public var _firstByte(get, set) : Bool;
    function get__firstByte():Bool return this._firstByte;
    function set__firstByte(v:Bool):Bool {
        this._firstByte = v;
        return v;
    }
    public var _pastHeaders(get, set) : Bool;
    function get__pastHeaders():Bool return this._pastHeaders;
    function set__pastHeaders(v:Bool):Bool {
        this._pastHeaders = v;
        return v;
    }
    public var _pastTrailers(get, set) : Bool;
    function get__pastTrailers():Bool return this._pastTrailers;
    function set__pastTrailers(v:Bool):Bool {
        this._pastTrailers = v;
        return v;
    }
    public var _num1xx(get, set) : std.UInt;
    function get__num1xx():std.UInt return this._num1xx;
    function set__num1xx(v:std.UInt):std.UInt {
        this._num1xx = v;
        return v;
    }
    public var _readClosed(get, set) : Bool;
    function get__readClosed():Bool return this._readClosed;
    function set__readClosed(v:Bool):Bool {
        this._readClosed = v;
        return v;
    }
    public var _readAborted(get, set) : Bool;
    function get__readAborted():Bool return this._readAborted;
    function set__readAborted(v:Bool):Bool {
        this._readAborted = v;
        return v;
    }
    public var _trailer(get, set) : Header;
    function get__trailer():Header return this._trailer;
    function set__trailer(v:Header):Header {
        this._trailer = v;
        return v;
    }
    public var _resTrailer(get, set) : Header;
    function get__resTrailer():Header return this._resTrailer;
    function set__resTrailer(v:Header):Header {
        this._resTrailer = v;
        return v;
    }
    public function new(?_cc:T_http2ClientConn, ?_ctx:stdgo._internal.context.Context_Context.Context, ?_reqCancel:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_trace:ClientTrace, ?iD:std.UInt, ?_bufPipe:T_http2pipe, ?_requestedGzip:Bool, ?_isHead:Bool, ?_abortOnce:stdgo._internal.sync.Sync_Once.Once, ?_abort:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_abortErr:stdgo.Error, ?_peerClosed:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_donec:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_on100:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_respHeaderRecv:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_res:Response, ?_flow:T_http2outflow, ?_inflow:T_http2inflow, ?_bytesRemain:haxe.Int64, ?_readErr:stdgo.Error, ?_reqBody:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_reqBodyContentLength:haxe.Int64, ?_reqBodyClosed:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_sentEndStream:Bool, ?_sentHeaders:Bool, ?_firstByte:Bool, ?_pastHeaders:Bool, ?_pastTrailers:Bool, ?_num1xx:std.UInt, ?_readClosed:Bool, ?_readAborted:Bool, ?_trailer:Header, ?_resTrailer:Header) this = new stdgo._internal.net.http.Http_T_http2clientStream.T_http2clientStream(
_cc,
_ctx,
_reqCancel,
_trace,
iD,
_bufPipe,
_requestedGzip,
_isHead,
_abortOnce,
_abort,
_abortErr,
_peerClosed,
_donec,
_on100,
_respHeaderRecv,
_res,
_flow,
_inflow,
_bytesRemain,
_readErr,
_reqBody,
_reqBodyContentLength,
_reqBodyClosed,
_sentEndStream,
_sentHeaders,
_firstByte,
_pastHeaders,
_pastTrailers,
_num1xx,
_readClosed,
_readAborted,
_trailer,
_resTrailer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2stickyErrWriter_static_extension) abstract T_http2stickyErrWriter(stdgo._internal.net.http.Http_T_http2stickyErrWriter.T_http2stickyErrWriter) from stdgo._internal.net.http.Http_T_http2stickyErrWriter.T_http2stickyErrWriter to stdgo._internal.net.http.Http_T_http2stickyErrWriter.T_http2stickyErrWriter {
    public var _conn(get, set) : stdgo._internal.net.Net_Conn.Conn;
    function get__conn():stdgo._internal.net.Net_Conn.Conn return this._conn;
    function set__conn(v:stdgo._internal.net.Net_Conn.Conn):stdgo._internal.net.Net_Conn.Conn {
        this._conn = v;
        return v;
    }
    public var _timeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get__timeout():stdgo._internal.time.Time_Duration.Duration return this._timeout;
    function set__timeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this._timeout = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_conn:stdgo._internal.net.Net_Conn.Conn, ?_timeout:stdgo._internal.time.Time_Duration.Duration, ?_err:stdgo.Error) this = new stdgo._internal.net.http.Http_T_http2stickyErrWriter.T_http2stickyErrWriter(_conn, _timeout, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2noCachedConnError_static_extension) abstract T_http2noCachedConnError(stdgo._internal.net.http.Http_T_http2noCachedConnError.T_http2noCachedConnError) from stdgo._internal.net.http.Http_T_http2noCachedConnError.T_http2noCachedConnError to stdgo._internal.net.http.Http_T_http2noCachedConnError.T_http2noCachedConnError {
    public function new() this = new stdgo._internal.net.http.Http_T_http2noCachedConnError.T_http2noCachedConnError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_http2RoundTripOpt(stdgo._internal.net.http.Http_T_http2RoundTripOpt.T_http2RoundTripOpt) from stdgo._internal.net.http.Http_T_http2RoundTripOpt.T_http2RoundTripOpt to stdgo._internal.net.http.Http_T_http2RoundTripOpt.T_http2RoundTripOpt {
    public var onlyCachedConn(get, set) : Bool;
    function get_onlyCachedConn():Bool return this.onlyCachedConn;
    function set_onlyCachedConn(v:Bool):Bool {
        this.onlyCachedConn = v;
        return v;
    }
    public function new(?onlyCachedConn:Bool) this = new stdgo._internal.net.http.Http_T_http2RoundTripOpt.T_http2RoundTripOpt(onlyCachedConn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_http2ClientConnState(stdgo._internal.net.http.Http_T_http2ClientConnState.T_http2ClientConnState) from stdgo._internal.net.http.Http_T_http2ClientConnState.T_http2ClientConnState to stdgo._internal.net.http.Http_T_http2ClientConnState.T_http2ClientConnState {
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
        this.streamsActive = v;
        return v;
    }
    public var streamsReserved(get, set) : StdTypes.Int;
    function get_streamsReserved():StdTypes.Int return this.streamsReserved;
    function set_streamsReserved(v:StdTypes.Int):StdTypes.Int {
        this.streamsReserved = v;
        return v;
    }
    public var streamsPending(get, set) : StdTypes.Int;
    function get_streamsPending():StdTypes.Int return this.streamsPending;
    function set_streamsPending(v:StdTypes.Int):StdTypes.Int {
        this.streamsPending = v;
        return v;
    }
    public var maxConcurrentStreams(get, set) : std.UInt;
    function get_maxConcurrentStreams():std.UInt return this.maxConcurrentStreams;
    function set_maxConcurrentStreams(v:std.UInt):std.UInt {
        this.maxConcurrentStreams = v;
        return v;
    }
    public var lastIdle(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_lastIdle():stdgo._internal.time.Time_Time.Time return this.lastIdle;
    function set_lastIdle(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.lastIdle = v;
        return v;
    }
    public function new(?closed:Bool, ?closing:Bool, ?streamsActive:StdTypes.Int, ?streamsReserved:StdTypes.Int, ?streamsPending:StdTypes.Int, ?maxConcurrentStreams:std.UInt, ?lastIdle:stdgo._internal.time.Time_Time.Time) this = new stdgo._internal.net.http.Http_T_http2ClientConnState.T_http2ClientConnState(closed, closing, streamsActive, streamsReserved, streamsPending, maxConcurrentStreams, lastIdle);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_http2clientConnIdleState(stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState) from stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState to stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState {
    public var _canTakeNewRequest(get, set) : Bool;
    function get__canTakeNewRequest():Bool return this._canTakeNewRequest;
    function set__canTakeNewRequest(v:Bool):Bool {
        this._canTakeNewRequest = v;
        return v;
    }
    public function new(?_canTakeNewRequest:Bool) this = new stdgo._internal.net.http.Http_T_http2clientConnIdleState.T_http2clientConnIdleState(_canTakeNewRequest);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_http2resAndError(stdgo._internal.net.http.Http_T_http2resAndError.T_http2resAndError) from stdgo._internal.net.http.Http_T_http2resAndError.T_http2resAndError to stdgo._internal.net.http.Http_T_http2resAndError.T_http2resAndError {
    public var __35(get, set) : T_http2incomparable;
    function get___35():T_http2incomparable return this.__35;
    function set___35(v:T_http2incomparable):T_http2incomparable {
        this.__35 = v;
        return v;
    }
    public var _res(get, set) : Response;
    function get__res():Response return this._res;
    function set__res(v:Response):Response {
        this._res = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?__35:T_http2incomparable, ?_res:Response, ?_err:stdgo.Error) this = new stdgo._internal.net.http.Http_T_http2resAndError.T_http2resAndError(__35, _res, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2clientConnReadLoop_static_extension) abstract T_http2clientConnReadLoop(stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop) from stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop to stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop {
    public var __37(get, set) : T_http2incomparable;
    function get___37():T_http2incomparable return this.__37;
    function set___37(v:T_http2incomparable):T_http2incomparable {
        this.__37 = v;
        return v;
    }
    public var _cc(get, set) : T_http2ClientConn;
    function get__cc():T_http2ClientConn return this._cc;
    function set__cc(v:T_http2ClientConn):T_http2ClientConn {
        this._cc = v;
        return v;
    }
    public function new(?__37:T_http2incomparable, ?_cc:T_http2ClientConn) this = new stdgo._internal.net.http.Http_T_http2clientConnReadLoop.T_http2clientConnReadLoop(__37, _cc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2GoAwayError_static_extension) abstract T_http2GoAwayError(stdgo._internal.net.http.Http_T_http2GoAwayError.T_http2GoAwayError) from stdgo._internal.net.http.Http_T_http2GoAwayError.T_http2GoAwayError to stdgo._internal.net.http.Http_T_http2GoAwayError.T_http2GoAwayError {
    public var lastStreamID(get, set) : std.UInt;
    function get_lastStreamID():std.UInt return this.lastStreamID;
    function set_lastStreamID(v:std.UInt):std.UInt {
        this.lastStreamID = v;
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
        this.debugData = v;
        return v;
    }
    public function new(?lastStreamID:std.UInt, ?errCode:T_http2ErrCode, ?debugData:String) this = new stdgo._internal.net.http.Http_T_http2GoAwayError.T_http2GoAwayError(lastStreamID, errCode, debugData);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2transportResponseBody_static_extension) abstract T_http2transportResponseBody(stdgo._internal.net.http.Http_T_http2transportResponseBody.T_http2transportResponseBody) from stdgo._internal.net.http.Http_T_http2transportResponseBody.T_http2transportResponseBody to stdgo._internal.net.http.Http_T_http2transportResponseBody.T_http2transportResponseBody {
    public var _cs(get, set) : T_http2clientStream;
    function get__cs():T_http2clientStream return this._cs;
    function set__cs(v:T_http2clientStream):T_http2clientStream {
        this._cs = v;
        return v;
    }
    public function new(?_cs:T_http2clientStream) this = new stdgo._internal.net.http.Http_T_http2transportResponseBody.T_http2transportResponseBody(_cs);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2noBodyReader_static_extension) abstract T_http2noBodyReader(stdgo._internal.net.http.Http_T_http2noBodyReader.T_http2noBodyReader) from stdgo._internal.net.http.Http_T_http2noBodyReader.T_http2noBodyReader to stdgo._internal.net.http.Http_T_http2noBodyReader.T_http2noBodyReader {
    public function new() this = new stdgo._internal.net.http.Http_T_http2noBodyReader.T_http2noBodyReader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2missingBody_static_extension) abstract T_http2missingBody(stdgo._internal.net.http.Http_T_http2missingBody.T_http2missingBody) from stdgo._internal.net.http.Http_T_http2missingBody.T_http2missingBody to stdgo._internal.net.http.Http_T_http2missingBody.T_http2missingBody {
    public function new() this = new stdgo._internal.net.http.Http_T_http2missingBody.T_http2missingBody();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2erringRoundTripper_static_extension) abstract T_http2erringRoundTripper(stdgo._internal.net.http.Http_T_http2erringRoundTripper.T_http2erringRoundTripper) from stdgo._internal.net.http.Http_T_http2erringRoundTripper.T_http2erringRoundTripper to stdgo._internal.net.http.Http_T_http2erringRoundTripper.T_http2erringRoundTripper {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_err:stdgo.Error) this = new stdgo._internal.net.http.Http_T_http2erringRoundTripper.T_http2erringRoundTripper(_err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2gzipReader_static_extension) abstract T_http2gzipReader(stdgo._internal.net.http.Http_T_http2gzipReader.T_http2gzipReader) from stdgo._internal.net.http.Http_T_http2gzipReader.T_http2gzipReader to stdgo._internal.net.http.Http_T_http2gzipReader.T_http2gzipReader {
    public var __39(get, set) : T_http2incomparable;
    function get___39():T_http2incomparable return this.__39;
    function set___39(v:T_http2incomparable):T_http2incomparable {
        this.__39 = v;
        return v;
    }
    public var _body(get, set) : stdgo._internal.io.Io_ReadCloser.ReadCloser;
    function get__body():stdgo._internal.io.Io_ReadCloser.ReadCloser return this._body;
    function set__body(v:stdgo._internal.io.Io_ReadCloser.ReadCloser):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        this._body = v;
        return v;
    }
    public var _zr(get, set) : stdgo._internal.compress.gzip.Gzip_Reader.Reader;
    function get__zr():stdgo._internal.compress.gzip.Gzip_Reader.Reader return this._zr;
    function set__zr(v:stdgo._internal.compress.gzip.Gzip_Reader.Reader):stdgo._internal.compress.gzip.Gzip_Reader.Reader {
        this._zr = v;
        return v;
    }
    public var _zerr(get, set) : stdgo.Error;
    function get__zerr():stdgo.Error return this._zerr;
    function set__zerr(v:stdgo.Error):stdgo.Error {
        this._zerr = v;
        return v;
    }
    public function new(?__39:T_http2incomparable, ?_body:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_zr:stdgo._internal.compress.gzip.Gzip_Reader.Reader, ?_zerr:stdgo.Error) this = new stdgo._internal.net.http.Http_T_http2gzipReader.T_http2gzipReader(__39, _body, _zr, _zerr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2errorReader_static_extension) abstract T_http2errorReader(stdgo._internal.net.http.Http_T_http2errorReader.T_http2errorReader) from stdgo._internal.net.http.Http_T_http2errorReader.T_http2errorReader to stdgo._internal.net.http.Http_T_http2errorReader.T_http2errorReader {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_err:stdgo.Error) this = new stdgo._internal.net.http.Http_T_http2errorReader.T_http2errorReader(_err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2noDialH2RoundTripper_static_extension) abstract T_http2noDialH2RoundTripper(stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper) from stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper to stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper {
    public var _http2Transport(get, set) : T_http2Transport;
    function get__http2Transport():T_http2Transport return this._http2Transport;
    function set__http2Transport(v:T_http2Transport):T_http2Transport {
        this._http2Transport = v;
        return v;
    }
    public function new(?_http2Transport:T_http2Transport) this = new stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper(_http2Transport);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2flushFrameWriter_static_extension) abstract T_http2flushFrameWriter(stdgo._internal.net.http.Http_T_http2flushFrameWriter.T_http2flushFrameWriter) from stdgo._internal.net.http.Http_T_http2flushFrameWriter.T_http2flushFrameWriter to stdgo._internal.net.http.Http_T_http2flushFrameWriter.T_http2flushFrameWriter {
    public function new() this = new stdgo._internal.net.http.Http_T_http2flushFrameWriter.T_http2flushFrameWriter();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2writeGoAway_static_extension) abstract T_http2writeGoAway(stdgo._internal.net.http.Http_T_http2writeGoAway.T_http2writeGoAway) from stdgo._internal.net.http.Http_T_http2writeGoAway.T_http2writeGoAway to stdgo._internal.net.http.Http_T_http2writeGoAway.T_http2writeGoAway {
    public var _maxStreamID(get, set) : std.UInt;
    function get__maxStreamID():std.UInt return this._maxStreamID;
    function set__maxStreamID(v:std.UInt):std.UInt {
        this._maxStreamID = v;
        return v;
    }
    public var _code(get, set) : T_http2ErrCode;
    function get__code():T_http2ErrCode return this._code;
    function set__code(v:T_http2ErrCode):T_http2ErrCode {
        this._code = v;
        return v;
    }
    public function new(?_maxStreamID:std.UInt, ?_code:T_http2ErrCode) this = new stdgo._internal.net.http.Http_T_http2writeGoAway.T_http2writeGoAway(_maxStreamID, _code);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2writeData_static_extension) abstract T_http2writeData(stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData) from stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData to stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData {
    public var _streamID(get, set) : std.UInt;
    function get__streamID():std.UInt return this._streamID;
    function set__streamID(v:std.UInt):std.UInt {
        this._streamID = v;
        return v;
    }
    public var _p(get, set) : Array<std.UInt>;
    function get__p():Array<std.UInt> return [for (i in this._p) i];
    function set__p(v:Array<std.UInt>):Array<std.UInt> {
        this._p = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _endStream(get, set) : Bool;
    function get__endStream():Bool return this._endStream;
    function set__endStream(v:Bool):Bool {
        this._endStream = v;
        return v;
    }
    public function new(?_streamID:std.UInt, ?_p:Array<std.UInt>, ?_endStream:Bool) this = new stdgo._internal.net.http.Http_T_http2writeData.T_http2writeData(_streamID, ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>), _endStream);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2handlerPanicRST_static_extension) abstract T_http2handlerPanicRST(stdgo._internal.net.http.Http_T_http2handlerPanicRST.T_http2handlerPanicRST) from stdgo._internal.net.http.Http_T_http2handlerPanicRST.T_http2handlerPanicRST to stdgo._internal.net.http.Http_T_http2handlerPanicRST.T_http2handlerPanicRST {
    public var streamID(get, set) : std.UInt;
    function get_streamID():std.UInt return this.streamID;
    function set_streamID(v:std.UInt):std.UInt {
        this.streamID = v;
        return v;
    }
    public function new(?streamID:std.UInt) this = new stdgo._internal.net.http.Http_T_http2handlerPanicRST.T_http2handlerPanicRST(streamID);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2writePingAck_static_extension) abstract T_http2writePingAck(stdgo._internal.net.http.Http_T_http2writePingAck.T_http2writePingAck) from stdgo._internal.net.http.Http_T_http2writePingAck.T_http2writePingAck to stdgo._internal.net.http.Http_T_http2writePingAck.T_http2writePingAck {
    public var _pf(get, set) : T_http2PingFrame;
    function get__pf():T_http2PingFrame return this._pf;
    function set__pf(v:T_http2PingFrame):T_http2PingFrame {
        this._pf = v;
        return v;
    }
    public function new(?_pf:T_http2PingFrame) this = new stdgo._internal.net.http.Http_T_http2writePingAck.T_http2writePingAck(_pf);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2writeSettingsAck_static_extension) abstract T_http2writeSettingsAck(stdgo._internal.net.http.Http_T_http2writeSettingsAck.T_http2writeSettingsAck) from stdgo._internal.net.http.Http_T_http2writeSettingsAck.T_http2writeSettingsAck to stdgo._internal.net.http.Http_T_http2writeSettingsAck.T_http2writeSettingsAck {
    public function new() this = new stdgo._internal.net.http.Http_T_http2writeSettingsAck.T_http2writeSettingsAck();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2writeResHeaders_static_extension) abstract T_http2writeResHeaders(stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders) from stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders to stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders {
    public var _streamID(get, set) : std.UInt;
    function get__streamID():std.UInt return this._streamID;
    function set__streamID(v:std.UInt):std.UInt {
        this._streamID = v;
        return v;
    }
    public var _httpResCode(get, set) : StdTypes.Int;
    function get__httpResCode():StdTypes.Int return this._httpResCode;
    function set__httpResCode(v:StdTypes.Int):StdTypes.Int {
        this._httpResCode = v;
        return v;
    }
    public var _h(get, set) : Header;
    function get__h():Header return this._h;
    function set__h(v:Header):Header {
        this._h = v;
        return v;
    }
    public var _trailers(get, set) : Array<String>;
    function get__trailers():Array<String> return [for (i in this._trailers) i];
    function set__trailers(v:Array<String>):Array<String> {
        this._trailers = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _endStream(get, set) : Bool;
    function get__endStream():Bool return this._endStream;
    function set__endStream(v:Bool):Bool {
        this._endStream = v;
        return v;
    }
    public var _date(get, set) : String;
    function get__date():String return this._date;
    function set__date(v:String):String {
        this._date = v;
        return v;
    }
    public var _contentType(get, set) : String;
    function get__contentType():String return this._contentType;
    function set__contentType(v:String):String {
        this._contentType = v;
        return v;
    }
    public var _contentLength(get, set) : String;
    function get__contentLength():String return this._contentLength;
    function set__contentLength(v:String):String {
        this._contentLength = v;
        return v;
    }
    public function new(?_streamID:std.UInt, ?_httpResCode:StdTypes.Int, ?_h:Header, ?_trailers:Array<String>, ?_endStream:Bool, ?_date:String, ?_contentType:String, ?_contentLength:String) this = new stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders(_streamID, _httpResCode, _h, ([for (i in _trailers) i] : stdgo.Slice<stdgo.GoString>), _endStream, _date, _contentType, _contentLength);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2writePushPromise_static_extension) abstract T_http2writePushPromise(stdgo._internal.net.http.Http_T_http2writePushPromise.T_http2writePushPromise) from stdgo._internal.net.http.Http_T_http2writePushPromise.T_http2writePushPromise to stdgo._internal.net.http.Http_T_http2writePushPromise.T_http2writePushPromise {
    public var _streamID(get, set) : std.UInt;
    function get__streamID():std.UInt return this._streamID;
    function set__streamID(v:std.UInt):std.UInt {
        this._streamID = v;
        return v;
    }
    public var _method(get, set) : String;
    function get__method():String return this._method;
    function set__method(v:String):String {
        this._method = v;
        return v;
    }
    public var _url(get, set) : stdgo._internal.net.url.Url_URL.URL;
    function get__url():stdgo._internal.net.url.Url_URL.URL return this._url;
    function set__url(v:stdgo._internal.net.url.Url_URL.URL):stdgo._internal.net.url.Url_URL.URL {
        this._url = v;
        return v;
    }
    public var _h(get, set) : Header;
    function get__h():Header return this._h;
    function set__h(v:Header):Header {
        this._h = v;
        return v;
    }
    public var _allocatePromisedID(get, set) : () -> { var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; };
    function get__allocatePromisedID():() -> { var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; } return () -> this._allocatePromisedID();
    function set__allocatePromisedID(v:() -> { var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; }):() -> { var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; } {
        this._allocatePromisedID = v;
        return v;
    }
    public var _promisedID(get, set) : std.UInt;
    function get__promisedID():std.UInt return this._promisedID;
    function set__promisedID(v:std.UInt):std.UInt {
        this._promisedID = v;
        return v;
    }
    public function new(?_streamID:std.UInt, ?_method:String, ?_url:stdgo._internal.net.url.Url_URL.URL, ?_h:Header, ?_allocatePromisedID:() -> { var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; }, ?_promisedID:std.UInt) this = new stdgo._internal.net.http.Http_T_http2writePushPromise.T_http2writePushPromise(_streamID, _method, _url, _h, _allocatePromisedID, _promisedID);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2write100ContinueHeadersFrame_static_extension) abstract T_http2write100ContinueHeadersFrame(stdgo._internal.net.http.Http_T_http2write100ContinueHeadersFrame.T_http2write100ContinueHeadersFrame) from stdgo._internal.net.http.Http_T_http2write100ContinueHeadersFrame.T_http2write100ContinueHeadersFrame to stdgo._internal.net.http.Http_T_http2write100ContinueHeadersFrame.T_http2write100ContinueHeadersFrame {
    public var _streamID(get, set) : std.UInt;
    function get__streamID():std.UInt return this._streamID;
    function set__streamID(v:std.UInt):std.UInt {
        this._streamID = v;
        return v;
    }
    public function new(?_streamID:std.UInt) this = new stdgo._internal.net.http.Http_T_http2write100ContinueHeadersFrame.T_http2write100ContinueHeadersFrame(_streamID);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2writeWindowUpdate_static_extension) abstract T_http2writeWindowUpdate(stdgo._internal.net.http.Http_T_http2writeWindowUpdate.T_http2writeWindowUpdate) from stdgo._internal.net.http.Http_T_http2writeWindowUpdate.T_http2writeWindowUpdate to stdgo._internal.net.http.Http_T_http2writeWindowUpdate.T_http2writeWindowUpdate {
    public var _streamID(get, set) : std.UInt;
    function get__streamID():std.UInt return this._streamID;
    function set__streamID(v:std.UInt):std.UInt {
        this._streamID = v;
        return v;
    }
    public var _n(get, set) : std.UInt;
    function get__n():std.UInt return this._n;
    function set__n(v:std.UInt):std.UInt {
        this._n = v;
        return v;
    }
    public function new(?_streamID:std.UInt, ?_n:std.UInt) this = new stdgo._internal.net.http.Http_T_http2writeWindowUpdate.T_http2writeWindowUpdate(_streamID, _n);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_http2OpenStreamOptions(stdgo._internal.net.http.Http_T_http2OpenStreamOptions.T_http2OpenStreamOptions) from stdgo._internal.net.http.Http_T_http2OpenStreamOptions.T_http2OpenStreamOptions to stdgo._internal.net.http.Http_T_http2OpenStreamOptions.T_http2OpenStreamOptions {
    public var pusherID(get, set) : std.UInt;
    function get_pusherID():std.UInt return this.pusherID;
    function set_pusherID(v:std.UInt):std.UInt {
        this.pusherID = v;
        return v;
    }
    public function new(?pusherID:std.UInt) this = new stdgo._internal.net.http.Http_T_http2OpenStreamOptions.T_http2OpenStreamOptions(pusherID);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2FrameWriteRequest_static_extension) abstract T_http2FrameWriteRequest(stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest) from stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest to stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest {
    public var _write(get, set) : T_http2writeFramer;
    function get__write():T_http2writeFramer return this._write;
    function set__write(v:T_http2writeFramer):T_http2writeFramer {
        this._write = v;
        return v;
    }
    public var _stream(get, set) : T_http2stream;
    function get__stream():T_http2stream return this._stream;
    function set__stream(v:T_http2stream):T_http2stream {
        this._stream = v;
        return v;
    }
    public var _done(get, set) : stdgo.Chan<stdgo.Error>;
    function get__done():stdgo.Chan<stdgo.Error> return this._done;
    function set__done(v:stdgo.Chan<stdgo.Error>):stdgo.Chan<stdgo.Error> {
        this._done = v;
        return v;
    }
    public function new(?_write:T_http2writeFramer, ?_stream:T_http2stream, ?_done:stdgo.Chan<stdgo.Error>) this = new stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest(_write, _stream, _done);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2writeQueue_static_extension) abstract T_http2writeQueue(stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue) from stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue to stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue {
    public var _s(get, set) : Array<T_http2FrameWriteRequest>;
    function get__s():Array<T_http2FrameWriteRequest> return [for (i in this._s) i];
    function set__s(v:Array<T_http2FrameWriteRequest>):Array<T_http2FrameWriteRequest> {
        this._s = ([for (i in v) i] : stdgo.Slice<stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest>);
        return v;
    }
    public var _prev(get, set) : T_http2writeQueue;
    function get__prev():T_http2writeQueue return this._prev;
    function set__prev(v:T_http2writeQueue):T_http2writeQueue {
        this._prev = v;
        return v;
    }
    public var _next(get, set) : T_http2writeQueue;
    function get__next():T_http2writeQueue return this._next;
    function set__next(v:T_http2writeQueue):T_http2writeQueue {
        this._next = v;
        return v;
    }
    public function new(?_s:Array<T_http2FrameWriteRequest>, ?_prev:T_http2writeQueue, ?_next:T_http2writeQueue) this = new stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue(([for (i in _s) i] : stdgo.Slice<stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest>), _prev, _next);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_http2PriorityWriteSchedulerConfig(stdgo._internal.net.http.Http_T_http2PriorityWriteSchedulerConfig.T_http2PriorityWriteSchedulerConfig) from stdgo._internal.net.http.Http_T_http2PriorityWriteSchedulerConfig.T_http2PriorityWriteSchedulerConfig to stdgo._internal.net.http.Http_T_http2PriorityWriteSchedulerConfig.T_http2PriorityWriteSchedulerConfig {
    public var maxClosedNodesInTree(get, set) : StdTypes.Int;
    function get_maxClosedNodesInTree():StdTypes.Int return this.maxClosedNodesInTree;
    function set_maxClosedNodesInTree(v:StdTypes.Int):StdTypes.Int {
        this.maxClosedNodesInTree = v;
        return v;
    }
    public var maxIdleNodesInTree(get, set) : StdTypes.Int;
    function get_maxIdleNodesInTree():StdTypes.Int return this.maxIdleNodesInTree;
    function set_maxIdleNodesInTree(v:StdTypes.Int):StdTypes.Int {
        this.maxIdleNodesInTree = v;
        return v;
    }
    public var throttleOutOfOrderWrites(get, set) : Bool;
    function get_throttleOutOfOrderWrites():Bool return this.throttleOutOfOrderWrites;
    function set_throttleOutOfOrderWrites(v:Bool):Bool {
        this.throttleOutOfOrderWrites = v;
        return v;
    }
    public function new(?maxClosedNodesInTree:StdTypes.Int, ?maxIdleNodesInTree:StdTypes.Int, ?throttleOutOfOrderWrites:Bool) this = new stdgo._internal.net.http.Http_T_http2PriorityWriteSchedulerConfig.T_http2PriorityWriteSchedulerConfig(maxClosedNodesInTree, maxIdleNodesInTree, throttleOutOfOrderWrites);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2priorityNode_static_extension) abstract T_http2priorityNode(stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode) from stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode to stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode {
    public var _q(get, set) : T_http2writeQueue;
    function get__q():T_http2writeQueue return this._q;
    function set__q(v:T_http2writeQueue):T_http2writeQueue {
        this._q = v;
        return v;
    }
    public var _id(get, set) : std.UInt;
    function get__id():std.UInt return this._id;
    function set__id(v:std.UInt):std.UInt {
        this._id = v;
        return v;
    }
    public var _weight(get, set) : std.UInt;
    function get__weight():std.UInt return this._weight;
    function set__weight(v:std.UInt):std.UInt {
        this._weight = v;
        return v;
    }
    public var _state(get, set) : T_http2priorityNodeState;
    function get__state():T_http2priorityNodeState return this._state;
    function set__state(v:T_http2priorityNodeState):T_http2priorityNodeState {
        this._state = v;
        return v;
    }
    public var _bytes(get, set) : haxe.Int64;
    function get__bytes():haxe.Int64 return this._bytes;
    function set__bytes(v:haxe.Int64):haxe.Int64 {
        this._bytes = v;
        return v;
    }
    public var _subtreeBytes(get, set) : haxe.Int64;
    function get__subtreeBytes():haxe.Int64 return this._subtreeBytes;
    function set__subtreeBytes(v:haxe.Int64):haxe.Int64 {
        this._subtreeBytes = v;
        return v;
    }
    public var _parent(get, set) : T_http2priorityNode;
    function get__parent():T_http2priorityNode return this._parent;
    function set__parent(v:T_http2priorityNode):T_http2priorityNode {
        this._parent = v;
        return v;
    }
    public var _kids(get, set) : T_http2priorityNode;
    function get__kids():T_http2priorityNode return this._kids;
    function set__kids(v:T_http2priorityNode):T_http2priorityNode {
        this._kids = v;
        return v;
    }
    public var _prev(get, set) : T_http2priorityNode;
    function get__prev():T_http2priorityNode return this._prev;
    function set__prev(v:T_http2priorityNode):T_http2priorityNode {
        this._prev = v;
        return v;
    }
    public var _next(get, set) : T_http2priorityNode;
    function get__next():T_http2priorityNode return this._next;
    function set__next(v:T_http2priorityNode):T_http2priorityNode {
        this._next = v;
        return v;
    }
    public function new(?_q:T_http2writeQueue, ?_id:std.UInt, ?_weight:std.UInt, ?_state:T_http2priorityNodeState, ?_bytes:haxe.Int64, ?_subtreeBytes:haxe.Int64, ?_parent:T_http2priorityNode, ?_kids:T_http2priorityNode, ?_prev:T_http2priorityNode, ?_next:T_http2priorityNode) this = new stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode(_q, _id, _weight, _state, _bytes, _subtreeBytes, _parent, _kids, _prev, _next);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2priorityWriteScheduler_static_extension) abstract T_http2priorityWriteScheduler(stdgo._internal.net.http.Http_T_http2priorityWriteScheduler.T_http2priorityWriteScheduler) from stdgo._internal.net.http.Http_T_http2priorityWriteScheduler.T_http2priorityWriteScheduler to stdgo._internal.net.http.Http_T_http2priorityWriteScheduler.T_http2priorityWriteScheduler {
    public var _root(get, set) : T_http2priorityNode;
    function get__root():T_http2priorityNode return this._root;
    function set__root(v:T_http2priorityNode):T_http2priorityNode {
        this._root = v;
        return v;
    }
    public var _nodes(get, set) : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>;
    function get__nodes():stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>> return this._nodes;
    function set__nodes(v:stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>):stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>> {
        this._nodes = v;
        return v;
    }
    public var _maxID(get, set) : std.UInt;
    function get__maxID():std.UInt return this._maxID;
    function set__maxID(v:std.UInt):std.UInt {
        this._maxID = v;
        return v;
    }
    public var _closedNodes(get, set) : Array<T_http2priorityNode>;
    function get__closedNodes():Array<T_http2priorityNode> return [for (i in this._closedNodes) i];
    function set__closedNodes(v:Array<T_http2priorityNode>):Array<T_http2priorityNode> {
        this._closedNodes = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>);
        return v;
    }
    public var _idleNodes(get, set) : Array<T_http2priorityNode>;
    function get__idleNodes():Array<T_http2priorityNode> return [for (i in this._idleNodes) i];
    function set__idleNodes(v:Array<T_http2priorityNode>):Array<T_http2priorityNode> {
        this._idleNodes = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>);
        return v;
    }
    public var _maxClosedNodesInTree(get, set) : StdTypes.Int;
    function get__maxClosedNodesInTree():StdTypes.Int return this._maxClosedNodesInTree;
    function set__maxClosedNodesInTree(v:StdTypes.Int):StdTypes.Int {
        this._maxClosedNodesInTree = v;
        return v;
    }
    public var _maxIdleNodesInTree(get, set) : StdTypes.Int;
    function get__maxIdleNodesInTree():StdTypes.Int return this._maxIdleNodesInTree;
    function set__maxIdleNodesInTree(v:StdTypes.Int):StdTypes.Int {
        this._maxIdleNodesInTree = v;
        return v;
    }
    public var _writeThrottleLimit(get, set) : StdTypes.Int;
    function get__writeThrottleLimit():StdTypes.Int return this._writeThrottleLimit;
    function set__writeThrottleLimit(v:StdTypes.Int):StdTypes.Int {
        this._writeThrottleLimit = v;
        return v;
    }
    public var _enableWriteThrottle(get, set) : Bool;
    function get__enableWriteThrottle():Bool return this._enableWriteThrottle;
    function set__enableWriteThrottle(v:Bool):Bool {
        this._enableWriteThrottle = v;
        return v;
    }
    public var _tmp(get, set) : Array<T_http2priorityNode>;
    function get__tmp():Array<T_http2priorityNode> return [for (i in this._tmp) i];
    function set__tmp(v:Array<T_http2priorityNode>):Array<T_http2priorityNode> {
        this._tmp = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>);
        return v;
    }
    public var _queuePool(get, set) : T_http2writeQueuePool;
    function get__queuePool():T_http2writeQueuePool return this._queuePool;
    function set__queuePool(v:T_http2writeQueuePool):T_http2writeQueuePool {
        this._queuePool = v;
        return v;
    }
    public function new(?_root:T_http2priorityNode, ?_nodes:stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>, ?_maxID:std.UInt, ?_closedNodes:Array<T_http2priorityNode>, ?_idleNodes:Array<T_http2priorityNode>, ?_maxClosedNodesInTree:StdTypes.Int, ?_maxIdleNodesInTree:StdTypes.Int, ?_writeThrottleLimit:StdTypes.Int, ?_enableWriteThrottle:Bool, ?_tmp:Array<T_http2priorityNode>, ?_queuePool:T_http2writeQueuePool) this = new stdgo._internal.net.http.Http_T_http2priorityWriteScheduler.T_http2priorityWriteScheduler(
_root,
_nodes,
_maxID,
([for (i in _closedNodes) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>),
([for (i in _idleNodes) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>),
_maxClosedNodesInTree,
_maxIdleNodesInTree,
_writeThrottleLimit,
_enableWriteThrottle,
([for (i in _tmp) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>),
_queuePool);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2randomWriteScheduler_static_extension) abstract T_http2randomWriteScheduler(stdgo._internal.net.http.Http_T_http2randomWriteScheduler.T_http2randomWriteScheduler) from stdgo._internal.net.http.Http_T_http2randomWriteScheduler.T_http2randomWriteScheduler to stdgo._internal.net.http.Http_T_http2randomWriteScheduler.T_http2randomWriteScheduler {
    public var _zero(get, set) : T_http2writeQueue;
    function get__zero():T_http2writeQueue return this._zero;
    function set__zero(v:T_http2writeQueue):T_http2writeQueue {
        this._zero = v;
        return v;
    }
    public var _sq(get, set) : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>>;
    function get__sq():stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>> return this._sq;
    function set__sq(v:stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>>):stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>> {
        this._sq = v;
        return v;
    }
    public var _queuePool(get, set) : T_http2writeQueuePool;
    function get__queuePool():T_http2writeQueuePool return this._queuePool;
    function set__queuePool(v:T_http2writeQueuePool):T_http2writeQueuePool {
        this._queuePool = v;
        return v;
    }
    public function new(?_zero:T_http2writeQueue, ?_sq:stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>>, ?_queuePool:T_http2writeQueuePool) this = new stdgo._internal.net.http.Http_T_http2randomWriteScheduler.T_http2randomWriteScheduler(_zero, _sq, _queuePool);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_http2roundRobinWriteScheduler_static_extension) abstract T_http2roundRobinWriteScheduler(stdgo._internal.net.http.Http_T_http2roundRobinWriteScheduler.T_http2roundRobinWriteScheduler) from stdgo._internal.net.http.Http_T_http2roundRobinWriteScheduler.T_http2roundRobinWriteScheduler to stdgo._internal.net.http.Http_T_http2roundRobinWriteScheduler.T_http2roundRobinWriteScheduler {
    public var _control(get, set) : T_http2writeQueue;
    function get__control():T_http2writeQueue return this._control;
    function set__control(v:T_http2writeQueue):T_http2writeQueue {
        this._control = v;
        return v;
    }
    public var _streams(get, set) : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>>;
    function get__streams():stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>> return this._streams;
    function set__streams(v:stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>>):stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>> {
        this._streams = v;
        return v;
    }
    public var _head(get, set) : T_http2writeQueue;
    function get__head():T_http2writeQueue return this._head;
    function set__head(v:T_http2writeQueue):T_http2writeQueue {
        this._head = v;
        return v;
    }
    public var _queuePool(get, set) : T_http2writeQueuePool;
    function get__queuePool():T_http2writeQueuePool return this._queuePool;
    function set__queuePool(v:T_http2writeQueuePool):T_http2writeQueuePool {
        this._queuePool = v;
        return v;
    }
    public function new(?_control:T_http2writeQueue, ?_streams:stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>>, ?_head:T_http2writeQueue, ?_queuePool:T_http2writeQueuePool) this = new stdgo._internal.net.http.Http_T_http2roundRobinWriteScheduler.T_http2roundRobinWriteScheduler(_control, _streams, _head, _queuePool);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_stringWriter_static_extension) abstract T_stringWriter(stdgo._internal.net.http.Http_T_stringWriter.T_stringWriter) from stdgo._internal.net.http.Http_T_stringWriter.T_stringWriter to stdgo._internal.net.http.Http_T_stringWriter.T_stringWriter {
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer) this = new stdgo._internal.net.http.Http_T_stringWriter.T_stringWriter(_w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_keyValues(stdgo._internal.net.http.Http_T_keyValues.T_keyValues) from stdgo._internal.net.http.Http_T_keyValues.T_keyValues to stdgo._internal.net.http.Http_T_keyValues.T_keyValues {
    public var _key(get, set) : String;
    function get__key():String return this._key;
    function set__key(v:String):String {
        this._key = v;
        return v;
    }
    public var _values(get, set) : Array<String>;
    function get__values():Array<String> return [for (i in this._values) i];
    function set__values(v:Array<String>):Array<String> {
        this._values = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_key:String, ?_values:Array<String>) this = new stdgo._internal.net.http.Http_T_keyValues.T_keyValues(_key, ([for (i in _values) i] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_headerSorter_static_extension) abstract T_headerSorter(stdgo._internal.net.http.Http_T_headerSorter.T_headerSorter) from stdgo._internal.net.http.Http_T_headerSorter.T_headerSorter to stdgo._internal.net.http.Http_T_headerSorter.T_headerSorter {
    public var _kvs(get, set) : Array<T_keyValues>;
    function get__kvs():Array<T_keyValues> return [for (i in this._kvs) i];
    function set__kvs(v:Array<T_keyValues>):Array<T_keyValues> {
        this._kvs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.net.http.Http_T_keyValues.T_keyValues>);
        return v;
    }
    public function new(?_kvs:Array<T_keyValues>) this = new stdgo._internal.net.http.Http_T_headerSorter.T_headerSorter(([for (i in _kvs) i] : stdgo.Slice<stdgo._internal.net.http.Http_T_keyValues.T_keyValues>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_contextKey_static_extension) abstract T_contextKey(stdgo._internal.net.http.Http_T_contextKey.T_contextKey) from stdgo._internal.net.http.Http_T_contextKey.T_contextKey to stdgo._internal.net.http.Http_T_contextKey.T_contextKey {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public function new(?_name:String) this = new stdgo._internal.net.http.Http_T_contextKey.T_contextKey(_name);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_noBody_static_extension) abstract T_noBody(stdgo._internal.net.http.Http_T_noBody.T_noBody) from stdgo._internal.net.http.Http_T_noBody.T_noBody to stdgo._internal.net.http.Http_T_noBody.T_noBody {
    public function new() this = new stdgo._internal.net.http.Http_T_noBody.T_noBody();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract PushOptions(stdgo._internal.net.http.Http_PushOptions.PushOptions) from stdgo._internal.net.http.Http_PushOptions.PushOptions to stdgo._internal.net.http.Http_PushOptions.PushOptions {
    public var method(get, set) : String;
    function get_method():String return this.method;
    function set_method(v:String):String {
        this.method = v;
        return v;
    }
    public var header(get, set) : Header;
    function get_header():Header return this.header;
    function set_header(v:Header):Header {
        this.header = v;
        return v;
    }
    public function new(?method:String, ?header:Header) this = new stdgo._internal.net.http.Http_PushOptions.PushOptions(method, header);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.ProtocolError_static_extension) abstract ProtocolError(stdgo._internal.net.http.Http_ProtocolError.ProtocolError) from stdgo._internal.net.http.Http_ProtocolError.ProtocolError to stdgo._internal.net.http.Http_ProtocolError.ProtocolError {
    public var errorString(get, set) : String;
    function get_errorString():String return this.errorString;
    function set_errorString(v:String):String {
        this.errorString = v;
        return v;
    }
    public function new(?errorString:String) this = new stdgo._internal.net.http.Http_ProtocolError.ProtocolError(errorString);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.Request_static_extension) abstract Request(stdgo._internal.net.http.Http_Request.Request) from stdgo._internal.net.http.Http_Request.Request to stdgo._internal.net.http.Http_Request.Request {
    public var method(get, set) : String;
    function get_method():String return this.method;
    function set_method(v:String):String {
        this.method = v;
        return v;
    }
    public var uRL(get, set) : stdgo._internal.net.url.Url_URL.URL;
    function get_uRL():stdgo._internal.net.url.Url_URL.URL return this.uRL;
    function set_uRL(v:stdgo._internal.net.url.Url_URL.URL):stdgo._internal.net.url.Url_URL.URL {
        this.uRL = v;
        return v;
    }
    public var proto(get, set) : String;
    function get_proto():String return this.proto;
    function set_proto(v:String):String {
        this.proto = v;
        return v;
    }
    public var protoMajor(get, set) : StdTypes.Int;
    function get_protoMajor():StdTypes.Int return this.protoMajor;
    function set_protoMajor(v:StdTypes.Int):StdTypes.Int {
        this.protoMajor = v;
        return v;
    }
    public var protoMinor(get, set) : StdTypes.Int;
    function get_protoMinor():StdTypes.Int return this.protoMinor;
    function set_protoMinor(v:StdTypes.Int):StdTypes.Int {
        this.protoMinor = v;
        return v;
    }
    public var header(get, set) : Header;
    function get_header():Header return this.header;
    function set_header(v:Header):Header {
        this.header = v;
        return v;
    }
    public var body(get, set) : stdgo._internal.io.Io_ReadCloser.ReadCloser;
    function get_body():stdgo._internal.io.Io_ReadCloser.ReadCloser return this.body;
    function set_body(v:stdgo._internal.io.Io_ReadCloser.ReadCloser):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        this.body = v;
        return v;
    }
    public var getBody(get, set) : () -> { var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo.Error; };
    function get_getBody():() -> { var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo.Error; } return () -> this.getBody();
    function set_getBody(v:() -> { var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo.Error; }):() -> { var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo.Error; } {
        this.getBody = v;
        return v;
    }
    public var contentLength(get, set) : haxe.Int64;
    function get_contentLength():haxe.Int64 return this.contentLength;
    function set_contentLength(v:haxe.Int64):haxe.Int64 {
        this.contentLength = v;
        return v;
    }
    public var transferEncoding(get, set) : Array<String>;
    function get_transferEncoding():Array<String> return [for (i in this.transferEncoding) i];
    function set_transferEncoding(v:Array<String>):Array<String> {
        this.transferEncoding = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
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
        this.host = v;
        return v;
    }
    public var form(get, set) : stdgo._internal.net.url.Url_Values.Values;
    function get_form():stdgo._internal.net.url.Url_Values.Values return this.form;
    function set_form(v:stdgo._internal.net.url.Url_Values.Values):stdgo._internal.net.url.Url_Values.Values {
        this.form = v;
        return v;
    }
    public var postForm(get, set) : stdgo._internal.net.url.Url_Values.Values;
    function get_postForm():stdgo._internal.net.url.Url_Values.Values return this.postForm;
    function set_postForm(v:stdgo._internal.net.url.Url_Values.Values):stdgo._internal.net.url.Url_Values.Values {
        this.postForm = v;
        return v;
    }
    public var multipartForm(get, set) : stdgo._internal.mime.multipart.Multipart_Form.Form;
    function get_multipartForm():stdgo._internal.mime.multipart.Multipart_Form.Form return this.multipartForm;
    function set_multipartForm(v:stdgo._internal.mime.multipart.Multipart_Form.Form):stdgo._internal.mime.multipart.Multipart_Form.Form {
        this.multipartForm = v;
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
        this.remoteAddr = v;
        return v;
    }
    public var requestURI(get, set) : String;
    function get_requestURI():String return this.requestURI;
    function set_requestURI(v:String):String {
        this.requestURI = v;
        return v;
    }
    public var tLS(get, set) : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState;
    function get_tLS():stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState return this.tLS;
    function set_tLS(v:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState):stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState {
        this.tLS = v;
        return v;
    }
    public var cancel(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>;
    function get_cancel():stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> return this.cancel;
    function set_cancel(v:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> {
        this.cancel = v;
        return v;
    }
    public var response(get, set) : Response;
    function get_response():Response return this.response;
    function set_response(v:Response):Response {
        this.response = v;
        return v;
    }
    public var _ctx(get, set) : stdgo._internal.context.Context_Context.Context;
    function get__ctx():stdgo._internal.context.Context_Context.Context return this._ctx;
    function set__ctx(v:stdgo._internal.context.Context_Context.Context):stdgo._internal.context.Context_Context.Context {
        this._ctx = v;
        return v;
    }
    public function new(?method:String, ?uRL:stdgo._internal.net.url.Url_URL.URL, ?proto:String, ?protoMajor:StdTypes.Int, ?protoMinor:StdTypes.Int, ?header:Header, ?body:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?getBody:() -> { var _0 : stdgo._internal.io.Io_ReadCloser.ReadCloser; var _1 : stdgo.Error; }, ?contentLength:haxe.Int64, ?transferEncoding:Array<String>, ?close:Bool, ?host:String, ?form:stdgo._internal.net.url.Url_Values.Values, ?postForm:stdgo._internal.net.url.Url_Values.Values, ?multipartForm:stdgo._internal.mime.multipart.Multipart_Form.Form, ?trailer:Header, ?remoteAddr:String, ?requestURI:String, ?tLS:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState, ?cancel:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?response:Response, ?_ctx:stdgo._internal.context.Context_Context.Context) this = new stdgo._internal.net.http.Http_Request.Request(
method,
uRL,
proto,
protoMajor,
protoMinor,
header,
body,
getBody,
contentLength,
([for (i in transferEncoding) i] : stdgo.Slice<stdgo.GoString>),
close,
host,
form,
postForm,
multipartForm,
trailer,
remoteAddr,
requestURI,
tLS,
cancel,
response,
_ctx);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_requestBodyReadError_static_extension) abstract T_requestBodyReadError(stdgo._internal.net.http.Http_T_requestBodyReadError.T_requestBodyReadError) from stdgo._internal.net.http.Http_T_requestBodyReadError.T_requestBodyReadError to stdgo._internal.net.http.Http_T_requestBodyReadError.T_requestBodyReadError {
    public var _error(get, set) : stdgo.Error;
    function get__error():stdgo.Error return this._error;
    function set__error(v:stdgo.Error):stdgo.Error {
        this._error = v;
        return v;
    }
    public function new(?_error:stdgo.Error) this = new stdgo._internal.net.http.Http_T_requestBodyReadError.T_requestBodyReadError(_error);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.MaxBytesError_static_extension) abstract MaxBytesError(stdgo._internal.net.http.Http_MaxBytesError.MaxBytesError) from stdgo._internal.net.http.Http_MaxBytesError.MaxBytesError to stdgo._internal.net.http.Http_MaxBytesError.MaxBytesError {
    public var limit(get, set) : haxe.Int64;
    function get_limit():haxe.Int64 return this.limit;
    function set_limit(v:haxe.Int64):haxe.Int64 {
        this.limit = v;
        return v;
    }
    public function new(?limit:haxe.Int64) this = new stdgo._internal.net.http.Http_MaxBytesError.MaxBytesError(limit);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_maxBytesReader_static_extension) abstract T_maxBytesReader(stdgo._internal.net.http.Http_T_maxBytesReader.T_maxBytesReader) from stdgo._internal.net.http.Http_T_maxBytesReader.T_maxBytesReader to stdgo._internal.net.http.Http_T_maxBytesReader.T_maxBytesReader {
    public var _w(get, set) : ResponseWriter;
    function get__w():ResponseWriter return this._w;
    function set__w(v:ResponseWriter):ResponseWriter {
        this._w = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.io.Io_ReadCloser.ReadCloser;
    function get__r():stdgo._internal.io.Io_ReadCloser.ReadCloser return this._r;
    function set__r(v:stdgo._internal.io.Io_ReadCloser.ReadCloser):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        this._r = v;
        return v;
    }
    public var _i(get, set) : haxe.Int64;
    function get__i():haxe.Int64 return this._i;
    function set__i(v:haxe.Int64):haxe.Int64 {
        this._i = v;
        return v;
    }
    public var _n(get, set) : haxe.Int64;
    function get__n():haxe.Int64 return this._n;
    function set__n(v:haxe.Int64):haxe.Int64 {
        this._n = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_w:ResponseWriter, ?_r:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_i:haxe.Int64, ?_n:haxe.Int64, ?_err:stdgo.Error) this = new stdgo._internal.net.http.Http_T_maxBytesReader.T_maxBytesReader(_w, _r, _i, _n, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.Response_static_extension) abstract Response(stdgo._internal.net.http.Http_Response.Response) from stdgo._internal.net.http.Http_Response.Response to stdgo._internal.net.http.Http_Response.Response {
    public var status(get, set) : String;
    function get_status():String return this.status;
    function set_status(v:String):String {
        this.status = v;
        return v;
    }
    public var statusCode(get, set) : StdTypes.Int;
    function get_statusCode():StdTypes.Int return this.statusCode;
    function set_statusCode(v:StdTypes.Int):StdTypes.Int {
        this.statusCode = v;
        return v;
    }
    public var proto(get, set) : String;
    function get_proto():String return this.proto;
    function set_proto(v:String):String {
        this.proto = v;
        return v;
    }
    public var protoMajor(get, set) : StdTypes.Int;
    function get_protoMajor():StdTypes.Int return this.protoMajor;
    function set_protoMajor(v:StdTypes.Int):StdTypes.Int {
        this.protoMajor = v;
        return v;
    }
    public var protoMinor(get, set) : StdTypes.Int;
    function get_protoMinor():StdTypes.Int return this.protoMinor;
    function set_protoMinor(v:StdTypes.Int):StdTypes.Int {
        this.protoMinor = v;
        return v;
    }
    public var header(get, set) : Header;
    function get_header():Header return this.header;
    function set_header(v:Header):Header {
        this.header = v;
        return v;
    }
    public var body(get, set) : stdgo._internal.io.Io_ReadCloser.ReadCloser;
    function get_body():stdgo._internal.io.Io_ReadCloser.ReadCloser return this.body;
    function set_body(v:stdgo._internal.io.Io_ReadCloser.ReadCloser):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        this.body = v;
        return v;
    }
    public var contentLength(get, set) : haxe.Int64;
    function get_contentLength():haxe.Int64 return this.contentLength;
    function set_contentLength(v:haxe.Int64):haxe.Int64 {
        this.contentLength = v;
        return v;
    }
    public var transferEncoding(get, set) : Array<String>;
    function get_transferEncoding():Array<String> return [for (i in this.transferEncoding) i];
    function set_transferEncoding(v:Array<String>):Array<String> {
        this.transferEncoding = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
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
        this.request = v;
        return v;
    }
    public var tLS(get, set) : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState;
    function get_tLS():stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState return this.tLS;
    function set_tLS(v:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState):stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState {
        this.tLS = v;
        return v;
    }
    public function new(?status:String, ?statusCode:StdTypes.Int, ?proto:String, ?protoMajor:StdTypes.Int, ?protoMinor:StdTypes.Int, ?header:Header, ?body:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?contentLength:haxe.Int64, ?transferEncoding:Array<String>, ?close:Bool, ?uncompressed:Bool, ?trailer:Header, ?request:Request, ?tLS:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState) this = new stdgo._internal.net.http.Http_Response.Response(
status,
statusCode,
proto,
protoMajor,
protoMinor,
header,
body,
contentLength,
([for (i in transferEncoding) i] : stdgo.Slice<stdgo.GoString>),
close,
uncompressed,
trailer,
request,
tLS);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.ResponseController_static_extension) abstract ResponseController(stdgo._internal.net.http.Http_ResponseController.ResponseController) from stdgo._internal.net.http.Http_ResponseController.ResponseController to stdgo._internal.net.http.Http_ResponseController.ResponseController {
    public var _rw(get, set) : ResponseWriter;
    function get__rw():ResponseWriter return this._rw;
    function set__rw(v:ResponseWriter):ResponseWriter {
        this._rw = v;
        return v;
    }
    public function new(?_rw:ResponseWriter) this = new stdgo._internal.net.http.Http_ResponseController.ResponseController(_rw);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_streamReader_static_extension) abstract T_streamReader(stdgo._internal.net.http.Http_T_streamReader.T_streamReader) from stdgo._internal.net.http.Http_T_streamReader.T_streamReader to stdgo._internal.net.http.Http_T_streamReader.T_streamReader {
    public var _pending(get, set) : Array<std.UInt>;
    function get__pending():Array<std.UInt> return [for (i in this._pending) i];
    function set__pending(v:Array<std.UInt>):Array<std.UInt> {
        this._pending = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _stream(get, set) : stdgo._internal.syscall.js.Js_Value.Value;
    function get__stream():stdgo._internal.syscall.js.Js_Value.Value return this._stream;
    function set__stream(v:stdgo._internal.syscall.js.Js_Value.Value):stdgo._internal.syscall.js.Js_Value.Value {
        this._stream = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_pending:Array<std.UInt>, ?_stream:stdgo._internal.syscall.js.Js_Value.Value, ?_err:stdgo.Error) this = new stdgo._internal.net.http.Http_T_streamReader.T_streamReader(([for (i in _pending) i] : stdgo.Slice<stdgo.GoUInt8>), _stream, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_arrayReader_static_extension) abstract T_arrayReader(stdgo._internal.net.http.Http_T_arrayReader.T_arrayReader) from stdgo._internal.net.http.Http_T_arrayReader.T_arrayReader to stdgo._internal.net.http.Http_T_arrayReader.T_arrayReader {
    public var _arrayPromise(get, set) : stdgo._internal.syscall.js.Js_Value.Value;
    function get__arrayPromise():stdgo._internal.syscall.js.Js_Value.Value return this._arrayPromise;
    function set__arrayPromise(v:stdgo._internal.syscall.js.Js_Value.Value):stdgo._internal.syscall.js.Js_Value.Value {
        this._arrayPromise = v;
        return v;
    }
    public var _pending(get, set) : Array<std.UInt>;
    function get__pending():Array<std.UInt> return [for (i in this._pending) i];
    function set__pending(v:Array<std.UInt>):Array<std.UInt> {
        this._pending = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _read(get, set) : Bool;
    function get__read():Bool return this._read;
    function set__read(v:Bool):Bool {
        this._read = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_arrayPromise:stdgo._internal.syscall.js.Js_Value.Value, ?_pending:Array<std.UInt>, ?_read:Bool, ?_err:stdgo.Error) this = new stdgo._internal.net.http.Http_T_arrayReader.T_arrayReader(_arrayPromise, ([for (i in _pending) i] : stdgo.Slice<stdgo.GoUInt8>), _read, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_conn_static_extension) abstract T_conn(stdgo._internal.net.http.Http_T_conn.T_conn) from stdgo._internal.net.http.Http_T_conn.T_conn to stdgo._internal.net.http.Http_T_conn.T_conn {
    public var _server(get, set) : Server;
    function get__server():Server return this._server;
    function set__server(v:Server):Server {
        this._server = v;
        return v;
    }
    public var _cancelCtx(get, set) : stdgo._internal.context.Context_CancelFunc.CancelFunc;
    function get__cancelCtx():stdgo._internal.context.Context_CancelFunc.CancelFunc return this._cancelCtx;
    function set__cancelCtx(v:stdgo._internal.context.Context_CancelFunc.CancelFunc):stdgo._internal.context.Context_CancelFunc.CancelFunc {
        this._cancelCtx = v;
        return v;
    }
    public var _rwc(get, set) : stdgo._internal.net.Net_Conn.Conn;
    function get__rwc():stdgo._internal.net.Net_Conn.Conn return this._rwc;
    function set__rwc(v:stdgo._internal.net.Net_Conn.Conn):stdgo._internal.net.Net_Conn.Conn {
        this._rwc = v;
        return v;
    }
    public var _remoteAddr(get, set) : String;
    function get__remoteAddr():String return this._remoteAddr;
    function set__remoteAddr(v:String):String {
        this._remoteAddr = v;
        return v;
    }
    public var _tlsState(get, set) : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState;
    function get__tlsState():stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState return this._tlsState;
    function set__tlsState(v:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState):stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState {
        this._tlsState = v;
        return v;
    }
    public var _werr(get, set) : stdgo.Error;
    function get__werr():stdgo.Error return this._werr;
    function set__werr(v:stdgo.Error):stdgo.Error {
        this._werr = v;
        return v;
    }
    public var _r(get, set) : T_connReader;
    function get__r():T_connReader return this._r;
    function set__r(v:T_connReader):T_connReader {
        this._r = v;
        return v;
    }
    public var _bufr(get, set) : stdgo._internal.bufio.Bufio_Reader.Reader;
    function get__bufr():stdgo._internal.bufio.Bufio_Reader.Reader return this._bufr;
    function set__bufr(v:stdgo._internal.bufio.Bufio_Reader.Reader):stdgo._internal.bufio.Bufio_Reader.Reader {
        this._bufr = v;
        return v;
    }
    public var _bufw(get, set) : stdgo._internal.bufio.Bufio_Writer.Writer;
    function get__bufw():stdgo._internal.bufio.Bufio_Writer.Writer return this._bufw;
    function set__bufw(v:stdgo._internal.bufio.Bufio_Writer.Writer):stdgo._internal.bufio.Bufio_Writer.Writer {
        this._bufw = v;
        return v;
    }
    public var _lastMethod(get, set) : String;
    function get__lastMethod():String return this._lastMethod;
    function set__lastMethod(v:String):String {
        this._lastMethod = v;
        return v;
    }
    public var _curReq(get, set) : stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.net.http.Http_T_response.T_response>;
    function get__curReq():stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.net.http.Http_T_response.T_response> return this._curReq;
    function set__curReq(v:stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.net.http.Http_T_response.T_response>):stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.net.http.Http_T_response.T_response> {
        this._curReq = v;
        return v;
    }
    public var _curState(get, set) : stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64;
    function get__curState():stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64 return this._curState;
    function set__curState(v:stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64):stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64 {
        this._curState = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _hijackedv(get, set) : Bool;
    function get__hijackedv():Bool return this._hijackedv;
    function set__hijackedv(v:Bool):Bool {
        this._hijackedv = v;
        return v;
    }
    public function new(?_server:Server, ?_cancelCtx:stdgo._internal.context.Context_CancelFunc.CancelFunc, ?_rwc:stdgo._internal.net.Net_Conn.Conn, ?_remoteAddr:String, ?_tlsState:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState, ?_werr:stdgo.Error, ?_r:T_connReader, ?_bufr:stdgo._internal.bufio.Bufio_Reader.Reader, ?_bufw:stdgo._internal.bufio.Bufio_Writer.Writer, ?_lastMethod:String, ?_curReq:stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo._internal.net.http.Http_T_response.T_response>, ?_curState:stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_hijackedv:Bool) this = new stdgo._internal.net.http.Http_T_conn.T_conn(
_server,
_cancelCtx,
_rwc,
_remoteAddr,
_tlsState,
_werr,
_r,
_bufr,
_bufw,
_lastMethod,
_curReq,
_curState,
_mu,
_hijackedv);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_chunkWriter_static_extension) abstract T_chunkWriter(stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter) from stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter to stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter {
    public var _res(get, set) : T_response;
    function get__res():T_response return this._res;
    function set__res(v:T_response):T_response {
        this._res = v;
        return v;
    }
    public var _header(get, set) : Header;
    function get__header():Header return this._header;
    function set__header(v:Header):Header {
        this._header = v;
        return v;
    }
    public var _wroteHeader(get, set) : Bool;
    function get__wroteHeader():Bool return this._wroteHeader;
    function set__wroteHeader(v:Bool):Bool {
        this._wroteHeader = v;
        return v;
    }
    public var _chunking(get, set) : Bool;
    function get__chunking():Bool return this._chunking;
    function set__chunking(v:Bool):Bool {
        this._chunking = v;
        return v;
    }
    public function new(?_res:T_response, ?_header:Header, ?_wroteHeader:Bool, ?_chunking:Bool) this = new stdgo._internal.net.http.Http_T_chunkWriter.T_chunkWriter(_res, _header, _wroteHeader, _chunking);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_response_static_extension) abstract T_response(stdgo._internal.net.http.Http_T_response.T_response) from stdgo._internal.net.http.Http_T_response.T_response to stdgo._internal.net.http.Http_T_response.T_response {
    public var _conn(get, set) : T_conn;
    function get__conn():T_conn return this._conn;
    function set__conn(v:T_conn):T_conn {
        this._conn = v;
        return v;
    }
    public var _req(get, set) : Request;
    function get__req():Request return this._req;
    function set__req(v:Request):Request {
        this._req = v;
        return v;
    }
    public var _reqBody(get, set) : stdgo._internal.io.Io_ReadCloser.ReadCloser;
    function get__reqBody():stdgo._internal.io.Io_ReadCloser.ReadCloser return this._reqBody;
    function set__reqBody(v:stdgo._internal.io.Io_ReadCloser.ReadCloser):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        this._reqBody = v;
        return v;
    }
    public var _cancelCtx(get, set) : stdgo._internal.context.Context_CancelFunc.CancelFunc;
    function get__cancelCtx():stdgo._internal.context.Context_CancelFunc.CancelFunc return this._cancelCtx;
    function set__cancelCtx(v:stdgo._internal.context.Context_CancelFunc.CancelFunc):stdgo._internal.context.Context_CancelFunc.CancelFunc {
        this._cancelCtx = v;
        return v;
    }
    public var _wroteHeader(get, set) : Bool;
    function get__wroteHeader():Bool return this._wroteHeader;
    function set__wroteHeader(v:Bool):Bool {
        this._wroteHeader = v;
        return v;
    }
    public var _wroteContinue(get, set) : Bool;
    function get__wroteContinue():Bool return this._wroteContinue;
    function set__wroteContinue(v:Bool):Bool {
        this._wroteContinue = v;
        return v;
    }
    public var _wants10KeepAlive(get, set) : Bool;
    function get__wants10KeepAlive():Bool return this._wants10KeepAlive;
    function set__wants10KeepAlive(v:Bool):Bool {
        this._wants10KeepAlive = v;
        return v;
    }
    public var _wantsClose(get, set) : Bool;
    function get__wantsClose():Bool return this._wantsClose;
    function set__wantsClose(v:Bool):Bool {
        this._wantsClose = v;
        return v;
    }
    public var _canWriteContinue(get, set) : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_;
    function get__canWriteContinue():stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ return this._canWriteContinue;
    function set__canWriteContinue(v:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_):stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ {
        this._canWriteContinue = v;
        return v;
    }
    public var _writeContinueMu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__writeContinueMu():stdgo._internal.sync.Sync_Mutex.Mutex return this._writeContinueMu;
    function set__writeContinueMu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._writeContinueMu = v;
        return v;
    }
    public var _w(get, set) : stdgo._internal.bufio.Bufio_Writer.Writer;
    function get__w():stdgo._internal.bufio.Bufio_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.bufio.Bufio_Writer.Writer):stdgo._internal.bufio.Bufio_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _cw(get, set) : T_chunkWriter;
    function get__cw():T_chunkWriter return this._cw;
    function set__cw(v:T_chunkWriter):T_chunkWriter {
        this._cw = v;
        return v;
    }
    public var _handlerHeader(get, set) : Header;
    function get__handlerHeader():Header return this._handlerHeader;
    function set__handlerHeader(v:Header):Header {
        this._handlerHeader = v;
        return v;
    }
    public var _calledHeader(get, set) : Bool;
    function get__calledHeader():Bool return this._calledHeader;
    function set__calledHeader(v:Bool):Bool {
        this._calledHeader = v;
        return v;
    }
    public var _written(get, set) : haxe.Int64;
    function get__written():haxe.Int64 return this._written;
    function set__written(v:haxe.Int64):haxe.Int64 {
        this._written = v;
        return v;
    }
    public var _contentLength(get, set) : haxe.Int64;
    function get__contentLength():haxe.Int64 return this._contentLength;
    function set__contentLength(v:haxe.Int64):haxe.Int64 {
        this._contentLength = v;
        return v;
    }
    public var _status(get, set) : StdTypes.Int;
    function get__status():StdTypes.Int return this._status;
    function set__status(v:StdTypes.Int):StdTypes.Int {
        this._status = v;
        return v;
    }
    public var _closeAfterReply(get, set) : Bool;
    function get__closeAfterReply():Bool return this._closeAfterReply;
    function set__closeAfterReply(v:Bool):Bool {
        this._closeAfterReply = v;
        return v;
    }
    public var _fullDuplex(get, set) : Bool;
    function get__fullDuplex():Bool return this._fullDuplex;
    function set__fullDuplex(v:Bool):Bool {
        this._fullDuplex = v;
        return v;
    }
    public var _requestBodyLimitHit(get, set) : Bool;
    function get__requestBodyLimitHit():Bool return this._requestBodyLimitHit;
    function set__requestBodyLimitHit(v:Bool):Bool {
        this._requestBodyLimitHit = v;
        return v;
    }
    public var _trailers(get, set) : Array<String>;
    function get__trailers():Array<String> return [for (i in this._trailers) i];
    function set__trailers(v:Array<String>):Array<String> {
        this._trailers = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _handlerDone(get, set) : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_;
    function get__handlerDone():stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ return this._handlerDone;
    function set__handlerDone(v:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_):stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ {
        this._handlerDone = v;
        return v;
    }
    public var _dateBuf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__dateBuf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._dateBuf) i]);
    function set__dateBuf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._dateBuf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _clenBuf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__clenBuf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._clenBuf) i]);
    function set__clenBuf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._clenBuf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _statusBuf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__statusBuf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._statusBuf) i]);
    function set__statusBuf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._statusBuf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _closeNotifyCh(get, set) : stdgo.Chan<Bool>;
    function get__closeNotifyCh():stdgo.Chan<Bool> return this._closeNotifyCh;
    function set__closeNotifyCh(v:stdgo.Chan<Bool>):stdgo.Chan<Bool> {
        this._closeNotifyCh = v;
        return v;
    }
    public var _didCloseNotify(get, set) : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_;
    function get__didCloseNotify():stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ return this._didCloseNotify;
    function set__didCloseNotify(v:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_):stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ {
        this._didCloseNotify = v;
        return v;
    }
    public function new(?_conn:T_conn, ?_req:Request, ?_reqBody:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_cancelCtx:stdgo._internal.context.Context_CancelFunc.CancelFunc, ?_wroteHeader:Bool, ?_wroteContinue:Bool, ?_wants10KeepAlive:Bool, ?_wantsClose:Bool, ?_canWriteContinue:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_, ?_writeContinueMu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_w:stdgo._internal.bufio.Bufio_Writer.Writer, ?_cw:T_chunkWriter, ?_handlerHeader:Header, ?_calledHeader:Bool, ?_written:haxe.Int64, ?_contentLength:haxe.Int64, ?_status:StdTypes.Int, ?_closeAfterReply:Bool, ?_fullDuplex:Bool, ?_requestBodyLimitHit:Bool, ?_trailers:Array<String>, ?_handlerDone:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_, ?_dateBuf:haxe.ds.Vector<std.UInt>, ?_clenBuf:haxe.ds.Vector<std.UInt>, ?_statusBuf:haxe.ds.Vector<std.UInt>, ?_closeNotifyCh:stdgo.Chan<Bool>, ?_didCloseNotify:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_) this = new stdgo._internal.net.http.Http_T_response.T_response(
_conn,
_req,
_reqBody,
_cancelCtx,
_wroteHeader,
_wroteContinue,
_wants10KeepAlive,
_wantsClose,
_canWriteContinue,
_writeContinueMu,
_w,
_cw,
_handlerHeader,
_calledHeader,
_written,
_contentLength,
_status,
_closeAfterReply,
_fullDuplex,
_requestBodyLimitHit,
([for (i in _trailers) i] : stdgo.Slice<stdgo.GoString>),
_handlerDone,
([for (i in _dateBuf) i] : stdgo.GoArray<stdgo.GoUInt8>),
([for (i in _clenBuf) i] : stdgo.GoArray<stdgo.GoUInt8>),
([for (i in _statusBuf) i] : stdgo.GoArray<stdgo.GoUInt8>),
_closeNotifyCh,
_didCloseNotify);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_writerOnly_static_extension) abstract T_writerOnly(stdgo._internal.net.http.Http_T_writerOnly.T_writerOnly) from stdgo._internal.net.http.Http_T_writerOnly.T_writerOnly to stdgo._internal.net.http.Http_T_writerOnly.T_writerOnly {
    public var writer(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get_writer():stdgo._internal.io.Io_Writer.Writer return this.writer;
    function set_writer(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this.writer = v;
        return v;
    }
    public function new(?writer:stdgo._internal.io.Io_Writer.Writer) this = new stdgo._internal.net.http.Http_T_writerOnly.T_writerOnly(writer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_readResult(stdgo._internal.net.http.Http_T_readResult.T_readResult) from stdgo._internal.net.http.Http_T_readResult.T_readResult to stdgo._internal.net.http.Http_T_readResult.T_readResult {
    public var __59(get, set) : T_incomparable;
    function get___59():T_incomparable return this.__59;
    function set___59(v:T_incomparable):T_incomparable {
        this.__59 = v;
        return v;
    }
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _b(get, set) : std.UInt;
    function get__b():std.UInt return this._b;
    function set__b(v:std.UInt):std.UInt {
        this._b = v;
        return v;
    }
    public function new(?__59:T_incomparable, ?_n:StdTypes.Int, ?_err:stdgo.Error, ?_b:std.UInt) this = new stdgo._internal.net.http.Http_T_readResult.T_readResult(__59, _n, _err, _b);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_connReader_static_extension) abstract T_connReader(stdgo._internal.net.http.Http_T_connReader.T_connReader) from stdgo._internal.net.http.Http_T_connReader.T_connReader to stdgo._internal.net.http.Http_T_connReader.T_connReader {
    public var _conn(get, set) : T_conn;
    function get__conn():T_conn return this._conn;
    function set__conn(v:T_conn):T_conn {
        this._conn = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _hasByte(get, set) : Bool;
    function get__hasByte():Bool return this._hasByte;
    function set__hasByte(v:Bool):Bool {
        this._hasByte = v;
        return v;
    }
    public var _byteBuf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__byteBuf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._byteBuf) i]);
    function set__byteBuf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._byteBuf = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _cond(get, set) : stdgo._internal.sync.Sync_Cond.Cond;
    function get__cond():stdgo._internal.sync.Sync_Cond.Cond return this._cond;
    function set__cond(v:stdgo._internal.sync.Sync_Cond.Cond):stdgo._internal.sync.Sync_Cond.Cond {
        this._cond = v;
        return v;
    }
    public var _inRead(get, set) : Bool;
    function get__inRead():Bool return this._inRead;
    function set__inRead(v:Bool):Bool {
        this._inRead = v;
        return v;
    }
    public var _aborted(get, set) : Bool;
    function get__aborted():Bool return this._aborted;
    function set__aborted(v:Bool):Bool {
        this._aborted = v;
        return v;
    }
    public var _remain(get, set) : haxe.Int64;
    function get__remain():haxe.Int64 return this._remain;
    function set__remain(v:haxe.Int64):haxe.Int64 {
        this._remain = v;
        return v;
    }
    public function new(?_conn:T_conn, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_hasByte:Bool, ?_byteBuf:haxe.ds.Vector<std.UInt>, ?_cond:stdgo._internal.sync.Sync_Cond.Cond, ?_inRead:Bool, ?_aborted:Bool, ?_remain:haxe.Int64) this = new stdgo._internal.net.http.Http_T_connReader.T_connReader(_conn, _mu, _hasByte, ([for (i in _byteBuf) i] : stdgo.GoArray<stdgo.GoUInt8>), _cond, _inRead, _aborted, _remain);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_expectContinueReader_static_extension) abstract T_expectContinueReader(stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader) from stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader to stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader {
    public var _resp(get, set) : T_response;
    function get__resp():T_response return this._resp;
    function set__resp(v:T_response):T_response {
        this._resp = v;
        return v;
    }
    public var _readCloser(get, set) : stdgo._internal.io.Io_ReadCloser.ReadCloser;
    function get__readCloser():stdgo._internal.io.Io_ReadCloser.ReadCloser return this._readCloser;
    function set__readCloser(v:stdgo._internal.io.Io_ReadCloser.ReadCloser):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        this._readCloser = v;
        return v;
    }
    public var _closed(get, set) : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_;
    function get__closed():stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ return this._closed;
    function set__closed(v:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_):stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ {
        this._closed = v;
        return v;
    }
    public var _sawEOF(get, set) : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_;
    function get__sawEOF():stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ return this._sawEOF;
    function set__sawEOF(v:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_):stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ {
        this._sawEOF = v;
        return v;
    }
    public function new(?_resp:T_response, ?_readCloser:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_closed:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_, ?_sawEOF:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_) this = new stdgo._internal.net.http.Http_T_expectContinueReader.T_expectContinueReader(_resp, _readCloser, _closed, _sawEOF);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_extraHeader_static_extension) abstract T_extraHeader(stdgo._internal.net.http.Http_T_extraHeader.T_extraHeader) from stdgo._internal.net.http.Http_T_extraHeader.T_extraHeader to stdgo._internal.net.http.Http_T_extraHeader.T_extraHeader {
    public var _contentType(get, set) : String;
    function get__contentType():String return this._contentType;
    function set__contentType(v:String):String {
        this._contentType = v;
        return v;
    }
    public var _connection(get, set) : String;
    function get__connection():String return this._connection;
    function set__connection(v:String):String {
        this._connection = v;
        return v;
    }
    public var _transferEncoding(get, set) : String;
    function get__transferEncoding():String return this._transferEncoding;
    function set__transferEncoding(v:String):String {
        this._transferEncoding = v;
        return v;
    }
    public var _date(get, set) : Array<std.UInt>;
    function get__date():Array<std.UInt> return [for (i in this._date) i];
    function set__date(v:Array<std.UInt>):Array<std.UInt> {
        this._date = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _contentLength(get, set) : Array<std.UInt>;
    function get__contentLength():Array<std.UInt> return [for (i in this._contentLength) i];
    function set__contentLength(v:Array<std.UInt>):Array<std.UInt> {
        this._contentLength = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_contentType:String, ?_connection:String, ?_transferEncoding:String, ?_date:Array<std.UInt>, ?_contentLength:Array<std.UInt>) this = new stdgo._internal.net.http.Http_T_extraHeader.T_extraHeader(_contentType, _connection, _transferEncoding, ([for (i in _date) i] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _contentLength) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_statusError_static_extension) abstract T_statusError(stdgo._internal.net.http.Http_T_statusError.T_statusError) from stdgo._internal.net.http.Http_T_statusError.T_statusError to stdgo._internal.net.http.Http_T_statusError.T_statusError {
    public var _code(get, set) : StdTypes.Int;
    function get__code():StdTypes.Int return this._code;
    function set__code(v:StdTypes.Int):StdTypes.Int {
        this._code = v;
        return v;
    }
    public var _text(get, set) : String;
    function get__text():String return this._text;
    function set__text(v:String):String {
        this._text = v;
        return v;
    }
    public function new(?_code:StdTypes.Int, ?_text:String) this = new stdgo._internal.net.http.Http_T_statusError.T_statusError(_code, _text);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_redirectHandler_static_extension) abstract T_redirectHandler(stdgo._internal.net.http.Http_T_redirectHandler.T_redirectHandler) from stdgo._internal.net.http.Http_T_redirectHandler.T_redirectHandler to stdgo._internal.net.http.Http_T_redirectHandler.T_redirectHandler {
    public var _url(get, set) : String;
    function get__url():String return this._url;
    function set__url(v:String):String {
        this._url = v;
        return v;
    }
    public var _code(get, set) : StdTypes.Int;
    function get__code():StdTypes.Int return this._code;
    function set__code(v:StdTypes.Int):StdTypes.Int {
        this._code = v;
        return v;
    }
    public function new(?_url:String, ?_code:StdTypes.Int) this = new stdgo._internal.net.http.Http_T_redirectHandler.T_redirectHandler(_url, _code);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.ServeMux_static_extension) abstract ServeMux(stdgo._internal.net.http.Http_ServeMux.ServeMux) from stdgo._internal.net.http.Http_ServeMux.ServeMux to stdgo._internal.net.http.Http_ServeMux.ServeMux {
    public var _mu(get, set) : stdgo._internal.sync.Sync_RWMutex.RWMutex;
    function get__mu():stdgo._internal.sync.Sync_RWMutex.RWMutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_RWMutex.RWMutex):stdgo._internal.sync.Sync_RWMutex.RWMutex {
        this._mu = v;
        return v;
    }
    public var _m(get, set) : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry>;
    function get__m():stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry> return this._m;
    function set__m(v:stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry>):stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry> {
        this._m = v;
        return v;
    }
    public var _es(get, set) : Array<T_muxEntry>;
    function get__es():Array<T_muxEntry> return [for (i in this._es) i];
    function set__es(v:Array<T_muxEntry>):Array<T_muxEntry> {
        this._es = ([for (i in v) i] : stdgo.Slice<stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry>);
        return v;
    }
    public var _hosts(get, set) : Bool;
    function get__hosts():Bool return this._hosts;
    function set__hosts(v:Bool):Bool {
        this._hosts = v;
        return v;
    }
    public function new(?_mu:stdgo._internal.sync.Sync_RWMutex.RWMutex, ?_m:stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry>, ?_es:Array<T_muxEntry>, ?_hosts:Bool) this = new stdgo._internal.net.http.Http_ServeMux.ServeMux(_mu, _m, ([for (i in _es) i] : stdgo.Slice<stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry>), _hosts);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_muxEntry(stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry) from stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry to stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry {
    public var _h(get, set) : Handler;
    function get__h():Handler return this._h;
    function set__h(v:Handler):Handler {
        this._h = v;
        return v;
    }
    public var _pattern(get, set) : String;
    function get__pattern():String return this._pattern;
    function set__pattern(v:String):String {
        this._pattern = v;
        return v;
    }
    public function new(?_h:Handler, ?_pattern:String) this = new stdgo._internal.net.http.Http_T_muxEntry.T_muxEntry(_h, _pattern);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.Server_static_extension) abstract Server(stdgo._internal.net.http.Http_Server.Server) from stdgo._internal.net.http.Http_Server.Server to stdgo._internal.net.http.Http_Server.Server {
    public var addr(get, set) : String;
    function get_addr():String return this.addr;
    function set_addr(v:String):String {
        this.addr = v;
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
    public var tLSConfig(get, set) : stdgo._internal.crypto.tls.Tls_Config.Config;
    function get_tLSConfig():stdgo._internal.crypto.tls.Tls_Config.Config return this.tLSConfig;
    function set_tLSConfig(v:stdgo._internal.crypto.tls.Tls_Config.Config):stdgo._internal.crypto.tls.Tls_Config.Config {
        this.tLSConfig = v;
        return v;
    }
    public var readTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_readTimeout():stdgo._internal.time.Time_Duration.Duration return this.readTimeout;
    function set_readTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.readTimeout = v;
        return v;
    }
    public var readHeaderTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_readHeaderTimeout():stdgo._internal.time.Time_Duration.Duration return this.readHeaderTimeout;
    function set_readHeaderTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.readHeaderTimeout = v;
        return v;
    }
    public var writeTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_writeTimeout():stdgo._internal.time.Time_Duration.Duration return this.writeTimeout;
    function set_writeTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.writeTimeout = v;
        return v;
    }
    public var idleTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_idleTimeout():stdgo._internal.time.Time_Duration.Duration return this.idleTimeout;
    function set_idleTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.idleTimeout = v;
        return v;
    }
    public var maxHeaderBytes(get, set) : StdTypes.Int;
    function get_maxHeaderBytes():StdTypes.Int return this.maxHeaderBytes;
    function set_maxHeaderBytes(v:StdTypes.Int):StdTypes.Int {
        this.maxHeaderBytes = v;
        return v;
    }
    public var tLSNextProto(get, set) : stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, stdgo._internal.net.http.Http_Handler.Handler) -> Void>;
    function get_tLSNextProto():stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, stdgo._internal.net.http.Http_Handler.Handler) -> Void> return this.tLSNextProto;
    function set_tLSNextProto(v:stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, stdgo._internal.net.http.Http_Handler.Handler) -> Void>):stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, stdgo._internal.net.http.Http_Handler.Handler) -> Void> {
        this.tLSNextProto = v;
        return v;
    }
    public var connState(get, set) : (stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState) -> Void;
    function get_connState():(stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState) -> Void return (_0, _1) -> this.connState(_0, _1);
    function set_connState(v:(stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState) -> Void):(stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState) -> Void {
        this.connState = v;
        return v;
    }
    public var errorLog(get, set) : stdgo._internal.log.Log_Logger.Logger;
    function get_errorLog():stdgo._internal.log.Log_Logger.Logger return this.errorLog;
    function set_errorLog(v:stdgo._internal.log.Log_Logger.Logger):stdgo._internal.log.Log_Logger.Logger {
        this.errorLog = v;
        return v;
    }
    public var baseContext(get, set) : stdgo._internal.net.Net_Listener.Listener -> stdgo._internal.context.Context_Context.Context;
    function get_baseContext():stdgo._internal.net.Net_Listener.Listener -> stdgo._internal.context.Context_Context.Context return _0 -> this.baseContext(_0);
    function set_baseContext(v:stdgo._internal.net.Net_Listener.Listener -> stdgo._internal.context.Context_Context.Context):stdgo._internal.net.Net_Listener.Listener -> stdgo._internal.context.Context_Context.Context {
        this.baseContext = v;
        return v;
    }
    public var connContext(get, set) : (stdgo._internal.context.Context_Context.Context, stdgo._internal.net.Net_Conn.Conn) -> stdgo._internal.context.Context_Context.Context;
    function get_connContext():(stdgo._internal.context.Context_Context.Context, stdgo._internal.net.Net_Conn.Conn) -> stdgo._internal.context.Context_Context.Context return (_0, _1) -> this.connContext(_0, _1);
    function set_connContext(v:(stdgo._internal.context.Context_Context.Context, stdgo._internal.net.Net_Conn.Conn) -> stdgo._internal.context.Context_Context.Context):(stdgo._internal.context.Context_Context.Context, stdgo._internal.net.Net_Conn.Conn) -> stdgo._internal.context.Context_Context.Context {
        this.connContext = v;
        return v;
    }
    public var _inShutdown(get, set) : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_;
    function get__inShutdown():stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ return this._inShutdown;
    function set__inShutdown(v:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_):stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ {
        this._inShutdown = v;
        return v;
    }
    public var _disableKeepAlives(get, set) : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_;
    function get__disableKeepAlives():stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ return this._disableKeepAlives;
    function set__disableKeepAlives(v:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_):stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ {
        this._disableKeepAlives = v;
        return v;
    }
    public var _nextProtoOnce(get, set) : stdgo._internal.sync.Sync_Once.Once;
    function get__nextProtoOnce():stdgo._internal.sync.Sync_Once.Once return this._nextProtoOnce;
    function set__nextProtoOnce(v:stdgo._internal.sync.Sync_Once.Once):stdgo._internal.sync.Sync_Once.Once {
        this._nextProtoOnce = v;
        return v;
    }
    public var _nextProtoErr(get, set) : stdgo.Error;
    function get__nextProtoErr():stdgo.Error return this._nextProtoErr;
    function set__nextProtoErr(v:stdgo.Error):stdgo.Error {
        this._nextProtoErr = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _listeners(get, set) : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.Net_Listener.Listener>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>;
    function get__listeners():stdgo.GoMap<stdgo.Ref<stdgo._internal.net.Net_Listener.Listener>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> return this._listeners;
    function set__listeners(v:stdgo.GoMap<stdgo.Ref<stdgo._internal.net.Net_Listener.Listener>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):stdgo.GoMap<stdgo.Ref<stdgo._internal.net.Net_Listener.Listener>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> {
        this._listeners = v;
        return v;
    }
    public var _activeConn(get, set) : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>;
    function get__activeConn():stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> return this._activeConn;
    function set__activeConn(v:stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> {
        this._activeConn = v;
        return v;
    }
    public var _onShutdown(get, set) : Array<() -> Void>;
    function get__onShutdown():Array<() -> Void> return [for (i in this._onShutdown) () -> i()];
    function set__onShutdown(v:Array<() -> Void>):Array<() -> Void> {
        this._onShutdown = ([for (i in v) i] : stdgo.Slice<() -> Void>);
        return v;
    }
    public var _listenerGroup(get, set) : stdgo._internal.sync.Sync_WaitGroup.WaitGroup;
    function get__listenerGroup():stdgo._internal.sync.Sync_WaitGroup.WaitGroup return this._listenerGroup;
    function set__listenerGroup(v:stdgo._internal.sync.Sync_WaitGroup.WaitGroup):stdgo._internal.sync.Sync_WaitGroup.WaitGroup {
        this._listenerGroup = v;
        return v;
    }
    public function new(?addr:String, ?handler:Handler, ?disableGeneralOptionsHandler:Bool, ?tLSConfig:stdgo._internal.crypto.tls.Tls_Config.Config, ?readTimeout:stdgo._internal.time.Time_Duration.Duration, ?readHeaderTimeout:stdgo._internal.time.Time_Duration.Duration, ?writeTimeout:stdgo._internal.time.Time_Duration.Duration, ?idleTimeout:stdgo._internal.time.Time_Duration.Duration, ?maxHeaderBytes:StdTypes.Int, ?tLSNextProto:stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>, stdgo._internal.net.http.Http_Handler.Handler) -> Void>, ?connState:(stdgo._internal.net.Net_Conn.Conn, stdgo._internal.net.http.Http_ConnState.ConnState) -> Void, ?errorLog:stdgo._internal.log.Log_Logger.Logger, ?baseContext:stdgo._internal.net.Net_Listener.Listener -> stdgo._internal.context.Context_Context.Context, ?connContext:(stdgo._internal.context.Context_Context.Context, stdgo._internal.net.Net_Conn.Conn) -> stdgo._internal.context.Context_Context.Context, ?_inShutdown:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_, ?_disableKeepAlives:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_, ?_nextProtoOnce:stdgo._internal.sync.Sync_Once.Once, ?_nextProtoErr:stdgo.Error, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_listeners:stdgo.GoMap<stdgo.Ref<stdgo._internal.net.Net_Listener.Listener>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_activeConn:stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_conn.T_conn>, stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_onShutdown:Array<() -> Void>, ?_listenerGroup:stdgo._internal.sync.Sync_WaitGroup.WaitGroup) this = new stdgo._internal.net.http.Http_Server.Server(
addr,
handler,
disableGeneralOptionsHandler,
tLSConfig,
readTimeout,
readHeaderTimeout,
writeTimeout,
idleTimeout,
maxHeaderBytes,
tLSNextProto,
connState,
errorLog,
baseContext,
connContext,
_inShutdown,
_disableKeepAlives,
_nextProtoOnce,
_nextProtoErr,
_mu,
_listeners,
_activeConn,
([for (i in _onShutdown) i] : stdgo.Slice<() -> Void>),
_listenerGroup);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_serverHandler_static_extension) abstract T_serverHandler(stdgo._internal.net.http.Http_T_serverHandler.T_serverHandler) from stdgo._internal.net.http.Http_T_serverHandler.T_serverHandler to stdgo._internal.net.http.Http_T_serverHandler.T_serverHandler {
    public var _srv(get, set) : Server;
    function get__srv():Server return this._srv;
    function set__srv(v:Server):Server {
        this._srv = v;
        return v;
    }
    public function new(?_srv:Server) this = new stdgo._internal.net.http.Http_T_serverHandler.T_serverHandler(_srv);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_timeoutHandler_static_extension) abstract T_timeoutHandler(stdgo._internal.net.http.Http_T_timeoutHandler.T_timeoutHandler) from stdgo._internal.net.http.Http_T_timeoutHandler.T_timeoutHandler to stdgo._internal.net.http.Http_T_timeoutHandler.T_timeoutHandler {
    public var _handler(get, set) : Handler;
    function get__handler():Handler return this._handler;
    function set__handler(v:Handler):Handler {
        this._handler = v;
        return v;
    }
    public var _body(get, set) : String;
    function get__body():String return this._body;
    function set__body(v:String):String {
        this._body = v;
        return v;
    }
    public var _dt(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get__dt():stdgo._internal.time.Time_Duration.Duration return this._dt;
    function set__dt(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this._dt = v;
        return v;
    }
    public var _testContext(get, set) : stdgo._internal.context.Context_Context.Context;
    function get__testContext():stdgo._internal.context.Context_Context.Context return this._testContext;
    function set__testContext(v:stdgo._internal.context.Context_Context.Context):stdgo._internal.context.Context_Context.Context {
        this._testContext = v;
        return v;
    }
    public function new(?_handler:Handler, ?_body:String, ?_dt:stdgo._internal.time.Time_Duration.Duration, ?_testContext:stdgo._internal.context.Context_Context.Context) this = new stdgo._internal.net.http.Http_T_timeoutHandler.T_timeoutHandler(_handler, _body, _dt, _testContext);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_timeoutWriter_static_extension) abstract T_timeoutWriter(stdgo._internal.net.http.Http_T_timeoutWriter.T_timeoutWriter) from stdgo._internal.net.http.Http_T_timeoutWriter.T_timeoutWriter to stdgo._internal.net.http.Http_T_timeoutWriter.T_timeoutWriter {
    public var _w(get, set) : ResponseWriter;
    function get__w():ResponseWriter return this._w;
    function set__w(v:ResponseWriter):ResponseWriter {
        this._w = v;
        return v;
    }
    public var _h(get, set) : Header;
    function get__h():Header return this._h;
    function set__h(v:Header):Header {
        this._h = v;
        return v;
    }
    public var _wbuf(get, set) : stdgo._internal.bytes.Bytes_Buffer.Buffer;
    function get__wbuf():stdgo._internal.bytes.Bytes_Buffer.Buffer return this._wbuf;
    function set__wbuf(v:stdgo._internal.bytes.Bytes_Buffer.Buffer):stdgo._internal.bytes.Bytes_Buffer.Buffer {
        this._wbuf = v;
        return v;
    }
    public var _req(get, set) : Request;
    function get__req():Request return this._req;
    function set__req(v:Request):Request {
        this._req = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public var _wroteHeader(get, set) : Bool;
    function get__wroteHeader():Bool return this._wroteHeader;
    function set__wroteHeader(v:Bool):Bool {
        this._wroteHeader = v;
        return v;
    }
    public var _code(get, set) : StdTypes.Int;
    function get__code():StdTypes.Int return this._code;
    function set__code(v:StdTypes.Int):StdTypes.Int {
        this._code = v;
        return v;
    }
    public function new(?_w:ResponseWriter, ?_h:Header, ?_wbuf:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_req:Request, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_err:stdgo.Error, ?_wroteHeader:Bool, ?_code:StdTypes.Int) this = new stdgo._internal.net.http.Http_T_timeoutWriter.T_timeoutWriter(_w, _h, _wbuf, _req, _mu, _err, _wroteHeader, _code);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_onceCloseListener_static_extension) abstract T_onceCloseListener(stdgo._internal.net.http.Http_T_onceCloseListener.T_onceCloseListener) from stdgo._internal.net.http.Http_T_onceCloseListener.T_onceCloseListener to stdgo._internal.net.http.Http_T_onceCloseListener.T_onceCloseListener {
    public var listener(get, set) : stdgo._internal.net.Net_Listener.Listener;
    function get_listener():stdgo._internal.net.Net_Listener.Listener return this.listener;
    function set_listener(v:stdgo._internal.net.Net_Listener.Listener):stdgo._internal.net.Net_Listener.Listener {
        this.listener = v;
        return v;
    }
    public var _once(get, set) : stdgo._internal.sync.Sync_Once.Once;
    function get__once():stdgo._internal.sync.Sync_Once.Once return this._once;
    function set__once(v:stdgo._internal.sync.Sync_Once.Once):stdgo._internal.sync.Sync_Once.Once {
        this._once = v;
        return v;
    }
    public var _closeErr(get, set) : stdgo.Error;
    function get__closeErr():stdgo.Error return this._closeErr;
    function set__closeErr(v:stdgo.Error):stdgo.Error {
        this._closeErr = v;
        return v;
    }
    public function new(?listener:stdgo._internal.net.Net_Listener.Listener, ?_once:stdgo._internal.sync.Sync_Once.Once, ?_closeErr:stdgo.Error) this = new stdgo._internal.net.http.Http_T_onceCloseListener.T_onceCloseListener(listener, _once, _closeErr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_globalOptionsHandler_static_extension) abstract T_globalOptionsHandler(stdgo._internal.net.http.Http_T_globalOptionsHandler.T_globalOptionsHandler) from stdgo._internal.net.http.Http_T_globalOptionsHandler.T_globalOptionsHandler to stdgo._internal.net.http.Http_T_globalOptionsHandler.T_globalOptionsHandler {
    public function new() this = new stdgo._internal.net.http.Http_T_globalOptionsHandler.T_globalOptionsHandler();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_initALPNRequest_static_extension) abstract T_initALPNRequest(stdgo._internal.net.http.Http_T_initALPNRequest.T_initALPNRequest) from stdgo._internal.net.http.Http_T_initALPNRequest.T_initALPNRequest to stdgo._internal.net.http.Http_T_initALPNRequest.T_initALPNRequest {
    public var _ctx(get, set) : stdgo._internal.context.Context_Context.Context;
    function get__ctx():stdgo._internal.context.Context_Context.Context return this._ctx;
    function set__ctx(v:stdgo._internal.context.Context_Context.Context):stdgo._internal.context.Context_Context.Context {
        this._ctx = v;
        return v;
    }
    public var _c(get, set) : stdgo._internal.crypto.tls.Tls_Conn.Conn;
    function get__c():stdgo._internal.crypto.tls.Tls_Conn.Conn return this._c;
    function set__c(v:stdgo._internal.crypto.tls.Tls_Conn.Conn):stdgo._internal.crypto.tls.Tls_Conn.Conn {
        this._c = v;
        return v;
    }
    public var _h(get, set) : T_serverHandler;
    function get__h():T_serverHandler return this._h;
    function set__h(v:T_serverHandler):T_serverHandler {
        this._h = v;
        return v;
    }
    public function new(?_ctx:stdgo._internal.context.Context_Context.Context, ?_c:stdgo._internal.crypto.tls.Tls_Conn.Conn, ?_h:T_serverHandler) this = new stdgo._internal.net.http.Http_T_initALPNRequest.T_initALPNRequest(_ctx, _c, _h);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_loggingConn_static_extension) abstract T_loggingConn(stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn) from stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn to stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = v;
        return v;
    }
    public var conn(get, set) : stdgo._internal.net.Net_Conn.Conn;
    function get_conn():stdgo._internal.net.Net_Conn.Conn return this.conn;
    function set_conn(v:stdgo._internal.net.Net_Conn.Conn):stdgo._internal.net.Net_Conn.Conn {
        this.conn = v;
        return v;
    }
    public function new(?_name:String, ?conn:stdgo._internal.net.Net_Conn.Conn) this = new stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn(_name, conn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_checkConnErrorWriter_static_extension) abstract T_checkConnErrorWriter(stdgo._internal.net.http.Http_T_checkConnErrorWriter.T_checkConnErrorWriter) from stdgo._internal.net.http.Http_T_checkConnErrorWriter.T_checkConnErrorWriter to stdgo._internal.net.http.Http_T_checkConnErrorWriter.T_checkConnErrorWriter {
    public var _c(get, set) : T_conn;
    function get__c():T_conn return this._c;
    function set__c(v:T_conn):T_conn {
        this._c = v;
        return v;
    }
    public function new(?_c:T_conn) this = new stdgo._internal.net.http.Http_T_checkConnErrorWriter.T_checkConnErrorWriter(_c);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_exactSig_static_extension) abstract T_exactSig(stdgo._internal.net.http.Http_T_exactSig.T_exactSig) from stdgo._internal.net.http.Http_T_exactSig.T_exactSig to stdgo._internal.net.http.Http_T_exactSig.T_exactSig {
    public var _sig(get, set) : Array<std.UInt>;
    function get__sig():Array<std.UInt> return [for (i in this._sig) i];
    function set__sig(v:Array<std.UInt>):Array<std.UInt> {
        this._sig = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _ct(get, set) : String;
    function get__ct():String return this._ct;
    function set__ct(v:String):String {
        this._ct = v;
        return v;
    }
    public function new(?_sig:Array<std.UInt>, ?_ct:String) this = new stdgo._internal.net.http.Http_T_exactSig.T_exactSig(([for (i in _sig) i] : stdgo.Slice<stdgo.GoUInt8>), _ct);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_maskedSig_static_extension) abstract T_maskedSig(stdgo._internal.net.http.Http_T_maskedSig.T_maskedSig) from stdgo._internal.net.http.Http_T_maskedSig.T_maskedSig to stdgo._internal.net.http.Http_T_maskedSig.T_maskedSig {
    public var _mask(get, set) : Array<std.UInt>;
    function get__mask():Array<std.UInt> return [for (i in this._mask) i];
    function set__mask(v:Array<std.UInt>):Array<std.UInt> {
        this._mask = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _pat(get, set) : Array<std.UInt>;
    function get__pat():Array<std.UInt> return [for (i in this._pat) i];
    function set__pat(v:Array<std.UInt>):Array<std.UInt> {
        this._pat = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _skipWS(get, set) : Bool;
    function get__skipWS():Bool return this._skipWS;
    function set__skipWS(v:Bool):Bool {
        this._skipWS = v;
        return v;
    }
    public var _ct(get, set) : String;
    function get__ct():String return this._ct;
    function set__ct(v:String):String {
        this._ct = v;
        return v;
    }
    public function new(?_mask:Array<std.UInt>, ?_pat:Array<std.UInt>, ?_skipWS:Bool, ?_ct:String) this = new stdgo._internal.net.http.Http_T_maskedSig.T_maskedSig(([for (i in _mask) i] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _pat) i] : stdgo.Slice<stdgo.GoUInt8>), _skipWS, _ct);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_mp4Sig_static_extension) abstract T_mp4Sig(stdgo._internal.net.http.Http_T_mp4Sig.T_mp4Sig) from stdgo._internal.net.http.Http_T_mp4Sig.T_mp4Sig to stdgo._internal.net.http.Http_T_mp4Sig.T_mp4Sig {
    public function new() this = new stdgo._internal.net.http.Http_T_mp4Sig.T_mp4Sig();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_textSig_static_extension) abstract T_textSig(stdgo._internal.net.http.Http_T_textSig.T_textSig) from stdgo._internal.net.http.Http_T_textSig.T_textSig to stdgo._internal.net.http.Http_T_textSig.T_textSig {
    public function new() this = new stdgo._internal.net.http.Http_T_textSig.T_textSig();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_socksAddr_static_extension) abstract T_socksAddr(stdgo._internal.net.http.Http_T_socksAddr.T_socksAddr) from stdgo._internal.net.http.Http_T_socksAddr.T_socksAddr to stdgo._internal.net.http.Http_T_socksAddr.T_socksAddr {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var iP(get, set) : stdgo._internal.net.Net_IP.IP;
    function get_iP():stdgo._internal.net.Net_IP.IP return this.iP;
    function set_iP(v:stdgo._internal.net.Net_IP.IP):stdgo._internal.net.Net_IP.IP {
        this.iP = v;
        return v;
    }
    public var port(get, set) : StdTypes.Int;
    function get_port():StdTypes.Int return this.port;
    function set_port(v:StdTypes.Int):StdTypes.Int {
        this.port = v;
        return v;
    }
    public function new(?name:String, ?iP:stdgo._internal.net.Net_IP.IP, ?port:StdTypes.Int) this = new stdgo._internal.net.http.Http_T_socksAddr.T_socksAddr(name, iP, port);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_socksConn_static_extension) abstract T_socksConn(stdgo._internal.net.http.Http_T_socksConn.T_socksConn) from stdgo._internal.net.http.Http_T_socksConn.T_socksConn to stdgo._internal.net.http.Http_T_socksConn.T_socksConn {
    public var conn(get, set) : stdgo._internal.net.Net_Conn.Conn;
    function get_conn():stdgo._internal.net.Net_Conn.Conn return this.conn;
    function set_conn(v:stdgo._internal.net.Net_Conn.Conn):stdgo._internal.net.Net_Conn.Conn {
        this.conn = v;
        return v;
    }
    public var _boundAddr(get, set) : stdgo._internal.net.Net_Addr.Addr;
    function get__boundAddr():stdgo._internal.net.Net_Addr.Addr return this._boundAddr;
    function set__boundAddr(v:stdgo._internal.net.Net_Addr.Addr):stdgo._internal.net.Net_Addr.Addr {
        this._boundAddr = v;
        return v;
    }
    public function new(?conn:stdgo._internal.net.Net_Conn.Conn, ?_boundAddr:stdgo._internal.net.Net_Addr.Addr) this = new stdgo._internal.net.http.Http_T_socksConn.T_socksConn(conn, _boundAddr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_socksDialer_static_extension) abstract T_socksDialer(stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer) from stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer to stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer {
    public var _cmd(get, set) : T_socksCommand;
    function get__cmd():T_socksCommand return this._cmd;
    function set__cmd(v:T_socksCommand):T_socksCommand {
        this._cmd = v;
        return v;
    }
    public var _proxyNetwork(get, set) : String;
    function get__proxyNetwork():String return this._proxyNetwork;
    function set__proxyNetwork(v:String):String {
        this._proxyNetwork = v;
        return v;
    }
    public var _proxyAddress(get, set) : String;
    function get__proxyAddress():String return this._proxyAddress;
    function set__proxyAddress(v:String):String {
        this._proxyAddress = v;
        return v;
    }
    public var proxyDial(get, set) : (stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; };
    function get_proxyDial():(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return (_0, _1, _2) -> this.proxyDial(_0, _1, _2);
    function set_proxyDial(v:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }):(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } {
        this.proxyDial = v;
        return v;
    }
    public var authMethods(get, set) : Array<T_socksAuthMethod>;
    function get_authMethods():Array<T_socksAuthMethod> return [for (i in this.authMethods) i];
    function set_authMethods(v:Array<T_socksAuthMethod>):Array<T_socksAuthMethod> {
        this.authMethods = ([for (i in v) i] : stdgo.Slice<stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod>);
        return v;
    }
    public var authenticate(get, set) : (stdgo._internal.context.Context_Context.Context, stdgo._internal.io.Io_ReadWriter.ReadWriter, stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod) -> stdgo.Error;
    function get_authenticate():(stdgo._internal.context.Context_Context.Context, stdgo._internal.io.Io_ReadWriter.ReadWriter, stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod) -> stdgo.Error return (_0, _1, _2) -> this.authenticate(_0, _1, _2);
    function set_authenticate(v:(stdgo._internal.context.Context_Context.Context, stdgo._internal.io.Io_ReadWriter.ReadWriter, stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod) -> stdgo.Error):(stdgo._internal.context.Context_Context.Context, stdgo._internal.io.Io_ReadWriter.ReadWriter, stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod) -> stdgo.Error {
        this.authenticate = v;
        return v;
    }
    public function new(?_cmd:T_socksCommand, ?_proxyNetwork:String, ?_proxyAddress:String, ?proxyDial:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }, ?authMethods:Array<T_socksAuthMethod>, ?authenticate:(stdgo._internal.context.Context_Context.Context, stdgo._internal.io.Io_ReadWriter.ReadWriter, stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod) -> stdgo.Error) this = new stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer(_cmd, _proxyNetwork, _proxyAddress, proxyDial, ([for (i in authMethods) i] : stdgo.Slice<stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod>), authenticate);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_socksUsernamePassword_static_extension) abstract T_socksUsernamePassword(stdgo._internal.net.http.Http_T_socksUsernamePassword.T_socksUsernamePassword) from stdgo._internal.net.http.Http_T_socksUsernamePassword.T_socksUsernamePassword to stdgo._internal.net.http.Http_T_socksUsernamePassword.T_socksUsernamePassword {
    public var username(get, set) : String;
    function get_username():String return this.username;
    function set_username(v:String):String {
        this.username = v;
        return v;
    }
    public var password(get, set) : String;
    function get_password():String return this.password;
    function set_password(v:String):String {
        this.password = v;
        return v;
    }
    public function new(?username:String, ?password:String) this = new stdgo._internal.net.http.Http_T_socksUsernamePassword.T_socksUsernamePassword(username, password);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_errorReader_static_extension) abstract T_errorReader(stdgo._internal.net.http.Http_T_errorReader.T_errorReader) from stdgo._internal.net.http.Http_T_errorReader.T_errorReader to stdgo._internal.net.http.Http_T_errorReader.T_errorReader {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_err:stdgo.Error) this = new stdgo._internal.net.http.Http_T_errorReader.T_errorReader(_err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_byteReader_static_extension) abstract T_byteReader(stdgo._internal.net.http.Http_T_byteReader.T_byteReader) from stdgo._internal.net.http.Http_T_byteReader.T_byteReader to stdgo._internal.net.http.Http_T_byteReader.T_byteReader {
    public var _b(get, set) : std.UInt;
    function get__b():std.UInt return this._b;
    function set__b(v:std.UInt):std.UInt {
        this._b = v;
        return v;
    }
    public var _done(get, set) : Bool;
    function get__done():Bool return this._done;
    function set__done(v:Bool):Bool {
        this._done = v;
        return v;
    }
    public function new(?_b:std.UInt, ?_done:Bool) this = new stdgo._internal.net.http.Http_T_byteReader.T_byteReader(_b, _done);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_transferWriter_static_extension) abstract T_transferWriter(stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter) from stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter to stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter {
    public var method(get, set) : String;
    function get_method():String return this.method;
    function set_method(v:String):String {
        this.method = v;
        return v;
    }
    public var body(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get_body():stdgo._internal.io.Io_Reader.Reader return this.body;
    function set_body(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this.body = v;
        return v;
    }
    public var bodyCloser(get, set) : stdgo._internal.io.Io_Closer.Closer;
    function get_bodyCloser():stdgo._internal.io.Io_Closer.Closer return this.bodyCloser;
    function set_bodyCloser(v:stdgo._internal.io.Io_Closer.Closer):stdgo._internal.io.Io_Closer.Closer {
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
        this.contentLength = v;
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
        this.transferEncoding = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
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
    public var _bodyReadError(get, set) : stdgo.Error;
    function get__bodyReadError():stdgo.Error return this._bodyReadError;
    function set__bodyReadError(v:stdgo.Error):stdgo.Error {
        this._bodyReadError = v;
        return v;
    }
    public var flushHeaders(get, set) : Bool;
    function get_flushHeaders():Bool return this.flushHeaders;
    function set_flushHeaders(v:Bool):Bool {
        this.flushHeaders = v;
        return v;
    }
    public var byteReadCh(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_readResult.T_readResult>;
    function get_byteReadCh():stdgo.Chan<stdgo._internal.net.http.Http_T_readResult.T_readResult> return this.byteReadCh;
    function set_byteReadCh(v:stdgo.Chan<stdgo._internal.net.http.Http_T_readResult.T_readResult>):stdgo.Chan<stdgo._internal.net.http.Http_T_readResult.T_readResult> {
        this.byteReadCh = v;
        return v;
    }
    public function new(?method:String, ?body:stdgo._internal.io.Io_Reader.Reader, ?bodyCloser:stdgo._internal.io.Io_Closer.Closer, ?responseToHEAD:Bool, ?contentLength:haxe.Int64, ?close:Bool, ?transferEncoding:Array<String>, ?header:Header, ?trailer:Header, ?isResponse:Bool, ?_bodyReadError:stdgo.Error, ?flushHeaders:Bool, ?byteReadCh:stdgo.Chan<stdgo._internal.net.http.Http_T_readResult.T_readResult>) this = new stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter(
method,
body,
bodyCloser,
responseToHEAD,
contentLength,
close,
([for (i in transferEncoding) i] : stdgo.Slice<stdgo.GoString>),
header,
trailer,
isResponse,
_bodyReadError,
flushHeaders,
byteReadCh);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_transferReader_static_extension) abstract T_transferReader(stdgo._internal.net.http.Http_T_transferReader.T_transferReader) from stdgo._internal.net.http.Http_T_transferReader.T_transferReader to stdgo._internal.net.http.Http_T_transferReader.T_transferReader {
    public var header(get, set) : Header;
    function get_header():Header return this.header;
    function set_header(v:Header):Header {
        this.header = v;
        return v;
    }
    public var statusCode(get, set) : StdTypes.Int;
    function get_statusCode():StdTypes.Int return this.statusCode;
    function set_statusCode(v:StdTypes.Int):StdTypes.Int {
        this.statusCode = v;
        return v;
    }
    public var requestMethod(get, set) : String;
    function get_requestMethod():String return this.requestMethod;
    function set_requestMethod(v:String):String {
        this.requestMethod = v;
        return v;
    }
    public var protoMajor(get, set) : StdTypes.Int;
    function get_protoMajor():StdTypes.Int return this.protoMajor;
    function set_protoMajor(v:StdTypes.Int):StdTypes.Int {
        this.protoMajor = v;
        return v;
    }
    public var protoMinor(get, set) : StdTypes.Int;
    function get_protoMinor():StdTypes.Int return this.protoMinor;
    function set_protoMinor(v:StdTypes.Int):StdTypes.Int {
        this.protoMinor = v;
        return v;
    }
    public var body(get, set) : stdgo._internal.io.Io_ReadCloser.ReadCloser;
    function get_body():stdgo._internal.io.Io_ReadCloser.ReadCloser return this.body;
    function set_body(v:stdgo._internal.io.Io_ReadCloser.ReadCloser):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        this.body = v;
        return v;
    }
    public var contentLength(get, set) : haxe.Int64;
    function get_contentLength():haxe.Int64 return this.contentLength;
    function set_contentLength(v:haxe.Int64):haxe.Int64 {
        this.contentLength = v;
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
    public function new(?header:Header, ?statusCode:StdTypes.Int, ?requestMethod:String, ?protoMajor:StdTypes.Int, ?protoMinor:StdTypes.Int, ?body:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?contentLength:haxe.Int64, ?chunked:Bool, ?close:Bool, ?trailer:Header) this = new stdgo._internal.net.http.Http_T_transferReader.T_transferReader(header, statusCode, requestMethod, protoMajor, protoMinor, body, contentLength, chunked, close, trailer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_unsupportedTEError_static_extension) abstract T_unsupportedTEError(stdgo._internal.net.http.Http_T_unsupportedTEError.T_unsupportedTEError) from stdgo._internal.net.http.Http_T_unsupportedTEError.T_unsupportedTEError to stdgo._internal.net.http.Http_T_unsupportedTEError.T_unsupportedTEError {
    public var _err(get, set) : String;
    function get__err():String return this._err;
    function set__err(v:String):String {
        this._err = v;
        return v;
    }
    public function new(?_err:String) this = new stdgo._internal.net.http.Http_T_unsupportedTEError.T_unsupportedTEError(_err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_body_static_extension) abstract T_body(stdgo._internal.net.http.Http_T_body.T_body) from stdgo._internal.net.http.Http_T_body.T_body to stdgo._internal.net.http.Http_T_body.T_body {
    public var _src(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__src():stdgo._internal.io.Io_Reader.Reader return this._src;
    function set__src(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._src = v;
        return v;
    }
    public var _hdr(get, set) : stdgo.AnyInterface;
    function get__hdr():stdgo.AnyInterface return this._hdr;
    function set__hdr(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._hdr = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.bufio.Bufio_Reader.Reader;
    function get__r():stdgo._internal.bufio.Bufio_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.bufio.Bufio_Reader.Reader):stdgo._internal.bufio.Bufio_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _closing(get, set) : Bool;
    function get__closing():Bool return this._closing;
    function set__closing(v:Bool):Bool {
        this._closing = v;
        return v;
    }
    public var _doEarlyClose(get, set) : Bool;
    function get__doEarlyClose():Bool return this._doEarlyClose;
    function set__doEarlyClose(v:Bool):Bool {
        this._doEarlyClose = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _sawEOF(get, set) : Bool;
    function get__sawEOF():Bool return this._sawEOF;
    function set__sawEOF(v:Bool):Bool {
        this._sawEOF = v;
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _earlyClose(get, set) : Bool;
    function get__earlyClose():Bool return this._earlyClose;
    function set__earlyClose(v:Bool):Bool {
        this._earlyClose = v;
        return v;
    }
    public var _onHitEOF(get, set) : () -> Void;
    function get__onHitEOF():() -> Void return () -> this._onHitEOF();
    function set__onHitEOF(v:() -> Void):() -> Void {
        this._onHitEOF = v;
        return v;
    }
    public function new(?_src:stdgo._internal.io.Io_Reader.Reader, ?_hdr:stdgo.AnyInterface, ?_r:stdgo._internal.bufio.Bufio_Reader.Reader, ?_closing:Bool, ?_doEarlyClose:Bool, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_sawEOF:Bool, ?_closed:Bool, ?_earlyClose:Bool, ?_onHitEOF:() -> Void) this = new stdgo._internal.net.http.Http_T_body.T_body(_src, _hdr, _r, _closing, _doEarlyClose, _mu, _sawEOF, _closed, _earlyClose, _onHitEOF);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_bodyLocked_static_extension) abstract T_bodyLocked(stdgo._internal.net.http.Http_T_bodyLocked.T_bodyLocked) from stdgo._internal.net.http.Http_T_bodyLocked.T_bodyLocked to stdgo._internal.net.http.Http_T_bodyLocked.T_bodyLocked {
    public var _b(get, set) : T_body;
    function get__b():T_body return this._b;
    function set__b(v:T_body):T_body {
        this._b = v;
        return v;
    }
    public function new(?_b:T_body) this = new stdgo._internal.net.http.Http_T_bodyLocked.T_bodyLocked(_b);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_finishAsyncByteRead_static_extension) abstract T_finishAsyncByteRead(stdgo._internal.net.http.Http_T_finishAsyncByteRead.T_finishAsyncByteRead) from stdgo._internal.net.http.Http_T_finishAsyncByteRead.T_finishAsyncByteRead to stdgo._internal.net.http.Http_T_finishAsyncByteRead.T_finishAsyncByteRead {
    public var _tw(get, set) : T_transferWriter;
    function get__tw():T_transferWriter return this._tw;
    function set__tw(v:T_transferWriter):T_transferWriter {
        this._tw = v;
        return v;
    }
    public function new(?_tw:T_transferWriter) this = new stdgo._internal.net.http.Http_T_finishAsyncByteRead.T_finishAsyncByteRead(_tw);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_bufioFlushWriter_static_extension) abstract T_bufioFlushWriter(stdgo._internal.net.http.Http_T_bufioFlushWriter.T_bufioFlushWriter) from stdgo._internal.net.http.Http_T_bufioFlushWriter.T_bufioFlushWriter to stdgo._internal.net.http.Http_T_bufioFlushWriter.T_bufioFlushWriter {
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer) this = new stdgo._internal.net.http.Http_T_bufioFlushWriter.T_bufioFlushWriter(_w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.Transport_static_extension) abstract Transport(stdgo._internal.net.http.Http_Transport.Transport) from stdgo._internal.net.http.Http_Transport.Transport to stdgo._internal.net.http.Http_Transport.Transport {
    public var _idleMu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__idleMu():stdgo._internal.sync.Sync_Mutex.Mutex return this._idleMu;
    function set__idleMu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._idleMu = v;
        return v;
    }
    public var _closeIdle(get, set) : Bool;
    function get__closeIdle():Bool return this._closeIdle;
    function set__closeIdle(v:Bool):Bool {
        this._closeIdle = v;
        return v;
    }
    public var _idleConn(get, set) : stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>>>;
    function get__idleConn():stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>>> return this._idleConn;
    function set__idleConn(v:stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>>>):stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>>> {
        this._idleConn = v;
        return v;
    }
    public var _idleConnWait(get, set) : stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue>;
    function get__idleConnWait():stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue> return this._idleConnWait;
    function set__idleConnWait(v:stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue>):stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue> {
        this._idleConnWait = v;
        return v;
    }
    public var _idleLRU(get, set) : T_connLRU;
    function get__idleLRU():T_connLRU return this._idleLRU;
    function set__idleLRU(v:T_connLRU):T_connLRU {
        this._idleLRU = v;
        return v;
    }
    public var _reqMu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__reqMu():stdgo._internal.sync.Sync_Mutex.Mutex return this._reqMu;
    function set__reqMu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._reqMu = v;
        return v;
    }
    public var _reqCanceler(get, set) : stdgo.GoMap<stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey, stdgo.Error -> Void>;
    function get__reqCanceler():stdgo.GoMap<stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey, stdgo.Error -> Void> return this._reqCanceler;
    function set__reqCanceler(v:stdgo.GoMap<stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey, stdgo.Error -> Void>):stdgo.GoMap<stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey, stdgo.Error -> Void> {
        this._reqCanceler = v;
        return v;
    }
    public var _altMu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__altMu():stdgo._internal.sync.Sync_Mutex.Mutex return this._altMu;
    function set__altMu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._altMu = v;
        return v;
    }
    public var _altProto(get, set) : stdgo._internal.sync.atomic_.Atomic__Value.Value;
    function get__altProto():stdgo._internal.sync.atomic_.Atomic__Value.Value return this._altProto;
    function set__altProto(v:stdgo._internal.sync.atomic_.Atomic__Value.Value):stdgo._internal.sync.atomic_.Atomic__Value.Value {
        this._altProto = v;
        return v;
    }
    public var _connsPerHostMu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__connsPerHostMu():stdgo._internal.sync.Sync_Mutex.Mutex return this._connsPerHostMu;
    function set__connsPerHostMu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._connsPerHostMu = v;
        return v;
    }
    public var _connsPerHost(get, set) : stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo.GoInt>;
    function get__connsPerHost():stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo.GoInt> return this._connsPerHost;
    function set__connsPerHost(v:stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo.GoInt>):stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo.GoInt> {
        this._connsPerHost = v;
        return v;
    }
    public var _connsPerHostWait(get, set) : stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue>;
    function get__connsPerHostWait():stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue> return this._connsPerHostWait;
    function set__connsPerHostWait(v:stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue>):stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue> {
        this._connsPerHostWait = v;
        return v;
    }
    public var proxy(get, set) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : stdgo.Error; };
    function get_proxy():stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : stdgo.Error; } return _0 -> this.proxy(_0);
    function set_proxy(v:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : stdgo.Error; }):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : stdgo.Error; } {
        this.proxy = v;
        return v;
    }
    public var onProxyConnectResponse(get, set) : (stdgo._internal.context.Context_Context.Context, stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) -> stdgo.Error;
    function get_onProxyConnectResponse():(stdgo._internal.context.Context_Context.Context, stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) -> stdgo.Error return (_0, _1, _2, _3) -> this.onProxyConnectResponse(_0, _1, _2, _3);
    function set_onProxyConnectResponse(v:(stdgo._internal.context.Context_Context.Context, stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) -> stdgo.Error):(stdgo._internal.context.Context_Context.Context, stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) -> stdgo.Error {
        this.onProxyConnectResponse = v;
        return v;
    }
    public var dialContext(get, set) : (stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; };
    function get_dialContext():(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return (_0, _1, _2) -> this.dialContext(_0, _1, _2);
    function set_dialContext(v:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }):(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } {
        this.dialContext = v;
        return v;
    }
    public var dial(get, set) : (stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; };
    function get_dial():(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return (_0, _1) -> this.dial(_0, _1);
    function set_dial(v:(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }):(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } {
        this.dial = v;
        return v;
    }
    public var dialTLSContext(get, set) : (stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; };
    function get_dialTLSContext():(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return (_0, _1, _2) -> this.dialTLSContext(_0, _1, _2);
    function set_dialTLSContext(v:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }):(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } {
        this.dialTLSContext = v;
        return v;
    }
    public var dialTLS(get, set) : (stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; };
    function get_dialTLS():(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return (_0, _1) -> this.dialTLS(_0, _1);
    function set_dialTLS(v:(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }):(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } {
        this.dialTLS = v;
        return v;
    }
    public var tLSClientConfig(get, set) : stdgo._internal.crypto.tls.Tls_Config.Config;
    function get_tLSClientConfig():stdgo._internal.crypto.tls.Tls_Config.Config return this.tLSClientConfig;
    function set_tLSClientConfig(v:stdgo._internal.crypto.tls.Tls_Config.Config):stdgo._internal.crypto.tls.Tls_Config.Config {
        this.tLSClientConfig = v;
        return v;
    }
    public var tLSHandshakeTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_tLSHandshakeTimeout():stdgo._internal.time.Time_Duration.Duration return this.tLSHandshakeTimeout;
    function set_tLSHandshakeTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
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
        this.maxIdleConns = v;
        return v;
    }
    public var maxIdleConnsPerHost(get, set) : StdTypes.Int;
    function get_maxIdleConnsPerHost():StdTypes.Int return this.maxIdleConnsPerHost;
    function set_maxIdleConnsPerHost(v:StdTypes.Int):StdTypes.Int {
        this.maxIdleConnsPerHost = v;
        return v;
    }
    public var maxConnsPerHost(get, set) : StdTypes.Int;
    function get_maxConnsPerHost():StdTypes.Int return this.maxConnsPerHost;
    function set_maxConnsPerHost(v:StdTypes.Int):StdTypes.Int {
        this.maxConnsPerHost = v;
        return v;
    }
    public var idleConnTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_idleConnTimeout():stdgo._internal.time.Time_Duration.Duration return this.idleConnTimeout;
    function set_idleConnTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.idleConnTimeout = v;
        return v;
    }
    public var responseHeaderTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_responseHeaderTimeout():stdgo._internal.time.Time_Duration.Duration return this.responseHeaderTimeout;
    function set_responseHeaderTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.responseHeaderTimeout = v;
        return v;
    }
    public var expectContinueTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_expectContinueTimeout():stdgo._internal.time.Time_Duration.Duration return this.expectContinueTimeout;
    function set_expectContinueTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.expectContinueTimeout = v;
        return v;
    }
    public var tLSNextProto(get, set) : stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>) -> stdgo._internal.net.http.Http_RoundTripper.RoundTripper>;
    function get_tLSNextProto():stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>) -> stdgo._internal.net.http.Http_RoundTripper.RoundTripper> return this.tLSNextProto;
    function set_tLSNextProto(v:stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>) -> stdgo._internal.net.http.Http_RoundTripper.RoundTripper>):stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>) -> stdgo._internal.net.http.Http_RoundTripper.RoundTripper> {
        this.tLSNextProto = v;
        return v;
    }
    public var proxyConnectHeader(get, set) : Header;
    function get_proxyConnectHeader():Header return this.proxyConnectHeader;
    function set_proxyConnectHeader(v:Header):Header {
        this.proxyConnectHeader = v;
        return v;
    }
    public var getProxyConnectHeader(get, set) : (stdgo._internal.context.Context_Context.Context, stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, stdgo.GoString) -> { var _0 : stdgo._internal.net.http.Http_Header.Header; var _1 : stdgo.Error; };
    function get_getProxyConnectHeader():(stdgo._internal.context.Context_Context.Context, stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, stdgo.GoString) -> { var _0 : stdgo._internal.net.http.Http_Header.Header; var _1 : stdgo.Error; } return (_0, _1, _2) -> this.getProxyConnectHeader(_0, _1, _2);
    function set_getProxyConnectHeader(v:(stdgo._internal.context.Context_Context.Context, stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, stdgo.GoString) -> { var _0 : stdgo._internal.net.http.Http_Header.Header; var _1 : stdgo.Error; }):(stdgo._internal.context.Context_Context.Context, stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, stdgo.GoString) -> { var _0 : stdgo._internal.net.http.Http_Header.Header; var _1 : stdgo.Error; } {
        this.getProxyConnectHeader = v;
        return v;
    }
    public var maxResponseHeaderBytes(get, set) : haxe.Int64;
    function get_maxResponseHeaderBytes():haxe.Int64 return this.maxResponseHeaderBytes;
    function set_maxResponseHeaderBytes(v:haxe.Int64):haxe.Int64 {
        this.maxResponseHeaderBytes = v;
        return v;
    }
    public var writeBufferSize(get, set) : StdTypes.Int;
    function get_writeBufferSize():StdTypes.Int return this.writeBufferSize;
    function set_writeBufferSize(v:StdTypes.Int):StdTypes.Int {
        this.writeBufferSize = v;
        return v;
    }
    public var readBufferSize(get, set) : StdTypes.Int;
    function get_readBufferSize():StdTypes.Int return this.readBufferSize;
    function set_readBufferSize(v:StdTypes.Int):StdTypes.Int {
        this.readBufferSize = v;
        return v;
    }
    public var _nextProtoOnce(get, set) : stdgo._internal.sync.Sync_Once.Once;
    function get__nextProtoOnce():stdgo._internal.sync.Sync_Once.Once return this._nextProtoOnce;
    function set__nextProtoOnce(v:stdgo._internal.sync.Sync_Once.Once):stdgo._internal.sync.Sync_Once.Once {
        this._nextProtoOnce = v;
        return v;
    }
    public var _h2transport(get, set) : T_h2Transport;
    function get__h2transport():T_h2Transport return this._h2transport;
    function set__h2transport(v:T_h2Transport):T_h2Transport {
        this._h2transport = v;
        return v;
    }
    public var _tlsNextProtoWasNil(get, set) : Bool;
    function get__tlsNextProtoWasNil():Bool return this._tlsNextProtoWasNil;
    function set__tlsNextProtoWasNil(v:Bool):Bool {
        this._tlsNextProtoWasNil = v;
        return v;
    }
    public var forceAttemptHTTP2(get, set) : Bool;
    function get_forceAttemptHTTP2():Bool return this.forceAttemptHTTP2;
    function set_forceAttemptHTTP2(v:Bool):Bool {
        this.forceAttemptHTTP2 = v;
        return v;
    }
    public function new(?_idleMu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_closeIdle:Bool, ?_idleConn:stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>>>, ?_idleConnWait:stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue>, ?_idleLRU:T_connLRU, ?_reqMu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_reqCanceler:stdgo.GoMap<stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey, stdgo.Error -> Void>, ?_altMu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_altProto:stdgo._internal.sync.atomic_.Atomic__Value.Value, ?_connsPerHostMu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_connsPerHost:stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo.GoInt>, ?_connsPerHostWait:stdgo.GoMap<stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey, stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue>, ?proxy:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : stdgo.Error; }, ?onProxyConnectResponse:(stdgo._internal.context.Context_Context.Context, stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>) -> stdgo.Error, ?dialContext:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }, ?dial:(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }, ?dialTLSContext:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }, ?dialTLS:(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }, ?tLSClientConfig:stdgo._internal.crypto.tls.Tls_Config.Config, ?tLSHandshakeTimeout:stdgo._internal.time.Time_Duration.Duration, ?disableKeepAlives:Bool, ?disableCompression:Bool, ?maxIdleConns:StdTypes.Int, ?maxIdleConnsPerHost:StdTypes.Int, ?maxConnsPerHost:StdTypes.Int, ?idleConnTimeout:stdgo._internal.time.Time_Duration.Duration, ?responseHeaderTimeout:stdgo._internal.time.Time_Duration.Duration, ?expectContinueTimeout:stdgo._internal.time.Time_Duration.Duration, ?tLSNextProto:stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>) -> stdgo._internal.net.http.Http_RoundTripper.RoundTripper>, ?proxyConnectHeader:Header, ?getProxyConnectHeader:(stdgo._internal.context.Context_Context.Context, stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, stdgo.GoString) -> { var _0 : stdgo._internal.net.http.Http_Header.Header; var _1 : stdgo.Error; }, ?maxResponseHeaderBytes:haxe.Int64, ?writeBufferSize:StdTypes.Int, ?readBufferSize:StdTypes.Int, ?_nextProtoOnce:stdgo._internal.sync.Sync_Once.Once, ?_h2transport:T_h2Transport, ?_tlsNextProtoWasNil:Bool, ?forceAttemptHTTP2:Bool) this = new stdgo._internal.net.http.Http_Transport.Transport(
_idleMu,
_closeIdle,
_idleConn,
_idleConnWait,
_idleLRU,
_reqMu,
_reqCanceler,
_altMu,
_altProto,
_connsPerHostMu,
_connsPerHost,
_connsPerHostWait,
proxy,
onProxyConnectResponse,
dialContext,
dial,
dialTLSContext,
dialTLS,
tLSClientConfig,
tLSHandshakeTimeout,
disableKeepAlives,
disableCompression,
maxIdleConns,
maxIdleConnsPerHost,
maxConnsPerHost,
idleConnTimeout,
responseHeaderTimeout,
expectContinueTimeout,
tLSNextProto,
proxyConnectHeader,
getProxyConnectHeader,
maxResponseHeaderBytes,
writeBufferSize,
readBufferSize,
_nextProtoOnce,
_h2transport,
_tlsNextProtoWasNil,
forceAttemptHTTP2);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_cancelKey(stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey) from stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey to stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey {
    public var _req(get, set) : Request;
    function get__req():Request return this._req;
    function set__req(v:Request):Request {
        this._req = v;
        return v;
    }
    public function new(?_req:Request) this = new stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey(_req);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_transportRequest_static_extension) abstract T_transportRequest(stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest) from stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest to stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest {
    public var request(get, set) : Request;
    function get_request():Request return this.request;
    function set_request(v:Request):Request {
        this.request = v;
        return v;
    }
    public var _extra(get, set) : Header;
    function get__extra():Header return this._extra;
    function set__extra(v:Header):Header {
        this._extra = v;
        return v;
    }
    public var _trace(get, set) : ClientTrace;
    function get__trace():ClientTrace return this._trace;
    function set__trace(v:ClientTrace):ClientTrace {
        this._trace = v;
        return v;
    }
    public var _cancelKey(get, set) : T_cancelKey;
    function get__cancelKey():T_cancelKey return this._cancelKey;
    function set__cancelKey(v:T_cancelKey):T_cancelKey {
        this._cancelKey = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?request:Request, ?_extra:Header, ?_trace:ClientTrace, ?_cancelKey:T_cancelKey, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_err:stdgo.Error) this = new stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest(request, _extra, _trace, _cancelKey, _mu, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_readTrackingBody_static_extension) abstract T_readTrackingBody(stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody) from stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody to stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody {
    public var readCloser(get, set) : stdgo._internal.io.Io_ReadCloser.ReadCloser;
    function get_readCloser():stdgo._internal.io.Io_ReadCloser.ReadCloser return this.readCloser;
    function set_readCloser(v:stdgo._internal.io.Io_ReadCloser.ReadCloser):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        this.readCloser = v;
        return v;
    }
    public var _didRead(get, set) : Bool;
    function get__didRead():Bool return this._didRead;
    function set__didRead(v:Bool):Bool {
        this._didRead = v;
        return v;
    }
    public var _didClose(get, set) : Bool;
    function get__didClose():Bool return this._didClose;
    function set__didClose(v:Bool):Bool {
        this._didClose = v;
        return v;
    }
    public function new(?readCloser:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_didRead:Bool, ?_didClose:Bool) this = new stdgo._internal.net.http.Http_T_readTrackingBody.T_readTrackingBody(readCloser, _didRead, _didClose);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_transportReadFromServerError_static_extension) abstract T_transportReadFromServerError(stdgo._internal.net.http.Http_T_transportReadFromServerError.T_transportReadFromServerError) from stdgo._internal.net.http.Http_T_transportReadFromServerError.T_transportReadFromServerError to stdgo._internal.net.http.Http_T_transportReadFromServerError.T_transportReadFromServerError {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_err:stdgo.Error) this = new stdgo._internal.net.http.Http_T_transportReadFromServerError.T_transportReadFromServerError(_err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_wantConn_static_extension) abstract T_wantConn(stdgo._internal.net.http.Http_T_wantConn.T_wantConn) from stdgo._internal.net.http.Http_T_wantConn.T_wantConn to stdgo._internal.net.http.Http_T_wantConn.T_wantConn {
    public var _cm(get, set) : T_connectMethod;
    function get__cm():T_connectMethod return this._cm;
    function set__cm(v:T_connectMethod):T_connectMethod {
        this._cm = v;
        return v;
    }
    public var _key(get, set) : T_connectMethodKey;
    function get__key():T_connectMethodKey return this._key;
    function set__key(v:T_connectMethodKey):T_connectMethodKey {
        this._key = v;
        return v;
    }
    public var _ctx(get, set) : stdgo._internal.context.Context_Context.Context;
    function get__ctx():stdgo._internal.context.Context_Context.Context return this._ctx;
    function set__ctx(v:stdgo._internal.context.Context_Context.Context):stdgo._internal.context.Context_Context.Context {
        this._ctx = v;
        return v;
    }
    public var _ready(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>;
    function get__ready():stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> return this._ready;
    function set__ready(v:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> {
        this._ready = v;
        return v;
    }
    public var _beforeDial(get, set) : () -> Void;
    function get__beforeDial():() -> Void return () -> this._beforeDial();
    function set__beforeDial(v:() -> Void):() -> Void {
        this._beforeDial = v;
        return v;
    }
    public var _afterDial(get, set) : () -> Void;
    function get__afterDial():() -> Void return () -> this._afterDial();
    function set__afterDial(v:() -> Void):() -> Void {
        this._afterDial = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _pc(get, set) : T_persistConn;
    function get__pc():T_persistConn return this._pc;
    function set__pc(v:T_persistConn):T_persistConn {
        this._pc = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?_cm:T_connectMethod, ?_key:T_connectMethodKey, ?_ctx:stdgo._internal.context.Context_Context.Context, ?_ready:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_beforeDial:() -> Void, ?_afterDial:() -> Void, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_pc:T_persistConn, ?_err:stdgo.Error) this = new stdgo._internal.net.http.Http_T_wantConn.T_wantConn(_cm, _key, _ctx, _ready, _beforeDial, _afterDial, _mu, _pc, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_wantConnQueue_static_extension) abstract T_wantConnQueue(stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue) from stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue to stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue {
    public var _head(get, set) : Array<T_wantConn>;
    function get__head():Array<T_wantConn> return [for (i in this._head) i];
    function set__head(v:Array<T_wantConn>):Array<T_wantConn> {
        this._head = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>>);
        return v;
    }
    public var _headPos(get, set) : StdTypes.Int;
    function get__headPos():StdTypes.Int return this._headPos;
    function set__headPos(v:StdTypes.Int):StdTypes.Int {
        this._headPos = v;
        return v;
    }
    public var _tail(get, set) : Array<T_wantConn>;
    function get__tail():Array<T_wantConn> return [for (i in this._tail) i];
    function set__tail(v:Array<T_wantConn>):Array<T_wantConn> {
        this._tail = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>>);
        return v;
    }
    public function new(?_head:Array<T_wantConn>, ?_headPos:StdTypes.Int, ?_tail:Array<T_wantConn>) this = new stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue(([for (i in _head) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>>), _headPos, ([for (i in _tail) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_persistConnWriter_static_extension) abstract T_persistConnWriter(stdgo._internal.net.http.Http_T_persistConnWriter.T_persistConnWriter) from stdgo._internal.net.http.Http_T_persistConnWriter.T_persistConnWriter to stdgo._internal.net.http.Http_T_persistConnWriter.T_persistConnWriter {
    public var _pc(get, set) : T_persistConn;
    function get__pc():T_persistConn return this._pc;
    function set__pc(v:T_persistConn):T_persistConn {
        this._pc = v;
        return v;
    }
    public function new(?_pc:T_persistConn) this = new stdgo._internal.net.http.Http_T_persistConnWriter.T_persistConnWriter(_pc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_connectMethod_static_extension) abstract T_connectMethod(stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod) from stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod to stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod {
    public var __74(get, set) : T_incomparable;
    function get___74():T_incomparable return this.__74;
    function set___74(v:T_incomparable):T_incomparable {
        this.__74 = v;
        return v;
    }
    public var _proxyURL(get, set) : stdgo._internal.net.url.Url_URL.URL;
    function get__proxyURL():stdgo._internal.net.url.Url_URL.URL return this._proxyURL;
    function set__proxyURL(v:stdgo._internal.net.url.Url_URL.URL):stdgo._internal.net.url.Url_URL.URL {
        this._proxyURL = v;
        return v;
    }
    public var _targetScheme(get, set) : String;
    function get__targetScheme():String return this._targetScheme;
    function set__targetScheme(v:String):String {
        this._targetScheme = v;
        return v;
    }
    public var _targetAddr(get, set) : String;
    function get__targetAddr():String return this._targetAddr;
    function set__targetAddr(v:String):String {
        this._targetAddr = v;
        return v;
    }
    public var _onlyH1(get, set) : Bool;
    function get__onlyH1():Bool return this._onlyH1;
    function set__onlyH1(v:Bool):Bool {
        this._onlyH1 = v;
        return v;
    }
    public function new(?__74:T_incomparable, ?_proxyURL:stdgo._internal.net.url.Url_URL.URL, ?_targetScheme:String, ?_targetAddr:String, ?_onlyH1:Bool) this = new stdgo._internal.net.http.Http_T_connectMethod.T_connectMethod(__74, _proxyURL, _targetScheme, _targetAddr, _onlyH1);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_connectMethodKey_static_extension) abstract T_connectMethodKey(stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey) from stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey to stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey {
    public var _proxy(get, set) : String;
    function get__proxy():String return this._proxy;
    function set__proxy(v:String):String {
        this._proxy = v;
        return v;
    }
    public var _scheme(get, set) : String;
    function get__scheme():String return this._scheme;
    function set__scheme(v:String):String {
        this._scheme = v;
        return v;
    }
    public var _addr(get, set) : String;
    function get__addr():String return this._addr;
    function set__addr(v:String):String {
        this._addr = v;
        return v;
    }
    public var _onlyH1(get, set) : Bool;
    function get__onlyH1():Bool return this._onlyH1;
    function set__onlyH1(v:Bool):Bool {
        this._onlyH1 = v;
        return v;
    }
    public function new(?_proxy:String, ?_scheme:String, ?_addr:String, ?_onlyH1:Bool) this = new stdgo._internal.net.http.Http_T_connectMethodKey.T_connectMethodKey(_proxy, _scheme, _addr, _onlyH1);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_persistConn_static_extension) abstract T_persistConn(stdgo._internal.net.http.Http_T_persistConn.T_persistConn) from stdgo._internal.net.http.Http_T_persistConn.T_persistConn to stdgo._internal.net.http.Http_T_persistConn.T_persistConn {
    public var _alt(get, set) : RoundTripper;
    function get__alt():RoundTripper return this._alt;
    function set__alt(v:RoundTripper):RoundTripper {
        this._alt = v;
        return v;
    }
    public var _t(get, set) : Transport;
    function get__t():Transport return this._t;
    function set__t(v:Transport):Transport {
        this._t = v;
        return v;
    }
    public var _cacheKey(get, set) : T_connectMethodKey;
    function get__cacheKey():T_connectMethodKey return this._cacheKey;
    function set__cacheKey(v:T_connectMethodKey):T_connectMethodKey {
        this._cacheKey = v;
        return v;
    }
    public var _conn(get, set) : stdgo._internal.net.Net_Conn.Conn;
    function get__conn():stdgo._internal.net.Net_Conn.Conn return this._conn;
    function set__conn(v:stdgo._internal.net.Net_Conn.Conn):stdgo._internal.net.Net_Conn.Conn {
        this._conn = v;
        return v;
    }
    public var _tlsState(get, set) : stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState;
    function get__tlsState():stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState return this._tlsState;
    function set__tlsState(v:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState):stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState {
        this._tlsState = v;
        return v;
    }
    public var _br(get, set) : stdgo._internal.bufio.Bufio_Reader.Reader;
    function get__br():stdgo._internal.bufio.Bufio_Reader.Reader return this._br;
    function set__br(v:stdgo._internal.bufio.Bufio_Reader.Reader):stdgo._internal.bufio.Bufio_Reader.Reader {
        this._br = v;
        return v;
    }
    public var _bw(get, set) : stdgo._internal.bufio.Bufio_Writer.Writer;
    function get__bw():stdgo._internal.bufio.Bufio_Writer.Writer return this._bw;
    function set__bw(v:stdgo._internal.bufio.Bufio_Writer.Writer):stdgo._internal.bufio.Bufio_Writer.Writer {
        this._bw = v;
        return v;
    }
    public var _nwrite(get, set) : haxe.Int64;
    function get__nwrite():haxe.Int64 return this._nwrite;
    function set__nwrite(v:haxe.Int64):haxe.Int64 {
        this._nwrite = v;
        return v;
    }
    public var _reqch(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan>;
    function get__reqch():stdgo.Chan<stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan> return this._reqch;
    function set__reqch(v:stdgo.Chan<stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan>):stdgo.Chan<stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan> {
        this._reqch = v;
        return v;
    }
    public var _writech(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_writeRequest.T_writeRequest>;
    function get__writech():stdgo.Chan<stdgo._internal.net.http.Http_T_writeRequest.T_writeRequest> return this._writech;
    function set__writech(v:stdgo.Chan<stdgo._internal.net.http.Http_T_writeRequest.T_writeRequest>):stdgo.Chan<stdgo._internal.net.http.Http_T_writeRequest.T_writeRequest> {
        this._writech = v;
        return v;
    }
    public var _closech(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>;
    function get__closech():stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> return this._closech;
    function set__closech(v:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> {
        this._closech = v;
        return v;
    }
    public var _isProxy(get, set) : Bool;
    function get__isProxy():Bool return this._isProxy;
    function set__isProxy(v:Bool):Bool {
        this._isProxy = v;
        return v;
    }
    public var _sawEOF(get, set) : Bool;
    function get__sawEOF():Bool return this._sawEOF;
    function set__sawEOF(v:Bool):Bool {
        this._sawEOF = v;
        return v;
    }
    public var _readLimit(get, set) : haxe.Int64;
    function get__readLimit():haxe.Int64 return this._readLimit;
    function set__readLimit(v:haxe.Int64):haxe.Int64 {
        this._readLimit = v;
        return v;
    }
    public var _writeErrCh(get, set) : stdgo.Chan<stdgo.Error>;
    function get__writeErrCh():stdgo.Chan<stdgo.Error> return this._writeErrCh;
    function set__writeErrCh(v:stdgo.Chan<stdgo.Error>):stdgo.Chan<stdgo.Error> {
        this._writeErrCh = v;
        return v;
    }
    public var _writeLoopDone(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>;
    function get__writeLoopDone():stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> return this._writeLoopDone;
    function set__writeLoopDone(v:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> {
        this._writeLoopDone = v;
        return v;
    }
    public var _idleAt(get, set) : stdgo._internal.time.Time_Time.Time;
    function get__idleAt():stdgo._internal.time.Time_Time.Time return this._idleAt;
    function set__idleAt(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this._idleAt = v;
        return v;
    }
    public var _idleTimer(get, set) : stdgo._internal.time.Time_Timer.Timer;
    function get__idleTimer():stdgo._internal.time.Time_Timer.Timer return this._idleTimer;
    function set__idleTimer(v:stdgo._internal.time.Time_Timer.Timer):stdgo._internal.time.Time_Timer.Timer {
        this._idleTimer = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _numExpectedResponses(get, set) : StdTypes.Int;
    function get__numExpectedResponses():StdTypes.Int return this._numExpectedResponses;
    function set__numExpectedResponses(v:StdTypes.Int):StdTypes.Int {
        this._numExpectedResponses = v;
        return v;
    }
    public var _closed(get, set) : stdgo.Error;
    function get__closed():stdgo.Error return this._closed;
    function set__closed(v:stdgo.Error):stdgo.Error {
        this._closed = v;
        return v;
    }
    public var _canceledErr(get, set) : stdgo.Error;
    function get__canceledErr():stdgo.Error return this._canceledErr;
    function set__canceledErr(v:stdgo.Error):stdgo.Error {
        this._canceledErr = v;
        return v;
    }
    public var _broken(get, set) : Bool;
    function get__broken():Bool return this._broken;
    function set__broken(v:Bool):Bool {
        this._broken = v;
        return v;
    }
    public var _reused(get, set) : Bool;
    function get__reused():Bool return this._reused;
    function set__reused(v:Bool):Bool {
        this._reused = v;
        return v;
    }
    public var _mutateHeaderFunc(get, set) : stdgo._internal.net.http.Http_Header.Header -> Void;
    function get__mutateHeaderFunc():stdgo._internal.net.http.Http_Header.Header -> Void return _0 -> this._mutateHeaderFunc(_0);
    function set__mutateHeaderFunc(v:stdgo._internal.net.http.Http_Header.Header -> Void):stdgo._internal.net.http.Http_Header.Header -> Void {
        this._mutateHeaderFunc = v;
        return v;
    }
    public function new(?_alt:RoundTripper, ?_t:Transport, ?_cacheKey:T_connectMethodKey, ?_conn:stdgo._internal.net.Net_Conn.Conn, ?_tlsState:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState, ?_br:stdgo._internal.bufio.Bufio_Reader.Reader, ?_bw:stdgo._internal.bufio.Bufio_Writer.Writer, ?_nwrite:haxe.Int64, ?_reqch:stdgo.Chan<stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan>, ?_writech:stdgo.Chan<stdgo._internal.net.http.Http_T_writeRequest.T_writeRequest>, ?_closech:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_isProxy:Bool, ?_sawEOF:Bool, ?_readLimit:haxe.Int64, ?_writeErrCh:stdgo.Chan<stdgo.Error>, ?_writeLoopDone:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_idleAt:stdgo._internal.time.Time_Time.Time, ?_idleTimer:stdgo._internal.time.Time_Timer.Timer, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_numExpectedResponses:StdTypes.Int, ?_closed:stdgo.Error, ?_canceledErr:stdgo.Error, ?_broken:Bool, ?_reused:Bool, ?_mutateHeaderFunc:stdgo._internal.net.http.Http_Header.Header -> Void) this = new stdgo._internal.net.http.Http_T_persistConn.T_persistConn(
_alt,
_t,
_cacheKey,
_conn,
_tlsState,
_br,
_bw,
_nwrite,
_reqch,
_writech,
_closech,
_isProxy,
_sawEOF,
_readLimit,
_writeErrCh,
_writeLoopDone,
_idleAt,
_idleTimer,
_mu,
_numExpectedResponses,
_closed,
_canceledErr,
_broken,
_reused,
_mutateHeaderFunc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_readWriteCloserBody_static_extension) abstract T_readWriteCloserBody(stdgo._internal.net.http.Http_T_readWriteCloserBody.T_readWriteCloserBody) from stdgo._internal.net.http.Http_T_readWriteCloserBody.T_readWriteCloserBody to stdgo._internal.net.http.Http_T_readWriteCloserBody.T_readWriteCloserBody {
    public var __79(get, set) : T_incomparable;
    function get___79():T_incomparable return this.__79;
    function set___79(v:T_incomparable):T_incomparable {
        this.__79 = v;
        return v;
    }
    public var _br(get, set) : stdgo._internal.bufio.Bufio_Reader.Reader;
    function get__br():stdgo._internal.bufio.Bufio_Reader.Reader return this._br;
    function set__br(v:stdgo._internal.bufio.Bufio_Reader.Reader):stdgo._internal.bufio.Bufio_Reader.Reader {
        this._br = v;
        return v;
    }
    public var readWriteCloser(get, set) : stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser;
    function get_readWriteCloser():stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser return this.readWriteCloser;
    function set_readWriteCloser(v:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser {
        this.readWriteCloser = v;
        return v;
    }
    public function new(?__79:T_incomparable, ?_br:stdgo._internal.bufio.Bufio_Reader.Reader, ?readWriteCloser:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser) this = new stdgo._internal.net.http.Http_T_readWriteCloserBody.T_readWriteCloserBody(__79, _br, readWriteCloser);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_nothingWrittenError_static_extension) abstract T_nothingWrittenError(stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError) from stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError to stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError {
    public var _error(get, set) : stdgo.Error;
    function get__error():stdgo.Error return this._error;
    function set__error(v:stdgo.Error):stdgo.Error {
        this._error = v;
        return v;
    }
    public function new(?_error:stdgo.Error) this = new stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError(_error);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_responseAndError(stdgo._internal.net.http.Http_T_responseAndError.T_responseAndError) from stdgo._internal.net.http.Http_T_responseAndError.T_responseAndError to stdgo._internal.net.http.Http_T_responseAndError.T_responseAndError {
    public var __81(get, set) : T_incomparable;
    function get___81():T_incomparable return this.__81;
    function set___81(v:T_incomparable):T_incomparable {
        this.__81 = v;
        return v;
    }
    public var _res(get, set) : Response;
    function get__res():Response return this._res;
    function set__res(v:Response):Response {
        this._res = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = v;
        return v;
    }
    public function new(?__81:T_incomparable, ?_res:Response, ?_err:stdgo.Error) this = new stdgo._internal.net.http.Http_T_responseAndError.T_responseAndError(__81, _res, _err);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_requestAndChan(stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan) from stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan to stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan {
    public var __83(get, set) : T_incomparable;
    function get___83():T_incomparable return this.__83;
    function set___83(v:T_incomparable):T_incomparable {
        this.__83 = v;
        return v;
    }
    public var _req(get, set) : Request;
    function get__req():Request return this._req;
    function set__req(v:Request):Request {
        this._req = v;
        return v;
    }
    public var _cancelKey(get, set) : T_cancelKey;
    function get__cancelKey():T_cancelKey return this._cancelKey;
    function set__cancelKey(v:T_cancelKey):T_cancelKey {
        this._cancelKey = v;
        return v;
    }
    public var _ch(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_responseAndError.T_responseAndError>;
    function get__ch():stdgo.Chan<stdgo._internal.net.http.Http_T_responseAndError.T_responseAndError> return this._ch;
    function set__ch(v:stdgo.Chan<stdgo._internal.net.http.Http_T_responseAndError.T_responseAndError>):stdgo.Chan<stdgo._internal.net.http.Http_T_responseAndError.T_responseAndError> {
        this._ch = v;
        return v;
    }
    public var _addedGzip(get, set) : Bool;
    function get__addedGzip():Bool return this._addedGzip;
    function set__addedGzip(v:Bool):Bool {
        this._addedGzip = v;
        return v;
    }
    public var _continueCh(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>;
    function get__continueCh():stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> return this._continueCh;
    function set__continueCh(v:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> {
        this._continueCh = v;
        return v;
    }
    public var _callerGone(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>;
    function get__callerGone():stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> return this._callerGone;
    function set__callerGone(v:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> {
        this._callerGone = v;
        return v;
    }
    public function new(?__83:T_incomparable, ?_req:Request, ?_cancelKey:T_cancelKey, ?_ch:stdgo.Chan<stdgo._internal.net.http.Http_T_responseAndError.T_responseAndError>, ?_addedGzip:Bool, ?_continueCh:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, ?_callerGone:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>) this = new stdgo._internal.net.http.Http_T_requestAndChan.T_requestAndChan(__83, _req, _cancelKey, _ch, _addedGzip, _continueCh, _callerGone);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_writeRequest(stdgo._internal.net.http.Http_T_writeRequest.T_writeRequest) from stdgo._internal.net.http.Http_T_writeRequest.T_writeRequest to stdgo._internal.net.http.Http_T_writeRequest.T_writeRequest {
    public var _req(get, set) : T_transportRequest;
    function get__req():T_transportRequest return this._req;
    function set__req(v:T_transportRequest):T_transportRequest {
        this._req = v;
        return v;
    }
    public var _ch(get, set) : stdgo.Chan<stdgo.Error>;
    function get__ch():stdgo.Chan<stdgo.Error> return this._ch;
    function set__ch(v:stdgo.Chan<stdgo.Error>):stdgo.Chan<stdgo.Error> {
        this._ch = v;
        return v;
    }
    public var _continueCh(get, set) : stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>;
    function get__continueCh():stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> return this._continueCh;
    function set__continueCh(v:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> {
        this._continueCh = v;
        return v;
    }
    public function new(?_req:T_transportRequest, ?_ch:stdgo.Chan<stdgo.Error>, ?_continueCh:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>) this = new stdgo._internal.net.http.Http_T_writeRequest.T_writeRequest(_req, _ch, _continueCh);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_httpError_static_extension) abstract T_httpError(stdgo._internal.net.http.Http_T_httpError.T_httpError) from stdgo._internal.net.http.Http_T_httpError.T_httpError to stdgo._internal.net.http.Http_T_httpError.T_httpError {
    public var _err(get, set) : String;
    function get__err():String return this._err;
    function set__err(v:String):String {
        this._err = v;
        return v;
    }
    public var _timeout(get, set) : Bool;
    function get__timeout():Bool return this._timeout;
    function set__timeout(v:Bool):Bool {
        this._timeout = v;
        return v;
    }
    public function new(?_err:String, ?_timeout:Bool) this = new stdgo._internal.net.http.Http_T_httpError.T_httpError(_err, _timeout);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_tLogKey(stdgo._internal.net.http.Http_T_tLogKey.T_tLogKey) from stdgo._internal.net.http.Http_T_tLogKey.T_tLogKey to stdgo._internal.net.http.Http_T_tLogKey.T_tLogKey {
    public function new() this = new stdgo._internal.net.http.Http_T_tLogKey.T_tLogKey();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_bodyEOFSignal_static_extension) abstract T_bodyEOFSignal(stdgo._internal.net.http.Http_T_bodyEOFSignal.T_bodyEOFSignal) from stdgo._internal.net.http.Http_T_bodyEOFSignal.T_bodyEOFSignal to stdgo._internal.net.http.Http_T_bodyEOFSignal.T_bodyEOFSignal {
    public var _body(get, set) : stdgo._internal.io.Io_ReadCloser.ReadCloser;
    function get__body():stdgo._internal.io.Io_ReadCloser.ReadCloser return this._body;
    function set__body(v:stdgo._internal.io.Io_ReadCloser.ReadCloser):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        this._body = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _rerr(get, set) : stdgo.Error;
    function get__rerr():stdgo.Error return this._rerr;
    function set__rerr(v:stdgo.Error):stdgo.Error {
        this._rerr = v;
        return v;
    }
    public var _fn(get, set) : stdgo.Error -> stdgo.Error;
    function get__fn():stdgo.Error -> stdgo.Error return _0 -> this._fn(_0);
    function set__fn(v:stdgo.Error -> stdgo.Error):stdgo.Error -> stdgo.Error {
        this._fn = v;
        return v;
    }
    public var _earlyCloseFn(get, set) : () -> stdgo.Error;
    function get__earlyCloseFn():() -> stdgo.Error return () -> this._earlyCloseFn();
    function set__earlyCloseFn(v:() -> stdgo.Error):() -> stdgo.Error {
        this._earlyCloseFn = v;
        return v;
    }
    public function new(?_body:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_closed:Bool, ?_rerr:stdgo.Error, ?_fn:stdgo.Error -> stdgo.Error, ?_earlyCloseFn:() -> stdgo.Error) this = new stdgo._internal.net.http.Http_T_bodyEOFSignal.T_bodyEOFSignal(_body, _mu, _closed, _rerr, _fn, _earlyCloseFn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_gzipReader_static_extension) abstract T_gzipReader(stdgo._internal.net.http.Http_T_gzipReader.T_gzipReader) from stdgo._internal.net.http.Http_T_gzipReader.T_gzipReader to stdgo._internal.net.http.Http_T_gzipReader.T_gzipReader {
    public var __88(get, set) : T_incomparable;
    function get___88():T_incomparable return this.__88;
    function set___88(v:T_incomparable):T_incomparable {
        this.__88 = v;
        return v;
    }
    public var _body(get, set) : T_bodyEOFSignal;
    function get__body():T_bodyEOFSignal return this._body;
    function set__body(v:T_bodyEOFSignal):T_bodyEOFSignal {
        this._body = v;
        return v;
    }
    public var _zr(get, set) : stdgo._internal.compress.gzip.Gzip_Reader.Reader;
    function get__zr():stdgo._internal.compress.gzip.Gzip_Reader.Reader return this._zr;
    function set__zr(v:stdgo._internal.compress.gzip.Gzip_Reader.Reader):stdgo._internal.compress.gzip.Gzip_Reader.Reader {
        this._zr = v;
        return v;
    }
    public var _zerr(get, set) : stdgo.Error;
    function get__zerr():stdgo.Error return this._zerr;
    function set__zerr(v:stdgo.Error):stdgo.Error {
        this._zerr = v;
        return v;
    }
    public function new(?__88:T_incomparable, ?_body:T_bodyEOFSignal, ?_zr:stdgo._internal.compress.gzip.Gzip_Reader.Reader, ?_zerr:stdgo.Error) this = new stdgo._internal.net.http.Http_T_gzipReader.T_gzipReader(__88, _body, _zr, _zerr);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_tlsHandshakeTimeoutError_static_extension) abstract T_tlsHandshakeTimeoutError(stdgo._internal.net.http.Http_T_tlsHandshakeTimeoutError.T_tlsHandshakeTimeoutError) from stdgo._internal.net.http.Http_T_tlsHandshakeTimeoutError.T_tlsHandshakeTimeoutError to stdgo._internal.net.http.Http_T_tlsHandshakeTimeoutError.T_tlsHandshakeTimeoutError {
    public function new() this = new stdgo._internal.net.http.Http_T_tlsHandshakeTimeoutError.T_tlsHandshakeTimeoutError();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_fakeLocker_static_extension) abstract T_fakeLocker(stdgo._internal.net.http.Http_T_fakeLocker.T_fakeLocker) from stdgo._internal.net.http.Http_T_fakeLocker.T_fakeLocker to stdgo._internal.net.http.Http_T_fakeLocker.T_fakeLocker {
    public function new() this = new stdgo._internal.net.http.Http_T_fakeLocker.T_fakeLocker();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.net.http.Http.T_connLRU_static_extension) abstract T_connLRU(stdgo._internal.net.http.Http_T_connLRU.T_connLRU) from stdgo._internal.net.http.Http_T_connLRU.T_connLRU to stdgo._internal.net.http.Http_T_connLRU.T_connLRU {
    public var _ll(get, set) : stdgo._internal.container.list.List_List.List;
    function get__ll():stdgo._internal.container.list.List_List.List return this._ll;
    function set__ll(v:stdgo._internal.container.list.List_List.List):stdgo._internal.container.list.List_List.List {
        this._ll = v;
        return v;
    }
    public var _m(get, set) : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, stdgo.Ref<stdgo._internal.container.list.List_Element.Element>>;
    function get__m():stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, stdgo.Ref<stdgo._internal.container.list.List_Element.Element>> return this._m;
    function set__m(v:stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, stdgo.Ref<stdgo._internal.container.list.List_Element.Element>>):stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, stdgo.Ref<stdgo._internal.container.list.List_Element.Element>> {
        this._m = v;
        return v;
    }
    public function new(?_ll:stdgo._internal.container.list.List_List.List, ?_m:stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, stdgo.Ref<stdgo._internal.container.list.List_Element.Element>>) this = new stdgo._internal.net.http.Http_T_connLRU.T_connLRU(_ll, _m);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T__struct_0Pointer = stdgo._internal.net.http.Http_T__struct_0Pointer.T__struct_0Pointer;
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.net.http.Http_T__struct_0.T__struct_0;
typedef T__struct_1Pointer = stdgo._internal.net.http.Http_T__struct_1Pointer.T__struct_1Pointer;
class T__struct_1_static_extension {
    public static function read(__self__:stdgo._internal.net.http.Http_T__struct_1.T__struct_1, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T__struct_1_static_extension.T__struct_1_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function close(__self__:stdgo._internal.net.http.Http_T__struct_1.T__struct_1):stdgo.Error {
        return stdgo._internal.net.http.Http_T__struct_1_static_extension.T__struct_1_static_extension.close(__self__);
    }
}
typedef T__struct_1 = stdgo._internal.net.http.Http_T__struct_1.T__struct_1;
typedef T__struct_2Pointer = stdgo._internal.net.http.Http_T__struct_2Pointer.T__struct_2Pointer;
class T__struct_2_static_extension {
    public static function writeTo(__self__:stdgo._internal.net.http.Http_T__struct_2.T__struct_2, _0:stdgo._internal.io.Io_Writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T__struct_2_static_extension.T__struct_2_static_extension.writeTo(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function read(__self__:stdgo._internal.net.http.Http_T__struct_2.T__struct_2, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T__struct_2_static_extension.T__struct_2_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T__struct_2 = stdgo._internal.net.http.Http_T__struct_2.T__struct_2;
typedef SameSite = stdgo._internal.net.http.Http_SameSite.SameSite;
typedef Dir = stdgo._internal.net.http.Http_Dir.Dir;
typedef T_fileInfoDirs = stdgo._internal.net.http.Http_T_fileInfoDirs.T_fileInfoDirs;
typedef T_dirEntryDirs = stdgo._internal.net.http.Http_T_dirEntryDirs.T_dirEntryDirs;
typedef T_condResult = stdgo._internal.net.http.Http_T_condResult.T_condResult;
typedef T_countingWriter = stdgo._internal.net.http.Http_T_countingWriter.T_countingWriter;
typedef T_http2ErrCode = stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode;
typedef T_http2ConnectionError = stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError;
typedef T_http2pseudoHeaderError = stdgo._internal.net.http.Http_T_http2pseudoHeaderError.T_http2pseudoHeaderError;
typedef T_http2duplicatePseudoHeaderError = stdgo._internal.net.http.Http_T_http2duplicatePseudoHeaderError.T_http2duplicatePseudoHeaderError;
typedef T_http2headerFieldNameError = stdgo._internal.net.http.Http_T_http2headerFieldNameError.T_http2headerFieldNameError;
typedef T_http2headerFieldValueError = stdgo._internal.net.http.Http_T_http2headerFieldValueError.T_http2headerFieldValueError;
typedef T_http2FrameType = stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType;
typedef T_http2Flags = stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags;
typedef T_http2frameParser = stdgo._internal.net.http.Http_T_http2frameParser.T_http2frameParser;
typedef T_http2goroutineLock = stdgo._internal.net.http.Http_T_http2goroutineLock.T_http2goroutineLock;
typedef T_http2streamState = stdgo._internal.net.http.Http_T_http2streamState.T_http2streamState;
typedef T_http2SettingID = stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID;
typedef T_http2gate = stdgo._internal.net.http.Http_T_http2gate.T_http2gate;
typedef T_http2closeWaiter = stdgo._internal.net.http.Http_T_http2closeWaiter.T_http2closeWaiter;
typedef T_http2incomparable = stdgo._internal.net.http.Http_T_http2incomparable.T_http2incomparable;
typedef T_http2serverMessage = stdgo._internal.net.http.Http_T_http2serverMessage.T_http2serverMessage;
typedef T_http2writeSettings = stdgo._internal.net.http.Http_T_http2writeSettings.T_http2writeSettings;
typedef T_http2writeQueuePool = stdgo._internal.net.http.Http_T_http2writeQueuePool.T_http2writeQueuePool;
typedef T_http2priorityNodeState = stdgo._internal.net.http.Http_T_http2priorityNodeState.T_http2priorityNodeState;
typedef T_http2sortPriorityNodeSiblings = stdgo._internal.net.http.Http_T_http2sortPriorityNodeSiblings.T_http2sortPriorityNodeSiblings;
typedef Header = stdgo._internal.net.http.Http_Header.Header;
typedef T_incomparable = stdgo._internal.net.http.Http_T_incomparable.T_incomparable;
typedef HandlerFunc = stdgo._internal.net.http.Http_HandlerFunc.HandlerFunc;
typedef ConnState = stdgo._internal.net.http.Http_ConnState.ConnState;
typedef T_htmlSig = stdgo._internal.net.http.Http_T_htmlSig.T_htmlSig;
typedef T_socksCommand = stdgo._internal.net.http.Http_T_socksCommand.T_socksCommand;
typedef T_socksAuthMethod = stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod;
typedef T_socksReply = stdgo._internal.net.http.Http_T_socksReply.T_socksReply;
class T__setRequestCancel___localname___canceler_13723_static_extension {
    static public function cancelRequest(t:stdgo._internal.net.http.Http_T__setRequestCancel___localname___canceler_13723.T__setRequestCancel___localname___canceler_13723, _0:Request):Void {
        stdgo._internal.net.http.Http_T__setRequestCancel___localname___canceler_13723_static_extension.T__setRequestCancel___localname___canceler_13723_static_extension.cancelRequest(t, _0);
    }
}
typedef T__setRequestCancel___localname___canceler_13723 = stdgo._internal.net.http.Http_T__setRequestCancel___localname___canceler_13723.T__setRequestCancel___localname___canceler_13723;
class T__http2ConfigureServer___localname___baseContexter_139945_static_extension {
    static public function baseContext(t:stdgo._internal.net.http.Http_T__http2ConfigureServer___localname___baseContexter_139945.T__http2ConfigureServer___localname___baseContexter_139945):stdgo._internal.context.Context_Context.Context {
        return stdgo._internal.net.http.Http_T__http2ConfigureServer___localname___baseContexter_139945_static_extension.T__http2ConfigureServer___localname___baseContexter_139945_static_extension.baseContext(t);
    }
}
typedef T__http2ConfigureServer___localname___baseContexter_139945 = stdgo._internal.net.http.Http_T__http2ConfigureServer___localname___baseContexter_139945.T__http2ConfigureServer___localname___baseContexter_139945;
class T__http2h1ServerKeepAlivesDisabled___localname___I_235671_static_extension {
    static public function _doKeepAlives(t:stdgo._internal.net.http.Http_T__http2h1ServerKeepAlivesDisabled___localname___I_235671.T__http2h1ServerKeepAlivesDisabled___localname___I_235671):Bool {
        return stdgo._internal.net.http.Http_T__http2h1ServerKeepAlivesDisabled___localname___I_235671_static_extension.T__http2h1ServerKeepAlivesDisabled___localname___I_235671_static_extension._doKeepAlives(t);
    }
}
typedef T__http2h1ServerKeepAlivesDisabled___localname___I_235671 = stdgo._internal.net.http.Http_T__http2h1ServerKeepAlivesDisabled___localname___I_235671.T__http2h1ServerKeepAlivesDisabled___localname___I_235671;
typedef ClientPointer = stdgo._internal.net.http.Http_ClientPointer.ClientPointer;
class Client_static_extension {
    static public function closeIdleConnections(_c:Client):Void {
        stdgo._internal.net.http.Http_Client_static_extension.Client_static_extension.closeIdleConnections(_c);
    }
    static public function head(_c:Client, _url:String):stdgo.Tuple<Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_Client_static_extension.Client_static_extension.head(_c, _url);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function postForm(_c:Client, _url:String, _data:stdgo._internal.net.url.Url_Values.Values):stdgo.Tuple<Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_Client_static_extension.Client_static_extension.postForm(_c, _url, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function post(_c:Client, _url:String, _contentType:String, _body:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_Client_static_extension.Client_static_extension.post(_c, _url, _contentType, _body);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _makeHeadersCopier(_c:Client, _ireq:Request):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> Void {
        return _0 -> stdgo._internal.net.http.Http_Client_static_extension.Client_static_extension._makeHeadersCopier(_c, _ireq)(_0);
    }
    static public function _do(_c:Client, _req:Request):stdgo.Tuple<Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_Client_static_extension.Client_static_extension._do(_c, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function do_(_c:Client, _req:Request):stdgo.Tuple<Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_Client_static_extension.Client_static_extension.do_(_c, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _checkRedirect(_c:Client, _req:Request, _via:Array<Request>):stdgo.Error {
        final _via = ([for (i in _via) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>>);
        return stdgo._internal.net.http.Http_Client_static_extension.Client_static_extension._checkRedirect(_c, _req, _via);
    }
    static public function get(_c:Client, _url:String):stdgo.Tuple<Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_Client_static_extension.Client_static_extension.get(_c, _url);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _transport(_c:Client):RoundTripper {
        return stdgo._internal.net.http.Http_Client_static_extension.Client_static_extension._transport(_c);
    }
    static public function _deadline(_c:Client):stdgo._internal.time.Time_Time.Time {
        return stdgo._internal.net.http.Http_Client_static_extension.Client_static_extension._deadline(_c);
    }
    static public function _send(_c:Client, _req:Request, _deadline:stdgo._internal.time.Time_Time.Time):stdgo.Tuple.Tuple3<Response, () -> Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_Client_static_extension.Client_static_extension._send(_c, _req, _deadline);
            { _0 : obj._0, _1 : () -> obj._1(), _2 : obj._2 };
        };
    }
}
class T_closeIdleConnections___localname___closeIdler_31464_static_extension {
    static public function closeIdleConnections(t:stdgo._internal.net.http.Http_T_closeIdleConnections___localname___closeIdler_31464.T_closeIdleConnections___localname___closeIdler_31464):Void {
        stdgo._internal.net.http.Http_T_closeIdleConnections___localname___closeIdler_31464_static_extension.T_closeIdleConnections___localname___closeIdler_31464_static_extension.closeIdleConnections(t);
    }
}
typedef T_closeIdleConnections___localname___closeIdler_31464 = stdgo._internal.net.http.Http_T_closeIdleConnections___localname___closeIdler_31464.T_closeIdleConnections___localname___closeIdler_31464;
typedef T_cancelTimerBodyPointer = stdgo._internal.net.http.Http_T_cancelTimerBodyPointer.T_cancelTimerBodyPointer;
class T_cancelTimerBody_static_extension {
    static public function close(_b:T_cancelTimerBody):stdgo.Error {
        return stdgo._internal.net.http.Http_T_cancelTimerBody_static_extension.T_cancelTimerBody_static_extension.close(_b);
    }
    static public function read(_b:T_cancelTimerBody, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_cancelTimerBody_static_extension.T_cancelTimerBody_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef CookiePointer = stdgo._internal.net.http.Http_CookiePointer.CookiePointer;
class Cookie_static_extension {
    static public function valid(_c:Cookie):stdgo.Error {
        return stdgo._internal.net.http.Http_Cookie_static_extension.Cookie_static_extension.valid(_c);
    }
    static public function string(_c:Cookie):String {
        return stdgo._internal.net.http.Http_Cookie_static_extension.Cookie_static_extension.string(_c);
    }
}
typedef T_fileTransportPointer = stdgo._internal.net.http.Http_T_fileTransportPointer.T_fileTransportPointer;
class T_fileTransport_static_extension {
    static public function roundTrip(_t:T_fileTransport, _req:Request):stdgo.Tuple<Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_fileTransport_static_extension.T_fileTransport_static_extension.roundTrip(_t, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_populateResponsePointer = stdgo._internal.net.http.Http_T_populateResponsePointer.T_populateResponsePointer;
class T_populateResponse_static_extension {
    static public function write(_pr:T_populateResponse, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_populateResponse_static_extension.T_populateResponse_static_extension.write(_pr, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeHeader(_pr:T_populateResponse, _code:StdTypes.Int):Void {
        stdgo._internal.net.http.Http_T_populateResponse_static_extension.T_populateResponse_static_extension.writeHeader(_pr, _code);
    }
    static public function header(_pr:T_populateResponse):Header {
        return stdgo._internal.net.http.Http_T_populateResponse_static_extension.T_populateResponse_static_extension.header(_pr);
    }
    static public function _sendResponse(_pr:T_populateResponse):Void {
        stdgo._internal.net.http.Http_T_populateResponse_static_extension.T_populateResponse_static_extension._sendResponse(_pr);
    }
    static public function _finish(_pr:T_populateResponse):Void {
        stdgo._internal.net.http.Http_T_populateResponse_static_extension.T_populateResponse_static_extension._finish(_pr);
    }
}
typedef T_fileHandlerPointer = stdgo._internal.net.http.Http_T_fileHandlerPointer.T_fileHandlerPointer;
class T_fileHandler_static_extension {
    static public function serveHTTP(_f:T_fileHandler, _w:ResponseWriter, _r:Request):Void {
        stdgo._internal.net.http.Http_T_fileHandler_static_extension.T_fileHandler_static_extension.serveHTTP(_f, _w, _r);
    }
}
typedef T_ioFSPointer = stdgo._internal.net.http.Http_T_ioFSPointer.T_ioFSPointer;
class T_ioFS_static_extension {
    static public function open(_f:T_ioFS, _name:String):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_ioFS_static_extension.T_ioFS_static_extension.open(_f, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_ioFilePointer = stdgo._internal.net.http.Http_T_ioFilePointer.T_ioFilePointer;
class T_ioFile_static_extension {
    static public function readdir(_f:T_ioFile, _count:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_FileInfo.FileInfo>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_ioFile_static_extension.T_ioFile_static_extension.readdir(_f, _count);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readDir(_f:T_ioFile, _count:StdTypes.Int):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_ioFile_static_extension.T_ioFile_static_extension.readDir(_f, _count);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function seek(_f:T_ioFile, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_ioFile_static_extension.T_ioFile_static_extension.seek(_f, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stat(_f:T_ioFile):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_ioFile_static_extension.T_ioFile_static_extension.stat(_f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_f:T_ioFile, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_ioFile_static_extension.T_ioFile_static_extension.read(_f, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_f:T_ioFile):stdgo.Error {
        return stdgo._internal.net.http.Http_T_ioFile_static_extension.T_ioFile_static_extension.close(_f);
    }
}
typedef T_httpRangePointer = stdgo._internal.net.http.Http_T_httpRangePointer.T_httpRangePointer;
class T_httpRange_static_extension {
    static public function _mimeHeader(_r:T_httpRange, _contentType:String, _size:haxe.Int64):stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader {
        return stdgo._internal.net.http.Http_T_httpRange_static_extension.T_httpRange_static_extension._mimeHeader(_r, _contentType, _size);
    }
    static public function _contentRange(_r:T_httpRange, _size:haxe.Int64):String {
        return stdgo._internal.net.http.Http_T_httpRange_static_extension.T_httpRange_static_extension._contentRange(_r, _size);
    }
}
typedef T_http2clientConnPoolPointer = stdgo._internal.net.http.Http_T_http2clientConnPoolPointer.T_http2clientConnPoolPointer;
class T_http2clientConnPool_static_extension {
    static public function _closeIdleConnections(_p:T_http2clientConnPool):Void {
        stdgo._internal.net.http.Http_T_http2clientConnPool_static_extension.T_http2clientConnPool_static_extension._closeIdleConnections(_p);
    }
    static public function markDead(_p:T_http2clientConnPool, _cc:T_http2ClientConn):Void {
        stdgo._internal.net.http.Http_T_http2clientConnPool_static_extension.T_http2clientConnPool_static_extension.markDead(_p, _cc);
    }
    static public function _addConnLocked(_p:T_http2clientConnPool, _key:String, _cc:T_http2ClientConn):Void {
        stdgo._internal.net.http.Http_T_http2clientConnPool_static_extension.T_http2clientConnPool_static_extension._addConnLocked(_p, _key, _cc);
    }
    static public function _addConnIfNeeded(_p:T_http2clientConnPool, _key:String, _t:T_http2Transport, _c:stdgo._internal.crypto.tls.Tls_Conn.Conn):stdgo.Tuple<Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2clientConnPool_static_extension.T_http2clientConnPool_static_extension._addConnIfNeeded(_p, _key, _t, _c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _getStartDialLocked(_p:T_http2clientConnPool, _ctx:stdgo._internal.context.Context_Context.Context, _addr:String):T_http2dialCall {
        return stdgo._internal.net.http.Http_T_http2clientConnPool_static_extension.T_http2clientConnPool_static_extension._getStartDialLocked(_p, _ctx, _addr);
    }
    static public function _getClientConn(_p:T_http2clientConnPool, _req:Request, _addr:String, _dialOnMiss:Bool):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2clientConnPool_static_extension.T_http2clientConnPool_static_extension._getClientConn(_p, _req, _addr, _dialOnMiss);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function getClientConn(_p:T_http2clientConnPool, _req:Request, _addr:String):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2clientConnPool_static_extension.T_http2clientConnPool_static_extension.getClientConn(_p, _req, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_http2dialCallPointer = stdgo._internal.net.http.Http_T_http2dialCallPointer.T_http2dialCallPointer;
class T_http2dialCall_static_extension {
    static public function _dial(_c:T_http2dialCall, _ctx:stdgo._internal.context.Context_Context.Context, _addr:String):Void {
        stdgo._internal.net.http.Http_T_http2dialCall_static_extension.T_http2dialCall_static_extension._dial(_c, _ctx, _addr);
    }
}
typedef T_http2addConnCallPointer = stdgo._internal.net.http.Http_T_http2addConnCallPointer.T_http2addConnCallPointer;
class T_http2addConnCall_static_extension {
    static public function _run(_c:T_http2addConnCall, _t:T_http2Transport, _key:String, _tc:stdgo._internal.crypto.tls.Tls_Conn.Conn):Void {
        stdgo._internal.net.http.Http_T_http2addConnCall_static_extension.T_http2addConnCall_static_extension._run(_c, _t, _key, _tc);
    }
}
typedef T_http2noDialClientConnPoolPointer = stdgo._internal.net.http.Http_T_http2noDialClientConnPoolPointer.T_http2noDialClientConnPoolPointer;
class T_http2noDialClientConnPool_static_extension {
    static public function getClientConn(_p:T_http2noDialClientConnPool, _req:Request, _addr:String):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2noDialClientConnPool_static_extension.T_http2noDialClientConnPool_static_extension.getClientConn(_p, _req, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _getStartDialLocked(__self__:stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool, _0:stdgo._internal.context.Context_Context.Context, _1:String):T_http2dialCall {
        return stdgo._internal.net.http.Http_T_http2noDialClientConnPool_static_extension.T_http2noDialClientConnPool_static_extension._getStartDialLocked(__self__, _0, _1);
    }
    public static function _getClientConn(__self__:stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool, _0:Request, _1:String, _2:Bool):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2noDialClientConnPool_static_extension.T_http2noDialClientConnPool_static_extension._getClientConn(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _closeIdleConnections(__self__:stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool):Void {
        stdgo._internal.net.http.Http_T_http2noDialClientConnPool_static_extension.T_http2noDialClientConnPool_static_extension._closeIdleConnections(__self__);
    }
    public static function _addConnLocked(__self__:stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool, _0:String, _1:T_http2ClientConn):Void {
        stdgo._internal.net.http.Http_T_http2noDialClientConnPool_static_extension.T_http2noDialClientConnPool_static_extension._addConnLocked(__self__, _0, _1);
    }
    public static function _addConnIfNeeded(__self__:stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool, _0:String, _1:T_http2Transport, _2:stdgo._internal.crypto.tls.Tls_Conn.Conn):stdgo.Tuple<Bool, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2noDialClientConnPool_static_extension.T_http2noDialClientConnPool_static_extension._addConnIfNeeded(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function markDead(__self__:stdgo._internal.net.http.Http_T_http2noDialClientConnPool.T_http2noDialClientConnPool, _0:T_http2ClientConn):Void {
        stdgo._internal.net.http.Http_T_http2noDialClientConnPool_static_extension.T_http2noDialClientConnPool_static_extension.markDead(__self__, _0);
    }
}
typedef T_http2dataBufferPointer = stdgo._internal.net.http.Http_T_http2dataBufferPointer.T_http2dataBufferPointer;
class T_http2dataBuffer_static_extension {
    static public function _lastChunkOrAlloc(_b:T_http2dataBuffer, _want:haxe.Int64):Array<std.UInt> {
        return [for (i in stdgo._internal.net.http.Http_T_http2dataBuffer_static_extension.T_http2dataBuffer_static_extension._lastChunkOrAlloc(_b, _want)) i];
    }
    static public function write(_b:T_http2dataBuffer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2dataBuffer_static_extension.T_http2dataBuffer_static_extension.write(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function len(_b:T_http2dataBuffer):StdTypes.Int {
        return stdgo._internal.net.http.Http_T_http2dataBuffer_static_extension.T_http2dataBuffer_static_extension.len(_b);
    }
    static public function _bytesFromFirstChunk(_b:T_http2dataBuffer):Array<std.UInt> {
        return [for (i in stdgo._internal.net.http.Http_T_http2dataBuffer_static_extension.T_http2dataBuffer_static_extension._bytesFromFirstChunk(_b)) i];
    }
    static public function read(_b:T_http2dataBuffer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2dataBuffer_static_extension.T_http2dataBuffer_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_http2StreamErrorPointer = stdgo._internal.net.http.Http_T_http2StreamErrorPointer.T_http2StreamErrorPointer;
class T_http2StreamError_static_extension {
    static public function as(_e:T_http2StreamError, _target:stdgo.AnyInterface):Bool {
        return stdgo._internal.net.http.Http_T_http2StreamError_static_extension.T_http2StreamError_static_extension.as(_e, _target);
    }
    static public function _staysWithinBuffer(_se:T_http2StreamError, _max:StdTypes.Int):Bool {
        return stdgo._internal.net.http.Http_T_http2StreamError_static_extension.T_http2StreamError_static_extension._staysWithinBuffer(_se, _max);
    }
    static public function _writeFrame(_se:T_http2StreamError, _ctx:T_http2writeContext):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2StreamError_static_extension.T_http2StreamError_static_extension._writeFrame(_se, _ctx);
    }
    static public function error(_e:T_http2StreamError):String {
        return stdgo._internal.net.http.Http_T_http2StreamError_static_extension.T_http2StreamError_static_extension.error(_e);
    }
}
typedef T_http2goAwayFlowErrorPointer = stdgo._internal.net.http.Http_T_http2goAwayFlowErrorPointer.T_http2goAwayFlowErrorPointer;
class T_http2goAwayFlowError_static_extension {
    static public function error(_:T_http2goAwayFlowError):String {
        return stdgo._internal.net.http.Http_T_http2goAwayFlowError_static_extension.T_http2goAwayFlowError_static_extension.error(_);
    }
}
typedef T_http2connErrorPointer = stdgo._internal.net.http.Http_T_http2connErrorPointer.T_http2connErrorPointer;
class T_http2connError_static_extension {
    static public function error(_e:T_http2connError):String {
        return stdgo._internal.net.http.Http_T_http2connError_static_extension.T_http2connError_static_extension.error(_e);
    }
}
typedef T_http2inflowPointer = stdgo._internal.net.http.Http_T_http2inflowPointer.T_http2inflowPointer;
class T_http2inflow_static_extension {
    static public function _take(_f:T_http2inflow, _n:std.UInt):Bool {
        return stdgo._internal.net.http.Http_T_http2inflow_static_extension.T_http2inflow_static_extension._take(_f, _n);
    }
    static public function _add(_f:T_http2inflow, _n:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.net.http.Http_T_http2inflow_static_extension.T_http2inflow_static_extension._add(_f, _n);
    }
    static public function _init(_f:T_http2inflow, _n:StdTypes.Int):Void {
        stdgo._internal.net.http.Http_T_http2inflow_static_extension.T_http2inflow_static_extension._init(_f, _n);
    }
}
typedef T_http2outflowPointer = stdgo._internal.net.http.Http_T_http2outflowPointer.T_http2outflowPointer;
class T_http2outflow_static_extension {
    static public function _add(_f:T_http2outflow, _n:StdTypes.Int):Bool {
        return stdgo._internal.net.http.Http_T_http2outflow_static_extension.T_http2outflow_static_extension._add(_f, _n);
    }
    static public function _take(_f:T_http2outflow, _n:StdTypes.Int):Void {
        stdgo._internal.net.http.Http_T_http2outflow_static_extension.T_http2outflow_static_extension._take(_f, _n);
    }
    static public function _available(_f:T_http2outflow):StdTypes.Int {
        return stdgo._internal.net.http.Http_T_http2outflow_static_extension.T_http2outflow_static_extension._available(_f);
    }
    static public function _setConnFlow(_f:T_http2outflow, _cf:T_http2outflow):Void {
        stdgo._internal.net.http.Http_T_http2outflow_static_extension.T_http2outflow_static_extension._setConnFlow(_f, _cf);
    }
}
typedef T_http2FrameHeaderPointer = stdgo._internal.net.http.Http_T_http2FrameHeaderPointer.T_http2FrameHeaderPointer;
class T_http2FrameHeader_static_extension {
    static public function _invalidate(_h:T_http2FrameHeader):Void {
        stdgo._internal.net.http.Http_T_http2FrameHeader_static_extension.T_http2FrameHeader_static_extension._invalidate(_h);
    }
    static public function _checkValid(_h:T_http2FrameHeader):Void {
        stdgo._internal.net.http.Http_T_http2FrameHeader_static_extension.T_http2FrameHeader_static_extension._checkValid(_h);
    }
    static public function _writeDebug(_h:T_http2FrameHeader, _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer):Void {
        stdgo._internal.net.http.Http_T_http2FrameHeader_static_extension.T_http2FrameHeader_static_extension._writeDebug(_h, _buf);
    }
    static public function string(_h:T_http2FrameHeader):String {
        return stdgo._internal.net.http.Http_T_http2FrameHeader_static_extension.T_http2FrameHeader_static_extension.string(_h);
    }
    static public function header(_h:T_http2FrameHeader):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_T_http2FrameHeader_static_extension.T_http2FrameHeader_static_extension.header(_h);
    }
}
typedef T_http2FramerPointer = stdgo._internal.net.http.Http_T_http2FramerPointer.T_http2FramerPointer;
class T_http2Framer_static_extension {
    static public function _readMetaFrame(_fr:T_http2Framer, _hf:T_http2HeadersFrame):stdgo.Tuple<T_http2MetaHeadersFrame, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension._readMetaFrame(_fr, _hf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _maxHeaderStringLen(_fr:T_http2Framer):StdTypes.Int {
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension._maxHeaderStringLen(_fr);
    }
    static public function writeRawFrame(_f:T_http2Framer, _t:T_http2FrameType, _flags:T_http2Flags, _streamID:std.UInt, _payload:Array<std.UInt>):stdgo.Error {
        final _payload = ([for (i in _payload) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writeRawFrame(_f, _t, _flags, _streamID, _payload);
    }
    static public function writePushPromise(_f:T_http2Framer, _p:T_http2PushPromiseParam):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writePushPromise(_f, _p);
    }
    static public function writeContinuation(_f:T_http2Framer, _streamID:std.UInt, _endHeaders:Bool, _headerBlockFragment:Array<std.UInt>):stdgo.Error {
        final _headerBlockFragment = ([for (i in _headerBlockFragment) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writeContinuation(_f, _streamID, _endHeaders, _headerBlockFragment);
    }
    static public function writeRSTStream(_f:T_http2Framer, _streamID:std.UInt, _code:T_http2ErrCode):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writeRSTStream(_f, _streamID, _code);
    }
    static public function writePriority(_f:T_http2Framer, _streamID:std.UInt, _p:T_http2PriorityParam):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writePriority(_f, _streamID, _p);
    }
    static public function writeHeaders(_f:T_http2Framer, _p:T_http2HeadersFrameParam):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writeHeaders(_f, _p);
    }
    static public function writeWindowUpdate(_f:T_http2Framer, _streamID:std.UInt, _incr:std.UInt):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writeWindowUpdate(_f, _streamID, _incr);
    }
    static public function writeGoAway(_f:T_http2Framer, _maxStreamID:std.UInt, _code:T_http2ErrCode, _debugData:Array<std.UInt>):stdgo.Error {
        final _debugData = ([for (i in _debugData) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writeGoAway(_f, _maxStreamID, _code, _debugData);
    }
    static public function writePing(_f:T_http2Framer, _ack:Bool, _data:haxe.ds.Vector<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writePing(_f, _ack, _data);
    }
    static public function writeSettingsAck(_f:T_http2Framer):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writeSettingsAck(_f);
    }
    static public function writeSettings(_f:T_http2Framer, _settings:haxe.Rest<T_http2Setting>):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writeSettings(_f, ...[for (i in _settings) i]);
    }
    static public function _startWriteDataPadded(_f:T_http2Framer, _streamID:std.UInt, _endStream:Bool, _data:Array<std.UInt>, _pad:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _pad = ([for (i in _pad) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension._startWriteDataPadded(_f, _streamID, _endStream, _data, _pad);
    }
    static public function writeDataPadded(_f:T_http2Framer, _streamID:std.UInt, _endStream:Bool, _data:Array<std.UInt>, _pad:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        final _pad = ([for (i in _pad) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writeDataPadded(_f, _streamID, _endStream, _data, _pad);
    }
    static public function writeData(_f:T_http2Framer, _streamID:std.UInt, _endStream:Bool, _data:Array<std.UInt>):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.writeData(_f, _streamID, _endStream, _data);
    }
    static public function _checkFrameOrder(_fr:T_http2Framer, _f:T_http2Frame):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension._checkFrameOrder(_fr, _f);
    }
    static public function _connError(_fr:T_http2Framer, _code:T_http2ErrCode, _reason:String):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension._connError(_fr, _code, _reason);
    }
    static public function readFrame(_fr:T_http2Framer):stdgo.Tuple<T_http2Frame, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.readFrame(_fr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function errorDetail(_fr:T_http2Framer):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.errorDetail(_fr);
    }
    static public function setMaxReadFrameSize(_fr:T_http2Framer, _v:std.UInt):Void {
        stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.setMaxReadFrameSize(_fr, _v);
    }
    static public function setReuseFrames(_fr:T_http2Framer):Void {
        stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension.setReuseFrames(_fr);
    }
    static public function _writeUint32(_f:T_http2Framer, _v:std.UInt):Void {
        stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension._writeUint32(_f, _v);
    }
    static public function _writeUint16(_f:T_http2Framer, _v:std.UInt):Void {
        stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension._writeUint16(_f, _v);
    }
    static public function _writeBytes(_f:T_http2Framer, _v:Array<std.UInt>):Void {
        final _v = ([for (i in _v) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension._writeBytes(_f, _v);
    }
    static public function _writeByte(_f:T_http2Framer, _v:std.UInt):Void {
        stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension._writeByte(_f, _v);
    }
    static public function _logWrite(_f:T_http2Framer):Void {
        stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension._logWrite(_f);
    }
    static public function _endWrite(_f:T_http2Framer):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension._endWrite(_f);
    }
    static public function _startWrite(_f:T_http2Framer, _ftype:T_http2FrameType, _flags:T_http2Flags, _streamID:std.UInt):Void {
        stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension._startWrite(_f, _ftype, _flags, _streamID);
    }
    static public function _maxHeaderListSize(_fr:T_http2Framer):std.UInt {
        return stdgo._internal.net.http.Http_T_http2Framer_static_extension.T_http2Framer_static_extension._maxHeaderListSize(_fr);
    }
}
typedef T_http2frameCachePointer = stdgo._internal.net.http.Http_T_http2frameCachePointer.T_http2frameCachePointer;
class T_http2frameCache_static_extension {
    static public function _getDataFrame(_fc:T_http2frameCache):T_http2DataFrame {
        return stdgo._internal.net.http.Http_T_http2frameCache_static_extension.T_http2frameCache_static_extension._getDataFrame(_fc);
    }
}
typedef T_http2DataFramePointer = stdgo._internal.net.http.Http_T_http2DataFramePointer.T_http2DataFramePointer;
class T_http2DataFrame_static_extension {
    static public function data(_f:T_http2DataFrame):Array<std.UInt> {
        return [for (i in stdgo._internal.net.http.Http_T_http2DataFrame_static_extension.T_http2DataFrame_static_extension.data(_f)) i];
    }
    static public function streamEnded(_f:T_http2DataFrame):Bool {
        return stdgo._internal.net.http.Http_T_http2DataFrame_static_extension.T_http2DataFrame_static_extension.streamEnded(_f);
    }
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame, _0:stdgo._internal.bytes.Bytes_Buffer.Buffer):Void {
        stdgo._internal.net.http.Http_T_http2DataFrame_static_extension.T_http2DataFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame):Void {
        stdgo._internal.net.http.Http_T_http2DataFrame_static_extension.T_http2DataFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame):Void {
        stdgo._internal.net.http.Http_T_http2DataFrame_static_extension.T_http2DataFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame):String {
        return stdgo._internal.net.http.Http_T_http2DataFrame_static_extension.T_http2DataFrame_static_extension.string(__self__);
    }
    public static function header(__self__:stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_T_http2DataFrame_static_extension.T_http2DataFrame_static_extension.header(__self__);
    }
}
typedef T_http2SettingsFramePointer = stdgo._internal.net.http.Http_T_http2SettingsFramePointer.T_http2SettingsFramePointer;
class T_http2SettingsFrame_static_extension {
    static public function foreachSetting(_f:T_http2SettingsFrame, _fn:stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting -> stdgo.Error):stdgo.Error {
        final _fn = _fn;
        return stdgo._internal.net.http.Http_T_http2SettingsFrame_static_extension.T_http2SettingsFrame_static_extension.foreachSetting(_f, _fn);
    }
    static public function hasDuplicates(_f:T_http2SettingsFrame):Bool {
        return stdgo._internal.net.http.Http_T_http2SettingsFrame_static_extension.T_http2SettingsFrame_static_extension.hasDuplicates(_f);
    }
    static public function numSettings(_f:T_http2SettingsFrame):StdTypes.Int {
        return stdgo._internal.net.http.Http_T_http2SettingsFrame_static_extension.T_http2SettingsFrame_static_extension.numSettings(_f);
    }
    static public function setting(_f:T_http2SettingsFrame, _i:StdTypes.Int):T_http2Setting {
        return stdgo._internal.net.http.Http_T_http2SettingsFrame_static_extension.T_http2SettingsFrame_static_extension.setting(_f, _i);
    }
    static public function value(_f:T_http2SettingsFrame, _id:T_http2SettingID):stdgo.Tuple<std.UInt, Bool> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2SettingsFrame_static_extension.T_http2SettingsFrame_static_extension.value(_f, _id);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function isAck(_f:T_http2SettingsFrame):Bool {
        return stdgo._internal.net.http.Http_T_http2SettingsFrame_static_extension.T_http2SettingsFrame_static_extension.isAck(_f);
    }
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame, _0:stdgo._internal.bytes.Bytes_Buffer.Buffer):Void {
        stdgo._internal.net.http.Http_T_http2SettingsFrame_static_extension.T_http2SettingsFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame):Void {
        stdgo._internal.net.http.Http_T_http2SettingsFrame_static_extension.T_http2SettingsFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame):Void {
        stdgo._internal.net.http.Http_T_http2SettingsFrame_static_extension.T_http2SettingsFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame):String {
        return stdgo._internal.net.http.Http_T_http2SettingsFrame_static_extension.T_http2SettingsFrame_static_extension.string(__self__);
    }
    public static function header(__self__:stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_T_http2SettingsFrame_static_extension.T_http2SettingsFrame_static_extension.header(__self__);
    }
}
typedef T_http2PingFramePointer = stdgo._internal.net.http.Http_T_http2PingFramePointer.T_http2PingFramePointer;
class T_http2PingFrame_static_extension {
    static public function isAck(_f:T_http2PingFrame):Bool {
        return stdgo._internal.net.http.Http_T_http2PingFrame_static_extension.T_http2PingFrame_static_extension.isAck(_f);
    }
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame, _0:stdgo._internal.bytes.Bytes_Buffer.Buffer):Void {
        stdgo._internal.net.http.Http_T_http2PingFrame_static_extension.T_http2PingFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame):Void {
        stdgo._internal.net.http.Http_T_http2PingFrame_static_extension.T_http2PingFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame):Void {
        stdgo._internal.net.http.Http_T_http2PingFrame_static_extension.T_http2PingFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame):String {
        return stdgo._internal.net.http.Http_T_http2PingFrame_static_extension.T_http2PingFrame_static_extension.string(__self__);
    }
    public static function header(__self__:stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_T_http2PingFrame_static_extension.T_http2PingFrame_static_extension.header(__self__);
    }
}
typedef T_http2GoAwayFramePointer = stdgo._internal.net.http.Http_T_http2GoAwayFramePointer.T_http2GoAwayFramePointer;
class T_http2GoAwayFrame_static_extension {
    static public function debugData(_f:T_http2GoAwayFrame):Array<std.UInt> {
        return [for (i in stdgo._internal.net.http.Http_T_http2GoAwayFrame_static_extension.T_http2GoAwayFrame_static_extension.debugData(_f)) i];
    }
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame, _0:stdgo._internal.bytes.Bytes_Buffer.Buffer):Void {
        stdgo._internal.net.http.Http_T_http2GoAwayFrame_static_extension.T_http2GoAwayFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame):Void {
        stdgo._internal.net.http.Http_T_http2GoAwayFrame_static_extension.T_http2GoAwayFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame):Void {
        stdgo._internal.net.http.Http_T_http2GoAwayFrame_static_extension.T_http2GoAwayFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame):String {
        return stdgo._internal.net.http.Http_T_http2GoAwayFrame_static_extension.T_http2GoAwayFrame_static_extension.string(__self__);
    }
    public static function header(__self__:stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_T_http2GoAwayFrame_static_extension.T_http2GoAwayFrame_static_extension.header(__self__);
    }
}
typedef T_http2UnknownFramePointer = stdgo._internal.net.http.Http_T_http2UnknownFramePointer.T_http2UnknownFramePointer;
class T_http2UnknownFrame_static_extension {
    static public function payload(_f:T_http2UnknownFrame):Array<std.UInt> {
        return [for (i in stdgo._internal.net.http.Http_T_http2UnknownFrame_static_extension.T_http2UnknownFrame_static_extension.payload(_f)) i];
    }
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_T_http2UnknownFrame.T_http2UnknownFrame, _0:stdgo._internal.bytes.Bytes_Buffer.Buffer):Void {
        stdgo._internal.net.http.Http_T_http2UnknownFrame_static_extension.T_http2UnknownFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_T_http2UnknownFrame.T_http2UnknownFrame):Void {
        stdgo._internal.net.http.Http_T_http2UnknownFrame_static_extension.T_http2UnknownFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_T_http2UnknownFrame.T_http2UnknownFrame):Void {
        stdgo._internal.net.http.Http_T_http2UnknownFrame_static_extension.T_http2UnknownFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_T_http2UnknownFrame.T_http2UnknownFrame):String {
        return stdgo._internal.net.http.Http_T_http2UnknownFrame_static_extension.T_http2UnknownFrame_static_extension.string(__self__);
    }
    public static function header(__self__:stdgo._internal.net.http.Http_T_http2UnknownFrame.T_http2UnknownFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_T_http2UnknownFrame_static_extension.T_http2UnknownFrame_static_extension.header(__self__);
    }
}
typedef T_http2WindowUpdateFramePointer = stdgo._internal.net.http.Http_T_http2WindowUpdateFramePointer.T_http2WindowUpdateFramePointer;
class T_http2WindowUpdateFrame_static_extension {
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame, _0:stdgo._internal.bytes.Bytes_Buffer.Buffer):Void {
        stdgo._internal.net.http.Http_T_http2WindowUpdateFrame_static_extension.T_http2WindowUpdateFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame):Void {
        stdgo._internal.net.http.Http_T_http2WindowUpdateFrame_static_extension.T_http2WindowUpdateFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame):Void {
        stdgo._internal.net.http.Http_T_http2WindowUpdateFrame_static_extension.T_http2WindowUpdateFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame):String {
        return stdgo._internal.net.http.Http_T_http2WindowUpdateFrame_static_extension.T_http2WindowUpdateFrame_static_extension.string(__self__);
    }
    public static function header(__self__:stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_T_http2WindowUpdateFrame_static_extension.T_http2WindowUpdateFrame_static_extension.header(__self__);
    }
}
typedef T_http2HeadersFramePointer = stdgo._internal.net.http.Http_T_http2HeadersFramePointer.T_http2HeadersFramePointer;
class T_http2HeadersFrame_static_extension {
    static public function hasPriority(_f:T_http2HeadersFrame):Bool {
        return stdgo._internal.net.http.Http_T_http2HeadersFrame_static_extension.T_http2HeadersFrame_static_extension.hasPriority(_f);
    }
    static public function streamEnded(_f:T_http2HeadersFrame):Bool {
        return stdgo._internal.net.http.Http_T_http2HeadersFrame_static_extension.T_http2HeadersFrame_static_extension.streamEnded(_f);
    }
    static public function headersEnded(_f:T_http2HeadersFrame):Bool {
        return stdgo._internal.net.http.Http_T_http2HeadersFrame_static_extension.T_http2HeadersFrame_static_extension.headersEnded(_f);
    }
    static public function headerBlockFragment(_f:T_http2HeadersFrame):Array<std.UInt> {
        return [for (i in stdgo._internal.net.http.Http_T_http2HeadersFrame_static_extension.T_http2HeadersFrame_static_extension.headerBlockFragment(_f)) i];
    }
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_T_http2HeadersFrame.T_http2HeadersFrame, _0:stdgo._internal.bytes.Bytes_Buffer.Buffer):Void {
        stdgo._internal.net.http.Http_T_http2HeadersFrame_static_extension.T_http2HeadersFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_T_http2HeadersFrame.T_http2HeadersFrame):Void {
        stdgo._internal.net.http.Http_T_http2HeadersFrame_static_extension.T_http2HeadersFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_T_http2HeadersFrame.T_http2HeadersFrame):Void {
        stdgo._internal.net.http.Http_T_http2HeadersFrame_static_extension.T_http2HeadersFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_T_http2HeadersFrame.T_http2HeadersFrame):String {
        return stdgo._internal.net.http.Http_T_http2HeadersFrame_static_extension.T_http2HeadersFrame_static_extension.string(__self__);
    }
    public static function header(__self__:stdgo._internal.net.http.Http_T_http2HeadersFrame.T_http2HeadersFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_T_http2HeadersFrame_static_extension.T_http2HeadersFrame_static_extension.header(__self__);
    }
}
typedef T_http2PriorityFramePointer = stdgo._internal.net.http.Http_T_http2PriorityFramePointer.T_http2PriorityFramePointer;
class T_http2PriorityFrame_static_extension {
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_T_http2PriorityFrame.T_http2PriorityFrame, _0:stdgo._internal.bytes.Bytes_Buffer.Buffer):Void {
        stdgo._internal.net.http.Http_T_http2PriorityFrame_static_extension.T_http2PriorityFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_T_http2PriorityFrame.T_http2PriorityFrame):Void {
        stdgo._internal.net.http.Http_T_http2PriorityFrame_static_extension.T_http2PriorityFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_T_http2PriorityFrame.T_http2PriorityFrame):Void {
        stdgo._internal.net.http.Http_T_http2PriorityFrame_static_extension.T_http2PriorityFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_T_http2PriorityFrame.T_http2PriorityFrame):String {
        return stdgo._internal.net.http.Http_T_http2PriorityFrame_static_extension.T_http2PriorityFrame_static_extension.string(__self__);
    }
    public static function isZero(__self__:stdgo._internal.net.http.Http_T_http2PriorityFrame.T_http2PriorityFrame):Bool {
        return stdgo._internal.net.http.Http_T_http2PriorityFrame_static_extension.T_http2PriorityFrame_static_extension.isZero(__self__);
    }
    public static function header(__self__:stdgo._internal.net.http.Http_T_http2PriorityFrame.T_http2PriorityFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_T_http2PriorityFrame_static_extension.T_http2PriorityFrame_static_extension.header(__self__);
    }
}
typedef T_http2PriorityParamPointer = stdgo._internal.net.http.Http_T_http2PriorityParamPointer.T_http2PriorityParamPointer;
class T_http2PriorityParam_static_extension {
    static public function isZero(_p:T_http2PriorityParam):Bool {
        return stdgo._internal.net.http.Http_T_http2PriorityParam_static_extension.T_http2PriorityParam_static_extension.isZero(_p);
    }
}
typedef T_http2RSTStreamFramePointer = stdgo._internal.net.http.Http_T_http2RSTStreamFramePointer.T_http2RSTStreamFramePointer;
class T_http2RSTStreamFrame_static_extension {
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame, _0:stdgo._internal.bytes.Bytes_Buffer.Buffer):Void {
        stdgo._internal.net.http.Http_T_http2RSTStreamFrame_static_extension.T_http2RSTStreamFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame):Void {
        stdgo._internal.net.http.Http_T_http2RSTStreamFrame_static_extension.T_http2RSTStreamFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame):Void {
        stdgo._internal.net.http.Http_T_http2RSTStreamFrame_static_extension.T_http2RSTStreamFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame):String {
        return stdgo._internal.net.http.Http_T_http2RSTStreamFrame_static_extension.T_http2RSTStreamFrame_static_extension.string(__self__);
    }
    public static function header(__self__:stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_T_http2RSTStreamFrame_static_extension.T_http2RSTStreamFrame_static_extension.header(__self__);
    }
}
typedef T_http2ContinuationFramePointer = stdgo._internal.net.http.Http_T_http2ContinuationFramePointer.T_http2ContinuationFramePointer;
class T_http2ContinuationFrame_static_extension {
    static public function headersEnded(_f:T_http2ContinuationFrame):Bool {
        return stdgo._internal.net.http.Http_T_http2ContinuationFrame_static_extension.T_http2ContinuationFrame_static_extension.headersEnded(_f);
    }
    static public function headerBlockFragment(_f:T_http2ContinuationFrame):Array<std.UInt> {
        return [for (i in stdgo._internal.net.http.Http_T_http2ContinuationFrame_static_extension.T_http2ContinuationFrame_static_extension.headerBlockFragment(_f)) i];
    }
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_T_http2ContinuationFrame.T_http2ContinuationFrame, _0:stdgo._internal.bytes.Bytes_Buffer.Buffer):Void {
        stdgo._internal.net.http.Http_T_http2ContinuationFrame_static_extension.T_http2ContinuationFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_T_http2ContinuationFrame.T_http2ContinuationFrame):Void {
        stdgo._internal.net.http.Http_T_http2ContinuationFrame_static_extension.T_http2ContinuationFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_T_http2ContinuationFrame.T_http2ContinuationFrame):Void {
        stdgo._internal.net.http.Http_T_http2ContinuationFrame_static_extension.T_http2ContinuationFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_T_http2ContinuationFrame.T_http2ContinuationFrame):String {
        return stdgo._internal.net.http.Http_T_http2ContinuationFrame_static_extension.T_http2ContinuationFrame_static_extension.string(__self__);
    }
    public static function header(__self__:stdgo._internal.net.http.Http_T_http2ContinuationFrame.T_http2ContinuationFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_T_http2ContinuationFrame_static_extension.T_http2ContinuationFrame_static_extension.header(__self__);
    }
}
typedef T_http2PushPromiseFramePointer = stdgo._internal.net.http.Http_T_http2PushPromiseFramePointer.T_http2PushPromiseFramePointer;
class T_http2PushPromiseFrame_static_extension {
    static public function headersEnded(_f:T_http2PushPromiseFrame):Bool {
        return stdgo._internal.net.http.Http_T_http2PushPromiseFrame_static_extension.T_http2PushPromiseFrame_static_extension.headersEnded(_f);
    }
    static public function headerBlockFragment(_f:T_http2PushPromiseFrame):Array<std.UInt> {
        return [for (i in stdgo._internal.net.http.Http_T_http2PushPromiseFrame_static_extension.T_http2PushPromiseFrame_static_extension.headerBlockFragment(_f)) i];
    }
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame, _0:stdgo._internal.bytes.Bytes_Buffer.Buffer):Void {
        stdgo._internal.net.http.Http_T_http2PushPromiseFrame_static_extension.T_http2PushPromiseFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame):Void {
        stdgo._internal.net.http.Http_T_http2PushPromiseFrame_static_extension.T_http2PushPromiseFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame):Void {
        stdgo._internal.net.http.Http_T_http2PushPromiseFrame_static_extension.T_http2PushPromiseFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame):String {
        return stdgo._internal.net.http.Http_T_http2PushPromiseFrame_static_extension.T_http2PushPromiseFrame_static_extension.string(__self__);
    }
    public static function header(__self__:stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_T_http2PushPromiseFrame_static_extension.T_http2PushPromiseFrame_static_extension.header(__self__);
    }
}
typedef T_http2MetaHeadersFramePointer = stdgo._internal.net.http.Http_T_http2MetaHeadersFramePointer.T_http2MetaHeadersFramePointer;
class T_http2MetaHeadersFrame_static_extension {
    static public function _checkPseudos(_mh:T_http2MetaHeadersFrame):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension._checkPseudos(_mh);
    }
    static public function pseudoFields(_mh:T_http2MetaHeadersFrame):Array<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField> {
        return [for (i in stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension.pseudoFields(_mh)) i];
    }
    static public function regularFields(_mh:T_http2MetaHeadersFrame):Array<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_HeaderField.HeaderField> {
        return [for (i in stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension.regularFields(_mh)) i];
    }
    static public function pseudoValue(_mh:T_http2MetaHeadersFrame, _pseudo:String):String {
        return stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension.pseudoValue(_mh, _pseudo);
    }
    public static function _writeDebug(__self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame, _0:stdgo._internal.bytes.Bytes_Buffer.Buffer):Void {
        stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension._writeDebug(__self__, _0);
    }
    public static function _invalidate(__self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame):Void {
        stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension._invalidate(__self__);
    }
    public static function _checkValid(__self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame):Void {
        stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension._checkValid(__self__);
    }
    public static function string(__self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame):String {
        return stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension.string(__self__);
    }
    public static function streamEnded(__self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame):Bool {
        return stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension.streamEnded(__self__);
    }
    public static function headersEnded(__self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame):Bool {
        return stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension.headersEnded(__self__);
    }
    public static function headerBlockFragment(__self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame):Array<std.UInt> {
        return [for (i in stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension.headerBlockFragment(__self__)) i];
    }
    public static function header(__self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame):T_http2FrameHeader {
        return stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension.header(__self__);
    }
    public static function hasPriority(__self__:stdgo._internal.net.http.Http_T_http2MetaHeadersFrame.T_http2MetaHeadersFrame):Bool {
        return stdgo._internal.net.http.Http_T_http2MetaHeadersFrame_static_extension.T_http2MetaHeadersFrame_static_extension.hasPriority(__self__);
    }
}
typedef T_http2SettingPointer = stdgo._internal.net.http.Http_T_http2SettingPointer.T_http2SettingPointer;
class T_http2Setting_static_extension {
    static public function valid(_s:T_http2Setting):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2Setting_static_extension.T_http2Setting_static_extension.valid(_s);
    }
    static public function string(_s:T_http2Setting):String {
        return stdgo._internal.net.http.Http_T_http2Setting_static_extension.T_http2Setting_static_extension.string(_s);
    }
}
typedef T_http2bufferedWriterPointer = stdgo._internal.net.http.Http_T_http2bufferedWriterPointer.T_http2bufferedWriterPointer;
class T_http2bufferedWriter_static_extension {
    static public function flush(_w:T_http2bufferedWriter):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2bufferedWriter_static_extension.T_http2bufferedWriter_static_extension.flush(_w);
    }
    static public function write(_w:T_http2bufferedWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2bufferedWriter_static_extension.T_http2bufferedWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function available(_w:T_http2bufferedWriter):StdTypes.Int {
        return stdgo._internal.net.http.Http_T_http2bufferedWriter_static_extension.T_http2bufferedWriter_static_extension.available(_w);
    }
}
typedef T_http2httpErrorPointer = stdgo._internal.net.http.Http_T_http2httpErrorPointer.T_http2httpErrorPointer;
class T_http2httpError_static_extension {
    static public function temporary(_e:T_http2httpError):Bool {
        return stdgo._internal.net.http.Http_T_http2httpError_static_extension.T_http2httpError_static_extension.temporary(_e);
    }
    static public function timeout(_e:T_http2httpError):Bool {
        return stdgo._internal.net.http.Http_T_http2httpError_static_extension.T_http2httpError_static_extension.timeout(_e);
    }
    static public function error(_e:T_http2httpError):String {
        return stdgo._internal.net.http.Http_T_http2httpError_static_extension.T_http2httpError_static_extension.error(_e);
    }
}
typedef T_http2sorterPointer = stdgo._internal.net.http.Http_T_http2sorterPointer.T_http2sorterPointer;
class T_http2sorter_static_extension {
    static public function sortStrings(_s:T_http2sorter, _ss:Array<String>):Void {
        final _ss = ([for (i in _ss) i] : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.net.http.Http_T_http2sorter_static_extension.T_http2sorter_static_extension.sortStrings(_s, _ss);
    }
    static public function keys(_s:T_http2sorter, _h:Header):Array<String> {
        return [for (i in stdgo._internal.net.http.Http_T_http2sorter_static_extension.T_http2sorter_static_extension.keys(_s, _h)) i];
    }
    static public function less(_s:T_http2sorter, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        return stdgo._internal.net.http.Http_T_http2sorter_static_extension.T_http2sorter_static_extension.less(_s, _i, _j);
    }
    static public function swap(_s:T_http2sorter, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        stdgo._internal.net.http.Http_T_http2sorter_static_extension.T_http2sorter_static_extension.swap(_s, _i, _j);
    }
    static public function len(_s:T_http2sorter):StdTypes.Int {
        return stdgo._internal.net.http.Http_T_http2sorter_static_extension.T_http2sorter_static_extension.len(_s);
    }
}
typedef T_http2pipePointer = stdgo._internal.net.http.Http_T_http2pipePointer.T_http2pipePointer;
class T_http2pipe_static_extension {
    static public function done(_p:T_http2pipe):stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError> {
        return stdgo._internal.net.http.Http_T_http2pipe_static_extension.T_http2pipe_static_extension.done(_p);
    }
    static public function err(_p:T_http2pipe):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2pipe_static_extension.T_http2pipe_static_extension.err(_p);
    }
    static public function _closeDoneLocked(_p:T_http2pipe):Void {
        stdgo._internal.net.http.Http_T_http2pipe_static_extension.T_http2pipe_static_extension._closeDoneLocked(_p);
    }
    static public function _closeWithError(_p:T_http2pipe, _dst:stdgo.Error, _err:stdgo.Error, _fn:() -> Void):Void {
        final _fn = _fn;
        stdgo._internal.net.http.Http_T_http2pipe_static_extension.T_http2pipe_static_extension._closeWithError(_p, _dst, _err, _fn);
    }
    static public function _closeWithErrorAndCode(_p:T_http2pipe, _err:stdgo.Error, _fn:() -> Void):Void {
        final _fn = _fn;
        stdgo._internal.net.http.Http_T_http2pipe_static_extension.T_http2pipe_static_extension._closeWithErrorAndCode(_p, _err, _fn);
    }
    static public function breakWithError(_p:T_http2pipe, _err:stdgo.Error):Void {
        stdgo._internal.net.http.Http_T_http2pipe_static_extension.T_http2pipe_static_extension.breakWithError(_p, _err);
    }
    static public function closeWithError(_p:T_http2pipe, _err:stdgo.Error):Void {
        stdgo._internal.net.http.Http_T_http2pipe_static_extension.T_http2pipe_static_extension.closeWithError(_p, _err);
    }
    static public function write(_p:T_http2pipe, _d:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = ([for (i in _d) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2pipe_static_extension.T_http2pipe_static_extension.write(_p, _d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_p:T_http2pipe, _d:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = ([for (i in _d) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2pipe_static_extension.T_http2pipe_static_extension.read(_p, _d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function len(_p:T_http2pipe):StdTypes.Int {
        return stdgo._internal.net.http.Http_T_http2pipe_static_extension.T_http2pipe_static_extension.len(_p);
    }
    static public function _setBuffer(_p:T_http2pipe, _b:T_http2pipeBuffer):Void {
        stdgo._internal.net.http.Http_T_http2pipe_static_extension.T_http2pipe_static_extension._setBuffer(_p, _b);
    }
}
typedef T_http2ServerPointer = stdgo._internal.net.http.Http_T_http2ServerPointer.T_http2ServerPointer;
class T_http2Server_static_extension {
    static public function serveConn(_s:T_http2Server, _c:stdgo._internal.net.Net_Conn.Conn, _opts:T_http2ServeConnOpts):Void {
        stdgo._internal.net.http.Http_T_http2Server_static_extension.T_http2Server_static_extension.serveConn(_s, _c, _opts);
    }
    static public function _maxQueuedControlFrames(_s:T_http2Server):StdTypes.Int {
        return stdgo._internal.net.http.Http_T_http2Server_static_extension.T_http2Server_static_extension._maxQueuedControlFrames(_s);
    }
    static public function _maxEncoderHeaderTableSize(_s:T_http2Server):std.UInt {
        return stdgo._internal.net.http.Http_T_http2Server_static_extension.T_http2Server_static_extension._maxEncoderHeaderTableSize(_s);
    }
    static public function _maxDecoderHeaderTableSize(_s:T_http2Server):std.UInt {
        return stdgo._internal.net.http.Http_T_http2Server_static_extension.T_http2Server_static_extension._maxDecoderHeaderTableSize(_s);
    }
    static public function _maxConcurrentStreams(_s:T_http2Server):std.UInt {
        return stdgo._internal.net.http.Http_T_http2Server_static_extension.T_http2Server_static_extension._maxConcurrentStreams(_s);
    }
    static public function _maxReadFrameSize(_s:T_http2Server):std.UInt {
        return stdgo._internal.net.http.Http_T_http2Server_static_extension.T_http2Server_static_extension._maxReadFrameSize(_s);
    }
    static public function _initialStreamRecvWindowSize(_s:T_http2Server):StdTypes.Int {
        return stdgo._internal.net.http.Http_T_http2Server_static_extension.T_http2Server_static_extension._initialStreamRecvWindowSize(_s);
    }
    static public function _initialConnRecvWindowSize(_s:T_http2Server):StdTypes.Int {
        return stdgo._internal.net.http.Http_T_http2Server_static_extension.T_http2Server_static_extension._initialConnRecvWindowSize(_s);
    }
}
typedef T_http2serverInternalStatePointer = stdgo._internal.net.http.Http_T_http2serverInternalStatePointer.T_http2serverInternalStatePointer;
class T_http2serverInternalState_static_extension {
    static public function _startGracefulShutdown(_s:T_http2serverInternalState):Void {
        stdgo._internal.net.http.Http_T_http2serverInternalState_static_extension.T_http2serverInternalState_static_extension._startGracefulShutdown(_s);
    }
    static public function _unregisterConn(_s:T_http2serverInternalState, _sc:T_http2serverConn):Void {
        stdgo._internal.net.http.Http_T_http2serverInternalState_static_extension.T_http2serverInternalState_static_extension._unregisterConn(_s, _sc);
    }
    static public function _registerConn(_s:T_http2serverInternalState, _sc:T_http2serverConn):Void {
        stdgo._internal.net.http.Http_T_http2serverInternalState_static_extension.T_http2serverInternalState_static_extension._registerConn(_s, _sc);
    }
}
typedef T_http2ServeConnOptsPointer = stdgo._internal.net.http.Http_T_http2ServeConnOptsPointer.T_http2ServeConnOptsPointer;
class T_http2ServeConnOpts_static_extension {
    static public function _handler(_o:T_http2ServeConnOpts):Handler {
        return stdgo._internal.net.http.Http_T_http2ServeConnOpts_static_extension.T_http2ServeConnOpts_static_extension._handler(_o);
    }
    static public function _baseConfig(_o:T_http2ServeConnOpts):Server {
        return stdgo._internal.net.http.Http_T_http2ServeConnOpts_static_extension.T_http2ServeConnOpts_static_extension._baseConfig(_o);
    }
    static public function _context(_o:T_http2ServeConnOpts):stdgo._internal.context.Context_Context.Context {
        return stdgo._internal.net.http.Http_T_http2ServeConnOpts_static_extension.T_http2ServeConnOpts_static_extension._context(_o);
    }
}
typedef T_http2serverConnPointer = stdgo._internal.net.http.Http_T_http2serverConnPointer.T_http2serverConnPointer;
class T_http2serverConn_static_extension {
    static public function _countError(_sc:T_http2serverConn, _name:String, _err:stdgo.Error):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._countError(_sc, _name, _err);
    }
    static public function _startPush(_sc:T_http2serverConn, _msg:T_http2startPushRequest):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._startPush(_sc, _msg);
    }
    static public function _sendWindowUpdate(_sc:T_http2serverConn, _st:T_http2stream, _n:StdTypes.Int):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._sendWindowUpdate(_sc, _st, _n);
    }
    static public function _sendWindowUpdate32(_sc:T_http2serverConn, _st:T_http2stream, _n:StdTypes.Int):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._sendWindowUpdate32(_sc, _st, _n);
    }
    static public function _noteBodyRead(_sc:T_http2serverConn, _st:T_http2stream, _n:StdTypes.Int):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._noteBodyRead(_sc, _st, _n);
    }
    static public function _noteBodyReadFromHandler(_sc:T_http2serverConn, _st:T_http2stream, _n:StdTypes.Int, _err:stdgo.Error):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._noteBodyReadFromHandler(_sc, _st, _n, _err);
    }
    static public function _write100ContinueHeaders(_sc:T_http2serverConn, _st:T_http2stream):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._write100ContinueHeaders(_sc, _st);
    }
    static public function _writeHeaders(_sc:T_http2serverConn, _st:T_http2stream, _headerData:T_http2writeResHeaders):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._writeHeaders(_sc, _st, _headerData);
    }
    static public function _runHandler(_sc:T_http2serverConn, _rw:T_http2responseWriter, _req:Request, _handler:(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) -> Void):Void {
        final _handler = _handler;
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._runHandler(_sc, _rw, _req, _handler);
    }
    static public function _handlerDone(_sc:T_http2serverConn):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._handlerDone(_sc);
    }
    static public function _scheduleHandler(_sc:T_http2serverConn, _streamID:std.UInt, _rw:T_http2responseWriter, _req:Request, _handler:(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) -> Void):stdgo.Error {
        final _handler = _handler;
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._scheduleHandler(_sc, _streamID, _rw, _req, _handler);
    }
    static public function _newResponseWriter(_sc:T_http2serverConn, _st:T_http2stream, _req:Request):T_http2responseWriter {
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._newResponseWriter(_sc, _st, _req);
    }
    static public function _newWriterAndRequestNoBody(_sc:T_http2serverConn, _st:T_http2stream, _rp:T_http2requestParam):stdgo.Tuple.Tuple3<T_http2responseWriter, Request, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._newWriterAndRequestNoBody(_sc, _st, _rp);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _newWriterAndRequest(_sc:T_http2serverConn, _st:T_http2stream, _f:T_http2MetaHeadersFrame):stdgo.Tuple.Tuple3<T_http2responseWriter, Request, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._newWriterAndRequest(_sc, _st, _f);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _newStream(_sc:T_http2serverConn, _id:std.UInt, _pusherID:std.UInt, _state:T_http2streamState):T_http2stream {
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._newStream(_sc, _id, _pusherID, _state);
    }
    static public function _processPriority(_sc:T_http2serverConn, _f:T_http2PriorityFrame):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._processPriority(_sc, _f);
    }
    static public function _checkPriority(_sc:T_http2serverConn, _streamID:std.UInt, _p:T_http2PriorityParam):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._checkPriority(_sc, _streamID, _p);
    }
    static public function _upgradeRequest(_sc:T_http2serverConn, _req:Request):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._upgradeRequest(_sc, _req);
    }
    static public function _processHeaders(_sc:T_http2serverConn, _f:T_http2MetaHeadersFrame):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._processHeaders(_sc, _f);
    }
    static public function _processGoAway(_sc:T_http2serverConn, _f:T_http2GoAwayFrame):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._processGoAway(_sc, _f);
    }
    static public function _processData(_sc:T_http2serverConn, _f:T_http2DataFrame):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._processData(_sc, _f);
    }
    static public function _processSettingInitialWindowSize(_sc:T_http2serverConn, _val:std.UInt):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._processSettingInitialWindowSize(_sc, _val);
    }
    static public function _processSetting(_sc:T_http2serverConn, _s:T_http2Setting):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._processSetting(_sc, _s);
    }
    static public function _processSettings(_sc:T_http2serverConn, _f:T_http2SettingsFrame):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._processSettings(_sc, _f);
    }
    static public function _closeStream(_sc:T_http2serverConn, _st:T_http2stream, _err:stdgo.Error):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._closeStream(_sc, _st, _err);
    }
    static public function _processResetStream(_sc:T_http2serverConn, _f:T_http2RSTStreamFrame):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._processResetStream(_sc, _f);
    }
    static public function _processWindowUpdate(_sc:T_http2serverConn, _f:T_http2WindowUpdateFrame):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._processWindowUpdate(_sc, _f);
    }
    static public function _processPing(_sc:T_http2serverConn, _f:T_http2PingFrame):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._processPing(_sc, _f);
    }
    static public function _processFrame(_sc:T_http2serverConn, _f:T_http2Frame):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._processFrame(_sc, _f);
    }
    static public function _processFrameFromReader(_sc:T_http2serverConn, _res:T_http2readFrameResult):Bool {
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._processFrameFromReader(_sc, _res);
    }
    static public function _resetStream(_sc:T_http2serverConn, _se:T_http2StreamError):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._resetStream(_sc, _se);
    }
    static public function _shutDownIn(_sc:T_http2serverConn, _d:stdgo._internal.time.Time_Duration.Duration):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._shutDownIn(_sc, _d);
    }
    static public function _goAway(_sc:T_http2serverConn, _code:T_http2ErrCode):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._goAway(_sc, _code);
    }
    static public function _startGracefulShutdownInternal(_sc:T_http2serverConn):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._startGracefulShutdownInternal(_sc);
    }
    static public function _startGracefulShutdown(_sc:T_http2serverConn):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._startGracefulShutdown(_sc);
    }
    static public function _scheduleFrameWrite(_sc:T_http2serverConn):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._scheduleFrameWrite(_sc);
    }
    static public function _wroteFrame(_sc:T_http2serverConn, _res:T_http2frameWriteResult):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._wroteFrame(_sc, _res);
    }
    static public function _startFrameWrite(_sc:T_http2serverConn, _wr:T_http2FrameWriteRequest):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._startFrameWrite(_sc, _wr);
    }
    static public function _writeFrame(_sc:T_http2serverConn, _wr:T_http2FrameWriteRequest):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._writeFrame(_sc, _wr);
    }
    static public function _writeFrameFromHandler(_sc:T_http2serverConn, _wr:T_http2FrameWriteRequest):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._writeFrameFromHandler(_sc, _wr);
    }
    static public function _writeDataFromHandler(_sc:T_http2serverConn, _stream:T_http2stream, _data:Array<std.UInt>, _endStream:Bool):stdgo.Error {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._writeDataFromHandler(_sc, _stream, _data, _endStream);
    }
    static public function _readPreface(_sc:T_http2serverConn):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._readPreface(_sc);
    }
    static public function _sendServeMsg(_sc:T_http2serverConn, _msg:stdgo.AnyInterface):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._sendServeMsg(_sc, _msg);
    }
    static public function _onShutdownTimer(_sc:T_http2serverConn):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._onShutdownTimer(_sc);
    }
    static public function _onIdleTimer(_sc:T_http2serverConn):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._onIdleTimer(_sc);
    }
    static public function _onSettingsTimer(_sc:T_http2serverConn):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._onSettingsTimer(_sc);
    }
    static public function _awaitGracefulShutdown(_sc:T_http2serverConn, _sharedCh:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>, _privateCh:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._awaitGracefulShutdown(_sc, _sharedCh, _privateCh);
    }
    static public function _serve(_sc:T_http2serverConn):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._serve(_sc);
    }
    static public function _notePanic(_sc:T_http2serverConn):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._notePanic(_sc);
    }
    static public function _stopShutdownTimer(_sc:T_http2serverConn):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._stopShutdownTimer(_sc);
    }
    static public function _closeAllStreamsOnConnClose(_sc:T_http2serverConn):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._closeAllStreamsOnConnClose(_sc);
    }
    static public function _writeFrameAsync(_sc:T_http2serverConn, _wr:T_http2FrameWriteRequest, _wd:T_http2writeData):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._writeFrameAsync(_sc, _wr, _wd);
    }
    static public function _readFrames(_sc:T_http2serverConn):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._readFrames(_sc);
    }
    static public function _canonicalHeader(_sc:T_http2serverConn, _v:String):String {
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._canonicalHeader(_sc, _v);
    }
    static public function _condlogf(_sc:T_http2serverConn, _err:stdgo.Error, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._condlogf(_sc, _err, _format, ...[for (i in _args) i]);
    }
    static public function _logf(_sc:T_http2serverConn, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._logf(_sc, _format, ...[for (i in _args) i]);
    }
    static public function _vlogf(_sc:T_http2serverConn, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._vlogf(_sc, _format, ...[for (i in _args) i]);
    }
    static public function _setConnState(_sc:T_http2serverConn, _state:ConnState):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._setConnState(_sc, _state);
    }
    static public function _state(_sc:T_http2serverConn, _streamID:std.UInt):stdgo.Tuple<T_http2streamState, T_http2stream> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._state(_sc, _streamID);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function headerEncoder(_sc:T_http2serverConn):stdgo.Tuple<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder, stdgo._internal.bytes.Bytes_Buffer.Buffer> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension.headerEncoder(_sc);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function flush(_sc:T_http2serverConn):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension.flush(_sc);
    }
    static public function closeConn(_sc:T_http2serverConn):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension.closeConn(_sc);
    }
    static public function framer(_sc:T_http2serverConn):T_http2Framer {
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension.framer(_sc);
    }
    static public function _curOpenStreams(_sc:T_http2serverConn):std.UInt {
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._curOpenStreams(_sc);
    }
    static public function _maxHeaderListSize(_sc:T_http2serverConn):std.UInt {
        return stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._maxHeaderListSize(_sc);
    }
    static public function _rejectConn(_sc:T_http2serverConn, _err:T_http2ErrCode, _debug:String):Void {
        stdgo._internal.net.http.Http_T_http2serverConn_static_extension.T_http2serverConn_static_extension._rejectConn(_sc, _err, _debug);
    }
}
typedef T_http2streamPointer = stdgo._internal.net.http.Http_T_http2streamPointer.T_http2streamPointer;
class T_http2stream_static_extension {
    static public function _processTrailerHeaders(_st:T_http2stream, _f:T_http2MetaHeadersFrame):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2stream_static_extension.T_http2stream_static_extension._processTrailerHeaders(_st, _f);
    }
    static public function _onWriteTimeout(_st:T_http2stream):Void {
        stdgo._internal.net.http.Http_T_http2stream_static_extension.T_http2stream_static_extension._onWriteTimeout(_st);
    }
    static public function _onReadTimeout(_st:T_http2stream):Void {
        stdgo._internal.net.http.Http_T_http2stream_static_extension.T_http2stream_static_extension._onReadTimeout(_st);
    }
    static public function _copyTrailersToHandlerRequest(_st:T_http2stream):Void {
        stdgo._internal.net.http.Http_T_http2stream_static_extension.T_http2stream_static_extension._copyTrailersToHandlerRequest(_st);
    }
    static public function _endStream(_st:T_http2stream):Void {
        stdgo._internal.net.http.Http_T_http2stream_static_extension.T_http2stream_static_extension._endStream(_st);
    }
    static public function _isPushed(_st:T_http2stream):Bool {
        return stdgo._internal.net.http.Http_T_http2stream_static_extension.T_http2stream_static_extension._isPushed(_st);
    }
}
typedef T_http2requestBodyPointer = stdgo._internal.net.http.Http_T_http2requestBodyPointer.T_http2requestBodyPointer;
class T_http2requestBody_static_extension {
    static public function read(_b:T_http2requestBody, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2requestBody_static_extension.T_http2requestBody_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_b:T_http2requestBody):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2requestBody_static_extension.T_http2requestBody_static_extension.close(_b);
    }
}
typedef T_http2responseWriterPointer = stdgo._internal.net.http.Http_T_http2responseWriterPointer.T_http2responseWriterPointer;
class T_http2responseWriter_static_extension {
    static public function push(_w:T_http2responseWriter, _target:String, _opts:PushOptions):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2responseWriter_static_extension.T_http2responseWriter_static_extension.push(_w, _target, _opts);
    }
    static public function _handlerDone(_w:T_http2responseWriter):Void {
        stdgo._internal.net.http.Http_T_http2responseWriter_static_extension.T_http2responseWriter_static_extension._handlerDone(_w);
    }
    static public function _write(_w:T_http2responseWriter, _lenData:StdTypes.Int, _dataB:Array<std.UInt>, _dataS:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _dataB = ([for (i in _dataB) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2responseWriter_static_extension.T_http2responseWriter_static_extension._write(_w, _lenData, _dataB, _dataS);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeString(_w:T_http2responseWriter, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2responseWriter_static_extension.T_http2responseWriter_static_extension.writeString(_w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_w:T_http2responseWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2responseWriter_static_extension.T_http2responseWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeHeader(_w:T_http2responseWriter, _code:StdTypes.Int):Void {
        stdgo._internal.net.http.Http_T_http2responseWriter_static_extension.T_http2responseWriter_static_extension.writeHeader(_w, _code);
    }
    static public function header(_w:T_http2responseWriter):Header {
        return stdgo._internal.net.http.Http_T_http2responseWriter_static_extension.T_http2responseWriter_static_extension.header(_w);
    }
    static public function closeNotify(_w:T_http2responseWriter):stdgo.Chan<Bool> {
        return stdgo._internal.net.http.Http_T_http2responseWriter_static_extension.T_http2responseWriter_static_extension.closeNotify(_w);
    }
    static public function flushError(_w:T_http2responseWriter):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2responseWriter_static_extension.T_http2responseWriter_static_extension.flushError(_w);
    }
    static public function flush(_w:T_http2responseWriter):Void {
        stdgo._internal.net.http.Http_T_http2responseWriter_static_extension.T_http2responseWriter_static_extension.flush(_w);
    }
    static public function setWriteDeadline(_w:T_http2responseWriter, _deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2responseWriter_static_extension.T_http2responseWriter_static_extension.setWriteDeadline(_w, _deadline);
    }
    static public function setReadDeadline(_w:T_http2responseWriter, _deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2responseWriter_static_extension.T_http2responseWriter_static_extension.setReadDeadline(_w, _deadline);
    }
}
typedef T_http2responseWriterStatePointer = stdgo._internal.net.http.Http_T_http2responseWriterStatePointer.T_http2responseWriterStatePointer;
class T_http2responseWriterState_static_extension {
    static public function _writeHeader(_rws:T_http2responseWriterState, _code:StdTypes.Int):Void {
        stdgo._internal.net.http.Http_T_http2responseWriterState_static_extension.T_http2responseWriterState_static_extension._writeHeader(_rws, _code);
    }
    static public function _promoteUndeclaredTrailers(_rws:T_http2responseWriterState):Void {
        stdgo._internal.net.http.Http_T_http2responseWriterState_static_extension.T_http2responseWriterState_static_extension._promoteUndeclaredTrailers(_rws);
    }
    static public function _writeChunk(_rws:T_http2responseWriterState, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2responseWriterState_static_extension.T_http2responseWriterState_static_extension._writeChunk(_rws, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _declareTrailer(_rws:T_http2responseWriterState, _k:String):Void {
        stdgo._internal.net.http.Http_T_http2responseWriterState_static_extension.T_http2responseWriterState_static_extension._declareTrailer(_rws, _k);
    }
    static public function _hasNonemptyTrailers(_rws:T_http2responseWriterState):Bool {
        return stdgo._internal.net.http.Http_T_http2responseWriterState_static_extension.T_http2responseWriterState_static_extension._hasNonemptyTrailers(_rws);
    }
    static public function _hasTrailers(_rws:T_http2responseWriterState):Bool {
        return stdgo._internal.net.http.Http_T_http2responseWriterState_static_extension.T_http2responseWriterState_static_extension._hasTrailers(_rws);
    }
}
typedef T_http2chunkWriterPointer = stdgo._internal.net.http.Http_T_http2chunkWriterPointer.T_http2chunkWriterPointer;
class T_http2chunkWriter_static_extension {
    static public function write(_cw:T_http2chunkWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2chunkWriter_static_extension.T_http2chunkWriter_static_extension.write(_cw, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_http2TransportPointer = stdgo._internal.net.http.Http_T_http2TransportPointer.T_http2TransportPointer;
class T_http2Transport_static_extension {
    static public function _idleConnTimeout(_t:T_http2Transport):stdgo._internal.time.Time_Duration.Duration {
        return stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension._idleConnTimeout(_t);
    }
    static public function _logf(_t:T_http2Transport, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension._logf(_t, _format, ...[for (i in _args) i]);
    }
    static public function _vlogf(_t:T_http2Transport, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension._vlogf(_t, _format, ...[for (i in _args) i]);
    }
    static public function _newClientConn(_t:T_http2Transport, _c:stdgo._internal.net.Net_Conn.Conn, _singleUse:Bool):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension._newClientConn(_t, _c, _singleUse);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function newClientConn(_t:T_http2Transport, _c:stdgo._internal.net.Net_Conn.Conn):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension.newClientConn(_t, _c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _maxEncoderHeaderTableSize(_t:T_http2Transport):std.UInt {
        return stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension._maxEncoderHeaderTableSize(_t);
    }
    static public function _maxDecoderHeaderTableSize(_t:T_http2Transport):std.UInt {
        return stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension._maxDecoderHeaderTableSize(_t);
    }
    static public function _expectContinueTimeout(_t:T_http2Transport):stdgo._internal.time.Time_Duration.Duration {
        return stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension._expectContinueTimeout(_t);
    }
    static public function _disableKeepAlives(_t:T_http2Transport):Bool {
        return stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension._disableKeepAlives(_t);
    }
    static public function _dialTLS(_t:T_http2Transport, _ctx:stdgo._internal.context.Context_Context.Context, _network:String, _addr:String, _tlsCfg:stdgo._internal.crypto.tls.Tls_Config.Config):stdgo.Tuple<stdgo._internal.net.Net_Conn.Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension._dialTLS(_t, _ctx, _network, _addr, _tlsCfg);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _newTLSConfig(_t:T_http2Transport, _host:String):stdgo._internal.crypto.tls.Tls_Config.Config {
        return stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension._newTLSConfig(_t, _host);
    }
    static public function _dialClientConn(_t:T_http2Transport, _ctx:stdgo._internal.context.Context_Context.Context, _addr:String, _singleUse:Bool):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension._dialClientConn(_t, _ctx, _addr, _singleUse);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function closeIdleConnections(_t:T_http2Transport):Void {
        stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension.closeIdleConnections(_t);
    }
    static public function roundTripOpt(_t:T_http2Transport, _req:Request, _opt:T_http2RoundTripOpt):stdgo.Tuple<Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension.roundTripOpt(_t, _req, _opt);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function roundTrip(_t:T_http2Transport, _req:Request):stdgo.Tuple<Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension.roundTrip(_t, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _initConnPool(_t:T_http2Transport):Void {
        stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension._initConnPool(_t);
    }
    static public function _connPool(_t:T_http2Transport):T_http2ClientConnPool {
        return stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension._connPool(_t);
    }
    static public function _pingTimeout(_t:T_http2Transport):stdgo._internal.time.Time_Duration.Duration {
        return stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension._pingTimeout(_t);
    }
    static public function _disableCompression(_t:T_http2Transport):Bool {
        return stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension._disableCompression(_t);
    }
    static public function _maxFrameReadSize(_t:T_http2Transport):std.UInt {
        return stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension._maxFrameReadSize(_t);
    }
    static public function _maxHeaderListSize(_t:T_http2Transport):std.UInt {
        return stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension._maxHeaderListSize(_t);
    }
    static public function _dialTLSWithContext(_t:T_http2Transport, _ctx:stdgo._internal.context.Context_Context.Context, _network:String, _addr:String, _cfg:stdgo._internal.crypto.tls.Tls_Config.Config):stdgo.Tuple<stdgo._internal.crypto.tls.Tls_Conn.Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2Transport_static_extension.T_http2Transport_static_extension._dialTLSWithContext(_t, _ctx, _network, _addr, _cfg);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_http2ClientConnPointer = stdgo._internal.net.http.Http_T_http2ClientConnPointer.T_http2ClientConnPointer;
class T_http2ClientConn_static_extension {
    static public function _vlogf(_cc:T_http2ClientConn, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._vlogf(_cc, _format, ...[for (i in _args) i]);
    }
    static public function _logf(_cc:T_http2ClientConn, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._logf(_cc, _format, ...[for (i in _args) i]);
    }
    static public function _writeStreamReset(_cc:T_http2ClientConn, _streamID:std.UInt, _code:T_http2ErrCode, _err:stdgo.Error):Void {
        stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._writeStreamReset(_cc, _streamID, _code, _err);
    }
    static public function ping(_cc:T_http2ClientConn, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension.ping(_cc, _ctx);
    }
    static public function _countReadFrameError(_cc:T_http2ClientConn, _err:stdgo.Error):Void {
        stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._countReadFrameError(_cc, _err);
    }
    static public function _readLoop(_cc:T_http2ClientConn):Void {
        stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._readLoop(_cc);
    }
    static public function _forgetStreamID(_cc:T_http2ClientConn, _id:std.UInt):Void {
        stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._forgetStreamID(_cc, _id);
    }
    static public function _addStreamLocked(_cc:T_http2ClientConn, _cs:T_http2clientStream):Void {
        stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._addStreamLocked(_cc, _cs);
    }
    static public function _writeHeader(_cc:T_http2ClientConn, _name:String, _value:String):Void {
        stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._writeHeader(_cc, _name, _value);
    }
    static public function _encodeTrailers(_cc:T_http2ClientConn, _trailer:Header):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._encodeTrailers(_cc, _trailer);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _encodeHeaders(_cc:T_http2ClientConn, _req:Request, _addGzipHeader:Bool, _trailers:String, _contentLength:haxe.Int64):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._encodeHeaders(_cc, _req, _addGzipHeader, _trailers, _contentLength);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _writeHeaders(_cc:T_http2ClientConn, _streamID:std.UInt, _endStream:Bool, _maxFrameSize:StdTypes.Int, _hdrs:Array<std.UInt>):stdgo.Error {
        final _hdrs = ([for (i in _hdrs) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._writeHeaders(_cc, _streamID, _endStream, _maxFrameSize, _hdrs);
    }
    static public function _awaitOpenSlotForStreamLocked(_cc:T_http2ClientConn, _cs:T_http2clientStream):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._awaitOpenSlotForStreamLocked(_cc, _cs);
    }
    static public function roundTrip(_cc:T_http2ClientConn, _req:Request):stdgo.Tuple<Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension.roundTrip(_cc, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _decrStreamReservationsLocked(_cc:T_http2ClientConn):Void {
        stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._decrStreamReservationsLocked(_cc);
    }
    static public function _decrStreamReservations(_cc:T_http2ClientConn):Void {
        stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._decrStreamReservations(_cc);
    }
    static public function _responseHeaderTimeout(_cc:T_http2ClientConn):stdgo._internal.time.Time_Duration.Duration {
        return stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._responseHeaderTimeout(_cc);
    }
    static public function _closeForLostPing(_cc:T_http2ClientConn):Void {
        stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._closeForLostPing(_cc);
    }
    static public function close(_cc:T_http2ClientConn):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension.close(_cc);
    }
    static public function _closeForError(_cc:T_http2ClientConn, _err:stdgo.Error):Void {
        stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._closeForError(_cc, _err);
    }
    static public function _sendGoAway(_cc:T_http2ClientConn):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._sendGoAway(_cc);
    }
    static public function shutdown(_cc:T_http2ClientConn, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension.shutdown(_cc, _ctx);
    }
    static public function _isDoNotReuseAndIdle(_cc:T_http2ClientConn):Bool {
        return stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._isDoNotReuseAndIdle(_cc);
    }
    static public function _closeIfIdle(_cc:T_http2ClientConn):Void {
        stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._closeIfIdle(_cc);
    }
    static public function _forceCloseConn(_cc:T_http2ClientConn):Void {
        stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._forceCloseConn(_cc);
    }
    static public function _closeConn(_cc:T_http2ClientConn):Void {
        stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._closeConn(_cc);
    }
    static public function _onIdleTimeout(_cc:T_http2ClientConn):Void {
        stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._onIdleTimeout(_cc);
    }
    static public function _tooIdleLocked(_cc:T_http2ClientConn):Bool {
        return stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._tooIdleLocked(_cc);
    }
    static public function _canTakeNewRequestLocked(_cc:T_http2ClientConn):Bool {
        return stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._canTakeNewRequestLocked(_cc);
    }
    static public function _idleStateLocked(_cc:T_http2ClientConn):T_http2clientConnIdleState {
        return stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._idleStateLocked(_cc);
    }
    static public function _idleState(_cc:T_http2ClientConn):T_http2clientConnIdleState {
        return stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._idleState(_cc);
    }
    static public function state(_cc:T_http2ClientConn):T_http2ClientConnState {
        return stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension.state(_cc);
    }
    static public function reserveNewRequest(_cc:T_http2ClientConn):Bool {
        return stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension.reserveNewRequest(_cc);
    }
    static public function canTakeNewRequest(_cc:T_http2ClientConn):Bool {
        return stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension.canTakeNewRequest(_cc);
    }
    static public function _setGoAway(_cc:T_http2ClientConn, _f:T_http2GoAwayFrame):Void {
        stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._setGoAway(_cc, _f);
    }
    static public function setDoNotReuse(_cc:T_http2ClientConn):Void {
        stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension.setDoNotReuse(_cc);
    }
    static public function _healthCheck(_cc:T_http2ClientConn):Void {
        stdgo._internal.net.http.Http_T_http2ClientConn_static_extension.T_http2ClientConn_static_extension._healthCheck(_cc);
    }
}
typedef T_http2clientStreamPointer = stdgo._internal.net.http.Http_T_http2clientStreamPointer.T_http2clientStreamPointer;
class T_http2clientStream_static_extension {
    static public function _copyTrailers(_cs:T_http2clientStream):Void {
        stdgo._internal.net.http.Http_T_http2clientStream_static_extension.T_http2clientStream_static_extension._copyTrailers(_cs);
    }
    static public function _awaitFlowControl(_cs:T_http2clientStream, _maxBytes:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2clientStream_static_extension.T_http2clientStream_static_extension._awaitFlowControl(_cs, _maxBytes);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _writeRequestBody(_cs:T_http2clientStream, _req:Request):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2clientStream_static_extension.T_http2clientStream_static_extension._writeRequestBody(_cs, _req);
    }
    static public function _frameScratchBufferLen(_cs:T_http2clientStream, _maxFrameSize:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.net.http.Http_T_http2clientStream_static_extension.T_http2clientStream_static_extension._frameScratchBufferLen(_cs, _maxFrameSize);
    }
    static public function _cleanupWriteRequest(_cs:T_http2clientStream, _err:stdgo.Error):Void {
        stdgo._internal.net.http.Http_T_http2clientStream_static_extension.T_http2clientStream_static_extension._cleanupWriteRequest(_cs, _err);
    }
    static public function _encodeAndWriteHeaders(_cs:T_http2clientStream, _req:Request):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2clientStream_static_extension.T_http2clientStream_static_extension._encodeAndWriteHeaders(_cs, _req);
    }
    static public function _writeRequest(_cs:T_http2clientStream, _req:Request):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2clientStream_static_extension.T_http2clientStream_static_extension._writeRequest(_cs, _req);
    }
    static public function _doRequest(_cs:T_http2clientStream, _req:Request):Void {
        stdgo._internal.net.http.Http_T_http2clientStream_static_extension.T_http2clientStream_static_extension._doRequest(_cs, _req);
    }
    static public function _closeReqBodyLocked(_cs:T_http2clientStream):Void {
        stdgo._internal.net.http.Http_T_http2clientStream_static_extension.T_http2clientStream_static_extension._closeReqBodyLocked(_cs);
    }
    static public function _abortRequestBodyWrite(_cs:T_http2clientStream):Void {
        stdgo._internal.net.http.Http_T_http2clientStream_static_extension.T_http2clientStream_static_extension._abortRequestBodyWrite(_cs);
    }
    static public function _abortStreamLocked(_cs:T_http2clientStream, _err:stdgo.Error):Void {
        stdgo._internal.net.http.Http_T_http2clientStream_static_extension.T_http2clientStream_static_extension._abortStreamLocked(_cs, _err);
    }
    static public function _abortStream(_cs:T_http2clientStream, _err:stdgo.Error):Void {
        stdgo._internal.net.http.Http_T_http2clientStream_static_extension.T_http2clientStream_static_extension._abortStream(_cs, _err);
    }
    static public function _get1xxTraceFunc(_cs:T_http2clientStream):(stdgo.GoInt, stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader) -> stdgo.Error {
        return (_0, _1) -> stdgo._internal.net.http.Http_T_http2clientStream_static_extension.T_http2clientStream_static_extension._get1xxTraceFunc(_cs)(_0, _1);
    }
}
typedef T_http2stickyErrWriterPointer = stdgo._internal.net.http.Http_T_http2stickyErrWriterPointer.T_http2stickyErrWriterPointer;
class T_http2stickyErrWriter_static_extension {
    static public function write(_sew:T_http2stickyErrWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2stickyErrWriter_static_extension.T_http2stickyErrWriter_static_extension.write(_sew, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_http2noCachedConnErrorPointer = stdgo._internal.net.http.Http_T_http2noCachedConnErrorPointer.T_http2noCachedConnErrorPointer;
class T_http2noCachedConnError_static_extension {
    static public function error(_:T_http2noCachedConnError):String {
        return stdgo._internal.net.http.Http_T_http2noCachedConnError_static_extension.T_http2noCachedConnError_static_extension.error(_);
    }
    static public function isHTTP2NoCachedConnError(_:T_http2noCachedConnError):Void {
        stdgo._internal.net.http.Http_T_http2noCachedConnError_static_extension.T_http2noCachedConnError_static_extension.isHTTP2NoCachedConnError(_);
    }
}
typedef T_http2clientConnReadLoopPointer = stdgo._internal.net.http.Http_T_http2clientConnReadLoopPointer.T_http2clientConnReadLoopPointer;
class T_http2clientConnReadLoop_static_extension {
    static public function _processPushPromise(_rl:T_http2clientConnReadLoop, _f:T_http2PushPromiseFrame):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2clientConnReadLoop_static_extension.T_http2clientConnReadLoop_static_extension._processPushPromise(_rl, _f);
    }
    static public function _processPing(_rl:T_http2clientConnReadLoop, _f:T_http2PingFrame):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2clientConnReadLoop_static_extension.T_http2clientConnReadLoop_static_extension._processPing(_rl, _f);
    }
    static public function _processResetStream(_rl:T_http2clientConnReadLoop, _f:T_http2RSTStreamFrame):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2clientConnReadLoop_static_extension.T_http2clientConnReadLoop_static_extension._processResetStream(_rl, _f);
    }
    static public function _processWindowUpdate(_rl:T_http2clientConnReadLoop, _f:T_http2WindowUpdateFrame):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2clientConnReadLoop_static_extension.T_http2clientConnReadLoop_static_extension._processWindowUpdate(_rl, _f);
    }
    static public function _processSettingsNoWrite(_rl:T_http2clientConnReadLoop, _f:T_http2SettingsFrame):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2clientConnReadLoop_static_extension.T_http2clientConnReadLoop_static_extension._processSettingsNoWrite(_rl, _f);
    }
    static public function _processSettings(_rl:T_http2clientConnReadLoop, _f:T_http2SettingsFrame):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2clientConnReadLoop_static_extension.T_http2clientConnReadLoop_static_extension._processSettings(_rl, _f);
    }
    static public function _processGoAway(_rl:T_http2clientConnReadLoop, _f:T_http2GoAwayFrame):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2clientConnReadLoop_static_extension.T_http2clientConnReadLoop_static_extension._processGoAway(_rl, _f);
    }
    static public function _streamByID(_rl:T_http2clientConnReadLoop, _id:std.UInt):T_http2clientStream {
        return stdgo._internal.net.http.Http_T_http2clientConnReadLoop_static_extension.T_http2clientConnReadLoop_static_extension._streamByID(_rl, _id);
    }
    static public function _endStreamError(_rl:T_http2clientConnReadLoop, _cs:T_http2clientStream, _err:stdgo.Error):Void {
        stdgo._internal.net.http.Http_T_http2clientConnReadLoop_static_extension.T_http2clientConnReadLoop_static_extension._endStreamError(_rl, _cs, _err);
    }
    static public function _endStream(_rl:T_http2clientConnReadLoop, _cs:T_http2clientStream):Void {
        stdgo._internal.net.http.Http_T_http2clientConnReadLoop_static_extension.T_http2clientConnReadLoop_static_extension._endStream(_rl, _cs);
    }
    static public function _processData(_rl:T_http2clientConnReadLoop, _f:T_http2DataFrame):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2clientConnReadLoop_static_extension.T_http2clientConnReadLoop_static_extension._processData(_rl, _f);
    }
    static public function _processTrailers(_rl:T_http2clientConnReadLoop, _cs:T_http2clientStream, _f:T_http2MetaHeadersFrame):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2clientConnReadLoop_static_extension.T_http2clientConnReadLoop_static_extension._processTrailers(_rl, _cs, _f);
    }
    static public function _handleResponse(_rl:T_http2clientConnReadLoop, _cs:T_http2clientStream, _f:T_http2MetaHeadersFrame):stdgo.Tuple<Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2clientConnReadLoop_static_extension.T_http2clientConnReadLoop_static_extension._handleResponse(_rl, _cs, _f);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _processHeaders(_rl:T_http2clientConnReadLoop, _f:T_http2MetaHeadersFrame):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2clientConnReadLoop_static_extension.T_http2clientConnReadLoop_static_extension._processHeaders(_rl, _f);
    }
    static public function _run(_rl:T_http2clientConnReadLoop):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2clientConnReadLoop_static_extension.T_http2clientConnReadLoop_static_extension._run(_rl);
    }
    static public function _cleanup(_rl:T_http2clientConnReadLoop):Void {
        stdgo._internal.net.http.Http_T_http2clientConnReadLoop_static_extension.T_http2clientConnReadLoop_static_extension._cleanup(_rl);
    }
}
typedef T_http2GoAwayErrorPointer = stdgo._internal.net.http.Http_T_http2GoAwayErrorPointer.T_http2GoAwayErrorPointer;
class T_http2GoAwayError_static_extension {
    static public function error(_e:T_http2GoAwayError):String {
        return stdgo._internal.net.http.Http_T_http2GoAwayError_static_extension.T_http2GoAwayError_static_extension.error(_e);
    }
}
typedef T_http2transportResponseBodyPointer = stdgo._internal.net.http.Http_T_http2transportResponseBodyPointer.T_http2transportResponseBodyPointer;
class T_http2transportResponseBody_static_extension {
    static public function close(_b:T_http2transportResponseBody):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2transportResponseBody_static_extension.T_http2transportResponseBody_static_extension.close(_b);
    }
    static public function read(_b:T_http2transportResponseBody, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2transportResponseBody_static_extension.T_http2transportResponseBody_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_http2noBodyReaderPointer = stdgo._internal.net.http.Http_T_http2noBodyReaderPointer.T_http2noBodyReaderPointer;
class T_http2noBodyReader_static_extension {
    static public function read(_:T_http2noBodyReader, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2noBodyReader_static_extension.T_http2noBodyReader_static_extension.read(_, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_:T_http2noBodyReader):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2noBodyReader_static_extension.T_http2noBodyReader_static_extension.close(_);
    }
}
typedef T_http2missingBodyPointer = stdgo._internal.net.http.Http_T_http2missingBodyPointer.T_http2missingBodyPointer;
class T_http2missingBody_static_extension {
    static public function read(_:T_http2missingBody, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2missingBody_static_extension.T_http2missingBody_static_extension.read(_, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_:T_http2missingBody):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2missingBody_static_extension.T_http2missingBody_static_extension.close(_);
    }
}
typedef T_http2erringRoundTripperPointer = stdgo._internal.net.http.Http_T_http2erringRoundTripperPointer.T_http2erringRoundTripperPointer;
class T_http2erringRoundTripper_static_extension {
    static public function roundTrip(_rt:T_http2erringRoundTripper, _0:Request):stdgo.Tuple<Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2erringRoundTripper_static_extension.T_http2erringRoundTripper_static_extension.roundTrip(_rt, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function roundTripErr(_rt:T_http2erringRoundTripper):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2erringRoundTripper_static_extension.T_http2erringRoundTripper_static_extension.roundTripErr(_rt);
    }
}
typedef T_http2gzipReaderPointer = stdgo._internal.net.http.Http_T_http2gzipReaderPointer.T_http2gzipReaderPointer;
class T_http2gzipReader_static_extension {
    static public function close(_gz:T_http2gzipReader):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2gzipReader_static_extension.T_http2gzipReader_static_extension.close(_gz);
    }
    static public function read(_gz:T_http2gzipReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2gzipReader_static_extension.T_http2gzipReader_static_extension.read(_gz, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_http2errorReaderPointer = stdgo._internal.net.http.Http_T_http2errorReaderPointer.T_http2errorReaderPointer;
class T_http2errorReader_static_extension {
    static public function read(_r:T_http2errorReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2errorReader_static_extension.T_http2errorReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_http2noDialH2RoundTripperPointer = stdgo._internal.net.http.Http_T_http2noDialH2RoundTripperPointer.T_http2noDialH2RoundTripperPointer;
class T_http2noDialH2RoundTripper_static_extension {
    static public function roundTrip(_rt:T_http2noDialH2RoundTripper, _req:Request):stdgo.Tuple<Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension.roundTrip(_rt, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _vlogf(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._vlogf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function _pingTimeout(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):stdgo._internal.time.Time_Duration.Duration {
        return stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._pingTimeout(__self__);
    }
    public static function _newTLSConfig(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _0:String):stdgo._internal.crypto.tls.Tls_Config.Config {
        return stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._newTLSConfig(__self__, _0);
    }
    public static function _newClientConn(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _0:stdgo._internal.net.Net_Conn.Conn, _1:Bool):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._newClientConn(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _maxHeaderListSize(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):std.UInt {
        return stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._maxHeaderListSize(__self__);
    }
    public static function _maxFrameReadSize(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):std.UInt {
        return stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._maxFrameReadSize(__self__);
    }
    public static function _maxEncoderHeaderTableSize(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):std.UInt {
        return stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._maxEncoderHeaderTableSize(__self__);
    }
    public static function _maxDecoderHeaderTableSize(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):std.UInt {
        return stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._maxDecoderHeaderTableSize(__self__);
    }
    public static function _logf(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _0:String, _1:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._logf(__self__, _0, ...[for (i in _1) i]);
    }
    public static function _initConnPool(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):Void {
        stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._initConnPool(__self__);
    }
    public static function _idleConnTimeout(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):stdgo._internal.time.Time_Duration.Duration {
        return stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._idleConnTimeout(__self__);
    }
    public static function _expectContinueTimeout(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):stdgo._internal.time.Time_Duration.Duration {
        return stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._expectContinueTimeout(__self__);
    }
    public static function _disableKeepAlives(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):Bool {
        return stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._disableKeepAlives(__self__);
    }
    public static function _disableCompression(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):Bool {
        return stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._disableCompression(__self__);
    }
    public static function _dialTLSWithContext(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _0:stdgo._internal.context.Context_Context.Context, _1:String, _2:String, _3:stdgo._internal.crypto.tls.Tls_Config.Config):stdgo.Tuple<stdgo._internal.crypto.tls.Tls_Conn.Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._dialTLSWithContext(__self__, _0, _1, _2, _3);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _dialTLS(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _0:stdgo._internal.context.Context_Context.Context, _1:String, _2:String, _3:stdgo._internal.crypto.tls.Tls_Config.Config):stdgo.Tuple<stdgo._internal.net.Net_Conn.Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._dialTLS(__self__, _0, _1, _2, _3);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _dialClientConn(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _0:stdgo._internal.context.Context_Context.Context, _1:String, _2:Bool):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._dialClientConn(__self__, _0, _1, _2);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _connPool(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):T_http2ClientConnPool {
        return stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension._connPool(__self__);
    }
    public static function roundTripOpt(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _0:Request, _1:T_http2RoundTripOpt):stdgo.Tuple<Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension.roundTripOpt(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function newClientConn(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper, _0:stdgo._internal.net.Net_Conn.Conn):stdgo.Tuple<T_http2ClientConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension.newClientConn(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function closeIdleConnections(__self__:stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper.T_http2noDialH2RoundTripper):Void {
        stdgo._internal.net.http.Http_T_http2noDialH2RoundTripper_static_extension.T_http2noDialH2RoundTripper_static_extension.closeIdleConnections(__self__);
    }
}
typedef T_http2flushFrameWriterPointer = stdgo._internal.net.http.Http_T_http2flushFrameWriterPointer.T_http2flushFrameWriterPointer;
class T_http2flushFrameWriter_static_extension {
    static public function _staysWithinBuffer(_:T_http2flushFrameWriter, _max:StdTypes.Int):Bool {
        return stdgo._internal.net.http.Http_T_http2flushFrameWriter_static_extension.T_http2flushFrameWriter_static_extension._staysWithinBuffer(_, _max);
    }
    static public function _writeFrame(_:T_http2flushFrameWriter, _ctx:T_http2writeContext):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2flushFrameWriter_static_extension.T_http2flushFrameWriter_static_extension._writeFrame(_, _ctx);
    }
}
typedef T_http2writeGoAwayPointer = stdgo._internal.net.http.Http_T_http2writeGoAwayPointer.T_http2writeGoAwayPointer;
class T_http2writeGoAway_static_extension {
    static public function _staysWithinBuffer(_:T_http2writeGoAway, _max:StdTypes.Int):Bool {
        return stdgo._internal.net.http.Http_T_http2writeGoAway_static_extension.T_http2writeGoAway_static_extension._staysWithinBuffer(_, _max);
    }
    static public function _writeFrame(_p:T_http2writeGoAway, _ctx:T_http2writeContext):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2writeGoAway_static_extension.T_http2writeGoAway_static_extension._writeFrame(_p, _ctx);
    }
}
typedef T_http2writeDataPointer = stdgo._internal.net.http.Http_T_http2writeDataPointer.T_http2writeDataPointer;
class T_http2writeData_static_extension {
    static public function _staysWithinBuffer(_w:T_http2writeData, _max:StdTypes.Int):Bool {
        return stdgo._internal.net.http.Http_T_http2writeData_static_extension.T_http2writeData_static_extension._staysWithinBuffer(_w, _max);
    }
    static public function _writeFrame(_w:T_http2writeData, _ctx:T_http2writeContext):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2writeData_static_extension.T_http2writeData_static_extension._writeFrame(_w, _ctx);
    }
    static public function string(_w:T_http2writeData):String {
        return stdgo._internal.net.http.Http_T_http2writeData_static_extension.T_http2writeData_static_extension.string(_w);
    }
}
typedef T_http2handlerPanicRSTPointer = stdgo._internal.net.http.Http_T_http2handlerPanicRSTPointer.T_http2handlerPanicRSTPointer;
class T_http2handlerPanicRST_static_extension {
    static public function _staysWithinBuffer(_hp:T_http2handlerPanicRST, _max:StdTypes.Int):Bool {
        return stdgo._internal.net.http.Http_T_http2handlerPanicRST_static_extension.T_http2handlerPanicRST_static_extension._staysWithinBuffer(_hp, _max);
    }
    static public function _writeFrame(_hp:T_http2handlerPanicRST, _ctx:T_http2writeContext):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2handlerPanicRST_static_extension.T_http2handlerPanicRST_static_extension._writeFrame(_hp, _ctx);
    }
}
typedef T_http2writePingAckPointer = stdgo._internal.net.http.Http_T_http2writePingAckPointer.T_http2writePingAckPointer;
class T_http2writePingAck_static_extension {
    static public function _staysWithinBuffer(_w:T_http2writePingAck, _max:StdTypes.Int):Bool {
        return stdgo._internal.net.http.Http_T_http2writePingAck_static_extension.T_http2writePingAck_static_extension._staysWithinBuffer(_w, _max);
    }
    static public function _writeFrame(_w:T_http2writePingAck, _ctx:T_http2writeContext):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2writePingAck_static_extension.T_http2writePingAck_static_extension._writeFrame(_w, _ctx);
    }
}
typedef T_http2writeSettingsAckPointer = stdgo._internal.net.http.Http_T_http2writeSettingsAckPointer.T_http2writeSettingsAckPointer;
class T_http2writeSettingsAck_static_extension {
    static public function _staysWithinBuffer(_:T_http2writeSettingsAck, _max:StdTypes.Int):Bool {
        return stdgo._internal.net.http.Http_T_http2writeSettingsAck_static_extension.T_http2writeSettingsAck_static_extension._staysWithinBuffer(_, _max);
    }
    static public function _writeFrame(_:T_http2writeSettingsAck, _ctx:T_http2writeContext):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2writeSettingsAck_static_extension.T_http2writeSettingsAck_static_extension._writeFrame(_, _ctx);
    }
}
typedef T_http2writeResHeadersPointer = stdgo._internal.net.http.Http_T_http2writeResHeadersPointer.T_http2writeResHeadersPointer;
class T_http2writeResHeaders_static_extension {
    static public function _writeHeaderBlock(_w:T_http2writeResHeaders, _ctx:T_http2writeContext, _frag:Array<std.UInt>, _firstFrag:Bool, _lastFrag:Bool):stdgo.Error {
        final _frag = ([for (i in _frag) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_T_http2writeResHeaders_static_extension.T_http2writeResHeaders_static_extension._writeHeaderBlock(_w, _ctx, _frag, _firstFrag, _lastFrag);
    }
    static public function _writeFrame(_w:T_http2writeResHeaders, _ctx:T_http2writeContext):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2writeResHeaders_static_extension.T_http2writeResHeaders_static_extension._writeFrame(_w, _ctx);
    }
    static public function _staysWithinBuffer(_w:T_http2writeResHeaders, _max:StdTypes.Int):Bool {
        return stdgo._internal.net.http.Http_T_http2writeResHeaders_static_extension.T_http2writeResHeaders_static_extension._staysWithinBuffer(_w, _max);
    }
}
typedef T_http2writePushPromisePointer = stdgo._internal.net.http.Http_T_http2writePushPromisePointer.T_http2writePushPromisePointer;
class T_http2writePushPromise_static_extension {
    static public function _writeHeaderBlock(_w:T_http2writePushPromise, _ctx:T_http2writeContext, _frag:Array<std.UInt>, _firstFrag:Bool, _lastFrag:Bool):stdgo.Error {
        final _frag = ([for (i in _frag) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_T_http2writePushPromise_static_extension.T_http2writePushPromise_static_extension._writeHeaderBlock(_w, _ctx, _frag, _firstFrag, _lastFrag);
    }
    static public function _writeFrame(_w:T_http2writePushPromise, _ctx:T_http2writeContext):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2writePushPromise_static_extension.T_http2writePushPromise_static_extension._writeFrame(_w, _ctx);
    }
    static public function _staysWithinBuffer(_w:T_http2writePushPromise, _max:StdTypes.Int):Bool {
        return stdgo._internal.net.http.Http_T_http2writePushPromise_static_extension.T_http2writePushPromise_static_extension._staysWithinBuffer(_w, _max);
    }
}
typedef T_http2write100ContinueHeadersFramePointer = stdgo._internal.net.http.Http_T_http2write100ContinueHeadersFramePointer.T_http2write100ContinueHeadersFramePointer;
class T_http2write100ContinueHeadersFrame_static_extension {
    static public function _staysWithinBuffer(_w:T_http2write100ContinueHeadersFrame, _max:StdTypes.Int):Bool {
        return stdgo._internal.net.http.Http_T_http2write100ContinueHeadersFrame_static_extension.T_http2write100ContinueHeadersFrame_static_extension._staysWithinBuffer(_w, _max);
    }
    static public function _writeFrame(_w:T_http2write100ContinueHeadersFrame, _ctx:T_http2writeContext):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2write100ContinueHeadersFrame_static_extension.T_http2write100ContinueHeadersFrame_static_extension._writeFrame(_w, _ctx);
    }
}
typedef T_http2writeWindowUpdatePointer = stdgo._internal.net.http.Http_T_http2writeWindowUpdatePointer.T_http2writeWindowUpdatePointer;
class T_http2writeWindowUpdate_static_extension {
    static public function _writeFrame(_wu:T_http2writeWindowUpdate, _ctx:T_http2writeContext):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2writeWindowUpdate_static_extension.T_http2writeWindowUpdate_static_extension._writeFrame(_wu, _ctx);
    }
    static public function _staysWithinBuffer(_wu:T_http2writeWindowUpdate, _max:StdTypes.Int):Bool {
        return stdgo._internal.net.http.Http_T_http2writeWindowUpdate_static_extension.T_http2writeWindowUpdate_static_extension._staysWithinBuffer(_wu, _max);
    }
}
typedef T_http2FrameWriteRequestPointer = stdgo._internal.net.http.Http_T_http2FrameWriteRequestPointer.T_http2FrameWriteRequestPointer;
class T_http2FrameWriteRequest_static_extension {
    static public function _replyToWriter(_wr:T_http2FrameWriteRequest, _err:stdgo.Error):Void {
        stdgo._internal.net.http.Http_T_http2FrameWriteRequest_static_extension.T_http2FrameWriteRequest_static_extension._replyToWriter(_wr, _err);
    }
    static public function string(_wr:T_http2FrameWriteRequest):String {
        return stdgo._internal.net.http.Http_T_http2FrameWriteRequest_static_extension.T_http2FrameWriteRequest_static_extension.string(_wr);
    }
    static public function consume(_wr:T_http2FrameWriteRequest, _n:StdTypes.Int):stdgo.Tuple.Tuple3<T_http2FrameWriteRequest, T_http2FrameWriteRequest, StdTypes.Int> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2FrameWriteRequest_static_extension.T_http2FrameWriteRequest_static_extension.consume(_wr, _n);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function dataSize(_wr:T_http2FrameWriteRequest):StdTypes.Int {
        return stdgo._internal.net.http.Http_T_http2FrameWriteRequest_static_extension.T_http2FrameWriteRequest_static_extension.dataSize(_wr);
    }
    static public function _isControl(_wr:T_http2FrameWriteRequest):Bool {
        return stdgo._internal.net.http.Http_T_http2FrameWriteRequest_static_extension.T_http2FrameWriteRequest_static_extension._isControl(_wr);
    }
    static public function streamID(_wr:T_http2FrameWriteRequest):std.UInt {
        return stdgo._internal.net.http.Http_T_http2FrameWriteRequest_static_extension.T_http2FrameWriteRequest_static_extension.streamID(_wr);
    }
}
typedef T_http2writeQueuePointer = stdgo._internal.net.http.Http_T_http2writeQueuePointer.T_http2writeQueuePointer;
class T_http2writeQueue_static_extension {
    static public function _consume(_q:T_http2writeQueue, _n:StdTypes.Int):stdgo.Tuple<T_http2FrameWriteRequest, Bool> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2writeQueue_static_extension.T_http2writeQueue_static_extension._consume(_q, _n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _shift(_q:T_http2writeQueue):T_http2FrameWriteRequest {
        return stdgo._internal.net.http.Http_T_http2writeQueue_static_extension.T_http2writeQueue_static_extension._shift(_q);
    }
    static public function _push(_q:T_http2writeQueue, _wr:T_http2FrameWriteRequest):Void {
        stdgo._internal.net.http.Http_T_http2writeQueue_static_extension.T_http2writeQueue_static_extension._push(_q, _wr);
    }
    static public function _empty(_q:T_http2writeQueue):Bool {
        return stdgo._internal.net.http.Http_T_http2writeQueue_static_extension.T_http2writeQueue_static_extension._empty(_q);
    }
}
typedef T_http2priorityNodePointer = stdgo._internal.net.http.Http_T_http2priorityNodePointer.T_http2priorityNodePointer;
class T_http2priorityNode_static_extension {
    static public function _walkReadyInOrder(_n:T_http2priorityNode, _openParent:Bool, _tmp:Array<T_http2priorityNode>, _f:(stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>, Bool) -> Bool):Bool {
        final _f = _f;
        return stdgo._internal.net.http.Http_T_http2priorityNode_static_extension.T_http2priorityNode_static_extension._walkReadyInOrder(_n, _openParent, _tmp, _f);
    }
    static public function _addBytes(_n:T_http2priorityNode, _b:haxe.Int64):Void {
        stdgo._internal.net.http.Http_T_http2priorityNode_static_extension.T_http2priorityNode_static_extension._addBytes(_n, _b);
    }
    static public function _setParent(_n:T_http2priorityNode, _parent:T_http2priorityNode):Void {
        stdgo._internal.net.http.Http_T_http2priorityNode_static_extension.T_http2priorityNode_static_extension._setParent(_n, _parent);
    }
}
typedef T_http2priorityWriteSchedulerPointer = stdgo._internal.net.http.Http_T_http2priorityWriteSchedulerPointer.T_http2priorityWriteSchedulerPointer;
class T_http2priorityWriteScheduler_static_extension {
    static public function _removeNode(_ws:T_http2priorityWriteScheduler, _n:T_http2priorityNode):Void {
        stdgo._internal.net.http.Http_T_http2priorityWriteScheduler_static_extension.T_http2priorityWriteScheduler_static_extension._removeNode(_ws, _n);
    }
    static public function _addClosedOrIdleNode(_ws:T_http2priorityWriteScheduler, _list:Array<T_http2priorityNode>, _maxSize:StdTypes.Int, _n:T_http2priorityNode):Void {
        stdgo._internal.net.http.Http_T_http2priorityWriteScheduler_static_extension.T_http2priorityWriteScheduler_static_extension._addClosedOrIdleNode(_ws, _list, _maxSize, _n);
    }
    static public function pop(_ws:T_http2priorityWriteScheduler):stdgo.Tuple<T_http2FrameWriteRequest, Bool> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2priorityWriteScheduler_static_extension.T_http2priorityWriteScheduler_static_extension.pop(_ws);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function push(_ws:T_http2priorityWriteScheduler, _wr:T_http2FrameWriteRequest):Void {
        stdgo._internal.net.http.Http_T_http2priorityWriteScheduler_static_extension.T_http2priorityWriteScheduler_static_extension.push(_ws, _wr);
    }
    static public function adjustStream(_ws:T_http2priorityWriteScheduler, _streamID:std.UInt, _priority:T_http2PriorityParam):Void {
        stdgo._internal.net.http.Http_T_http2priorityWriteScheduler_static_extension.T_http2priorityWriteScheduler_static_extension.adjustStream(_ws, _streamID, _priority);
    }
    static public function closeStream(_ws:T_http2priorityWriteScheduler, _streamID:std.UInt):Void {
        stdgo._internal.net.http.Http_T_http2priorityWriteScheduler_static_extension.T_http2priorityWriteScheduler_static_extension.closeStream(_ws, _streamID);
    }
    static public function openStream(_ws:T_http2priorityWriteScheduler, _streamID:std.UInt, _options:T_http2OpenStreamOptions):Void {
        stdgo._internal.net.http.Http_T_http2priorityWriteScheduler_static_extension.T_http2priorityWriteScheduler_static_extension.openStream(_ws, _streamID, _options);
    }
}
typedef T_http2randomWriteSchedulerPointer = stdgo._internal.net.http.Http_T_http2randomWriteSchedulerPointer.T_http2randomWriteSchedulerPointer;
class T_http2randomWriteScheduler_static_extension {
    static public function pop(_ws:T_http2randomWriteScheduler):stdgo.Tuple<T_http2FrameWriteRequest, Bool> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2randomWriteScheduler_static_extension.T_http2randomWriteScheduler_static_extension.pop(_ws);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function push(_ws:T_http2randomWriteScheduler, _wr:T_http2FrameWriteRequest):Void {
        stdgo._internal.net.http.Http_T_http2randomWriteScheduler_static_extension.T_http2randomWriteScheduler_static_extension.push(_ws, _wr);
    }
    static public function adjustStream(_ws:T_http2randomWriteScheduler, _streamID:std.UInt, _priority:T_http2PriorityParam):Void {
        stdgo._internal.net.http.Http_T_http2randomWriteScheduler_static_extension.T_http2randomWriteScheduler_static_extension.adjustStream(_ws, _streamID, _priority);
    }
    static public function closeStream(_ws:T_http2randomWriteScheduler, _streamID:std.UInt):Void {
        stdgo._internal.net.http.Http_T_http2randomWriteScheduler_static_extension.T_http2randomWriteScheduler_static_extension.closeStream(_ws, _streamID);
    }
    static public function openStream(_ws:T_http2randomWriteScheduler, _streamID:std.UInt, _options:T_http2OpenStreamOptions):Void {
        stdgo._internal.net.http.Http_T_http2randomWriteScheduler_static_extension.T_http2randomWriteScheduler_static_extension.openStream(_ws, _streamID, _options);
    }
}
typedef T_http2roundRobinWriteSchedulerPointer = stdgo._internal.net.http.Http_T_http2roundRobinWriteSchedulerPointer.T_http2roundRobinWriteSchedulerPointer;
class T_http2roundRobinWriteScheduler_static_extension {
    static public function pop(_ws:T_http2roundRobinWriteScheduler):stdgo.Tuple<T_http2FrameWriteRequest, Bool> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2roundRobinWriteScheduler_static_extension.T_http2roundRobinWriteScheduler_static_extension.pop(_ws);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function push(_ws:T_http2roundRobinWriteScheduler, _wr:T_http2FrameWriteRequest):Void {
        stdgo._internal.net.http.Http_T_http2roundRobinWriteScheduler_static_extension.T_http2roundRobinWriteScheduler_static_extension.push(_ws, _wr);
    }
    static public function adjustStream(_ws:T_http2roundRobinWriteScheduler, _streamID:std.UInt, _priority:T_http2PriorityParam):Void {
        stdgo._internal.net.http.Http_T_http2roundRobinWriteScheduler_static_extension.T_http2roundRobinWriteScheduler_static_extension.adjustStream(_ws, _streamID, _priority);
    }
    static public function closeStream(_ws:T_http2roundRobinWriteScheduler, _streamID:std.UInt):Void {
        stdgo._internal.net.http.Http_T_http2roundRobinWriteScheduler_static_extension.T_http2roundRobinWriteScheduler_static_extension.closeStream(_ws, _streamID);
    }
    static public function openStream(_ws:T_http2roundRobinWriteScheduler, _streamID:std.UInt, _options:T_http2OpenStreamOptions):Void {
        stdgo._internal.net.http.Http_T_http2roundRobinWriteScheduler_static_extension.T_http2roundRobinWriteScheduler_static_extension.openStream(_ws, _streamID, _options);
    }
}
typedef T_stringWriterPointer = stdgo._internal.net.http.Http_T_stringWriterPointer.T_stringWriterPointer;
class T_stringWriter_static_extension {
    static public function writeString(_w:T_stringWriter, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_stringWriter_static_extension.T_stringWriter_static_extension.writeString(_w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_headerSorterPointer = stdgo._internal.net.http.Http_T_headerSorterPointer.T_headerSorterPointer;
class T_headerSorter_static_extension {
    static public function less(_s:T_headerSorter, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        return stdgo._internal.net.http.Http_T_headerSorter_static_extension.T_headerSorter_static_extension.less(_s, _i, _j);
    }
    static public function swap(_s:T_headerSorter, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        stdgo._internal.net.http.Http_T_headerSorter_static_extension.T_headerSorter_static_extension.swap(_s, _i, _j);
    }
    static public function len(_s:T_headerSorter):StdTypes.Int {
        return stdgo._internal.net.http.Http_T_headerSorter_static_extension.T_headerSorter_static_extension.len(_s);
    }
}
typedef T_contextKeyPointer = stdgo._internal.net.http.Http_T_contextKeyPointer.T_contextKeyPointer;
class T_contextKey_static_extension {
    static public function string(_k:T_contextKey):String {
        return stdgo._internal.net.http.Http_T_contextKey_static_extension.T_contextKey_static_extension.string(_k);
    }
}
typedef T_noBodyPointer = stdgo._internal.net.http.Http_T_noBodyPointer.T_noBodyPointer;
class T_noBody_static_extension {
    static public function writeTo(_:T_noBody, _0:stdgo._internal.io.Io_Writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_noBody_static_extension.T_noBody_static_extension.writeTo(_, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_:T_noBody):stdgo.Error {
        return stdgo._internal.net.http.Http_T_noBody_static_extension.T_noBody_static_extension.close(_);
    }
    static public function read(_:T_noBody, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_noBody_static_extension.T_noBody_static_extension.read(_, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef ProtocolErrorPointer = stdgo._internal.net.http.Http_ProtocolErrorPointer.ProtocolErrorPointer;
class ProtocolError_static_extension {
    static public function is_(_pe:ProtocolError, _err:stdgo.Error):Bool {
        return stdgo._internal.net.http.Http_ProtocolError_static_extension.ProtocolError_static_extension.is_(_pe, _err);
    }
    static public function error(_pe:ProtocolError):String {
        return stdgo._internal.net.http.Http_ProtocolError_static_extension.ProtocolError_static_extension.error(_pe);
    }
}
typedef RequestPointer = stdgo._internal.net.http.Http_RequestPointer.RequestPointer;
class Request_static_extension {
    static public function _requiresHTTP1(_r:Request):Bool {
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension._requiresHTTP1(_r);
    }
    static public function _outgoingLength(_r:Request):haxe.Int64 {
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension._outgoingLength(_r);
    }
    static public function _isReplayable(_r:Request):Bool {
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension._isReplayable(_r);
    }
    static public function _closeBody(_r:Request):stdgo.Error {
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension._closeBody(_r);
    }
    static public function _wantsClose(_r:Request):Bool {
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension._wantsClose(_r);
    }
    static public function _wantsHttp10KeepAlive(_r:Request):Bool {
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension._wantsHttp10KeepAlive(_r);
    }
    static public function _expectsContinue(_r:Request):Bool {
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension._expectsContinue(_r);
    }
    static public function formFile(_r:Request, _key:String):stdgo.Tuple.Tuple3<stdgo._internal.mime.multipart.Multipart_File.File, stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.formFile(_r, _key);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function postFormValue(_r:Request, _key:String):String {
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.postFormValue(_r, _key);
    }
    static public function formValue(_r:Request, _key:String):String {
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.formValue(_r, _key);
    }
    static public function parseMultipartForm(_r:Request, _maxMemory:haxe.Int64):stdgo.Error {
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.parseMultipartForm(_r, _maxMemory);
    }
    static public function parseForm(_r:Request):stdgo.Error {
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.parseForm(_r);
    }
    static public function setBasicAuth(_r:Request, _username:String, _password:String):Void {
        stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.setBasicAuth(_r, _username, _password);
    }
    static public function basicAuth(_r:Request):stdgo.Tuple.Tuple3<String, String, Bool> {
        return {
            final obj = stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.basicAuth(_r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _write(_r:Request, _w:stdgo._internal.io.Io_Writer.Writer, _usingProxy:Bool, _extraHeaders:Header, _waitForContinue:() -> Bool):stdgo.Error {
        final _waitForContinue = _waitForContinue;
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension._write(_r, _w, _usingProxy, _extraHeaders, _waitForContinue);
    }
    static public function writeProxy(_r:Request, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.writeProxy(_r, _w);
    }
    static public function write(_r:Request, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.write(_r, _w);
    }
    static public function _isH2Upgrade(_r:Request):Bool {
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension._isH2Upgrade(_r);
    }
    static public function _multipartReader(_r:Request, _allowMixed:Bool):stdgo.Tuple<stdgo._internal.mime.multipart.Multipart_Reader.Reader, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension._multipartReader(_r, _allowMixed);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function multipartReader(_r:Request):stdgo.Tuple<stdgo._internal.mime.multipart.Multipart_Reader.Reader, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.multipartReader(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function referer(_r:Request):String {
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.referer(_r);
    }
    static public function addCookie(_r:Request, _c:Cookie):Void {
        stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.addCookie(_r, _c);
    }
    static public function cookie(_r:Request, _name:String):stdgo.Tuple<Cookie, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.cookie(_r, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function cookies(_r:Request):Array<Cookie> {
        return [for (i in stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.cookies(_r)) i];
    }
    static public function userAgent(_r:Request):String {
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.userAgent(_r);
    }
    static public function protoAtLeast(_r:Request, _major:StdTypes.Int, _minor:StdTypes.Int):Bool {
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.protoAtLeast(_r, _major, _minor);
    }
    static public function clone(_r:Request, _ctx:stdgo._internal.context.Context_Context.Context):Request {
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.clone(_r, _ctx);
    }
    static public function withContext(_r:Request, _ctx:stdgo._internal.context.Context_Context.Context):Request {
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.withContext(_r, _ctx);
    }
    static public function context(_r:Request):stdgo._internal.context.Context_Context.Context {
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.context(_r);
    }
}
typedef T_requestBodyReadErrorPointer = stdgo._internal.net.http.Http_T_requestBodyReadErrorPointer.T_requestBodyReadErrorPointer;
class T_requestBodyReadError_static_extension {
    public static function error(__self__:stdgo._internal.net.http.Http_T_requestBodyReadError.T_requestBodyReadError):String {
        return stdgo._internal.net.http.Http_T_requestBodyReadError_static_extension.T_requestBodyReadError_static_extension.error(__self__);
    }
}
typedef MaxBytesErrorPointer = stdgo._internal.net.http.Http_MaxBytesErrorPointer.MaxBytesErrorPointer;
class MaxBytesError_static_extension {
    static public function error(_e:MaxBytesError):String {
        return stdgo._internal.net.http.Http_MaxBytesError_static_extension.MaxBytesError_static_extension.error(_e);
    }
}
typedef T_maxBytesReaderPointer = stdgo._internal.net.http.Http_T_maxBytesReaderPointer.T_maxBytesReaderPointer;
class T_maxBytesReader_static_extension {
    static public function close(_l:T_maxBytesReader):stdgo.Error {
        return stdgo._internal.net.http.Http_T_maxBytesReader_static_extension.T_maxBytesReader_static_extension.close(_l);
    }
    static public function read(_l:T_maxBytesReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_maxBytesReader_static_extension.T_maxBytesReader_static_extension.read(_l, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_read___localname___requestTooLarger_39156_static_extension {
    static public function _requestTooLarge(t:stdgo._internal.net.http.Http_T_read___localname___requestTooLarger_39156.T_read___localname___requestTooLarger_39156):Void {
        stdgo._internal.net.http.Http_T_read___localname___requestTooLarger_39156_static_extension.T_read___localname___requestTooLarger_39156_static_extension._requestTooLarge(t);
    }
}
typedef T_read___localname___requestTooLarger_39156 = stdgo._internal.net.http.Http_T_read___localname___requestTooLarger_39156.T_read___localname___requestTooLarger_39156;
typedef ResponsePointer = stdgo._internal.net.http.Http_ResponsePointer.ResponsePointer;
class Response_static_extension {
    static public function _isProtocolSwitch(_r:Response):Bool {
        return stdgo._internal.net.http.Http_Response_static_extension.Response_static_extension._isProtocolSwitch(_r);
    }
    static public function _bodyIsWritable(_r:Response):Bool {
        return stdgo._internal.net.http.Http_Response_static_extension.Response_static_extension._bodyIsWritable(_r);
    }
    static public function _closeBody(_r:Response):Void {
        stdgo._internal.net.http.Http_Response_static_extension.Response_static_extension._closeBody(_r);
    }
    static public function write(_r:Response, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        return stdgo._internal.net.http.Http_Response_static_extension.Response_static_extension.write(_r, _w);
    }
    static public function protoAtLeast(_r:Response, _major:StdTypes.Int, _minor:StdTypes.Int):Bool {
        return stdgo._internal.net.http.Http_Response_static_extension.Response_static_extension.protoAtLeast(_r, _major, _minor);
    }
    static public function location(_r:Response):stdgo.Tuple<stdgo._internal.net.url.Url_URL.URL, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_Response_static_extension.Response_static_extension.location(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function cookies(_r:Response):Array<Cookie> {
        return [for (i in stdgo._internal.net.http.Http_Response_static_extension.Response_static_extension.cookies(_r)) i];
    }
}
typedef ResponseControllerPointer = stdgo._internal.net.http.Http_ResponseControllerPointer.ResponseControllerPointer;
class ResponseController_static_extension {
    static public function enableFullDuplex(_c:ResponseController):stdgo.Error {
        return stdgo._internal.net.http.Http_ResponseController_static_extension.ResponseController_static_extension.enableFullDuplex(_c);
    }
    static public function setWriteDeadline(_c:ResponseController, _deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_ResponseController_static_extension.ResponseController_static_extension.setWriteDeadline(_c, _deadline);
    }
    static public function setReadDeadline(_c:ResponseController, _deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_ResponseController_static_extension.ResponseController_static_extension.setReadDeadline(_c, _deadline);
    }
    static public function hijack(_c:ResponseController):stdgo.Tuple.Tuple3<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_ResponseController_static_extension.ResponseController_static_extension.hijack(_c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function flush(_c:ResponseController):stdgo.Error {
        return stdgo._internal.net.http.Http_ResponseController_static_extension.ResponseController_static_extension.flush(_c);
    }
}
typedef T_streamReaderPointer = stdgo._internal.net.http.Http_T_streamReaderPointer.T_streamReaderPointer;
class T_streamReader_static_extension {
    static public function close(_r:T_streamReader):stdgo.Error {
        return stdgo._internal.net.http.Http_T_streamReader_static_extension.T_streamReader_static_extension.close(_r);
    }
    static public function read(_r:T_streamReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_streamReader_static_extension.T_streamReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_arrayReaderPointer = stdgo._internal.net.http.Http_T_arrayReaderPointer.T_arrayReaderPointer;
class T_arrayReader_static_extension {
    static public function close(_r:T_arrayReader):stdgo.Error {
        return stdgo._internal.net.http.Http_T_arrayReader_static_extension.T_arrayReader_static_extension.close(_r);
    }
    static public function read(_r:T_arrayReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_arrayReader_static_extension.T_arrayReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_connPointer = stdgo._internal.net.http.Http_T_connPointer.T_connPointer;
class T_conn_static_extension {
    static public function _serve(_c:T_conn, _ctx:stdgo._internal.context.Context_Context.Context):Void {
        stdgo._internal.net.http.Http_T_conn_static_extension.T_conn_static_extension._serve(_c, _ctx);
    }
    static public function _getState(_c:T_conn):stdgo.Tuple<ConnState, haxe.Int64> {
        return {
            final obj = stdgo._internal.net.http.Http_T_conn_static_extension.T_conn_static_extension._getState(_c);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _setState(_c:T_conn, _nc:stdgo._internal.net.Net_Conn.Conn, _state:ConnState, _runHook:Bool):Void {
        stdgo._internal.net.http.Http_T_conn_static_extension.T_conn_static_extension._setState(_c, _nc, _state, _runHook);
    }
    static public function _closeWriteAndWait(_c:T_conn):Void {
        stdgo._internal.net.http.Http_T_conn_static_extension.T_conn_static_extension._closeWriteAndWait(_c);
    }
    static public function _close(_c:T_conn):Void {
        stdgo._internal.net.http.Http_T_conn_static_extension.T_conn_static_extension._close(_c);
    }
    static public function _finalFlush(_c:T_conn):Void {
        stdgo._internal.net.http.Http_T_conn_static_extension.T_conn_static_extension._finalFlush(_c);
    }
    static public function _readRequest(_c:T_conn, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Tuple<T_response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_conn_static_extension.T_conn_static_extension._readRequest(_c, _ctx);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _hijackLocked(_c:T_conn):stdgo.Tuple.Tuple3<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_conn_static_extension.T_conn_static_extension._hijackLocked(_c);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _hijacked(_c:T_conn):Bool {
        return stdgo._internal.net.http.Http_T_conn_static_extension.T_conn_static_extension._hijacked(_c);
    }
}
typedef T_chunkWriterPointer = stdgo._internal.net.http.Http_T_chunkWriterPointer.T_chunkWriterPointer;
class T_chunkWriter_static_extension {
    static public function _writeHeader(_cw:T_chunkWriter, _p:Array<std.UInt>):Void {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.net.http.Http_T_chunkWriter_static_extension.T_chunkWriter_static_extension._writeHeader(_cw, _p);
    }
    static public function _close(_cw:T_chunkWriter):Void {
        stdgo._internal.net.http.Http_T_chunkWriter_static_extension.T_chunkWriter_static_extension._close(_cw);
    }
    static public function _flush(_cw:T_chunkWriter):stdgo.Error {
        return stdgo._internal.net.http.Http_T_chunkWriter_static_extension.T_chunkWriter_static_extension._flush(_cw);
    }
    static public function write(_cw:T_chunkWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_chunkWriter_static_extension.T_chunkWriter_static_extension.write(_cw, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_responsePointer = stdgo._internal.net.http.Http_T_responsePointer.T_responsePointer;
class T_response_static_extension {
    static public function closeNotify(_w:T_response):stdgo.Chan<Bool> {
        return stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension.closeNotify(_w);
    }
    static public function hijack(_w:T_response):stdgo.Tuple.Tuple3<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension.hijack(_w);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _sendExpectationFailed(_w:T_response):Void {
        stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension._sendExpectationFailed(_w);
    }
    static public function flushError(_w:T_response):stdgo.Error {
        return stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension.flushError(_w);
    }
    static public function flush(_w:T_response):Void {
        stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension.flush(_w);
    }
    static public function _closedRequestBodyEarly(_w:T_response):Bool {
        return stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension._closedRequestBodyEarly(_w);
    }
    static public function _shouldReuseConnection(_w:T_response):Bool {
        return stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension._shouldReuseConnection(_w);
    }
    static public function _finishRequest(_w:T_response):Void {
        stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension._finishRequest(_w);
    }
    static public function _write(_w:T_response, _lenData:StdTypes.Int, _dataB:Array<std.UInt>, _dataS:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _dataB = ([for (i in _dataB) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension._write(_w, _lenData, _dataB, _dataS);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeString(_w:T_response, _data:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension.writeString(_w, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_w:T_response, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension.write(_w, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _bodyAllowed(_w:T_response):Bool {
        return stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension._bodyAllowed(_w);
    }
    static public function writeHeader(_w:T_response, _code:StdTypes.Int):Void {
        stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension.writeHeader(_w, _code);
    }
    static public function header(_w:T_response):Header {
        return stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension.header(_w);
    }
    static public function readFrom(_w:T_response, _src:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension.readFrom(_w, _src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _requestTooLarge(_w:T_response):Void {
        stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension._requestTooLarge(_w);
    }
    static public function _declareTrailer(_w:T_response, _k:String):Void {
        stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension._declareTrailer(_w, _k);
    }
    static public function _finalTrailers(_w:T_response):Header {
        return stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension._finalTrailers(_w);
    }
    static public function enableFullDuplex(_c:T_response):stdgo.Error {
        return stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension.enableFullDuplex(_c);
    }
    static public function setWriteDeadline(_c:T_response, _deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension.setWriteDeadline(_c, _deadline);
    }
    static public function setReadDeadline(_c:T_response, _deadline:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_T_response_static_extension.T_response_static_extension.setReadDeadline(_c, _deadline);
    }
}
typedef T_writerOnlyPointer = stdgo._internal.net.http.Http_T_writerOnlyPointer.T_writerOnlyPointer;
class T_writerOnly_static_extension {
    public static function write(__self__:stdgo._internal.net.http.Http_T_writerOnly.T_writerOnly, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_writerOnly_static_extension.T_writerOnly_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_connReaderPointer = stdgo._internal.net.http.Http_T_connReaderPointer.T_connReaderPointer;
class T_connReader_static_extension {
    static public function read(_cr:T_connReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_connReader_static_extension.T_connReader_static_extension.read(_cr, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _closeNotify(_cr:T_connReader):Void {
        stdgo._internal.net.http.Http_T_connReader_static_extension.T_connReader_static_extension._closeNotify(_cr);
    }
    static public function _handleReadError(_cr:T_connReader, __34297:stdgo.Error):Void {
        stdgo._internal.net.http.Http_T_connReader_static_extension.T_connReader_static_extension._handleReadError(_cr, __34297);
    }
    static public function _hitReadLimit(_cr:T_connReader):Bool {
        return stdgo._internal.net.http.Http_T_connReader_static_extension.T_connReader_static_extension._hitReadLimit(_cr);
    }
    static public function _setInfiniteReadLimit(_cr:T_connReader):Void {
        stdgo._internal.net.http.Http_T_connReader_static_extension.T_connReader_static_extension._setInfiniteReadLimit(_cr);
    }
    static public function _setReadLimit(_cr:T_connReader, _remain:haxe.Int64):Void {
        stdgo._internal.net.http.Http_T_connReader_static_extension.T_connReader_static_extension._setReadLimit(_cr, _remain);
    }
    static public function _abortPendingRead(_cr:T_connReader):Void {
        stdgo._internal.net.http.Http_T_connReader_static_extension.T_connReader_static_extension._abortPendingRead(_cr);
    }
    static public function _backgroundRead(_cr:T_connReader):Void {
        stdgo._internal.net.http.Http_T_connReader_static_extension.T_connReader_static_extension._backgroundRead(_cr);
    }
    static public function _startBackgroundRead(_cr:T_connReader):Void {
        stdgo._internal.net.http.Http_T_connReader_static_extension.T_connReader_static_extension._startBackgroundRead(_cr);
    }
    static public function _unlock(_cr:T_connReader):Void {
        stdgo._internal.net.http.Http_T_connReader_static_extension.T_connReader_static_extension._unlock(_cr);
    }
    static public function _lock(_cr:T_connReader):Void {
        stdgo._internal.net.http.Http_T_connReader_static_extension.T_connReader_static_extension._lock(_cr);
    }
}
typedef T_expectContinueReaderPointer = stdgo._internal.net.http.Http_T_expectContinueReaderPointer.T_expectContinueReaderPointer;
class T_expectContinueReader_static_extension {
    static public function close(_ecr:T_expectContinueReader):stdgo.Error {
        return stdgo._internal.net.http.Http_T_expectContinueReader_static_extension.T_expectContinueReader_static_extension.close(_ecr);
    }
    static public function read(_ecr:T_expectContinueReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_expectContinueReader_static_extension.T_expectContinueReader_static_extension.read(_ecr, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_extraHeaderPointer = stdgo._internal.net.http.Http_T_extraHeaderPointer.T_extraHeaderPointer;
class T_extraHeader_static_extension {
    static public function write(_h:T_extraHeader, _w:stdgo._internal.bufio.Bufio_Writer.Writer):Void {
        stdgo._internal.net.http.Http_T_extraHeader_static_extension.T_extraHeader_static_extension.write(_h, _w);
    }
}
typedef T_statusErrorPointer = stdgo._internal.net.http.Http_T_statusErrorPointer.T_statusErrorPointer;
class T_statusError_static_extension {
    static public function error(_e:T_statusError):String {
        return stdgo._internal.net.http.Http_T_statusError_static_extension.T_statusError_static_extension.error(_e);
    }
}
typedef T_redirectHandlerPointer = stdgo._internal.net.http.Http_T_redirectHandlerPointer.T_redirectHandlerPointer;
class T_redirectHandler_static_extension {
    static public function serveHTTP(_rh:T_redirectHandler, _w:ResponseWriter, _r:Request):Void {
        stdgo._internal.net.http.Http_T_redirectHandler_static_extension.T_redirectHandler_static_extension.serveHTTP(_rh, _w, _r);
    }
}
typedef ServeMuxPointer = stdgo._internal.net.http.Http_ServeMuxPointer.ServeMuxPointer;
class ServeMux_static_extension {
    static public function handleFunc(_mux:ServeMux, _pattern:String, _handler:(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) -> Void):Void {
        final _handler = _handler;
        stdgo._internal.net.http.Http_ServeMux_static_extension.ServeMux_static_extension.handleFunc(_mux, _pattern, _handler);
    }
    static public function handle(_mux:ServeMux, _pattern:String, _handler:Handler):Void {
        stdgo._internal.net.http.Http_ServeMux_static_extension.ServeMux_static_extension.handle(_mux, _pattern, _handler);
    }
    static public function serveHTTP(_mux:ServeMux, _w:ResponseWriter, _r:Request):Void {
        stdgo._internal.net.http.Http_ServeMux_static_extension.ServeMux_static_extension.serveHTTP(_mux, _w, _r);
    }
    static public function _handler(_mux:ServeMux, _host:String, _path:String):stdgo.Tuple<Handler, String> {
        return {
            final obj = stdgo._internal.net.http.Http_ServeMux_static_extension.ServeMux_static_extension._handler(_mux, _host, _path);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function handler(_mux:ServeMux, _r:Request):stdgo.Tuple<Handler, String> {
        return {
            final obj = stdgo._internal.net.http.Http_ServeMux_static_extension.ServeMux_static_extension.handler(_mux, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _shouldRedirectRLocked(_mux:ServeMux, _host:String, _path:String):Bool {
        return stdgo._internal.net.http.Http_ServeMux_static_extension.ServeMux_static_extension._shouldRedirectRLocked(_mux, _host, _path);
    }
    static public function _redirectToPathSlash(_mux:ServeMux, _host:String, _path:String, _u:stdgo._internal.net.url.Url_URL.URL):stdgo.Tuple<stdgo._internal.net.url.Url_URL.URL, Bool> {
        return {
            final obj = stdgo._internal.net.http.Http_ServeMux_static_extension.ServeMux_static_extension._redirectToPathSlash(_mux, _host, _path, _u);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _match(_mux:ServeMux, _path:String):stdgo.Tuple<Handler, String> {
        return {
            final obj = stdgo._internal.net.http.Http_ServeMux_static_extension.ServeMux_static_extension._match(_mux, _path);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef ServerPointer = stdgo._internal.net.http.Http_ServerPointer.ServerPointer;
class Server_static_extension {
    static public function _onceSetNextProtoDefaults(_srv:Server):Void {
        stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension._onceSetNextProtoDefaults(_srv);
    }
    static public function _onceSetNextProtoDefaults_Serve(_srv:Server):Void {
        stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension._onceSetNextProtoDefaults_Serve(_srv);
    }
    static public function _setupHTTP2_Serve(_srv:Server):stdgo.Error {
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension._setupHTTP2_Serve(_srv);
    }
    static public function _setupHTTP2_ServeTLS(_srv:Server):stdgo.Error {
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension._setupHTTP2_ServeTLS(_srv);
    }
    static public function listenAndServeTLS(_srv:Server, _certFile:String, _keyFile:String):stdgo.Error {
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension.listenAndServeTLS(_srv, _certFile, _keyFile);
    }
    static public function _logf(_s:Server, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension._logf(_s, _format, ...[for (i in _args) i]);
    }
    static public function setKeepAlivesEnabled(_srv:Server, _v:Bool):Void {
        stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension.setKeepAlivesEnabled(_srv, _v);
    }
    static public function _shuttingDown(_s:Server):Bool {
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension._shuttingDown(_s);
    }
    static public function _doKeepAlives(_s:Server):Bool {
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension._doKeepAlives(_s);
    }
    static public function _readHeaderTimeout(_s:Server):stdgo._internal.time.Time_Duration.Duration {
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension._readHeaderTimeout(_s);
    }
    static public function _idleTimeout(_s:Server):stdgo._internal.time.Time_Duration.Duration {
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension._idleTimeout(_s);
    }
    static public function _trackConn(_s:Server, _c:T_conn, _add:Bool):Void {
        stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension._trackConn(_s, _c, _add);
    }
    static public function _trackListener(_s:Server, _ln:stdgo._internal.net.Net_Listener.Listener, _add:Bool):Bool {
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension._trackListener(_s, _ln, _add);
    }
    static public function serveTLS(_srv:Server, _l:stdgo._internal.net.Net_Listener.Listener, _certFile:String, _keyFile:String):stdgo.Error {
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension.serveTLS(_srv, _l, _certFile, _keyFile);
    }
    static public function serve(_srv:Server, _l:stdgo._internal.net.Net_Listener.Listener):stdgo.Error {
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension.serve(_srv, _l);
    }
    static public function _shouldConfigureHTTP2ForServe(_srv:Server):Bool {
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension._shouldConfigureHTTP2ForServe(_srv);
    }
    static public function listenAndServe(_srv:Server):stdgo.Error {
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension.listenAndServe(_srv);
    }
    static public function _closeListenersLocked(_s:Server):stdgo.Error {
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension._closeListenersLocked(_s);
    }
    static public function _closeIdleConns(_s:Server):Bool {
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension._closeIdleConns(_s);
    }
    static public function registerOnShutdown(_srv:Server, _f:() -> Void):Void {
        final _f = _f;
        stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension.registerOnShutdown(_srv, _f);
    }
    static public function shutdown(_srv:Server, _ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error {
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension.shutdown(_srv, _ctx);
    }
    static public function close(_srv:Server):stdgo.Error {
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension.close(_srv);
    }
    static public function _tlsHandshakeTimeout(_srv:Server):stdgo._internal.time.Time_Duration.Duration {
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension._tlsHandshakeTimeout(_srv);
    }
    static public function _initialReadLimitSize(_srv:Server):haxe.Int64 {
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension._initialReadLimitSize(_srv);
    }
    static public function _maxHeaderBytes(_srv:Server):StdTypes.Int {
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension._maxHeaderBytes(_srv);
    }
    static public function _newConn(_srv:Server, _rwc:stdgo._internal.net.Net_Conn.Conn):T_conn {
        return stdgo._internal.net.http.Http_Server_static_extension.Server_static_extension._newConn(_srv, _rwc);
    }
}
typedef T_serverHandlerPointer = stdgo._internal.net.http.Http_T_serverHandlerPointer.T_serverHandlerPointer;
class T_serverHandler_static_extension {
    static public function serveHTTP(_sh:T_serverHandler, _rw:ResponseWriter, _req:Request):Void {
        stdgo._internal.net.http.Http_T_serverHandler_static_extension.T_serverHandler_static_extension.serveHTTP(_sh, _rw, _req);
    }
}
typedef T_timeoutHandlerPointer = stdgo._internal.net.http.Http_T_timeoutHandlerPointer.T_timeoutHandlerPointer;
class T_timeoutHandler_static_extension {
    static public function serveHTTP(_h:T_timeoutHandler, _w:ResponseWriter, _r:Request):Void {
        stdgo._internal.net.http.Http_T_timeoutHandler_static_extension.T_timeoutHandler_static_extension.serveHTTP(_h, _w, _r);
    }
    static public function _errorBody(_h:T_timeoutHandler):String {
        return stdgo._internal.net.http.Http_T_timeoutHandler_static_extension.T_timeoutHandler_static_extension._errorBody(_h);
    }
}
typedef T_timeoutWriterPointer = stdgo._internal.net.http.Http_T_timeoutWriterPointer.T_timeoutWriterPointer;
class T_timeoutWriter_static_extension {
    static public function writeHeader(_tw:T_timeoutWriter, _code:StdTypes.Int):Void {
        stdgo._internal.net.http.Http_T_timeoutWriter_static_extension.T_timeoutWriter_static_extension.writeHeader(_tw, _code);
    }
    static public function _writeHeaderLocked(_tw:T_timeoutWriter, _code:StdTypes.Int):Void {
        stdgo._internal.net.http.Http_T_timeoutWriter_static_extension.T_timeoutWriter_static_extension._writeHeaderLocked(_tw, _code);
    }
    static public function write(_tw:T_timeoutWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_timeoutWriter_static_extension.T_timeoutWriter_static_extension.write(_tw, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function header(_tw:T_timeoutWriter):Header {
        return stdgo._internal.net.http.Http_T_timeoutWriter_static_extension.T_timeoutWriter_static_extension.header(_tw);
    }
    static public function push(_tw:T_timeoutWriter, _target:String, _opts:PushOptions):stdgo.Error {
        return stdgo._internal.net.http.Http_T_timeoutWriter_static_extension.T_timeoutWriter_static_extension.push(_tw, _target, _opts);
    }
}
typedef T_onceCloseListenerPointer = stdgo._internal.net.http.Http_T_onceCloseListenerPointer.T_onceCloseListenerPointer;
class T_onceCloseListener_static_extension {
    static public function _close(_oc:T_onceCloseListener):Void {
        stdgo._internal.net.http.Http_T_onceCloseListener_static_extension.T_onceCloseListener_static_extension._close(_oc);
    }
    static public function close(_oc:T_onceCloseListener):stdgo.Error {
        return stdgo._internal.net.http.Http_T_onceCloseListener_static_extension.T_onceCloseListener_static_extension.close(_oc);
    }
    public static function addr(__self__:stdgo._internal.net.http.Http_T_onceCloseListener.T_onceCloseListener):stdgo._internal.net.Net_Addr.Addr {
        return stdgo._internal.net.http.Http_T_onceCloseListener_static_extension.T_onceCloseListener_static_extension.addr(__self__);
    }
    public static function accept(__self__:stdgo._internal.net.http.Http_T_onceCloseListener.T_onceCloseListener):stdgo.Tuple<stdgo._internal.net.Net_Conn.Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_onceCloseListener_static_extension.T_onceCloseListener_static_extension.accept(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_globalOptionsHandlerPointer = stdgo._internal.net.http.Http_T_globalOptionsHandlerPointer.T_globalOptionsHandlerPointer;
class T_globalOptionsHandler_static_extension {
    static public function serveHTTP(_:T_globalOptionsHandler, _w:ResponseWriter, _r:Request):Void {
        stdgo._internal.net.http.Http_T_globalOptionsHandler_static_extension.T_globalOptionsHandler_static_extension.serveHTTP(_, _w, _r);
    }
}
typedef T_initALPNRequestPointer = stdgo._internal.net.http.Http_T_initALPNRequestPointer.T_initALPNRequestPointer;
class T_initALPNRequest_static_extension {
    static public function serveHTTP(_h:T_initALPNRequest, _rw:ResponseWriter, _req:Request):Void {
        stdgo._internal.net.http.Http_T_initALPNRequest_static_extension.T_initALPNRequest_static_extension.serveHTTP(_h, _rw, _req);
    }
    static public function baseContext(_h:T_initALPNRequest):stdgo._internal.context.Context_Context.Context {
        return stdgo._internal.net.http.Http_T_initALPNRequest_static_extension.T_initALPNRequest_static_extension.baseContext(_h);
    }
}
typedef T_loggingConnPointer = stdgo._internal.net.http.Http_T_loggingConnPointer.T_loggingConnPointer;
class T_loggingConn_static_extension {
    static public function close(_c:T_loggingConn):stdgo.Error {
        return stdgo._internal.net.http.Http_T_loggingConn_static_extension.T_loggingConn_static_extension.close(_c);
    }
    static public function read(_c:T_loggingConn, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_loggingConn_static_extension.T_loggingConn_static_extension.read(_c, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_c:T_loggingConn, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_loggingConn_static_extension.T_loggingConn_static_extension.write(_c, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function setWriteDeadline(__self__:stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_T_loggingConn_static_extension.T_loggingConn_static_extension.setWriteDeadline(__self__, _0);
    }
    public static function setReadDeadline(__self__:stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_T_loggingConn_static_extension.T_loggingConn_static_extension.setReadDeadline(__self__, _0);
    }
    public static function setDeadline(__self__:stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_T_loggingConn_static_extension.T_loggingConn_static_extension.setDeadline(__self__, _0);
    }
    public static function remoteAddr(__self__:stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn):stdgo._internal.net.Net_Addr.Addr {
        return stdgo._internal.net.http.Http_T_loggingConn_static_extension.T_loggingConn_static_extension.remoteAddr(__self__);
    }
    public static function localAddr(__self__:stdgo._internal.net.http.Http_T_loggingConn.T_loggingConn):stdgo._internal.net.Net_Addr.Addr {
        return stdgo._internal.net.http.Http_T_loggingConn_static_extension.T_loggingConn_static_extension.localAddr(__self__);
    }
}
typedef T_checkConnErrorWriterPointer = stdgo._internal.net.http.Http_T_checkConnErrorWriterPointer.T_checkConnErrorWriterPointer;
class T_checkConnErrorWriter_static_extension {
    static public function write(_w:T_checkConnErrorWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_checkConnErrorWriter_static_extension.T_checkConnErrorWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_exactSigPointer = stdgo._internal.net.http.Http_T_exactSigPointer.T_exactSigPointer;
class T_exactSig_static_extension {
    static public function _match(_e:T_exactSig, _data:Array<std.UInt>, _firstNonWS:StdTypes.Int):String {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_T_exactSig_static_extension.T_exactSig_static_extension._match(_e, _data, _firstNonWS);
    }
}
typedef T_maskedSigPointer = stdgo._internal.net.http.Http_T_maskedSigPointer.T_maskedSigPointer;
class T_maskedSig_static_extension {
    static public function _match(_m:T_maskedSig, _data:Array<std.UInt>, _firstNonWS:StdTypes.Int):String {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_T_maskedSig_static_extension.T_maskedSig_static_extension._match(_m, _data, _firstNonWS);
    }
}
typedef T_mp4SigPointer = stdgo._internal.net.http.Http_T_mp4SigPointer.T_mp4SigPointer;
class T_mp4Sig_static_extension {
    static public function _match(_:T_mp4Sig, _data:Array<std.UInt>, _firstNonWS:StdTypes.Int):String {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_T_mp4Sig_static_extension.T_mp4Sig_static_extension._match(_, _data, _firstNonWS);
    }
}
typedef T_textSigPointer = stdgo._internal.net.http.Http_T_textSigPointer.T_textSigPointer;
class T_textSig_static_extension {
    static public function _match(_:T_textSig, _data:Array<std.UInt>, _firstNonWS:StdTypes.Int):String {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_T_textSig_static_extension.T_textSig_static_extension._match(_, _data, _firstNonWS);
    }
}
typedef T_socksAddrPointer = stdgo._internal.net.http.Http_T_socksAddrPointer.T_socksAddrPointer;
class T_socksAddr_static_extension {
    static public function string(_a:T_socksAddr):String {
        return stdgo._internal.net.http.Http_T_socksAddr_static_extension.T_socksAddr_static_extension.string(_a);
    }
    static public function network(_a:T_socksAddr):String {
        return stdgo._internal.net.http.Http_T_socksAddr_static_extension.T_socksAddr_static_extension.network(_a);
    }
}
typedef T_socksConnPointer = stdgo._internal.net.http.Http_T_socksConnPointer.T_socksConnPointer;
class T_socksConn_static_extension {
    static public function boundAddr(_c:T_socksConn):stdgo._internal.net.Net_Addr.Addr {
        return stdgo._internal.net.http.Http_T_socksConn_static_extension.T_socksConn_static_extension.boundAddr(_c);
    }
    public static function write(__self__:stdgo._internal.net.http.Http_T_socksConn.T_socksConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_socksConn_static_extension.T_socksConn_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function setWriteDeadline(__self__:stdgo._internal.net.http.Http_T_socksConn.T_socksConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_T_socksConn_static_extension.T_socksConn_static_extension.setWriteDeadline(__self__, _0);
    }
    public static function setReadDeadline(__self__:stdgo._internal.net.http.Http_T_socksConn.T_socksConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_T_socksConn_static_extension.T_socksConn_static_extension.setReadDeadline(__self__, _0);
    }
    public static function setDeadline(__self__:stdgo._internal.net.http.Http_T_socksConn.T_socksConn, _0:stdgo._internal.time.Time_Time.Time):stdgo.Error {
        return stdgo._internal.net.http.Http_T_socksConn_static_extension.T_socksConn_static_extension.setDeadline(__self__, _0);
    }
    public static function remoteAddr(__self__:stdgo._internal.net.http.Http_T_socksConn.T_socksConn):stdgo._internal.net.Net_Addr.Addr {
        return stdgo._internal.net.http.Http_T_socksConn_static_extension.T_socksConn_static_extension.remoteAddr(__self__);
    }
    public static function read(__self__:stdgo._internal.net.http.Http_T_socksConn.T_socksConn, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_socksConn_static_extension.T_socksConn_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function localAddr(__self__:stdgo._internal.net.http.Http_T_socksConn.T_socksConn):stdgo._internal.net.Net_Addr.Addr {
        return stdgo._internal.net.http.Http_T_socksConn_static_extension.T_socksConn_static_extension.localAddr(__self__);
    }
    public static function close(__self__:stdgo._internal.net.http.Http_T_socksConn.T_socksConn):stdgo.Error {
        return stdgo._internal.net.http.Http_T_socksConn_static_extension.T_socksConn_static_extension.close(__self__);
    }
}
typedef T_socksDialerPointer = stdgo._internal.net.http.Http_T_socksDialerPointer.T_socksDialerPointer;
class T_socksDialer_static_extension {
    static public function _pathAddrs(_d:T_socksDialer, _address:String):stdgo.Tuple.Tuple3<stdgo._internal.net.Net_Addr.Addr, stdgo._internal.net.Net_Addr.Addr, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_socksDialer_static_extension.T_socksDialer_static_extension._pathAddrs(_d, _address);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _validateTarget(_d:T_socksDialer, _network:String, _address:String):stdgo.Error {
        return stdgo._internal.net.http.Http_T_socksDialer_static_extension.T_socksDialer_static_extension._validateTarget(_d, _network, _address);
    }
    static public function dial(_d:T_socksDialer, _network:String, _address:String):stdgo.Tuple<stdgo._internal.net.Net_Conn.Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_socksDialer_static_extension.T_socksDialer_static_extension.dial(_d, _network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function dialWithConn(_d:T_socksDialer, _ctx:stdgo._internal.context.Context_Context.Context, _c:stdgo._internal.net.Net_Conn.Conn, _network:String, _address:String):stdgo.Tuple<stdgo._internal.net.Net_Addr.Addr, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_socksDialer_static_extension.T_socksDialer_static_extension.dialWithConn(_d, _ctx, _c, _network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function dialContext(_d:T_socksDialer, _ctx:stdgo._internal.context.Context_Context.Context, _network:String, _address:String):stdgo.Tuple<stdgo._internal.net.Net_Conn.Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_socksDialer_static_extension.T_socksDialer_static_extension.dialContext(_d, _ctx, _network, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _connect(_d:T_socksDialer, _ctx:stdgo._internal.context.Context_Context.Context, _c:stdgo._internal.net.Net_Conn.Conn, _address:String):stdgo.Tuple<stdgo._internal.net.Net_Addr.Addr, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_socksDialer_static_extension.T_socksDialer_static_extension._connect(_d, _ctx, _c, _address);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_socksUsernamePasswordPointer = stdgo._internal.net.http.Http_T_socksUsernamePasswordPointer.T_socksUsernamePasswordPointer;
class T_socksUsernamePassword_static_extension {
    static public function authenticate(_up:T_socksUsernamePassword, _ctx:stdgo._internal.context.Context_Context.Context, _rw:stdgo._internal.io.Io_ReadWriter.ReadWriter, _auth:T_socksAuthMethod):stdgo.Error {
        return stdgo._internal.net.http.Http_T_socksUsernamePassword_static_extension.T_socksUsernamePassword_static_extension.authenticate(_up, _ctx, _rw, _auth);
    }
}
typedef T_errorReaderPointer = stdgo._internal.net.http.Http_T_errorReaderPointer.T_errorReaderPointer;
class T_errorReader_static_extension {
    static public function read(_r:T_errorReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_errorReader_static_extension.T_errorReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_byteReaderPointer = stdgo._internal.net.http.Http_T_byteReaderPointer.T_byteReaderPointer;
class T_byteReader_static_extension {
    static public function read(_br:T_byteReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_byteReader_static_extension.T_byteReader_static_extension.read(_br, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_transferWriterPointer = stdgo._internal.net.http.Http_T_transferWriterPointer.T_transferWriterPointer;
class T_transferWriter_static_extension {
    static public function _unwrapBody(_t:T_transferWriter):stdgo._internal.io.Io_Reader.Reader {
        return stdgo._internal.net.http.Http_T_transferWriter_static_extension.T_transferWriter_static_extension._unwrapBody(_t);
    }
    static public function _doBodyCopy(_t:T_transferWriter, _dst:stdgo._internal.io.Io_Writer.Writer, _src:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_transferWriter_static_extension.T_transferWriter_static_extension._doBodyCopy(_t, _dst, _src);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _writeBody(_t:T_transferWriter, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        return stdgo._internal.net.http.Http_T_transferWriter_static_extension.T_transferWriter_static_extension._writeBody(_t, _w);
    }
    static public function _writeHeader(_t:T_transferWriter, _w:stdgo._internal.io.Io_Writer.Writer, _trace:ClientTrace):stdgo.Error {
        return stdgo._internal.net.http.Http_T_transferWriter_static_extension.T_transferWriter_static_extension._writeHeader(_t, _w, _trace);
    }
    static public function _shouldSendContentLength(_t:T_transferWriter):Bool {
        return stdgo._internal.net.http.Http_T_transferWriter_static_extension.T_transferWriter_static_extension._shouldSendContentLength(_t);
    }
    static public function _probeRequestBody(_t:T_transferWriter):Void {
        stdgo._internal.net.http.Http_T_transferWriter_static_extension.T_transferWriter_static_extension._probeRequestBody(_t);
    }
    static public function _shouldSendChunkedRequestBody(_t:T_transferWriter):Bool {
        return stdgo._internal.net.http.Http_T_transferWriter_static_extension.T_transferWriter_static_extension._shouldSendChunkedRequestBody(_t);
    }
}
typedef T_transferReaderPointer = stdgo._internal.net.http.Http_T_transferReaderPointer.T_transferReaderPointer;
class T_transferReader_static_extension {
    static public function _parseTransferEncoding(_t:T_transferReader):stdgo.Error {
        return stdgo._internal.net.http.Http_T_transferReader_static_extension.T_transferReader_static_extension._parseTransferEncoding(_t);
    }
    static public function _protoAtLeast(_t:T_transferReader, _m:StdTypes.Int, _n:StdTypes.Int):Bool {
        return stdgo._internal.net.http.Http_T_transferReader_static_extension.T_transferReader_static_extension._protoAtLeast(_t, _m, _n);
    }
}
typedef T_unsupportedTEErrorPointer = stdgo._internal.net.http.Http_T_unsupportedTEErrorPointer.T_unsupportedTEErrorPointer;
class T_unsupportedTEError_static_extension {
    static public function error(_uste:T_unsupportedTEError):String {
        return stdgo._internal.net.http.Http_T_unsupportedTEError_static_extension.T_unsupportedTEError_static_extension.error(_uste);
    }
}
typedef T_bodyPointer = stdgo._internal.net.http.Http_T_bodyPointer.T_bodyPointer;
class T_body_static_extension {
    static public function _registerOnHitEOF(_b:T_body, _fn:() -> Void):Void {
        final _fn = _fn;
        stdgo._internal.net.http.Http_T_body_static_extension.T_body_static_extension._registerOnHitEOF(_b, _fn);
    }
    static public function _bodyRemains(_b:T_body):Bool {
        return stdgo._internal.net.http.Http_T_body_static_extension.T_body_static_extension._bodyRemains(_b);
    }
    static public function _didEarlyClose(_b:T_body):Bool {
        return stdgo._internal.net.http.Http_T_body_static_extension.T_body_static_extension._didEarlyClose(_b);
    }
    static public function close(_b:T_body):stdgo.Error {
        return stdgo._internal.net.http.Http_T_body_static_extension.T_body_static_extension.close(_b);
    }
    static public function _unreadDataSizeLocked(_b:T_body):haxe.Int64 {
        return stdgo._internal.net.http.Http_T_body_static_extension.T_body_static_extension._unreadDataSizeLocked(_b);
    }
    static public function _readTrailer(_b:T_body):stdgo.Error {
        return stdgo._internal.net.http.Http_T_body_static_extension.T_body_static_extension._readTrailer(_b);
    }
    static public function _readLocked(_b:T_body, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_body_static_extension.T_body_static_extension._readLocked(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_b:T_body, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_body_static_extension.T_body_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_bodyLockedPointer = stdgo._internal.net.http.Http_T_bodyLockedPointer.T_bodyLockedPointer;
class T_bodyLocked_static_extension {
    static public function read(_bl:T_bodyLocked, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_bodyLocked_static_extension.T_bodyLocked_static_extension.read(_bl, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_finishAsyncByteReadPointer = stdgo._internal.net.http.Http_T_finishAsyncByteReadPointer.T_finishAsyncByteReadPointer;
class T_finishAsyncByteRead_static_extension {
    static public function read(_fr:T_finishAsyncByteRead, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_finishAsyncByteRead_static_extension.T_finishAsyncByteRead_static_extension.read(_fr, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_bufioFlushWriterPointer = stdgo._internal.net.http.Http_T_bufioFlushWriterPointer.T_bufioFlushWriterPointer;
class T_bufioFlushWriter_static_extension {
    static public function write(_fw:T_bufioFlushWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_bufioFlushWriter_static_extension.T_bufioFlushWriter_static_extension.write(_fw, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef TransportPointer = stdgo._internal.net.http.Http_TransportPointer.TransportPointer;
class Transport_static_extension {
    static public function _dialConn(_t:Transport, _ctx:stdgo._internal.context.Context_Context.Context, _cm:T_connectMethod):stdgo.Tuple<T_persistConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension._dialConn(_t, _ctx, _cm);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _decConnsPerHost(_t:Transport, _key:T_connectMethodKey):Void {
        stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension._decConnsPerHost(_t, _key);
    }
    static public function _dialConnFor(_t:Transport, _w:T_wantConn):Void {
        stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension._dialConnFor(_t, _w);
    }
    static public function _queueForDial(_t:Transport, _w:T_wantConn):Void {
        stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension._queueForDial(_t, _w);
    }
    static public function _getConn(_t:Transport, _treq:T_transportRequest, _cm:T_connectMethod):stdgo.Tuple<T_persistConn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension._getConn(_t, _treq, _cm);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _customDialTLS(_t:Transport, _ctx:stdgo._internal.context.Context_Context.Context, _network:String, _addr:String):stdgo.Tuple<stdgo._internal.net.Net_Conn.Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension._customDialTLS(_t, _ctx, _network, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _dial(_t:Transport, _ctx:stdgo._internal.context.Context_Context.Context, _network:String, _addr:String):stdgo.Tuple<stdgo._internal.net.Net_Conn.Conn, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension._dial(_t, _ctx, _network, _addr);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _replaceReqCanceler(_t:Transport, _key:T_cancelKey, _fn:stdgo.Error -> Void):Bool {
        final _fn = _fn;
        return stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension._replaceReqCanceler(_t, _key, _fn);
    }
    static public function _setReqCanceler(_t:Transport, _key:T_cancelKey, _fn:stdgo.Error -> Void):Void {
        final _fn = _fn;
        stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension._setReqCanceler(_t, _key, _fn);
    }
    static public function _removeIdleConnLocked(_t:Transport, _pconn:T_persistConn):Bool {
        return stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension._removeIdleConnLocked(_t, _pconn);
    }
    static public function _removeIdleConn(_t:Transport, _pconn:T_persistConn):Bool {
        return stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension._removeIdleConn(_t, _pconn);
    }
    static public function _queueForIdleConn(_t:Transport, _w:T_wantConn):Bool {
        return stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension._queueForIdleConn(_t, _w);
    }
    static public function _tryPutIdleConn(_t:Transport, _pconn:T_persistConn):stdgo.Error {
        return stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension._tryPutIdleConn(_t, _pconn);
    }
    static public function _maxIdleConnsPerHost(_t:Transport):StdTypes.Int {
        return stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension._maxIdleConnsPerHost(_t);
    }
    static public function _putOrCloseIdleConn(_t:Transport, _pconn:T_persistConn):Void {
        stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension._putOrCloseIdleConn(_t, _pconn);
    }
    static public function _connectMethodForRequest(_t:Transport, _treq:T_transportRequest):stdgo.Tuple<T_connectMethod, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension._connectMethodForRequest(_t, _treq);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _cancelRequest(_t:Transport, _key:T_cancelKey, _err:stdgo.Error):Bool {
        return stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension._cancelRequest(_t, _key, _err);
    }
    static public function cancelRequest(_t:Transport, _req:Request):Void {
        stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension.cancelRequest(_t, _req);
    }
    static public function closeIdleConnections(_t:Transport):Void {
        stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension.closeIdleConnections(_t);
    }
    static public function registerProtocol(_t:Transport, _scheme:String, _rt:RoundTripper):Void {
        stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension.registerProtocol(_t, _scheme, _rt);
    }
    static public function _roundTrip(_t:Transport, _req:Request):stdgo.Tuple<Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension._roundTrip(_t, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _alternateRoundTripper(_t:Transport, _req:Request):RoundTripper {
        return stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension._alternateRoundTripper(_t, _req);
    }
    static public function _useRegisteredProtocol(_t:Transport, _req:Request):Bool {
        return stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension._useRegisteredProtocol(_t, _req);
    }
    static public function _onceSetNextProtoDefaults(_t:Transport):Void {
        stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension._onceSetNextProtoDefaults(_t);
    }
    static public function _hasCustomTLSDialer(_t:Transport):Bool {
        return stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension._hasCustomTLSDialer(_t);
    }
    static public function clone(_t:Transport):Transport {
        return stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension.clone(_t);
    }
    static public function _readBufferSize(_t:Transport):StdTypes.Int {
        return stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension._readBufferSize(_t);
    }
    static public function _writeBufferSize(_t:Transport):StdTypes.Int {
        return stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension._writeBufferSize(_t);
    }
    static public function roundTrip(_t:Transport, _req:Request):stdgo.Tuple<Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_Transport_static_extension.Transport_static_extension.roundTrip(_t, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_transportRequestPointer = stdgo._internal.net.http.Http_T_transportRequestPointer.T_transportRequestPointer;
class T_transportRequest_static_extension {
    static public function _logf(_tr:T_transportRequest, _format:String, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension._logf(_tr, _format, ...[for (i in _args) i]);
    }
    static public function _setError(_tr:T_transportRequest, _err:stdgo.Error):Void {
        stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension._setError(_tr, _err);
    }
    static public function _extraHeaders(_tr:T_transportRequest):Header {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension._extraHeaders(_tr);
    }
    public static function _write(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:stdgo._internal.io.Io_Writer.Writer, _1:Bool, _2:Header, _3:() -> Bool):stdgo.Error {
        final _3 = _3;
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension._write(__self__, _0, _1, _2, _3);
    }
    public static function _wantsHttp10KeepAlive(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Bool {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension._wantsHttp10KeepAlive(__self__);
    }
    public static function _wantsClose(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Bool {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension._wantsClose(__self__);
    }
    public static function _requiresHTTP1(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Bool {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension._requiresHTTP1(__self__);
    }
    public static function _outgoingLength(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):haxe.Int64 {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension._outgoingLength(__self__);
    }
    public static function _multipartReader(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:Bool):stdgo.Tuple<stdgo._internal.mime.multipart.Multipart_Reader.Reader, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension._multipartReader(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _isReplayable(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Bool {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension._isReplayable(__self__);
    }
    public static function _isH2Upgrade(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Bool {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension._isH2Upgrade(__self__);
    }
    public static function _expectsContinue(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Bool {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension._expectsContinue(__self__);
    }
    public static function _closeBody(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):stdgo.Error {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension._closeBody(__self__);
    }
    public static function writeProxy(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.writeProxy(__self__, _0);
    }
    public static function write(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.write(__self__, _0);
    }
    public static function withContext(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:stdgo._internal.context.Context_Context.Context):Request {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.withContext(__self__, _0);
    }
    public static function userAgent(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):String {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.userAgent(__self__);
    }
    public static function setBasicAuth(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:String, _1:String):Void {
        stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.setBasicAuth(__self__, _0, _1);
    }
    public static function referer(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):String {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.referer(__self__);
    }
    public static function protoAtLeast(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:StdTypes.Int, _1:StdTypes.Int):Bool {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.protoAtLeast(__self__, _0, _1);
    }
    public static function postFormValue(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:String):String {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.postFormValue(__self__, _0);
    }
    public static function parseMultipartForm(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:haxe.Int64):stdgo.Error {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.parseMultipartForm(__self__, _0);
    }
    public static function parseForm(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):stdgo.Error {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.parseForm(__self__);
    }
    public static function multipartReader(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):stdgo.Tuple<stdgo._internal.mime.multipart.Multipart_Reader.Reader, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.multipartReader(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function formValue(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:String):String {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.formValue(__self__, _0);
    }
    public static function formFile(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:String):stdgo.Tuple.Tuple3<stdgo._internal.mime.multipart.Multipart_File.File, stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.formFile(__self__, _0);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function cookies(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Array<Cookie> {
        return [for (i in stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.cookies(__self__)) i];
    }
    public static function cookie(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:String):stdgo.Tuple<Cookie, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.cookie(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function context(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):stdgo._internal.context.Context_Context.Context {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.context(__self__);
    }
    public static function clone(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:stdgo._internal.context.Context_Context.Context):Request {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.clone(__self__, _0);
    }
    public static function basicAuth(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):stdgo.Tuple.Tuple3<String, String, Bool> {
        return {
            final obj = stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.basicAuth(__self__);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function addCookie(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:Cookie):Void {
        stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.addCookie(__self__, _0);
    }
}
typedef T_readTrackingBodyPointer = stdgo._internal.net.http.Http_T_readTrackingBodyPointer.T_readTrackingBodyPointer;
class T_readTrackingBody_static_extension {
    static public function close(_r:T_readTrackingBody):stdgo.Error {
        return stdgo._internal.net.http.Http_T_readTrackingBody_static_extension.T_readTrackingBody_static_extension.close(_r);
    }
    static public function read(_r:T_readTrackingBody, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_readTrackingBody_static_extension.T_readTrackingBody_static_extension.read(_r, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_transportReadFromServerErrorPointer = stdgo._internal.net.http.Http_T_transportReadFromServerErrorPointer.T_transportReadFromServerErrorPointer;
class T_transportReadFromServerError_static_extension {
    static public function error(_e:T_transportReadFromServerError):String {
        return stdgo._internal.net.http.Http_T_transportReadFromServerError_static_extension.T_transportReadFromServerError_static_extension.error(_e);
    }
    static public function unwrap(_e:T_transportReadFromServerError):stdgo.Error {
        return stdgo._internal.net.http.Http_T_transportReadFromServerError_static_extension.T_transportReadFromServerError_static_extension.unwrap(_e);
    }
}
typedef T_wantConnPointer = stdgo._internal.net.http.Http_T_wantConnPointer.T_wantConnPointer;
class T_wantConn_static_extension {
    static public function _cancel(_w:T_wantConn, _t:Transport, _err:stdgo.Error):Void {
        stdgo._internal.net.http.Http_T_wantConn_static_extension.T_wantConn_static_extension._cancel(_w, _t, _err);
    }
    static public function _tryDeliver(_w:T_wantConn, _pc:T_persistConn, _err:stdgo.Error):Bool {
        return stdgo._internal.net.http.Http_T_wantConn_static_extension.T_wantConn_static_extension._tryDeliver(_w, _pc, _err);
    }
    static public function _waiting(_w:T_wantConn):Bool {
        return stdgo._internal.net.http.Http_T_wantConn_static_extension.T_wantConn_static_extension._waiting(_w);
    }
}
typedef T_wantConnQueuePointer = stdgo._internal.net.http.Http_T_wantConnQueuePointer.T_wantConnQueuePointer;
class T_wantConnQueue_static_extension {
    static public function _cleanFront(_q:T_wantConnQueue):Bool {
        return stdgo._internal.net.http.Http_T_wantConnQueue_static_extension.T_wantConnQueue_static_extension._cleanFront(_q);
    }
    static public function _peekFront(_q:T_wantConnQueue):T_wantConn {
        return stdgo._internal.net.http.Http_T_wantConnQueue_static_extension.T_wantConnQueue_static_extension._peekFront(_q);
    }
    static public function _popFront(_q:T_wantConnQueue):T_wantConn {
        return stdgo._internal.net.http.Http_T_wantConnQueue_static_extension.T_wantConnQueue_static_extension._popFront(_q);
    }
    static public function _pushBack(_q:T_wantConnQueue, _w:T_wantConn):Void {
        stdgo._internal.net.http.Http_T_wantConnQueue_static_extension.T_wantConnQueue_static_extension._pushBack(_q, _w);
    }
    static public function _len(_q:T_wantConnQueue):StdTypes.Int {
        return stdgo._internal.net.http.Http_T_wantConnQueue_static_extension.T_wantConnQueue_static_extension._len(_q);
    }
}
typedef T_persistConnWriterPointer = stdgo._internal.net.http.Http_T_persistConnWriterPointer.T_persistConnWriterPointer;
class T_persistConnWriter_static_extension {
    static public function readFrom(_w:T_persistConnWriter, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_persistConnWriter_static_extension.T_persistConnWriter_static_extension.readFrom(_w, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_w:T_persistConnWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_persistConnWriter_static_extension.T_persistConnWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_connectMethodPointer = stdgo._internal.net.http.Http_T_connectMethodPointer.T_connectMethodPointer;
class T_connectMethod_static_extension {
    static public function _tlsHost(_cm:T_connectMethod):String {
        return stdgo._internal.net.http.Http_T_connectMethod_static_extension.T_connectMethod_static_extension._tlsHost(_cm);
    }
    static public function _addr(_cm:T_connectMethod):String {
        return stdgo._internal.net.http.Http_T_connectMethod_static_extension.T_connectMethod_static_extension._addr(_cm);
    }
    static public function _scheme(_cm:T_connectMethod):String {
        return stdgo._internal.net.http.Http_T_connectMethod_static_extension.T_connectMethod_static_extension._scheme(_cm);
    }
    static public function _key(_cm:T_connectMethod):T_connectMethodKey {
        return stdgo._internal.net.http.Http_T_connectMethod_static_extension.T_connectMethod_static_extension._key(_cm);
    }
    static public function _proxyAuth(_cm:T_connectMethod):String {
        return stdgo._internal.net.http.Http_T_connectMethod_static_extension.T_connectMethod_static_extension._proxyAuth(_cm);
    }
}
typedef T_connectMethodKeyPointer = stdgo._internal.net.http.Http_T_connectMethodKeyPointer.T_connectMethodKeyPointer;
class T_connectMethodKey_static_extension {
    static public function string(_k:T_connectMethodKey):String {
        return stdgo._internal.net.http.Http_T_connectMethodKey_static_extension.T_connectMethodKey_static_extension.string(_k);
    }
}
typedef T_persistConnPointer = stdgo._internal.net.http.Http_T_persistConnPointer.T_persistConnPointer;
class T_persistConn_static_extension {
    static public function _closeLocked(_pc:T_persistConn, _err:stdgo.Error):Void {
        stdgo._internal.net.http.Http_T_persistConn_static_extension.T_persistConn_static_extension._closeLocked(_pc, _err);
    }
    static public function _close(_pc:T_persistConn, _err:stdgo.Error):Void {
        stdgo._internal.net.http.Http_T_persistConn_static_extension.T_persistConn_static_extension._close(_pc, _err);
    }
    static public function _markReused(_pc:T_persistConn):Void {
        stdgo._internal.net.http.Http_T_persistConn_static_extension.T_persistConn_static_extension._markReused(_pc);
    }
    static public function _roundTrip(_pc:T_persistConn, _req:T_transportRequest):stdgo.Tuple<Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_persistConn_static_extension.T_persistConn_static_extension._roundTrip(_pc, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _wroteRequest(_pc:T_persistConn):Bool {
        return stdgo._internal.net.http.Http_T_persistConn_static_extension.T_persistConn_static_extension._wroteRequest(_pc);
    }
    static public function _writeLoop(_pc:T_persistConn):Void {
        stdgo._internal.net.http.Http_T_persistConn_static_extension.T_persistConn_static_extension._writeLoop(_pc);
    }
    static public function _waitForContinue(_pc:T_persistConn, _continueCh:stdgo.Chan<stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError>):() -> Bool {
        return () -> stdgo._internal.net.http.Http_T_persistConn_static_extension.T_persistConn_static_extension._waitForContinue(_pc, _continueCh)();
    }
    static public function _readResponse(_pc:T_persistConn, _rc:T_requestAndChan, _trace:ClientTrace):stdgo.Tuple<Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_persistConn_static_extension.T_persistConn_static_extension._readResponse(_pc, _rc, _trace);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readLoopPeekFailLocked(_pc:T_persistConn, _peekErr:stdgo.Error):Void {
        stdgo._internal.net.http.Http_T_persistConn_static_extension.T_persistConn_static_extension._readLoopPeekFailLocked(_pc, _peekErr);
    }
    static public function _readLoop(_pc:T_persistConn):Void {
        stdgo._internal.net.http.Http_T_persistConn_static_extension.T_persistConn_static_extension._readLoop(_pc);
    }
    static public function _mapRoundTripError(_pc:T_persistConn, _req:T_transportRequest, _startBytesWritten:haxe.Int64, _err:stdgo.Error):stdgo.Error {
        return stdgo._internal.net.http.Http_T_persistConn_static_extension.T_persistConn_static_extension._mapRoundTripError(_pc, _req, _startBytesWritten, _err);
    }
    static public function _closeConnIfStillIdle(_pc:T_persistConn):Void {
        stdgo._internal.net.http.Http_T_persistConn_static_extension.T_persistConn_static_extension._closeConnIfStillIdle(_pc);
    }
    static public function _cancelRequest(_pc:T_persistConn, _err:stdgo.Error):Void {
        stdgo._internal.net.http.Http_T_persistConn_static_extension.T_persistConn_static_extension._cancelRequest(_pc, _err);
    }
    static public function _gotIdleConnTrace(_pc:T_persistConn, _idleAt:stdgo._internal.time.Time_Time.Time):GotConnInfo {
        return stdgo._internal.net.http.Http_T_persistConn_static_extension.T_persistConn_static_extension._gotIdleConnTrace(_pc, _idleAt);
    }
    static public function _isReused(_pc:T_persistConn):Bool {
        return stdgo._internal.net.http.Http_T_persistConn_static_extension.T_persistConn_static_extension._isReused(_pc);
    }
    static public function _canceled(_pc:T_persistConn):stdgo.Error {
        return stdgo._internal.net.http.Http_T_persistConn_static_extension.T_persistConn_static_extension._canceled(_pc);
    }
    static public function _isBroken(_pc:T_persistConn):Bool {
        return stdgo._internal.net.http.Http_T_persistConn_static_extension.T_persistConn_static_extension._isBroken(_pc);
    }
    static public function read(_pc:T_persistConn, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_persistConn_static_extension.T_persistConn_static_extension.read(_pc, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _maxHeaderResponseSize(_pc:T_persistConn):haxe.Int64 {
        return stdgo._internal.net.http.Http_T_persistConn_static_extension.T_persistConn_static_extension._maxHeaderResponseSize(_pc);
    }
    static public function _addTLS(_pconn:T_persistConn, _ctx:stdgo._internal.context.Context_Context.Context, _name:String, _trace:ClientTrace):stdgo.Error {
        return stdgo._internal.net.http.Http_T_persistConn_static_extension.T_persistConn_static_extension._addTLS(_pconn, _ctx, _name, _trace);
    }
    static public function _shouldRetryRequest(_pc:T_persistConn, _req:Request, _err:stdgo.Error):Bool {
        return stdgo._internal.net.http.Http_T_persistConn_static_extension.T_persistConn_static_extension._shouldRetryRequest(_pc, _req, _err);
    }
}
typedef T_readWriteCloserBodyPointer = stdgo._internal.net.http.Http_T_readWriteCloserBodyPointer.T_readWriteCloserBodyPointer;
class T_readWriteCloserBody_static_extension {
    static public function read(_b:T_readWriteCloserBody, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_readWriteCloserBody_static_extension.T_readWriteCloserBody_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function write(__self__:stdgo._internal.net.http.Http_T_readWriteCloserBody.T_readWriteCloserBody, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_readWriteCloserBody_static_extension.T_readWriteCloserBody_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function close(__self__:stdgo._internal.net.http.Http_T_readWriteCloserBody.T_readWriteCloserBody):stdgo.Error {
        return stdgo._internal.net.http.Http_T_readWriteCloserBody_static_extension.T_readWriteCloserBody_static_extension.close(__self__);
    }
}
typedef T_nothingWrittenErrorPointer = stdgo._internal.net.http.Http_T_nothingWrittenErrorPointer.T_nothingWrittenErrorPointer;
class T_nothingWrittenError_static_extension {
    static public function unwrap(_nwe:T_nothingWrittenError):stdgo.Error {
        return stdgo._internal.net.http.Http_T_nothingWrittenError_static_extension.T_nothingWrittenError_static_extension.unwrap(_nwe);
    }
    public static function error(__self__:stdgo._internal.net.http.Http_T_nothingWrittenError.T_nothingWrittenError):String {
        return stdgo._internal.net.http.Http_T_nothingWrittenError_static_extension.T_nothingWrittenError_static_extension.error(__self__);
    }
}
typedef T_httpErrorPointer = stdgo._internal.net.http.Http_T_httpErrorPointer.T_httpErrorPointer;
class T_httpError_static_extension {
    static public function temporary(_e:T_httpError):Bool {
        return stdgo._internal.net.http.Http_T_httpError_static_extension.T_httpError_static_extension.temporary(_e);
    }
    static public function timeout(_e:T_httpError):Bool {
        return stdgo._internal.net.http.Http_T_httpError_static_extension.T_httpError_static_extension.timeout(_e);
    }
    static public function error(_e:T_httpError):String {
        return stdgo._internal.net.http.Http_T_httpError_static_extension.T_httpError_static_extension.error(_e);
    }
}
typedef T_bodyEOFSignalPointer = stdgo._internal.net.http.Http_T_bodyEOFSignalPointer.T_bodyEOFSignalPointer;
class T_bodyEOFSignal_static_extension {
    static public function _condfn(_es:T_bodyEOFSignal, _err:stdgo.Error):stdgo.Error {
        return stdgo._internal.net.http.Http_T_bodyEOFSignal_static_extension.T_bodyEOFSignal_static_extension._condfn(_es, _err);
    }
    static public function close(_es:T_bodyEOFSignal):stdgo.Error {
        return stdgo._internal.net.http.Http_T_bodyEOFSignal_static_extension.T_bodyEOFSignal_static_extension.close(_es);
    }
    static public function read(_es:T_bodyEOFSignal, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_bodyEOFSignal_static_extension.T_bodyEOFSignal_static_extension.read(_es, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_gzipReaderPointer = stdgo._internal.net.http.Http_T_gzipReaderPointer.T_gzipReaderPointer;
class T_gzipReader_static_extension {
    static public function close(_gz:T_gzipReader):stdgo.Error {
        return stdgo._internal.net.http.Http_T_gzipReader_static_extension.T_gzipReader_static_extension.close(_gz);
    }
    static public function read(_gz:T_gzipReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_gzipReader_static_extension.T_gzipReader_static_extension.read(_gz, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_tlsHandshakeTimeoutErrorPointer = stdgo._internal.net.http.Http_T_tlsHandshakeTimeoutErrorPointer.T_tlsHandshakeTimeoutErrorPointer;
class T_tlsHandshakeTimeoutError_static_extension {
    static public function error(_:T_tlsHandshakeTimeoutError):String {
        return stdgo._internal.net.http.Http_T_tlsHandshakeTimeoutError_static_extension.T_tlsHandshakeTimeoutError_static_extension.error(_);
    }
    static public function temporary(_:T_tlsHandshakeTimeoutError):Bool {
        return stdgo._internal.net.http.Http_T_tlsHandshakeTimeoutError_static_extension.T_tlsHandshakeTimeoutError_static_extension.temporary(_);
    }
    static public function timeout(_:T_tlsHandshakeTimeoutError):Bool {
        return stdgo._internal.net.http.Http_T_tlsHandshakeTimeoutError_static_extension.T_tlsHandshakeTimeoutError_static_extension.timeout(_);
    }
}
typedef T_fakeLockerPointer = stdgo._internal.net.http.Http_T_fakeLockerPointer.T_fakeLockerPointer;
class T_fakeLocker_static_extension {
    static public function unlock(_:T_fakeLocker):Void {
        stdgo._internal.net.http.Http_T_fakeLocker_static_extension.T_fakeLocker_static_extension.unlock(_);
    }
    static public function lock(_:T_fakeLocker):Void {
        stdgo._internal.net.http.Http_T_fakeLocker_static_extension.T_fakeLocker_static_extension.lock(_);
    }
}
typedef T_connLRUPointer = stdgo._internal.net.http.Http_T_connLRUPointer.T_connLRUPointer;
class T_connLRU_static_extension {
    static public function _len(_cl:T_connLRU):StdTypes.Int {
        return stdgo._internal.net.http.Http_T_connLRU_static_extension.T_connLRU_static_extension._len(_cl);
    }
    static public function _remove(_cl:T_connLRU, _pc:T_persistConn):Void {
        stdgo._internal.net.http.Http_T_connLRU_static_extension.T_connLRU_static_extension._remove(_cl, _pc);
    }
    static public function _removeOldest(_cl:T_connLRU):T_persistConn {
        return stdgo._internal.net.http.Http_T_connLRU_static_extension.T_connLRU_static_extension._removeOldest(_cl);
    }
    static public function _add(_cl:T_connLRU, _pc:T_persistConn):Void {
        stdgo._internal.net.http.Http_T_connLRU_static_extension.T_connLRU_static_extension._add(_cl, _pc);
    }
}
typedef DirPointer = stdgo._internal.net.http.Http_DirPointer.DirPointer;
class Dir_static_extension {
    static public function open(_d:Dir, _name:String):stdgo.Tuple<File, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_Dir_static_extension.Dir_static_extension.open(_d, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_fileInfoDirsPointer = stdgo._internal.net.http.Http_T_fileInfoDirsPointer.T_fileInfoDirsPointer;
class T_fileInfoDirs_static_extension {
    static public function _name(_d:T_fileInfoDirs, _i:StdTypes.Int):String {
        return stdgo._internal.net.http.Http_T_fileInfoDirs_static_extension.T_fileInfoDirs_static_extension._name(_d, _i);
    }
    static public function _isDir(_d:T_fileInfoDirs, _i:StdTypes.Int):Bool {
        return stdgo._internal.net.http.Http_T_fileInfoDirs_static_extension.T_fileInfoDirs_static_extension._isDir(_d, _i);
    }
    static public function _len(_d:T_fileInfoDirs):StdTypes.Int {
        return stdgo._internal.net.http.Http_T_fileInfoDirs_static_extension.T_fileInfoDirs_static_extension._len(_d);
    }
}
typedef T_dirEntryDirsPointer = stdgo._internal.net.http.Http_T_dirEntryDirsPointer.T_dirEntryDirsPointer;
class T_dirEntryDirs_static_extension {
    static public function _name(_d:T_dirEntryDirs, _i:StdTypes.Int):String {
        return stdgo._internal.net.http.Http_T_dirEntryDirs_static_extension.T_dirEntryDirs_static_extension._name(_d, _i);
    }
    static public function _isDir(_d:T_dirEntryDirs, _i:StdTypes.Int):Bool {
        return stdgo._internal.net.http.Http_T_dirEntryDirs_static_extension.T_dirEntryDirs_static_extension._isDir(_d, _i);
    }
    static public function _len(_d:T_dirEntryDirs):StdTypes.Int {
        return stdgo._internal.net.http.Http_T_dirEntryDirs_static_extension.T_dirEntryDirs_static_extension._len(_d);
    }
}
typedef T_countingWriterPointer = stdgo._internal.net.http.Http_T_countingWriterPointer.T_countingWriterPointer;
class T_countingWriter_static_extension {
    static public function write(_w:stdgo.Pointer<T_countingWriter>, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_countingWriter_static_extension.T_countingWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
typedef T_http2ErrCodePointer = stdgo._internal.net.http.Http_T_http2ErrCodePointer.T_http2ErrCodePointer;
class T_http2ErrCode_static_extension {
    static public function _stringToken(_e:T_http2ErrCode):String {
        return stdgo._internal.net.http.Http_T_http2ErrCode_static_extension.T_http2ErrCode_static_extension._stringToken(_e);
    }
    static public function string(_e:T_http2ErrCode):String {
        return stdgo._internal.net.http.Http_T_http2ErrCode_static_extension.T_http2ErrCode_static_extension.string(_e);
    }
}
typedef T_http2ConnectionErrorPointer = stdgo._internal.net.http.Http_T_http2ConnectionErrorPointer.T_http2ConnectionErrorPointer;
class T_http2ConnectionError_static_extension {
    static public function error(_e:T_http2ConnectionError):String {
        return stdgo._internal.net.http.Http_T_http2ConnectionError_static_extension.T_http2ConnectionError_static_extension.error(_e);
    }
}
typedef T_http2pseudoHeaderErrorPointer = stdgo._internal.net.http.Http_T_http2pseudoHeaderErrorPointer.T_http2pseudoHeaderErrorPointer;
class T_http2pseudoHeaderError_static_extension {
    static public function error(_e:T_http2pseudoHeaderError):String {
        return stdgo._internal.net.http.Http_T_http2pseudoHeaderError_static_extension.T_http2pseudoHeaderError_static_extension.error(_e);
    }
}
typedef T_http2duplicatePseudoHeaderErrorPointer = stdgo._internal.net.http.Http_T_http2duplicatePseudoHeaderErrorPointer.T_http2duplicatePseudoHeaderErrorPointer;
class T_http2duplicatePseudoHeaderError_static_extension {
    static public function error(_e:T_http2duplicatePseudoHeaderError):String {
        return stdgo._internal.net.http.Http_T_http2duplicatePseudoHeaderError_static_extension.T_http2duplicatePseudoHeaderError_static_extension.error(_e);
    }
}
typedef T_http2headerFieldNameErrorPointer = stdgo._internal.net.http.Http_T_http2headerFieldNameErrorPointer.T_http2headerFieldNameErrorPointer;
class T_http2headerFieldNameError_static_extension {
    static public function error(_e:T_http2headerFieldNameError):String {
        return stdgo._internal.net.http.Http_T_http2headerFieldNameError_static_extension.T_http2headerFieldNameError_static_extension.error(_e);
    }
}
typedef T_http2headerFieldValueErrorPointer = stdgo._internal.net.http.Http_T_http2headerFieldValueErrorPointer.T_http2headerFieldValueErrorPointer;
class T_http2headerFieldValueError_static_extension {
    static public function error(_e:T_http2headerFieldValueError):String {
        return stdgo._internal.net.http.Http_T_http2headerFieldValueError_static_extension.T_http2headerFieldValueError_static_extension.error(_e);
    }
}
typedef T_http2FrameTypePointer = stdgo._internal.net.http.Http_T_http2FrameTypePointer.T_http2FrameTypePointer;
class T_http2FrameType_static_extension {
    static public function string(_t:T_http2FrameType):String {
        return stdgo._internal.net.http.Http_T_http2FrameType_static_extension.T_http2FrameType_static_extension.string(_t);
    }
}
typedef T_http2FlagsPointer = stdgo._internal.net.http.Http_T_http2FlagsPointer.T_http2FlagsPointer;
class T_http2Flags_static_extension {
    static public function has(_f:T_http2Flags, _v:T_http2Flags):Bool {
        return stdgo._internal.net.http.Http_T_http2Flags_static_extension.T_http2Flags_static_extension.has(_f, _v);
    }
}
typedef T_http2goroutineLockPointer = stdgo._internal.net.http.Http_T_http2goroutineLockPointer.T_http2goroutineLockPointer;
class T_http2goroutineLock_static_extension {
    static public function _checkNotOn(_g:T_http2goroutineLock):Void {
        stdgo._internal.net.http.Http_T_http2goroutineLock_static_extension.T_http2goroutineLock_static_extension._checkNotOn(_g);
    }
    static public function _check(_g:T_http2goroutineLock):Void {
        stdgo._internal.net.http.Http_T_http2goroutineLock_static_extension.T_http2goroutineLock_static_extension._check(_g);
    }
}
typedef T_http2streamStatePointer = stdgo._internal.net.http.Http_T_http2streamStatePointer.T_http2streamStatePointer;
class T_http2streamState_static_extension {
    static public function string(_st:T_http2streamState):String {
        return stdgo._internal.net.http.Http_T_http2streamState_static_extension.T_http2streamState_static_extension.string(_st);
    }
}
typedef T_http2SettingIDPointer = stdgo._internal.net.http.Http_T_http2SettingIDPointer.T_http2SettingIDPointer;
class T_http2SettingID_static_extension {
    static public function string(_s:T_http2SettingID):String {
        return stdgo._internal.net.http.Http_T_http2SettingID_static_extension.T_http2SettingID_static_extension.string(_s);
    }
}
typedef T_http2gatePointer = stdgo._internal.net.http.Http_T_http2gatePointer.T_http2gatePointer;
class T_http2gate_static_extension {
    static public function wait_(_g:T_http2gate):Void {
        stdgo._internal.net.http.Http_T_http2gate_static_extension.T_http2gate_static_extension.wait_(_g);
    }
    static public function done(_g:T_http2gate):Void {
        stdgo._internal.net.http.Http_T_http2gate_static_extension.T_http2gate_static_extension.done(_g);
    }
}
typedef T_http2closeWaiterPointer = stdgo._internal.net.http.Http_T_http2closeWaiterPointer.T_http2closeWaiterPointer;
class T_http2closeWaiter_static_extension {
    static public function wait_(_cw:T_http2closeWaiter):Void {
        stdgo._internal.net.http.Http_T_http2closeWaiter_static_extension.T_http2closeWaiter_static_extension.wait_(_cw);
    }
    static public function close(_cw:T_http2closeWaiter):Void {
        stdgo._internal.net.http.Http_T_http2closeWaiter_static_extension.T_http2closeWaiter_static_extension.close(_cw);
    }
    static public function init(_cw:T_http2closeWaiter):Void {
        stdgo._internal.net.http.Http_T_http2closeWaiter_static_extension.T_http2closeWaiter_static_extension.init(_cw);
    }
}
typedef T_http2writeSettingsPointer = stdgo._internal.net.http.Http_T_http2writeSettingsPointer.T_http2writeSettingsPointer;
class T_http2writeSettings_static_extension {
    static public function _writeFrame(_s:T_http2writeSettings, _ctx:T_http2writeContext):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2writeSettings_static_extension.T_http2writeSettings_static_extension._writeFrame(_s, _ctx);
    }
    static public function _staysWithinBuffer(_s:T_http2writeSettings, _max:StdTypes.Int):Bool {
        return stdgo._internal.net.http.Http_T_http2writeSettings_static_extension.T_http2writeSettings_static_extension._staysWithinBuffer(_s, _max);
    }
}
typedef T_http2writeQueuePoolPointer = stdgo._internal.net.http.Http_T_http2writeQueuePoolPointer.T_http2writeQueuePoolPointer;
class T_http2writeQueuePool_static_extension {
    static public function _get(_p:T_http2writeQueuePool):T_http2writeQueue {
        return stdgo._internal.net.http.Http_T_http2writeQueuePool_static_extension.T_http2writeQueuePool_static_extension._get(_p);
    }
    static public function _put(_p:T_http2writeQueuePool, _q:T_http2writeQueue):Void {
        stdgo._internal.net.http.Http_T_http2writeQueuePool_static_extension.T_http2writeQueuePool_static_extension._put(_p, _q);
    }
}
typedef T_http2sortPriorityNodeSiblingsPointer = stdgo._internal.net.http.Http_T_http2sortPriorityNodeSiblingsPointer.T_http2sortPriorityNodeSiblingsPointer;
class T_http2sortPriorityNodeSiblings_static_extension {
    static public function less(_z:T_http2sortPriorityNodeSiblings, _i:StdTypes.Int, _k:StdTypes.Int):Bool {
        return stdgo._internal.net.http.Http_T_http2sortPriorityNodeSiblings_static_extension.T_http2sortPriorityNodeSiblings_static_extension.less(_z, _i, _k);
    }
    static public function swap(_z:T_http2sortPriorityNodeSiblings, _i:StdTypes.Int, _k:StdTypes.Int):Void {
        stdgo._internal.net.http.Http_T_http2sortPriorityNodeSiblings_static_extension.T_http2sortPriorityNodeSiblings_static_extension.swap(_z, _i, _k);
    }
    static public function len(_z:T_http2sortPriorityNodeSiblings):StdTypes.Int {
        return stdgo._internal.net.http.Http_T_http2sortPriorityNodeSiblings_static_extension.T_http2sortPriorityNodeSiblings_static_extension.len(_z);
    }
}
typedef HeaderPointer = stdgo._internal.net.http.Http_HeaderPointer.HeaderPointer;
class Header_static_extension {
    static public function _writeSubset(_h:Header, _w:stdgo._internal.io.Io_Writer.Writer, _exclude:stdgo.GoMap<stdgo.GoString, Bool>, _trace:ClientTrace):stdgo.Error {
        return stdgo._internal.net.http.Http_Header_static_extension.Header_static_extension._writeSubset(_h, _w, _exclude, _trace);
    }
    static public function writeSubset(_h:Header, _w:stdgo._internal.io.Io_Writer.Writer, _exclude:stdgo.GoMap<stdgo.GoString, Bool>):stdgo.Error {
        return stdgo._internal.net.http.Http_Header_static_extension.Header_static_extension.writeSubset(_h, _w, _exclude);
    }
    static public function _sortedKeyValues(_h:Header, _exclude:stdgo.GoMap<stdgo.GoString, Bool>):stdgo.Tuple<Array<T_keyValues>, T_headerSorter> {
        return {
            final obj = stdgo._internal.net.http.Http_Header_static_extension.Header_static_extension._sortedKeyValues(_h, _exclude);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function clone(_h:Header):Header {
        return stdgo._internal.net.http.Http_Header_static_extension.Header_static_extension.clone(_h);
    }
    static public function _write(_h:Header, _w:stdgo._internal.io.Io_Writer.Writer, _trace:ClientTrace):stdgo.Error {
        return stdgo._internal.net.http.Http_Header_static_extension.Header_static_extension._write(_h, _w, _trace);
    }
    static public function write(_h:Header, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        return stdgo._internal.net.http.Http_Header_static_extension.Header_static_extension.write(_h, _w);
    }
    static public function del(_h:Header, _key:String):Void {
        stdgo._internal.net.http.Http_Header_static_extension.Header_static_extension.del(_h, _key);
    }
    static public function _has(_h:Header, _key:String):Bool {
        return stdgo._internal.net.http.Http_Header_static_extension.Header_static_extension._has(_h, _key);
    }
    static public function _get(_h:Header, _key:String):String {
        return stdgo._internal.net.http.Http_Header_static_extension.Header_static_extension._get(_h, _key);
    }
    static public function values(_h:Header, _key:String):Array<String> {
        return [for (i in stdgo._internal.net.http.Http_Header_static_extension.Header_static_extension.values(_h, _key)) i];
    }
    static public function get(_h:Header, _key:String):String {
        return stdgo._internal.net.http.Http_Header_static_extension.Header_static_extension.get(_h, _key);
    }
    static public function set(_h:Header, _key:String, _value:String):Void {
        stdgo._internal.net.http.Http_Header_static_extension.Header_static_extension.set(_h, _key, _value);
    }
    static public function add(_h:Header, _key:String, _value:String):Void {
        stdgo._internal.net.http.Http_Header_static_extension.Header_static_extension.add(_h, _key, _value);
    }
}
typedef HandlerFuncPointer = stdgo._internal.net.http.Http_HandlerFuncPointer.HandlerFuncPointer;
class HandlerFunc_static_extension {
    static public function serveHTTP(_f:HandlerFunc, _w:ResponseWriter, _r:Request):Void {
        stdgo._internal.net.http.Http_HandlerFunc_static_extension.HandlerFunc_static_extension.serveHTTP(_f, _w, _r);
    }
}
typedef ConnStatePointer = stdgo._internal.net.http.Http_ConnStatePointer.ConnStatePointer;
class ConnState_static_extension {
    static public function string(_c:ConnState):String {
        return stdgo._internal.net.http.Http_ConnState_static_extension.ConnState_static_extension.string(_c);
    }
}
typedef T_htmlSigPointer = stdgo._internal.net.http.Http_T_htmlSigPointer.T_htmlSigPointer;
class T_htmlSig_static_extension {
    static public function _match(_h:T_htmlSig, _data:Array<std.UInt>, _firstNonWS:StdTypes.Int):String {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_T_htmlSig_static_extension.T_htmlSig_static_extension._match(_h, _data, _firstNonWS);
    }
}
typedef T_socksCommandPointer = stdgo._internal.net.http.Http_T_socksCommandPointer.T_socksCommandPointer;
class T_socksCommand_static_extension {
    static public function string(_cmd:T_socksCommand):String {
        return stdgo._internal.net.http.Http_T_socksCommand_static_extension.T_socksCommand_static_extension.string(_cmd);
    }
}
typedef T_socksReplyPointer = stdgo._internal.net.http.Http_T_socksReplyPointer.T_socksReplyPointer;
class T_socksReply_static_extension {
    static public function string(_code:T_socksReply):String {
        return stdgo._internal.net.http.Http_T_socksReply_static_extension.T_socksReply_static_extension.string(_code);
    }
}
/**
    /|*{
    	if bitSize == 0 {
    		gotoNext = 7556863
    		_ = gotoNext == 7556863
    		bitSize = int(32)
    		gotoNext = 7556903
    	} else {
    		gotoNext = 7556903
    	}
    	_ = gotoNext == 7556903
    	s0_7556903 = s
    	gotoNext = 7556912
    	_ = gotoNext == 7556912
    	switch {
    	case len(s) < 1:
    		gotoNext = 7556922
    		_ = gotoNext == 7556922
    		err = strconv.ErrSyntax
    		gotoNext = 7558112
    		gotoNext = 7557408
    	case 2 <= base && base <= 36:
    		gotoNext = 7556980
    		_ = gotoNext == 7556980
    		gotoNext = 7557408
    	case base == 0:
    		gotoNext = 7557043
    		_ = gotoNext == 7557043
    		gotoNext = 7557094
    		_ = gotoNext == 7557094
    		switch {
    		case s[0] == 48 && len(s) > 1 && (s[1] == 120 || s[1] == 88):
    			gotoNext = 7557105
    			_ = gotoNext == 7557105
    			base = 16
    			s = s[2:]
    			if len(s) < 1 {
    				gotoNext = 7557212
    				_ = gotoNext == 7557212
    				err = strconv.ErrSyntax
    				gotoNext = 7558112
    				gotoNext = 7557408
    			} else {
    				gotoNext = 7557408
    			}
    			gotoNext = 7557408
    		case s[0] == 48:
    			gotoNext = 7557264
    			_ = gotoNext == 7557264
    			base = 8
    			gotoNext = 7557408
    		default:
    			gotoNext = 7557296
    			_ = gotoNext == 7557296
    			base = 10
    			gotoNext = 7557408
    		}
    		gotoNext = 7557408
    	default:
    		gotoNext = 7557324
    		_ = gotoNext == 7557324
    		err = errors.New("invalid base " + strconv.Itoa(base))
    		gotoNext = 7558112
    		gotoNext = 7557408
    	}
    	_ = gotoNext == 7557408
    	n = 0
    	cutoff_7556823 = http2cutoff64(base)
    	maxVal_7556831 = 1<<uint(bitSize) - 1
    	i_7557481 = 0
    	gotoNext = 7557477
    	_ = gotoNext == 7557477
    	if i_7557481 < len(s) {
    		gotoNext = 7557505
    		_ = gotoNext == 7557505
    		d_7557522 = s[i_7557481]
    		gotoNext = 7557534
    		_ = gotoNext == 7557534
    		switch {
    		case 48 <= d_7557522 && d_7557522 <= 57:
    			gotoNext = 7557545
    			_ = gotoNext == 7557545
    			v_7557513 = d_7557522 - 48
    			gotoNext = 7557752
    		case 97 <= d_7557522 && d_7557522 <= 122:
    			gotoNext = 7557589
    			_ = gotoNext == 7557589
    			v_7557513 = d_7557522 - 97 + 10
    			gotoNext = 7557752
    		case 65 <= d_7557522 && d_7557522 <= 90:
    			gotoNext = 7557638
    			_ = gotoNext == 7557638
    			v_7557513 = d_7557522 - 65 + 10
    			gotoNext = 7557752
    		default:
    			gotoNext = 7557687
    			_ = gotoNext == 7557687
    			n = 0
    			err = strconv.ErrSyntax
    			gotoNext = 7558112
    			gotoNext = 7557752
    		}
    		_ = gotoNext == 7557752
    		if int(v_7557513) >= base {
    			gotoNext = 7557770
    			_ = gotoNext == 7557770
    			n = 0
    			err = strconv.ErrSyntax
    			gotoNext = 7558112
    			gotoNext = 7557829
    		} else {
    			gotoNext = 7557829
    		}
    		_ = gotoNext == 7557829
    		if n >= cutoff_7556823 {
    			gotoNext = 7557844
    			_ = gotoNext == 7557844
    			n = 18446744073709551615
    			err = strconv.ErrRange
    			gotoNext = 7558112
    			gotoNext = 7557932
    		} else {
    			gotoNext = 7557932
    		}
    		_ = gotoNext == 7557932
    		n *= uint64(base)
    		n1_7557953 = n + uint64(v_7557513)
    		if n1_7557953 < n || n1_7557953 > maxVal_7556831 {
    			gotoNext = 7558000
    			_ = gotoNext == 7558000
    			n = 18446744073709551615
    			err = strconv.ErrRange
    			gotoNext = 7558112
    			gotoNext = 7558085
    		} else {
    			gotoNext = 7558085
    		}
    		_ = gotoNext == 7558085
    		n = n1_7557953
    		i_7557481++
    		gotoNext = 7557477
    	} else {
    		gotoNext = 7558097
    	}
    	_ = gotoNext == 7558097
    	return n, nil
    	gotoNext = 7558112
    	_ = gotoNext == 7558112
    	return n, &strconv.NumError{Func: "ParseUint", Num: string(s0_7556903), Err: err}
    	gotoNext = -1
    }*|/
**/
class Http {
    /**
        Get issues a GET to the specified URL. If the response is one of
        the following redirect codes, Get follows the redirect, up to a
        maximum of 10 redirects:
        
        	301 (Moved Permanently)
        	302 (Found)
        	303 (See Other)
        	307 (Temporary Redirect)
        	308 (Permanent Redirect)
        
        An error is returned if there were too many redirects or if there
        was an HTTP protocol error. A non-2xx response doesn't cause an
        error. Any returned error will be of type *url.Error. The url.Error
        value's Timeout method will report true if the request timed out.
        
        When err is nil, resp always contains a non-nil resp.Body.
        Caller should close resp.Body when done reading from it.
        
        Get is a wrapper around DefaultClient.Get.
        
        To make a request with custom headers, use NewRequest and
        DefaultClient.Do.
        
        To make a request with a specified context.Context, use NewRequestWithContext
        and DefaultClient.Do.
    **/
    static public function get(_url:String):stdgo.Tuple<Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_get.get(_url);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Post issues a POST to the specified URL.
        
        Caller should close resp.Body when done reading from it.
        
        If the provided body is an io.Closer, it is closed after the
        request.
        
        Post is a wrapper around DefaultClient.Post.
        
        To set custom headers, use NewRequest and DefaultClient.Do.
        
        See the Client.Do method documentation for details on how redirects
        are handled.
        
        To make a request with a specified context.Context, use NewRequestWithContext
        and DefaultClient.Do.
    **/
    static public function post(_url:String, _contentType:String, _body:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_post.post(_url, _contentType, _body);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        PostForm issues a POST to the specified URL, with data's keys and
        values URL-encoded as the request body.
        
        The Content-Type header is set to application/x-www-form-urlencoded.
        To set other headers, use NewRequest and DefaultClient.Do.
        
        When err is nil, resp always contains a non-nil resp.Body.
        Caller should close resp.Body when done reading from it.
        
        PostForm is a wrapper around DefaultClient.PostForm.
        
        See the Client.Do method documentation for details on how redirects
        are handled.
        
        To make a request with a specified context.Context, use NewRequestWithContext
        and DefaultClient.Do.
    **/
    static public function postForm(_url:String, _data:stdgo._internal.net.url.Url_Values.Values):stdgo.Tuple<Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_postForm.postForm(_url, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Head issues a HEAD to the specified URL. If the response is one of
        the following redirect codes, Head follows the redirect, up to a
        maximum of 10 redirects:
        
        	301 (Moved Permanently)
        	302 (Found)
        	303 (See Other)
        	307 (Temporary Redirect)
        	308 (Permanent Redirect)
        
        Head is a wrapper around DefaultClient.Head.
        
        To make a request with a specified context.Context, use NewRequestWithContext
        and DefaultClient.Do.
    **/
    static public function head(_url:String):stdgo.Tuple<Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_head.head(_url);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        SetCookie adds a Set-Cookie header to the provided ResponseWriter's headers.
        The provided cookie must have a valid Name. Invalid cookies may be
        silently dropped.
    **/
    static public function setCookie(_w:ResponseWriter, _cookie:Cookie):Void {
        stdgo._internal.net.http.Http_setCookie.setCookie(_w, _cookie);
    }
    /**
        NewFileTransport returns a new RoundTripper, serving the provided
        FileSystem. The returned RoundTripper ignores the URL host in its
        incoming requests, as well as most other properties of the
        request.
        
        The typical use case for NewFileTransport is to register the "file"
        protocol with a Transport, as in:
        
        	t := &http.Transport{}
        	t.RegisterProtocol("file", http.NewFileTransport(http.Dir("/")))
        	c := &http.Client{Transport: t}
        	res, err := c.Get("file:///etc/passwd")
        	...
    **/
    static public function newFileTransport(_fs:FileSystem):RoundTripper {
        return stdgo._internal.net.http.Http_newFileTransport.newFileTransport(_fs);
    }
    /**
        ServeContent replies to the request using the content in the
        provided ReadSeeker. The main benefit of ServeContent over io.Copy
        is that it handles Range requests properly, sets the MIME type, and
        handles If-Match, If-Unmodified-Since, If-None-Match, If-Modified-Since,
        and If-Range requests.
        
        If the response's Content-Type header is not set, ServeContent
        first tries to deduce the type from name's file extension and,
        if that fails, falls back to reading the first block of the content
        and passing it to DetectContentType.
        The name is otherwise unused; in particular it can be empty and is
        never sent in the response.
        
        If modtime is not the zero time or Unix epoch, ServeContent
        includes it in a Last-Modified header in the response. If the
        request includes an If-Modified-Since header, ServeContent uses
        modtime to decide whether the content needs to be sent at all.
        
        The content's Seek method must work: ServeContent uses
        a seek to the end of the content to determine its size.
        
        If the caller has set w's ETag header formatted per RFC 7232, section 2.3,
        ServeContent uses it to handle requests using If-Match, If-None-Match, or If-Range.
        
        Note that *os.File implements the io.ReadSeeker interface.
    **/
    static public function serveContent(_w:ResponseWriter, _req:Request, _name:String, _modtime:stdgo._internal.time.Time_Time.Time, _content:stdgo._internal.io.Io_ReadSeeker.ReadSeeker):Void {
        stdgo._internal.net.http.Http_serveContent.serveContent(_w, _req, _name, _modtime, _content);
    }
    /**
        ServeFile replies to the request with the contents of the named
        file or directory.
        
        If the provided file or directory name is a relative path, it is
        interpreted relative to the current directory and may ascend to
        parent directories. If the provided name is constructed from user
        input, it should be sanitized before calling ServeFile.
        
        As a precaution, ServeFile will reject requests where r.URL.Path
        contains a ".." path element; this protects against callers who
        might unsafely use filepath.Join on r.URL.Path without sanitizing
        it and then use that filepath.Join result as the name argument.
        
        As another special case, ServeFile redirects any request where r.URL.Path
        ends in "/index.html" to the same path, without the final
        "index.html". To avoid such redirects either modify the path or
        use ServeContent.
        
        Outside of those two special cases, ServeFile does not use
        r.URL.Path for selecting the file or directory to serve; only the
        file or directory provided in the name argument is used.
    **/
    static public function serveFile(_w:ResponseWriter, _r:Request, _name:String):Void {
        stdgo._internal.net.http.Http_serveFile.serveFile(_w, _r, _name);
    }
    /**
        FS converts fsys to a FileSystem implementation,
        for use with FileServer and NewFileTransport.
        The files provided by fsys must implement io.Seeker.
    **/
    static public function fS(_fsys:stdgo._internal.io.fs.Fs_FS.FS):FileSystem {
        return stdgo._internal.net.http.Http_fS.fS(_fsys);
    }
    /**
        FileServer returns a handler that serves HTTP requests
        with the contents of the file system rooted at root.
        
        As a special case, the returned file server redirects any request
        ending in "/index.html" to the same path, without the final
        "index.html".
        
        To use the operating system's file system implementation,
        use http.Dir:
        
        	http.Handle("/", http.FileServer(http.Dir("/tmp")))
        
        To use an fs.FS implementation, use http.FS to convert it:
        
        	http.Handle("/", http.FileServer(http.FS(fsys)))
    **/
    static public function fileServer(_root:FileSystem):Handler {
        return stdgo._internal.net.http.Http_fileServer.fileServer(_root);
    }
    /**
        ParseTime parses a time header (such as the Date: header),
        trying each of the three formats allowed by HTTP/1.1:
        TimeFormat, time.RFC850, and time.ANSIC.
    **/
    static public function parseTime(_text:String):stdgo.Tuple<stdgo._internal.time.Time_Time.Time, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_parseTime.parseTime(_text);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        CanonicalHeaderKey returns the canonical format of the
        header key s. The canonicalization converts the first
        letter and any letter following a hyphen to upper case;
        the rest are converted to lowercase. For example, the
        canonical key for "accept-encoding" is "Accept-Encoding".
        If s contains a space or invalid header field bytes, it is
        returned without modifications.
    **/
    static public function canonicalHeaderKey(_s:String):String {
        return stdgo._internal.net.http.Http_canonicalHeaderKey.canonicalHeaderKey(_s);
    }
    /**
        ParseHTTPVersion parses an HTTP version string according to RFC 7230, section 2.6.
        "HTTP/1.0" returns (1, 0, true). Note that strings without
        a minor version, such as "HTTP/2", are not valid.
    **/
    static public function parseHTTPVersion(_vers:String):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.net.http.Http_parseHTTPVersion.parseHTTPVersion(_vers);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        NewRequest wraps NewRequestWithContext using context.Background.
    **/
    static public function newRequest(_method:String, _url:String, _body:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<Request, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_newRequest.newRequest(_method, _url, _body);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewRequestWithContext returns a new Request given a method, URL, and
        optional body.
        
        If the provided body is also an io.Closer, the returned
        Request.Body is set to body and will be closed by the Client
        methods Do, Post, and PostForm, and Transport.RoundTrip.
        
        NewRequestWithContext returns a Request suitable for use with
        Client.Do or Transport.RoundTrip. To create a request for use with
        testing a Server Handler, either use the NewRequest function in the
        net/http/httptest package, use ReadRequest, or manually update the
        Request fields. For an outgoing client request, the context
        controls the entire lifetime of a request and its response:
        obtaining a connection, sending the request, and reading the
        response headers and body. See the Request type's documentation for
        the difference between inbound and outbound request fields.
        
        If body is of type *bytes.Buffer, *bytes.Reader, or
        *strings.Reader, the returned request's ContentLength is set to its
        exact value (instead of -1), GetBody is populated (so 307 and 308
        redirects can replay the body), and Body is set to NoBody if the
        ContentLength is 0.
    **/
    static public function newRequestWithContext(_ctx:stdgo._internal.context.Context_Context.Context, _method:String, _url:String, _body:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<Request, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_newRequestWithContext.newRequestWithContext(_ctx, _method, _url, _body);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ReadRequest reads and parses an incoming request from b.
        
        ReadRequest is a low-level function and should only be used for
        specialized applications; most code should use the Server to read
        requests and handle them via the Handler interface. ReadRequest
        only supports HTTP/1.x requests. For HTTP/2, use golang.org/x/net/http2.
    **/
    static public function readRequest(_b:stdgo._internal.bufio.Bufio_Reader.Reader):stdgo.Tuple<Request, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_readRequest.readRequest(_b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        MaxBytesReader is similar to io.LimitReader but is intended for
        limiting the size of incoming request bodies. In contrast to
        io.LimitReader, MaxBytesReader's result is a ReadCloser, returns a
        non-nil error of type *MaxBytesError for a Read beyond the limit,
        and closes the underlying reader when its Close method is called.
        
        MaxBytesReader prevents clients from accidentally or maliciously
        sending a large request and wasting server resources. If possible,
        it tells the ResponseWriter to close the connection after the limit
        has been reached.
    **/
    static public function maxBytesReader(_w:ResponseWriter, _r:stdgo._internal.io.Io_ReadCloser.ReadCloser, _n:haxe.Int64):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        return stdgo._internal.net.http.Http_maxBytesReader.maxBytesReader(_w, _r, _n);
    }
    /**
        ReadResponse reads and returns an HTTP response from r.
        The req parameter optionally specifies the Request that corresponds
        to this Response. If nil, a GET request is assumed.
        Clients must call resp.Body.Close when finished reading resp.Body.
        After that call, clients can inspect resp.Trailer to find key/value
        pairs included in the response trailer.
    **/
    static public function readResponse(_r:stdgo._internal.bufio.Bufio_Reader.Reader, _req:Request):stdgo.Tuple<Response, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_readResponse.readResponse(_r, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        NewResponseController creates a ResponseController for a request.
        
        The ResponseWriter should be the original value passed to the Handler.ServeHTTP method,
        or have an Unwrap method returning the original ResponseWriter.
        
        If the ResponseWriter implements any of the following methods, the ResponseController
        will call them as appropriate:
        
        	Flush()
        	FlushError() error // alternative Flush returning an error
        	Hijack() (net.Conn, *bufio.ReadWriter, error)
        	SetReadDeadline(deadline time.Time) error
        	SetWriteDeadline(deadline time.Time) error
        	EnableFullDuplex() error
        
        If the ResponseWriter does not support a method, ResponseController returns
        an error matching ErrNotSupported.
    **/
    static public function newResponseController(_rw:ResponseWriter):ResponseController {
        return stdgo._internal.net.http.Http_newResponseController.newResponseController(_rw);
    }
    /**
        Error replies to the request with the specified error message and HTTP code.
        It does not otherwise end the request; the caller should ensure no further
        writes are done to w.
        The error message should be plain text.
    **/
    static public function error(_w:ResponseWriter, _error:String, _code:StdTypes.Int):Void {
        stdgo._internal.net.http.Http_error.error(_w, _error, _code);
    }
    /**
        NotFound replies to the request with an HTTP 404 not found error.
    **/
    static public function notFound(_w:ResponseWriter, _r:Request):Void {
        stdgo._internal.net.http.Http_notFound.notFound(_w, _r);
    }
    /**
        NotFoundHandler returns a simple request handler
        that replies to each request with a “404 page not found” reply.
    **/
    static public function notFoundHandler():Handler {
        return stdgo._internal.net.http.Http_notFoundHandler.notFoundHandler();
    }
    /**
        StripPrefix returns a handler that serves HTTP requests by removing the
        given prefix from the request URL's Path (and RawPath if set) and invoking
        the handler h. StripPrefix handles a request for a path that doesn't begin
        with prefix by replying with an HTTP 404 not found error. The prefix must
        match exactly: if the prefix in the request contains escaped characters
        the reply is also an HTTP 404 not found error.
    **/
    static public function stripPrefix(_prefix:String, _h:Handler):Handler {
        return stdgo._internal.net.http.Http_stripPrefix.stripPrefix(_prefix, _h);
    }
    /**
        Redirect replies to the request with a redirect to url,
        which may be a path relative to the request path.
        
        The provided code should be in the 3xx range and is usually
        StatusMovedPermanently, StatusFound or StatusSeeOther.
        
        If the Content-Type header has not been set, Redirect sets it
        to "text/html; charset=utf-8" and writes a small HTML body.
        Setting the Content-Type header to any value, including nil,
        disables that behavior.
    **/
    static public function redirect(_w:ResponseWriter, _r:Request, _url:String, _code:StdTypes.Int):Void {
        stdgo._internal.net.http.Http_redirect.redirect(_w, _r, _url, _code);
    }
    /**
        RedirectHandler returns a request handler that redirects
        each request it receives to the given url using the given
        status code.
        
        The provided code should be in the 3xx range and is usually
        StatusMovedPermanently, StatusFound or StatusSeeOther.
    **/
    static public function redirectHandler(_url:String, _code:StdTypes.Int):Handler {
        return stdgo._internal.net.http.Http_redirectHandler.redirectHandler(_url, _code);
    }
    /**
        NewServeMux allocates and returns a new ServeMux.
    **/
    static public function newServeMux():ServeMux {
        return stdgo._internal.net.http.Http_newServeMux.newServeMux();
    }
    /**
        Handle registers the handler for the given pattern
        in the DefaultServeMux.
        The documentation for ServeMux explains how patterns are matched.
    **/
    static public function handle(_pattern:String, _handler:Handler):Void {
        stdgo._internal.net.http.Http_handle.handle(_pattern, _handler);
    }
    /**
        HandleFunc registers the handler function for the given pattern
        in the DefaultServeMux.
        The documentation for ServeMux explains how patterns are matched.
    **/
    static public function handleFunc(_pattern:String, _handler:(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) -> Void):Void {
        final _handler = _handler;
        stdgo._internal.net.http.Http_handleFunc.handleFunc(_pattern, _handler);
    }
    /**
        Serve accepts incoming HTTP connections on the listener l,
        creating a new service goroutine for each. The service goroutines
        read requests and then call handler to reply to them.
        
        The handler is typically nil, in which case the DefaultServeMux is used.
        
        HTTP/2 support is only enabled if the Listener returns *tls.Conn
        connections and they were configured with "h2" in the TLS
        Config.NextProtos.
        
        Serve always returns a non-nil error.
    **/
    static public function serve(_l:stdgo._internal.net.Net_Listener.Listener, _handler:Handler):stdgo.Error {
        return stdgo._internal.net.http.Http_serve.serve(_l, _handler);
    }
    /**
        ServeTLS accepts incoming HTTPS connections on the listener l,
        creating a new service goroutine for each. The service goroutines
        read requests and then call handler to reply to them.
        
        The handler is typically nil, in which case the DefaultServeMux is used.
        
        Additionally, files containing a certificate and matching private key
        for the server must be provided. If the certificate is signed by a
        certificate authority, the certFile should be the concatenation
        of the server's certificate, any intermediates, and the CA's certificate.
        
        ServeTLS always returns a non-nil error.
    **/
    static public function serveTLS(_l:stdgo._internal.net.Net_Listener.Listener, _handler:Handler, _certFile:String, _keyFile:String):stdgo.Error {
        return stdgo._internal.net.http.Http_serveTLS.serveTLS(_l, _handler, _certFile, _keyFile);
    }
    /**
        AllowQuerySemicolons returns a handler that serves requests by converting any
        unescaped semicolons in the URL query to ampersands, and invoking the handler h.
        
        This restores the pre-Go 1.17 behavior of splitting query parameters on both
        semicolons and ampersands. (See golang.org/issue/25192). Note that this
        behavior doesn't match that of many proxies, and the mismatch can lead to
        security issues.
        
        AllowQuerySemicolons should be invoked before Request.ParseForm is called.
    **/
    static public function allowQuerySemicolons(_h:Handler):Handler {
        return stdgo._internal.net.http.Http_allowQuerySemicolons.allowQuerySemicolons(_h);
    }
    /**
        ListenAndServe listens on the TCP network address addr and then calls
        Serve with handler to handle requests on incoming connections.
        Accepted connections are configured to enable TCP keep-alives.
        
        The handler is typically nil, in which case the DefaultServeMux is used.
        
        ListenAndServe always returns a non-nil error.
    **/
    static public function listenAndServe(_addr:String, _handler:Handler):stdgo.Error {
        return stdgo._internal.net.http.Http_listenAndServe.listenAndServe(_addr, _handler);
    }
    /**
        ListenAndServeTLS acts identically to ListenAndServe, except that it
        expects HTTPS connections. Additionally, files containing a certificate and
        matching private key for the server must be provided. If the certificate
        is signed by a certificate authority, the certFile should be the concatenation
        of the server's certificate, any intermediates, and the CA's certificate.
    **/
    static public function listenAndServeTLS(_addr:String, _certFile:String, _keyFile:String, _handler:Handler):stdgo.Error {
        return stdgo._internal.net.http.Http_listenAndServeTLS.listenAndServeTLS(_addr, _certFile, _keyFile, _handler);
    }
    /**
        TimeoutHandler returns a Handler that runs h with the given time limit.
        
        The new Handler calls h.ServeHTTP to handle each request, but if a
        call runs for longer than its time limit, the handler responds with
        a 503 Service Unavailable error and the given message in its body.
        (If msg is empty, a suitable default message will be sent.)
        After such a timeout, writes by h to its ResponseWriter will return
        ErrHandlerTimeout.
        
        TimeoutHandler supports the Pusher interface but does not support
        the Hijacker or Flusher interfaces.
    **/
    static public function timeoutHandler(_h:Handler, _dt:stdgo._internal.time.Time_Duration.Duration, _msg:String):Handler {
        return stdgo._internal.net.http.Http_timeoutHandler.timeoutHandler(_h, _dt, _msg);
    }
    /**
        MaxBytesHandler returns a Handler that runs h with its ResponseWriter and Request.Body wrapped by a MaxBytesReader.
    **/
    static public function maxBytesHandler(_h:Handler, _n:haxe.Int64):Handler {
        return stdgo._internal.net.http.Http_maxBytesHandler.maxBytesHandler(_h, _n);
    }
    /**
        DetectContentType implements the algorithm described
        at https://mimesniff.spec.whatwg.org/ to determine the
        Content-Type of the given data. It considers at most the
        first 512 bytes of data. DetectContentType always returns
        a valid MIME type: if it cannot determine a more specific one, it
        returns "application/octet-stream".
    **/
    static public function detectContentType(_data:Array<std.UInt>):String {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.http.Http_detectContentType.detectContentType(_data);
    }
    /**
        StatusText returns a text for the HTTP status code. It returns the empty
        string if the code is unknown.
    **/
    static public function statusText(_code:StdTypes.Int):String {
        return stdgo._internal.net.http.Http_statusText.statusText(_code);
    }
    /**
        ProxyFromEnvironment returns the URL of the proxy to use for a
        given request, as indicated by the environment variables
        HTTP_PROXY, HTTPS_PROXY and NO_PROXY (or the lowercase versions
        thereof). Requests use the proxy from the environment variable
        matching their scheme, unless excluded by NO_PROXY.
        
        The environment values may be either a complete URL or a
        "host[:port]", in which case the "http" scheme is assumed.
        The schemes "http", "https", and "socks5" are supported.
        An error is returned if the value is a different form.
        
        A nil URL and nil error are returned if no proxy is defined in the
        environment, or a proxy should not be used for the given request,
        as defined by NO_PROXY.
        
        As a special case, if req.URL.Host is "localhost" (with or without
        a port number), then a nil URL and nil error will be returned.
    **/
    static public function proxyFromEnvironment(_req:Request):stdgo.Tuple<stdgo._internal.net.url.Url_URL.URL, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_proxyFromEnvironment.proxyFromEnvironment(_req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        ProxyURL returns a proxy function (for use in a Transport)
        that always returns the same URL.
    **/
    static public function proxyURL(_fixedURL:stdgo._internal.net.url.Url_URL.URL):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>; var _1 : stdgo.Error; } {
        return _0 -> stdgo._internal.net.http.Http_proxyURL.proxyURL(_fixedURL)(_0);
    }
}
