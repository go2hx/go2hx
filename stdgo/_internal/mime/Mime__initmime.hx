package stdgo._internal.mime;
function _initMime():Void {
        {
            var _fn = (stdgo._internal.mime.Mime__testinitmime._testInitMime : () -> Void);
            if (_fn != null) {
                _fn();
            } else {
                stdgo._internal.mime.Mime__setmimetypes._setMimeTypes(stdgo._internal.mime.Mime__builtintypeslower._builtinTypesLower, stdgo._internal.mime.Mime__builtintypeslower._builtinTypesLower);
                stdgo._internal.mime.Mime__osinitmime._osInitMime();
            };
        };
    }
