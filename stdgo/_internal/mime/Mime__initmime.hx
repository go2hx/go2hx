package stdgo._internal.mime;
function _initMime():Void {
        //"file:///home/runner/.go/go1.21.3/src/mime/type.go#L84"
        {
            var _fn = (stdgo._internal.mime.Mime__testinitmime._testInitMime : () -> Void);
            if (_fn != null) {
                //"file:///home/runner/.go/go1.21.3/src/mime/type.go#L85"
                _fn();
            } else {
                //"file:///home/runner/.go/go1.21.3/src/mime/type.go#L87"
                stdgo._internal.mime.Mime__setmimetypes._setMimeTypes(stdgo._internal.mime.Mime__builtintypeslower._builtinTypesLower, stdgo._internal.mime.Mime__builtintypeslower._builtinTypesLower);
                //"file:///home/runner/.go/go1.21.3/src/mime/type.go#L88"
                stdgo._internal.mime.Mime__osinitmime._osInitMime();
            };
        };
    }
