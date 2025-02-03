package stdgo.strconv;
private function set_baseError(v:(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>):(stdgo.GoString, stdgo.GoString, stdgo.GoInt) -> stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError> {
        stdgo._internal.strconv.Strconv_baseError.baseError = v;
        return v;
    }
