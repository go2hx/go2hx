package stdgo._internal.mime;
function _initMime():Void {
        {
            var _fn = (stdgo._internal.mime.Mime__testInitMime._testInitMime : () -> Void);
            if (_fn != null) {
                _fn();
            } else {
                stdgo._internal.mime.Mime__setMimeTypes._setMimeTypes(stdgo._internal.mime.Mime__builtinTypesLower._builtinTypesLower, stdgo._internal.mime.Mime__builtinTypesLower._builtinTypesLower);
                stdgo._internal.mime.Mime__osInitMime._osInitMime();
            };
        };
    }
