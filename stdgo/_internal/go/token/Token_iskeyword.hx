package stdgo._internal.go.token;
function isKeyword(_name:stdgo.GoString):Bool {
        var __tmp__ = (stdgo._internal.go.token.Token__keywords._keywords != null && stdgo._internal.go.token.Token__keywords._keywords.__exists__(_name?.__copy__()) ? { _0 : stdgo._internal.go.token.Token__keywords._keywords[_name?.__copy__()], _1 : true } : { _0 : ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token), _1 : false }), __4:stdgo._internal.go.token.Token_token.Token = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/token/token.go#L325"
        return _ok;
    }
