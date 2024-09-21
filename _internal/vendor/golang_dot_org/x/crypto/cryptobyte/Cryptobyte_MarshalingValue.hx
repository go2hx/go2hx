package _internal.vendor.golang_dot_org.x.crypto.cryptobyte;
typedef MarshalingValue = stdgo.StructType & {
    /**
        Marshal is called by Builder.AddValue. It receives a pointer to a builder
        to marshal itself into. It may return an error that occurred during
        marshaling, such as unset or invalid values.
        
        
    **/
    public dynamic function marshal(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):stdgo.Error;
};
