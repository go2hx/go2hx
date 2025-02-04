package stdgo._internal.net.http;
function statusText(_code:stdgo.GoInt):stdgo.GoString {
        {
            final __value__ = _code;
            if (__value__ == ((100 : stdgo.GoInt))) {
                return ("Continue" : stdgo.GoString);
            } else if (__value__ == ((101 : stdgo.GoInt))) {
                return ("Switching Protocols" : stdgo.GoString);
            } else if (__value__ == ((102 : stdgo.GoInt))) {
                return ("Processing" : stdgo.GoString);
            } else if (__value__ == ((103 : stdgo.GoInt))) {
                return ("Early Hints" : stdgo.GoString);
            } else if (__value__ == ((200 : stdgo.GoInt))) {
                return ("OK" : stdgo.GoString);
            } else if (__value__ == ((201 : stdgo.GoInt))) {
                return ("Created" : stdgo.GoString);
            } else if (__value__ == ((202 : stdgo.GoInt))) {
                return ("Accepted" : stdgo.GoString);
            } else if (__value__ == ((203 : stdgo.GoInt))) {
                return ("Non-Authoritative Information" : stdgo.GoString);
            } else if (__value__ == ((204 : stdgo.GoInt))) {
                return ("No Content" : stdgo.GoString);
            } else if (__value__ == ((205 : stdgo.GoInt))) {
                return ("Reset Content" : stdgo.GoString);
            } else if (__value__ == ((206 : stdgo.GoInt))) {
                return ("Partial Content" : stdgo.GoString);
            } else if (__value__ == ((207 : stdgo.GoInt))) {
                return ("Multi-Status" : stdgo.GoString);
            } else if (__value__ == ((208 : stdgo.GoInt))) {
                return ("Already Reported" : stdgo.GoString);
            } else if (__value__ == ((226 : stdgo.GoInt))) {
                return ("IM Used" : stdgo.GoString);
            } else if (__value__ == ((300 : stdgo.GoInt))) {
                return ("Multiple Choices" : stdgo.GoString);
            } else if (__value__ == ((301 : stdgo.GoInt))) {
                return ("Moved Permanently" : stdgo.GoString);
            } else if (__value__ == ((302 : stdgo.GoInt))) {
                return ("Found" : stdgo.GoString);
            } else if (__value__ == ((303 : stdgo.GoInt))) {
                return ("See Other" : stdgo.GoString);
            } else if (__value__ == ((304 : stdgo.GoInt))) {
                return ("Not Modified" : stdgo.GoString);
            } else if (__value__ == ((305 : stdgo.GoInt))) {
                return ("Use Proxy" : stdgo.GoString);
            } else if (__value__ == ((307 : stdgo.GoInt))) {
                return ("Temporary Redirect" : stdgo.GoString);
            } else if (__value__ == ((308 : stdgo.GoInt))) {
                return ("Permanent Redirect" : stdgo.GoString);
            } else if (__value__ == ((400 : stdgo.GoInt))) {
                return ("Bad Request" : stdgo.GoString);
            } else if (__value__ == ((401 : stdgo.GoInt))) {
                return ("Unauthorized" : stdgo.GoString);
            } else if (__value__ == ((402 : stdgo.GoInt))) {
                return ("Payment Required" : stdgo.GoString);
            } else if (__value__ == ((403 : stdgo.GoInt))) {
                return ("Forbidden" : stdgo.GoString);
            } else if (__value__ == ((404 : stdgo.GoInt))) {
                return ("Not Found" : stdgo.GoString);
            } else if (__value__ == ((405 : stdgo.GoInt))) {
                return ("Method Not Allowed" : stdgo.GoString);
            } else if (__value__ == ((406 : stdgo.GoInt))) {
                return ("Not Acceptable" : stdgo.GoString);
            } else if (__value__ == ((407 : stdgo.GoInt))) {
                return ("Proxy Authentication Required" : stdgo.GoString);
            } else if (__value__ == ((408 : stdgo.GoInt))) {
                return ("Request Timeout" : stdgo.GoString);
            } else if (__value__ == ((409 : stdgo.GoInt))) {
                return ("Conflict" : stdgo.GoString);
            } else if (__value__ == ((410 : stdgo.GoInt))) {
                return ("Gone" : stdgo.GoString);
            } else if (__value__ == ((411 : stdgo.GoInt))) {
                return ("Length Required" : stdgo.GoString);
            } else if (__value__ == ((412 : stdgo.GoInt))) {
                return ("Precondition Failed" : stdgo.GoString);
            } else if (__value__ == ((413 : stdgo.GoInt))) {
                return ("Request Entity Too Large" : stdgo.GoString);
            } else if (__value__ == ((414 : stdgo.GoInt))) {
                return ("Request URI Too Long" : stdgo.GoString);
            } else if (__value__ == ((415 : stdgo.GoInt))) {
                return ("Unsupported Media Type" : stdgo.GoString);
            } else if (__value__ == ((416 : stdgo.GoInt))) {
                return ("Requested Range Not Satisfiable" : stdgo.GoString);
            } else if (__value__ == ((417 : stdgo.GoInt))) {
                return ("Expectation Failed" : stdgo.GoString);
            } else if (__value__ == ((418 : stdgo.GoInt))) {
                return ("I\'m a teapot" : stdgo.GoString);
            } else if (__value__ == ((421 : stdgo.GoInt))) {
                return ("Misdirected Request" : stdgo.GoString);
            } else if (__value__ == ((422 : stdgo.GoInt))) {
                return ("Unprocessable Entity" : stdgo.GoString);
            } else if (__value__ == ((423 : stdgo.GoInt))) {
                return ("Locked" : stdgo.GoString);
            } else if (__value__ == ((424 : stdgo.GoInt))) {
                return ("Failed Dependency" : stdgo.GoString);
            } else if (__value__ == ((425 : stdgo.GoInt))) {
                return ("Too Early" : stdgo.GoString);
            } else if (__value__ == ((426 : stdgo.GoInt))) {
                return ("Upgrade Required" : stdgo.GoString);
            } else if (__value__ == ((428 : stdgo.GoInt))) {
                return ("Precondition Required" : stdgo.GoString);
            } else if (__value__ == ((429 : stdgo.GoInt))) {
                return ("Too Many Requests" : stdgo.GoString);
            } else if (__value__ == ((431 : stdgo.GoInt))) {
                return ("Request Header Fields Too Large" : stdgo.GoString);
            } else if (__value__ == ((451 : stdgo.GoInt))) {
                return ("Unavailable For Legal Reasons" : stdgo.GoString);
            } else if (__value__ == ((500 : stdgo.GoInt))) {
                return ("Internal Server Error" : stdgo.GoString);
            } else if (__value__ == ((501 : stdgo.GoInt))) {
                return ("Not Implemented" : stdgo.GoString);
            } else if (__value__ == ((502 : stdgo.GoInt))) {
                return ("Bad Gateway" : stdgo.GoString);
            } else if (__value__ == ((503 : stdgo.GoInt))) {
                return ("Service Unavailable" : stdgo.GoString);
            } else if (__value__ == ((504 : stdgo.GoInt))) {
                return ("Gateway Timeout" : stdgo.GoString);
            } else if (__value__ == ((505 : stdgo.GoInt))) {
                return ("HTTP Version Not Supported" : stdgo.GoString);
            } else if (__value__ == ((506 : stdgo.GoInt))) {
                return ("Variant Also Negotiates" : stdgo.GoString);
            } else if (__value__ == ((507 : stdgo.GoInt))) {
                return ("Insufficient Storage" : stdgo.GoString);
            } else if (__value__ == ((508 : stdgo.GoInt))) {
                return ("Loop Detected" : stdgo.GoString);
            } else if (__value__ == ((510 : stdgo.GoInt))) {
                return ("Not Extended" : stdgo.GoString);
            } else if (__value__ == ((511 : stdgo.GoInt))) {
                return ("Network Authentication Required" : stdgo.GoString);
            } else {
                return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            };
        };
    }
