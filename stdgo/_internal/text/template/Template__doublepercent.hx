package stdgo._internal.text.template;
function _doublePercent(_str:stdgo.GoString):stdgo.GoString {
        return stdgo._internal.strings.Strings_replaceall.replaceAll(_str?.__copy__(), ("%" : stdgo.GoString), ("%%" : stdgo.GoString))?.__copy__();
    }
