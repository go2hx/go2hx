package stdgo._internal.net.textproto;
function _initCommonHeader():Void {
        stdgo._internal.net.textproto.Textproto__commonheader._commonHeader = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        for (__0 => _v in (new stdgo.Slice<stdgo.GoString>(39, 39, ...[
("Accept" : stdgo.GoString),
("Accept-Charset" : stdgo.GoString),
("Accept-Encoding" : stdgo.GoString),
("Accept-Language" : stdgo.GoString),
("Accept-Ranges" : stdgo.GoString),
("Cache-Control" : stdgo.GoString),
("Cc" : stdgo.GoString),
("Connection" : stdgo.GoString),
("Content-Id" : stdgo.GoString),
("Content-Language" : stdgo.GoString),
("Content-Length" : stdgo.GoString),
("Content-Transfer-Encoding" : stdgo.GoString),
("Content-Type" : stdgo.GoString),
("Cookie" : stdgo.GoString),
("Date" : stdgo.GoString),
("Dkim-Signature" : stdgo.GoString),
("Etag" : stdgo.GoString),
("Expires" : stdgo.GoString),
("From" : stdgo.GoString),
("Host" : stdgo.GoString),
("If-Modified-Since" : stdgo.GoString),
("If-None-Match" : stdgo.GoString),
("In-Reply-To" : stdgo.GoString),
("Last-Modified" : stdgo.GoString),
("Location" : stdgo.GoString),
("Message-Id" : stdgo.GoString),
("Mime-Version" : stdgo.GoString),
("Pragma" : stdgo.GoString),
("Received" : stdgo.GoString),
("Return-Path" : stdgo.GoString),
("Server" : stdgo.GoString),
("Set-Cookie" : stdgo.GoString),
("Subject" : stdgo.GoString),
("To" : stdgo.GoString),
("User-Agent" : stdgo.GoString),
("Via" : stdgo.GoString),
("X-Forwarded-For" : stdgo.GoString),
("X-Imforwards" : stdgo.GoString),
("X-Powered-By" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            stdgo._internal.net.textproto.Textproto__commonheader._commonHeader[_v] = _v?.__copy__();
        };
    }
