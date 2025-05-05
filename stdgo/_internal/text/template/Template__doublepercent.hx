package stdgo._internal.text.template;
function _doublePercent(_str:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec.go#L111"
        return stdgo._internal.strings.Strings_replaceall.replaceAll(_str?.__copy__(), ("%" : stdgo.GoString), ("%%" : stdgo.GoString))?.__copy__();
    }
