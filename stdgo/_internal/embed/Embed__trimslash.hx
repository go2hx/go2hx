package stdgo._internal.embed;
function _trimSlash(_name:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L205"
        if ((((_name.length) > (0 : stdgo.GoInt) : Bool) && (_name[((_name.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L206"
            return (_name.__slice__(0, ((_name.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L208"
        return _name?.__copy__();
    }
