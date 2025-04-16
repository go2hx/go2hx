package stdgo.net.http;
var sameSiteDefaultMode : SameSite = ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_samesite.SameSite);
var sameSiteLaxMode : SameSite = ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_samesite.SameSite);
var sameSiteStrictMode : SameSite = ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_samesite.SameSite);
var sameSiteNoneMode : SameSite = ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_samesite.SameSite);
var methodGet : stdgo.GoString = ("" : stdgo.GoString);
var methodHead : stdgo.GoString = ("" : stdgo.GoString);
var methodPost : stdgo.GoString = ("" : stdgo.GoString);
var methodPut : stdgo.GoString = ("" : stdgo.GoString);
var methodPatch : stdgo.GoString = ("" : stdgo.GoString);
var methodDelete : stdgo.GoString = ("" : stdgo.GoString);
var methodConnect : stdgo.GoString = ("" : stdgo.GoString);
var methodOptions : stdgo.GoString = ("" : stdgo.GoString);
var methodTrace : stdgo.GoString = ("" : stdgo.GoString);
var trailerPrefix : stdgo.GoString = ("" : stdgo.GoString);
var defaultMaxHeaderBytes : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var timeFormat : stdgo.GoString = ("" : stdgo.GoString);
var stateNew : ConnState = ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_connstate.ConnState);
var stateActive : ConnState = ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_connstate.ConnState);
var stateIdle : ConnState = ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_connstate.ConnState);
var stateHijacked : ConnState = ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_connstate.ConnState);
var stateClosed : ConnState = ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_connstate.ConnState);
var statusContinue : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusSwitchingProtocols : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusProcessing : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusEarlyHints : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusOK : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusCreated : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusAccepted : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusNonAuthoritativeInfo : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusNoContent : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusResetContent : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusPartialContent : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusMultiStatus : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusAlreadyReported : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusIMUsed : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusMultipleChoices : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusMovedPermanently : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusFound : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusSeeOther : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusNotModified : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusUseProxy : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusTemporaryRedirect : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusPermanentRedirect : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusBadRequest : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusUnauthorized : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusPaymentRequired : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusForbidden : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusNotFound : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusMethodNotAllowed : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusNotAcceptable : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusProxyAuthRequired : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusRequestTimeout : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusConflict : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusGone : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusLengthRequired : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusPreconditionFailed : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusRequestEntityTooLarge : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusRequestURITooLong : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusUnsupportedMediaType : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusRequestedRangeNotSatisfiable : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusExpectationFailed : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusTeapot : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusMisdirectedRequest : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusUnprocessableEntity : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusLocked : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusFailedDependency : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusTooEarly : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusUpgradeRequired : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusPreconditionRequired : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusTooManyRequests : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusRequestHeaderFieldsTooLarge : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusUnavailableForLegalReasons : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusInternalServerError : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusNotImplemented : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusBadGateway : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusServiceUnavailable : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusGatewayTimeout : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusHTTPVersionNotSupported : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusVariantAlsoNegotiates : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusInsufficientStorage : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusLoopDetected : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusNotExtended : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var statusNetworkAuthenticationRequired : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var defaultMaxIdleConnsPerHost : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var defaultClient(get, set) : stdgo.Ref<stdgo._internal.net.http.Http_client.Client>;
private function get_defaultClient():stdgo.Ref<stdgo._internal.net.http.Http_client.Client> return stdgo._internal.net.http.Http_defaultclient.defaultClient;
private function set_defaultClient(v:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>):stdgo.Ref<stdgo._internal.net.http.Http_client.Client> {
        stdgo._internal.net.http.Http_defaultclient.defaultClient = v;
        return v;
    }
var errSchemeMismatch(get, set) : stdgo.Error;
private function get_errSchemeMismatch():stdgo.Error return stdgo._internal.net.http.Http_errschememismatch.errSchemeMismatch;
private function set_errSchemeMismatch(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errschememismatch.errSchemeMismatch = v;
        return v;
    }
var errUseLastResponse(get, set) : stdgo.Error;
private function get_errUseLastResponse():stdgo.Error return stdgo._internal.net.http.Http_erruselastresponse.errUseLastResponse;
private function set_errUseLastResponse(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_erruselastresponse.errUseLastResponse = v;
        return v;
    }
