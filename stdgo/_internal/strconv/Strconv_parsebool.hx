package stdgo._internal.strconv;
function parseBool(_str:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/strconv/atob.go#L11"
        {
            final __value__ = _str;
            if (__value__ == (("1" : stdgo.GoString)) || __value__ == (("t" : stdgo.GoString)) || __value__ == (("T" : stdgo.GoString)) || __value__ == (("true" : stdgo.GoString)) || __value__ == (("TRUE" : stdgo.GoString)) || __value__ == (("True" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/atob.go#L13"
                return { _0 : true, _1 : (null : stdgo.Error) };
            } else if (__value__ == (("0" : stdgo.GoString)) || __value__ == (("f" : stdgo.GoString)) || __value__ == (("F" : stdgo.GoString)) || __value__ == (("false" : stdgo.GoString)) || __value__ == (("FALSE" : stdgo.GoString)) || __value__ == (("False" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/strconv/atob.go#L15"
                return { _0 : false, _1 : (null : stdgo.Error) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strconv/atob.go#L17"
        return { _0 : false, _1 : stdgo.Go.asInterface(stdgo._internal.strconv.Strconv__syntaxerror._syntaxError(("ParseBool" : stdgo.GoString), _str?.__copy__())) };
    }
