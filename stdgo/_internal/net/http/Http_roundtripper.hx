package stdgo._internal.net.http;
@:interface typedef RoundTripper = stdgo.StructType & {
    /**
        * RoundTrip executes a single HTTP transaction, returning
        * a Response for the provided Request.
        * 
        * RoundTrip should not attempt to interpret the response. In
        * particular, RoundTrip must return err == nil if it obtained
        * a response, regardless of the response's HTTP status code.
        * A non-nil err should be reserved for failure to obtain a
        * response. Similarly, RoundTrip should not attempt to
        * handle higher-level protocol details such as redirects,
        * authentication, or cookies.
        * 
        * RoundTrip should not modify the request, except for
        * consuming and closing the Request's Body. RoundTrip may
        * read fields of the request in a separate goroutine. Callers
        * should not mutate or reuse the request until the Response's
        * Body has been closed.
        * 
        * RoundTrip must always close the body, including on errors,
        * but depending on the implementation may do so in a separate
        * goroutine even after RoundTrip returns. This means that
        * callers wanting to reuse the body for subsequent requests
        * must arrange to wait for the Close call before doing so.
        * 
        * The Request's URL and Header fields must be initialized.
        
        
    **/
    @:interfacetypeffun
    public dynamic function roundTrip(_0:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; };
};
