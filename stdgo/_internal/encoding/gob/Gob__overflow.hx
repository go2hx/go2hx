package stdgo._internal.encoding.gob;
function _overflow(_name:stdgo.GoString):stdgo.Error {
        return stdgo._internal.errors.Errors_new_.new_(((("value for \"" : stdgo.GoString) + _name?.__copy__() : stdgo.GoString) + ("\" out of range" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
    }