var noBody(get, set) : stdgo._internal.net.http.Http_t_nobody.T_noBody;
private function get_noBody():stdgo._internal.net.http.Http_t_nobody.T_noBody return stdgo._internal.net.http.Http_nobody.noBody;
private function set_noBody(v:stdgo._internal.net.http.Http_t_nobody.T_noBody):stdgo._internal.net.http.Http_t_nobody.T_noBody {
        stdgo._internal.net.http.Http_nobody.noBody = v;
        return v;
    }
var errMissingFile(get, set) : stdgo.Error;
private function get_errMissingFile():stdgo.Error return stdgo._internal.net.http.Http_errmissingfile.errMissingFile;
private function set_errMissingFile(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errmissingfile.errMissingFile = v;
        return v;
    }
var errNotSupported(get, set) : stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>;
private function get_errNotSupported():stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError> return stdgo._internal.net.http.Http_errnotsupported.errNotSupported;
private function set_errNotSupported(v:stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>):stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError> {
        stdgo._internal.net.http.Http_errnotsupported.errNotSupported = v;
        return v;
    }
var errUnexpectedTrailer(get, set) : stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>;
private function get_errUnexpectedTrailer():stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError> return stdgo._internal.net.http.Http_errunexpectedtrailer.errUnexpectedTrailer;
private function set_errUnexpectedTrailer(v:stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>):stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError> {
        stdgo._internal.net.http.Http_errunexpectedtrailer.errUnexpectedTrailer = v;
        return v;
    }
var errMissingBoundary(get, set) : stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>;
private function get_errMissingBoundary():stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError> return stdgo._internal.net.http.Http_errmissingboundary.errMissingBoundary;
private function set_errMissingBoundary(v:stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>):stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError> {
        stdgo._internal.net.http.Http_errmissingboundary.errMissingBoundary = v;
        return v;
    }
var errNotMultipart(get, set) : stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>;
private function get_errNotMultipart():stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError> return stdgo._internal.net.http.Http_errnotmultipart.errNotMultipart;
private function set_errNotMultipart(v:stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>):stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError> {
        stdgo._internal.net.http.Http_errnotmultipart.errNotMultipart = v;
        return v;
    }
var errHeaderTooLong(get, set) : stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>;
private function get_errHeaderTooLong():stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError> return stdgo._internal.net.http.Http_errheadertoolong.errHeaderTooLong;
private function set_errHeaderTooLong(v:stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>):stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError> {
        stdgo._internal.net.http.Http_errheadertoolong.errHeaderTooLong = v;
        return v;
    }
var errShortBody(get, set) : stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>;
private function get_errShortBody():stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError> return stdgo._internal.net.http.Http_errshortbody.errShortBody;
private function set_errShortBody(v:stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>):stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError> {
        stdgo._internal.net.http.Http_errshortbody.errShortBody = v;
        return v;
    }
var errMissingContentLength(get, set) : stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>;
private function get_errMissingContentLength():stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError> return stdgo._internal.net.http.Http_errmissingcontentlength.errMissingContentLength;
private function set_errMissingContentLength(v:stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError>):stdgo.Ref<stdgo._internal.net.http.Http_protocolerror.ProtocolError> {
        stdgo._internal.net.http.Http_errmissingcontentlength.errMissingContentLength = v;
        return v;
    }
var errNoCookie(get, set) : stdgo.Error;
private function get_errNoCookie():stdgo.Error return stdgo._internal.net.http.Http_errnocookie.errNoCookie;
private function set_errNoCookie(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errnocookie.errNoCookie = v;
        return v;
    }
var errNoLocation(get, set) : stdgo.Error;
private function get_errNoLocation():stdgo.Error return stdgo._internal.net.http.Http_errnolocation.errNoLocation;
private function set_errNoLocation(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errnolocation.errNoLocation = v;
        return v;
    }
var errBodyNotAllowed(get, set) : stdgo.Error;
private function get_errBodyNotAllowed():stdgo.Error return stdgo._internal.net.http.Http_errbodynotallowed.errBodyNotAllowed;
private function set_errBodyNotAllowed(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errbodynotallowed.errBodyNotAllowed = v;
        return v;
    }
