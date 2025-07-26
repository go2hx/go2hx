import stdgo.net.http.Http;
function main() {
    // issue
    // Http.handle("/", Http.fileServer(stdgo.Go.asInterface(("." : stdgo._internal.net.http.Http_dir.Dir))));
    Http.handleFunc("/export.go", (struct, request) -> {
        Http.serveFile(struct, request, "export.go");
    });
    Http.handleFunc("/go4hx.exe", (struct, request) -> {
        Http.serveFile(struct, request, "go4hx.exe");
    });

    Http.handleFunc("/check.json", (struct, request) -> {
        Http.serveFile(struct, request, "check.json");
    });
    Http.handleFunc("/query", (response, request) -> {
        var count = 0;
        var buf:String = "";
        for(key => value in request.uRL.query()) {
            trace(key, value);
            buf += key + " : " + value.toString() + "\r\n";
        }
        response.write(buf);
    });
    trace("start!");
    Http.listenAndServe("127.0.0.1:8090", null);
}