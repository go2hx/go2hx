package stdgo._internal.testing;
@:interface typedef T_fuzzCrashError = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function unwrap():stdgo.Error;
    /**
        * CrashPath returns the path of the subtest that corresponds to the saved
        * crash input file in the seed corpus. The test can be re-run with go test
        * -run=$test/$name $test is the fuzz test name, and $name is the
        * filepath.Base of the string returned here.
        
        
    **/
    @:interfacetypeffun
    public dynamic function crashPath():stdgo.GoString;
    public dynamic function error():stdgo.GoString;
};