var errHijacked(get, set) : stdgo.Error;
private function get_errHijacked():stdgo.Error return stdgo._internal.net.http.Http_errhijacked.errHijacked;
private function set_errHijacked(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errhijacked.errHijacked = v;
        return v;
    }
var errContentLength(get, set) : stdgo.Error;
private function get_errContentLength():stdgo.Error return stdgo._internal.net.http.Http_errcontentlength.errContentLength;
private function set_errContentLength(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errcontentlength.errContentLength = v;
        return v;
    }
var errWriteAfterFlush(get, set) : stdgo.Error;
private function get_errWriteAfterFlush():stdgo.Error return stdgo._internal.net.http.Http_errwriteafterflush.errWriteAfterFlush;
private function set_errWriteAfterFlush(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errwriteafterflush.errWriteAfterFlush = v;
        return v;
    }
var serverContextKey(get, set) : stdgo.Ref<stdgo._internal.net.http.Http_t_contextkey.T_contextKey>;
private function get_serverContextKey():stdgo.Ref<stdgo._internal.net.http.Http_t_contextkey.T_contextKey> return stdgo._internal.net.http.Http_servercontextkey.serverContextKey;
private function set_serverContextKey(v:stdgo.Ref<stdgo._internal.net.http.Http_t_contextkey.T_contextKey>):stdgo.Ref<stdgo._internal.net.http.Http_t_contextkey.T_contextKey> {
        stdgo._internal.net.http.Http_servercontextkey.serverContextKey = v;
        return v;
    }
var localAddrContextKey(get, set) : stdgo.Ref<stdgo._internal.net.http.Http_t_contextkey.T_contextKey>;
private function get_localAddrContextKey():stdgo.Ref<stdgo._internal.net.http.Http_t_contextkey.T_contextKey> return stdgo._internal.net.http.Http_localaddrcontextkey.localAddrContextKey;
private function set_localAddrContextKey(v:stdgo.Ref<stdgo._internal.net.http.Http_t_contextkey.T_contextKey>):stdgo.Ref<stdgo._internal.net.http.Http_t_contextkey.T_contextKey> {
        stdgo._internal.net.http.Http_localaddrcontextkey.localAddrContextKey = v;
        return v;
    }
var errAbortHandler(get, set) : stdgo.Error;
private function get_errAbortHandler():stdgo.Error return stdgo._internal.net.http.Http_erraborthandler.errAbortHandler;
private function set_errAbortHandler(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_erraborthandler.errAbortHandler = v;
        return v;
    }
var defaultServeMux(get, set) : stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux>;
private function get_defaultServeMux():stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux> return stdgo._internal.net.http.Http_defaultservemux.defaultServeMux;
private function set_defaultServeMux(v:stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux>):stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux> {
        stdgo._internal.net.http.Http_defaultservemux.defaultServeMux = v;
        return v;
    }
var errServerClosed(get, set) : stdgo.Error;
private function get_errServerClosed():stdgo.Error return stdgo._internal.net.http.Http_errserverclosed.errServerClosed;
private function set_errServerClosed(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errserverclosed.errServerClosed = v;
        return v;
    }
var errHandlerTimeout(get, set) : stdgo.Error;
private function get_errHandlerTimeout():stdgo.Error return stdgo._internal.net.http.Http_errhandlertimeout.errHandlerTimeout;
private function set_errHandlerTimeout(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errhandlertimeout.errHandlerTimeout = v;
        return v;
    }
var errLineTooLong(get, set) : stdgo.Error;
private function get_errLineTooLong():stdgo.Error return stdgo._internal.net.http.Http_errlinetoolong.errLineTooLong;
private function set_errLineTooLong(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errlinetoolong.errLineTooLong = v;
        return v;
    }
var errBodyReadAfterClose(get, set) : stdgo.Error;
private function get_errBodyReadAfterClose():stdgo.Error return stdgo._internal.net.http.Http_errbodyreadafterclose.errBodyReadAfterClose;
private function set_errBodyReadAfterClose(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errbodyreadafterclose.errBodyReadAfterClose = v;
        return v;
    }
var errSkipAltProtocol(get, set) : stdgo.Error;
private function get_errSkipAltProtocol():stdgo.Error return stdgo._internal.net.http.Http_errskipaltprotocol.errSkipAltProtocol;
private function set_errSkipAltProtocol(v:stdgo.Error):stdgo.Error {
        stdgo._internal.net.http.Http_errskipaltprotocol.errSkipAltProtocol = v;
        return v;
    }
