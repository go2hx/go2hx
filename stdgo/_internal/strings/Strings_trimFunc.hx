package stdgo._internal.strings;
function trimFunc(_s:stdgo.GoString, _f:stdgo.GoInt32 -> Bool):stdgo.GoString {
        return stdgo._internal.strings.Strings_trimRightFunc.trimRightFunc(stdgo._internal.strings.Strings_trimLeftFunc.trimLeftFunc(_s?.__copy__(), _f)?.__copy__(), _f)?.__copy__();
    }