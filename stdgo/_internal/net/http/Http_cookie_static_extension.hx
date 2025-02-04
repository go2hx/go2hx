package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.Cookie_asInterface) class Cookie_static_extension {
    @:keep
    @:tdfield
    static public function valid( _c:stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie> = _c;
        if ((_c == null || (_c : Dynamic).__nil__)) {
            return stdgo._internal.net.http.Http__errors._errors.new_(("http: nil Cookie" : stdgo.GoString));
        };
        if (!stdgo._internal.net.http.Http__iscookienamevalid._isCookieNameValid((@:checkr _c ?? throw "null pointer dereference").name?.__copy__())) {
            return stdgo._internal.net.http.Http__errors._errors.new_(("http: invalid Cookie.Name" : stdgo.GoString));
        };
        if ((!(@:checkr _c ?? throw "null pointer dereference").expires.isZero() && !stdgo._internal.net.http.Http__validcookieexpires._validCookieExpires((@:checkr _c ?? throw "null pointer dereference").expires?.__copy__()) : Bool)) {
            return stdgo._internal.net.http.Http__errors._errors.new_(("http: invalid Cookie.Expires" : stdgo.GoString));
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < ((@:checkr _c ?? throw "null pointer dereference").value.length) : Bool)) {
                if (!stdgo._internal.net.http.Http__validcookievaluebyte._validCookieValueByte((@:checkr _c ?? throw "null pointer dereference").value[(_i : stdgo.GoInt)])) {
                    return stdgo._internal.net.http.Http__fmt._fmt.errorf(("http: invalid byte %q in Cookie.Value" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").value[(_i : stdgo.GoInt)]));
                };
                _i++;
            };
        };
        if ((((@:checkr _c ?? throw "null pointer dereference").path.length) > (0 : stdgo.GoInt) : Bool)) {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < ((@:checkr _c ?? throw "null pointer dereference").path.length) : Bool)) {
                    if (!stdgo._internal.net.http.Http__validcookiepathbyte._validCookiePathByte((@:checkr _c ?? throw "null pointer dereference").path[(_i : stdgo.GoInt)])) {
                        return stdgo._internal.net.http.Http__fmt._fmt.errorf(("http: invalid byte %q in Cookie.Path" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").path[(_i : stdgo.GoInt)]));
                    };
                    _i++;
                };
            };
        };
        if ((((@:checkr _c ?? throw "null pointer dereference").domain.length) > (0 : stdgo.GoInt) : Bool)) {
            if (!stdgo._internal.net.http.Http__validcookiedomain._validCookieDomain((@:checkr _c ?? throw "null pointer dereference").domain?.__copy__())) {
                return stdgo._internal.net.http.Http__errors._errors.new_(("http: invalid Cookie.Domain" : stdgo.GoString));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function string( _c:stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>):stdgo.GoString {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie> = _c;
        if (((_c == null || (_c : Dynamic).__nil__) || !stdgo._internal.net.http.Http__iscookienamevalid._isCookieNameValid((@:checkr _c ?? throw "null pointer dereference").name?.__copy__()) : Bool)) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        {};
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        @:check2 _b.grow(((((((@:checkr _c ?? throw "null pointer dereference").name.length) + ((@:checkr _c ?? throw "null pointer dereference").value.length) : stdgo.GoInt) + ((@:checkr _c ?? throw "null pointer dereference").domain.length) : stdgo.GoInt) + ((@:checkr _c ?? throw "null pointer dereference").path.length) : stdgo.GoInt) + (110 : stdgo.GoInt) : stdgo.GoInt));
        @:check2 _b.writeString((@:checkr _c ?? throw "null pointer dereference").name?.__copy__());
        @:check2 _b.writeRune((61 : stdgo.GoInt32));
        @:check2 _b.writeString(stdgo._internal.net.http.Http__sanitizecookievalue._sanitizeCookieValue((@:checkr _c ?? throw "null pointer dereference").value?.__copy__())?.__copy__());
        if ((((@:checkr _c ?? throw "null pointer dereference").path.length) > (0 : stdgo.GoInt) : Bool)) {
            @:check2 _b.writeString(("; Path=" : stdgo.GoString));
            @:check2 _b.writeString(stdgo._internal.net.http.Http__sanitizecookiepath._sanitizeCookiePath((@:checkr _c ?? throw "null pointer dereference").path?.__copy__())?.__copy__());
        };
        if ((((@:checkr _c ?? throw "null pointer dereference").domain.length) > (0 : stdgo.GoInt) : Bool)) {
            if (stdgo._internal.net.http.Http__validcookiedomain._validCookieDomain((@:checkr _c ?? throw "null pointer dereference").domain?.__copy__())) {
                var _d = ((@:checkr _c ?? throw "null pointer dereference").domain?.__copy__() : stdgo.GoString);
                if (_d[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
                    _d = (_d.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                };
                @:check2 _b.writeString(("; Domain=" : stdgo.GoString));
                @:check2 _b.writeString(_d?.__copy__());
            } else {
                stdgo._internal.net.http.Http__log._log.printf(("net/http: invalid Cookie.Domain %q; dropping domain attribute" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _c ?? throw "null pointer dereference").domain));
            };
        };
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(29, 29).__setNumber32__();
        if (stdgo._internal.net.http.Http__validcookieexpires._validCookieExpires((@:checkr _c ?? throw "null pointer dereference").expires?.__copy__())) {
            @:check2 _b.writeString(("; Expires=" : stdgo.GoString));
            @:check2 _b.write((@:checkr _c ?? throw "null pointer dereference").expires.uTC().appendFormat((_buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ("Mon, 02 Jan 2006 15:04:05 GMT" : stdgo.GoString)));
        };
        if (((@:checkr _c ?? throw "null pointer dereference").maxAge > (0 : stdgo.GoInt) : Bool)) {
            @:check2 _b.writeString(("; Max-Age=" : stdgo.GoString));
            @:check2 _b.write(stdgo._internal.net.http.Http__strconv._strconv.appendInt((_buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _c ?? throw "null pointer dereference").maxAge : stdgo.GoInt64), (10 : stdgo.GoInt)));
        } else if (((@:checkr _c ?? throw "null pointer dereference").maxAge < (0 : stdgo.GoInt) : Bool)) {
            @:check2 _b.writeString(("; Max-Age=0" : stdgo.GoString));
        };
        if ((@:checkr _c ?? throw "null pointer dereference").httpOnly) {
            @:check2 _b.writeString(("; HttpOnly" : stdgo.GoString));
        };
        if ((@:checkr _c ?? throw "null pointer dereference").secure) {
            @:check2 _b.writeString(("; Secure" : stdgo.GoString));
        };
        {
            final __value__ = (@:checkr _c ?? throw "null pointer dereference").sameSite;
            if (__value__ == ((1 : stdgo._internal.net.http.Http_samesite.SameSite))) {} else if (__value__ == ((4 : stdgo._internal.net.http.Http_samesite.SameSite))) {
                @:check2 _b.writeString(("; SameSite=None" : stdgo.GoString));
            } else if (__value__ == ((2 : stdgo._internal.net.http.Http_samesite.SameSite))) {
                @:check2 _b.writeString(("; SameSite=Lax" : stdgo.GoString));
            } else if (__value__ == ((3 : stdgo._internal.net.http.Http_samesite.SameSite))) {
                @:check2 _b.writeString(("; SameSite=Strict" : stdgo.GoString));
            };
        };
        return (@:check2 _b.string() : stdgo.GoString)?.__copy__();
    }
}