var defaultTransport(get, set) : RoundTripper;
private function get_defaultTransport():RoundTripper return stdgo._internal.net.http.Http_defaulttransport.defaultTransport;
private function set_defaultTransport(v:RoundTripper):stdgo._internal.net.http.Http_roundtripper.RoundTripper {
        stdgo._internal.net.http.Http_defaulttransport.defaultTransport = v;
        return v;
    }
typedef RoundTripper = stdgo._internal.net.http.Http_roundtripper.RoundTripper;
typedef FileSystem = stdgo._internal.net.http.Http_filesystem.FileSystem;
typedef File = stdgo._internal.net.http.Http_file.File;
typedef Pusher = stdgo._internal.net.http.Http_pusher.Pusher;
typedef CookieJar = stdgo._internal.net.http.Http_cookiejar.CookieJar;
typedef Handler = stdgo._internal.net.http.Http_handler.Handler;
typedef ResponseWriter = stdgo._internal.net.http.Http_responsewriter.ResponseWriter;
typedef Flusher = stdgo._internal.net.http.Http_flusher.Flusher;
typedef Hijacker = stdgo._internal.net.http.Http_hijacker.Hijacker;
typedef CloseNotifier = stdgo._internal.net.http.Http_closenotifier.CloseNotifier;
typedef Client = stdgo._internal.net.http.Http_client.Client;
typedef Cookie = stdgo._internal.net.http.Http_cookie.Cookie;
typedef PushOptions = stdgo._internal.net.http.Http_pushoptions.PushOptions;
typedef ProtocolError = stdgo._internal.net.http.Http_protocolerror.ProtocolError;
typedef Request = stdgo._internal.net.http.Http_request.Request;
typedef MaxBytesError = stdgo._internal.net.http.Http_maxbyteserror.MaxBytesError;
typedef Response = stdgo._internal.net.http.Http_response.Response;
typedef ResponseController = stdgo._internal.net.http.Http_responsecontroller.ResponseController;
typedef ServeMux = stdgo._internal.net.http.Http_servemux.ServeMux;
typedef Server = stdgo._internal.net.http.Http_server.Server;
typedef Transport = stdgo._internal.net.http.Http_transport.Transport;
typedef SameSite = stdgo._internal.net.http.Http_samesite.SameSite;
typedef Dir = stdgo._internal.net.http.Http_dir.Dir;
typedef Header = stdgo._internal.net.http.Http_header.Header;
typedef HandlerFunc = stdgo._internal.net.http.Http_handlerfunc.HandlerFunc;
typedef ConnState = stdgo._internal.net.http.Http_connstate.ConnState;
typedef ClientPointer = stdgo._internal.net.http.Http_clientpointer.ClientPointer;
typedef CookiePointer = stdgo._internal.net.http.Http_cookiepointer.CookiePointer;
typedef PushOptionsPointer = stdgo._internal.net.http.Http_pushoptionspointer.PushOptionsPointer;
typedef ProtocolErrorPointer = stdgo._internal.net.http.Http_protocolerrorpointer.ProtocolErrorPointer;
typedef RequestPointer = stdgo._internal.net.http.Http_requestpointer.RequestPointer;
typedef MaxBytesErrorPointer = stdgo._internal.net.http.Http_maxbyteserrorpointer.MaxBytesErrorPointer;
typedef ResponsePointer = stdgo._internal.net.http.Http_responsepointer.ResponsePointer;
typedef ResponseControllerPointer = stdgo._internal.net.http.Http_responsecontrollerpointer.ResponseControllerPointer;
typedef ServeMuxPointer = stdgo._internal.net.http.Http_servemuxpointer.ServeMuxPointer;
typedef ServerPointer = stdgo._internal.net.http.Http_serverpointer.ServerPointer;
typedef TransportPointer = stdgo._internal.net.http.Http_transportpointer.TransportPointer;
typedef SameSitePointer = stdgo._internal.net.http.Http_samesitepointer.SameSitePointer;
typedef DirPointer = stdgo._internal.net.http.Http_dirpointer.DirPointer;
typedef HeaderPointer = stdgo._internal.net.http.Http_headerpointer.HeaderPointer;
typedef HandlerFuncPointer = stdgo._internal.net.http.Http_handlerfuncpointer.HandlerFuncPointer;
typedef ConnStatePointer = stdgo._internal.net.http.Http_connstatepointer.ConnStatePointer;
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
    static public inline function get(_url:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return stdgo._internal.net.http.Http_get.get(_url);
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
    static public inline function post(_url:stdgo.GoString, _contentType:stdgo.GoString, _body:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return stdgo._internal.net.http.Http_post.post(_url, _contentType, _body);
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
    static public inline function postForm(_url:stdgo.GoString, _data:stdgo._internal.net.url.Url_values.Values):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return stdgo._internal.net.http.Http_postform.postForm(_url, _data);
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
    static public inline function head(_url:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return stdgo._internal.net.http.Http_head.head(_url);
    /**
        * SetCookie adds a Set-Cookie header to the provided ResponseWriter's headers.
        * The provided cookie must have a valid Name. Invalid cookies may be
        * silently dropped.
    **/
    static public inline function setCookie(_w:ResponseWriter, _cookie:stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>):Void stdgo._internal.net.http.Http_setcookie.setCookie(_w, _cookie);
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
    static public inline function newFileTransport(_fs:FileSystem):stdgo._internal.net.http.Http_roundtripper.RoundTripper return stdgo._internal.net.http.Http_newfiletransport.newFileTransport(_fs);
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
    static public inline function serveContent(_w:ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _name:stdgo.GoString, _modtime:stdgo._internal.time.Time_time.Time, _content:stdgo._internal.io.Io_readseeker.ReadSeeker):Void stdgo._internal.net.http.Http_servecontent.serveContent(_w, _req, _name, _modtime, _content);
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
    static public inline function serveFile(_w:ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _name:stdgo.GoString):Void stdgo._internal.net.http.Http_servefile.serveFile(_w, _r, _name);
    /**
        * FS converts fsys to a FileSystem implementation,
        * for use with FileServer and NewFileTransport.
        * The files provided by fsys must implement io.Seeker.
    **/
    static public inline function fS(_fsys:stdgo._internal.io.fs.Fs_fs.FS):stdgo._internal.net.http.Http_filesystem.FileSystem return stdgo._internal.net.http.Http_fs.fS(_fsys);
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
    static public inline function fileServer(_root:FileSystem):stdgo._internal.net.http.Http_handler.Handler return stdgo._internal.net.http.Http_fileserver.fileServer(_root);
    /**
        * ParseTime parses a time header (such as the Date: header),
        * trying each of the three formats allowed by HTTP/1.1:
        * TimeFormat, time.RFC850, and time.ANSIC.
    **/
    static public inline function parseTime(_text:stdgo.GoString):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo.Error; } return stdgo._internal.net.http.Http_parsetime.parseTime(_text);
    /**
        * CanonicalHeaderKey returns the canonical format of the
        * header key s. The canonicalization converts the first
        * letter and any letter following a hyphen to upper case;
        * the rest are converted to lowercase. For example, the
        * canonical key for "accept-encoding" is "Accept-Encoding".
        * If s contains a space or invalid header field bytes, it is
        * returned without modifications.
    **/
    static public inline function canonicalHeaderKey(_s:stdgo.GoString):stdgo.GoString return stdgo._internal.net.http.Http_canonicalheaderkey.canonicalHeaderKey(_s);
    /**
        * ParseHTTPVersion parses an HTTP version string according to RFC 7230, section 2.6.
        * "HTTP/1.0" returns (1, 0, true). Note that strings without
        * a minor version, such as "HTTP/2", are not valid.
    **/
    static public inline function parseHTTPVersion(_vers:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } return stdgo._internal.net.http.Http_parsehttpversion.parseHTTPVersion(_vers);
    /**
        * NewRequest wraps NewRequestWithContext using context.Background.
    **/
    static public inline function newRequest(_method:stdgo.GoString, _url:stdgo.GoString, _body:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } return stdgo._internal.net.http.Http_newrequest.newRequest(_method, _url, _body);
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
    static public inline function newRequestWithContext(_ctx:stdgo._internal.context.Context_context.Context, _method:stdgo.GoString, _url:stdgo.GoString, _body:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } return stdgo._internal.net.http.Http_newrequestwithcontext.newRequestWithContext(_ctx, _method, _url, _body);
    /**
        * ReadRequest reads and parses an incoming request from b.
        * 
        * ReadRequest is a low-level function and should only be used for
        * specialized applications; most code should use the Server to read
        * requests and handle them via the Handler interface. ReadRequest
        * only supports HTTP/1.x requests. For HTTP/2, use golang.org/x/net/http2.
    **/
    static public inline function readRequest(_b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } return stdgo._internal.net.http.Http_readrequest.readRequest(_b);
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
    static public inline function maxBytesReader(_w:ResponseWriter, _r:stdgo._internal.io.Io_readcloser.ReadCloser, _n:stdgo.GoInt64):stdgo._internal.io.Io_readcloser.ReadCloser return stdgo._internal.net.http.Http_maxbytesreader.maxBytesReader(_w, _r, _n);
    /**
        * ReadResponse reads and returns an HTTP response from r.
        * The req parameter optionally specifies the Request that corresponds
        * to this Response. If nil, a GET request is assumed.
        * Clients must call resp.Body.Close when finished reading resp.Body.
        * After that call, clients can inspect resp.Trailer to find key/value
        * pairs included in the response trailer.
    **/
    static public inline function readResponse(_r:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return stdgo._internal.net.http.Http_readresponse.readResponse(_r, _req);
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
    static public inline function newResponseController(_rw:ResponseWriter):stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController> return stdgo._internal.net.http.Http_newresponsecontroller.newResponseController(_rw);
    /**
        * Error replies to the request with the specified error message and HTTP code.
        * It does not otherwise end the request; the caller should ensure no further
        * writes are done to w.
        * The error message should be plain text.
    **/
    static public inline function error(_w:ResponseWriter, _error:stdgo.GoString, _code:stdgo.GoInt):Void stdgo._internal.net.http.Http_error.error(_w, _error, _code);
    /**
        * NotFound replies to the request with an HTTP 404 not found error.
    **/
    static public inline function notFound(_w:ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void stdgo._internal.net.http.Http_notfound.notFound(_w, _r);
    /**
        * NotFoundHandler returns a simple request handler
        * that replies to each request with a “404 page not found” reply.
    **/
    static public inline function notFoundHandler():stdgo._internal.net.http.Http_handler.Handler return stdgo._internal.net.http.Http_notfoundhandler.notFoundHandler();
    /**
        * StripPrefix returns a handler that serves HTTP requests by removing the
        * given prefix from the request URL's Path (and RawPath if set) and invoking
        * the handler h. StripPrefix handles a request for a path that doesn't begin
        * with prefix by replying with an HTTP 404 not found error. The prefix must
        * match exactly: if the prefix in the request contains escaped characters
        * the reply is also an HTTP 404 not found error.
    **/
    static public inline function stripPrefix(_prefix:stdgo.GoString, _h:Handler):stdgo._internal.net.http.Http_handler.Handler return stdgo._internal.net.http.Http_stripprefix.stripPrefix(_prefix, _h);
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
    static public inline function redirect(_w:ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _url:stdgo.GoString, _code:stdgo.GoInt):Void stdgo._internal.net.http.Http_redirect.redirect(_w, _r, _url, _code);
    /**
        * RedirectHandler returns a request handler that redirects
        * each request it receives to the given url using the given
        * status code.
        * 
        * The provided code should be in the 3xx range and is usually
        * StatusMovedPermanently, StatusFound or StatusSeeOther.
    **/
    static public inline function redirectHandler(_url:stdgo.GoString, _code:stdgo.GoInt):stdgo._internal.net.http.Http_handler.Handler return stdgo._internal.net.http.Http_redirecthandler.redirectHandler(_url, _code);
    /**
        * NewServeMux allocates and returns a new ServeMux.
    **/
    static public inline function newServeMux():stdgo.Ref<stdgo._internal.net.http.Http_servemux.ServeMux> return stdgo._internal.net.http.Http_newservemux.newServeMux();
    /**
        * Handle registers the handler for the given pattern
        * in the DefaultServeMux.
        * The documentation for ServeMux explains how patterns are matched.
    **/
    static public inline function handle(_pattern:stdgo.GoString, _handler:Handler):Void stdgo._internal.net.http.Http_handle.handle(_pattern, _handler);
    /**
        * HandleFunc registers the handler function for the given pattern
        * in the DefaultServeMux.
        * The documentation for ServeMux explains how patterns are matched.
    **/
    static public inline function handleFunc(_pattern:stdgo.GoString, _handler:(ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_request.Request>) -> Void):Void stdgo._internal.net.http.Http_handlefunc.handleFunc(_pattern, _handler);
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
    static public inline function serve(_l:stdgo._internal.net.Net_listener.Listener, _handler:Handler):stdgo.Error return stdgo._internal.net.http.Http_serve.serve(_l, _handler);
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
    static public inline function serveTLS(_l:stdgo._internal.net.Net_listener.Listener, _handler:Handler, _certFile:stdgo.GoString, _keyFile:stdgo.GoString):stdgo.Error return stdgo._internal.net.http.Http_servetls.serveTLS(_l, _handler, _certFile, _keyFile);
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
    static public inline function allowQuerySemicolons(_h:Handler):stdgo._internal.net.http.Http_handler.Handler return stdgo._internal.net.http.Http_allowquerysemicolons.allowQuerySemicolons(_h);
    /**
        * ListenAndServe listens on the TCP network address addr and then calls
        * Serve with handler to handle requests on incoming connections.
        * Accepted connections are configured to enable TCP keep-alives.
        * 
        * The handler is typically nil, in which case the DefaultServeMux is used.
        * 
        * ListenAndServe always returns a non-nil error.
    **/
    static public inline function listenAndServe(_addr:stdgo.GoString, _handler:Handler):stdgo.Error return stdgo._internal.net.http.Http_listenandserve.listenAndServe(_addr, _handler);
    /**
        * ListenAndServeTLS acts identically to ListenAndServe, except that it
        * expects HTTPS connections. Additionally, files containing a certificate and
        * matching private key for the server must be provided. If the certificate
        * is signed by a certificate authority, the certFile should be the concatenation
        * of the server's certificate, any intermediates, and the CA's certificate.
    **/
    static public inline function listenAndServeTLS(_addr:stdgo.GoString, _certFile:stdgo.GoString, _keyFile:stdgo.GoString, _handler:Handler):stdgo.Error return stdgo._internal.net.http.Http_listenandservetls.listenAndServeTLS(_addr, _certFile, _keyFile, _handler);
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
    static public inline function timeoutHandler(_h:Handler, _dt:stdgo._internal.time.Time_duration.Duration, _msg:stdgo.GoString):stdgo._internal.net.http.Http_handler.Handler return stdgo._internal.net.http.Http_timeouthandler.timeoutHandler(_h, _dt, _msg);
    /**
        * MaxBytesHandler returns a Handler that runs h with its ResponseWriter and Request.Body wrapped by a MaxBytesReader.
    **/
    static public inline function maxBytesHandler(_h:Handler, _n:stdgo.GoInt64):stdgo._internal.net.http.Http_handler.Handler return stdgo._internal.net.http.Http_maxbyteshandler.maxBytesHandler(_h, _n);
    /**
        * DetectContentType implements the algorithm described
        * at https://mimesniff.spec.whatwg.org/ to determine the
        * Content-Type of the given data. It considers at most the
        * first 512 bytes of data. DetectContentType always returns
        * a valid MIME type: if it cannot determine a more specific one, it
        * returns "application/octet-stream".
    **/
    static public inline function detectContentType(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString return stdgo._internal.net.http.Http_detectcontenttype.detectContentType(_data);
    /**
        * StatusText returns a text for the HTTP status code. It returns the empty
        * string if the code is unknown.
    **/
    static public inline function statusText(_code:stdgo.GoInt):stdgo.GoString return stdgo._internal.net.http.Http_statustext.statusText(_code);
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
    static public inline function proxyFromEnvironment(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; } return stdgo._internal.net.http.Http_proxyfromenvironment.proxyFromEnvironment(_req);
    /**
        * ProxyURL returns a proxy function (for use in a Transport)
        * that always returns the same URL.
    **/
    static public inline function proxyURL(_fixedURL:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.Ref<stdgo._internal.net.http.Http_request.Request> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; } return stdgo._internal.net.http.Http_proxyurl.proxyURL(_fixedURL);
}
