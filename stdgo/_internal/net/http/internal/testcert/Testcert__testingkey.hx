package stdgo._internal.net.http.internal.testcert;
function _testingKey(_s:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.strings.Strings_replaceall.replaceAll(_s?.__copy__(), ("TESTING KEY" : stdgo.GoString), ("PRIVATE KEY" : stdgo.GoString))?.__copy__();
    }
