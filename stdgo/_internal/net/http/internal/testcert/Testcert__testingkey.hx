package stdgo._internal.net.http.internal.testcert;
function _testingKey(_s:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/net/http/internal/testcert/testcert.go#L65"
        return stdgo._internal.strings.Strings_replaceall.replaceAll(_s?.__copy__(), ("TESTING KEY" : stdgo.GoString), ("PRIVATE KEY" : stdgo.GoString))?.__copy__();
    }
