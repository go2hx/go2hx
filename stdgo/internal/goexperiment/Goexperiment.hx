package stdgo.internal.goexperiment;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// Package goexperiment implements support for toolchain experiments.
	//
	// Toolchain experiments are controlled by the GOEXPERIMENT
	// environment variable. GOEXPERIMENT is a comma-separated list of
	// experiment names. GOEXPERIMENT can be set at make.bash time, which
	// sets the default experiments for binaries built with the tool
	// chain; or it can be set at build time. GOEXPERIMENT can also be set
	// to "none", which disables any experiments that were enabled at
	// make.bash time.
	//
	// Experiments are exposed to the build in the following ways:
	//
	// - Build tag goexperiment.x is set if experiment x (lower case) is
	// enabled.
	//
	// - For each experiment x (in camel case), this package contains a
	// boolean constant x and an integer constant xInt.
	//
	// - In runtime assembly, the macro GOEXPERIMENT_x is defined if
	// experiment x (lower case) is enabled.
	//
	// In the toolchain, the set of experiments enabled for the current
	// build should be accessed via objabi.Experiment.
	//
	// The set of experiments is included in the output of runtime.Version()
	// and "go version <binary>" if it differs from the default experiments.
	//
	// For the set of experiments supported by the current toolchain, see
	// "go doc goexperiment.Flags".
	//
	// Note that this package defines the set of experiments (in Flags)
	// and records the experiments that were enabled when the package
	// was compiled (as boolean and integer constants).
	//
	// Note especially that this package does not itself change behavior
	// at run time based on the GOEXPERIMENT variable.
	// The code used in builds to interpret the GOEXPERIMENT variable
	// is in the separate package internal/buildcfg.
**/
private var __go2hxdoc__package:Bool;

final boringCrypto:InvalidType = false;
final boringCryptoInt:GoUInt64 = ("0" : GoUInt64);
final fieldTrack:InvalidType = false;
final fieldTrackInt:GoUInt64 = ("0" : GoUInt64);
final heapMinimum512KiB:InvalidType = false;
final heapMinimum512KiBInt:GoUInt64 = ("0" : GoUInt64);
final preemptibleLoops:InvalidType = false;
final preemptibleLoopsInt:GoUInt64 = ("0" : GoUInt64);
final regabiArgs:InvalidType = false;
final regabiArgsInt:GoUInt64 = ("0" : GoUInt64);
final regabiWrappers:InvalidType = false;
final regabiWrappersInt:GoUInt64 = ("0" : GoUInt64);
final staticLockRanking:InvalidType = false;
final staticLockRankingInt:GoUInt64 = ("0" : GoUInt64);
final unified:InvalidType = false;
final unifiedInt:GoUInt64 = ("0" : GoUInt64);

/**
	// Flags is the set of experiments that can be enabled or disabled in
	// the current toolchain.
	//
	// When specified in the GOEXPERIMENT environment variable or as build
	// tags, experiments use the strings.ToLower of their field name.
	//
	// For the baseline experimental configuration, see
	// objabi.experimentBaseline.
	//
	// If you change this struct definition, run "go generate".
**/
@:structInit class Flags {
	public var fieldTrack:Bool = false;
	public var preemptibleLoops:Bool = false;
	public var staticLockRanking:Bool = false;
	public var boringCrypto:Bool = false;

	/**
		// Unified enables the compiler's unified IR construction
		// experiment.
	**/
	public var unified:Bool = false;

	/**
		// RegabiWrappers enables ABI wrappers for calling between
		// ABI0 and ABIInternal functions. Without this, the ABIs are
		// assumed to be identical so cross-ABI calls are direct.
	**/
	public var regabiWrappers:Bool = false;

	/**
		// RegabiArgs enables register arguments/results in all
		// compiled Go functions.
		//
		// Requires wrappers (to do ABI translation), and reflect (so
		// reflection calls use registers).
	**/
	public var regabiArgs:Bool = false;

	/**
		// HeapMinimum512KiB reduces the minimum heap size to 512 KiB.
		//
		// This was originally reduced as part of PacerRedesign, but
		// has been broken out to its own experiment that is disabled
		// by default.
	**/
	public var heapMinimum512KiB:Bool = false;

	public function new(?fieldTrack:Bool, ?preemptibleLoops:Bool, ?staticLockRanking:Bool, ?boringCrypto:Bool, ?unified:Bool, ?regabiWrappers:Bool,
			?regabiArgs:Bool, ?heapMinimum512KiB:Bool) {
		if (fieldTrack != null)
			this.fieldTrack = fieldTrack;
		if (preemptibleLoops != null)
			this.preemptibleLoops = preemptibleLoops;
		if (staticLockRanking != null)
			this.staticLockRanking = staticLockRanking;
		if (boringCrypto != null)
			this.boringCrypto = boringCrypto;
		if (unified != null)
			this.unified = unified;
		if (regabiWrappers != null)
			this.regabiWrappers = regabiWrappers;
		if (regabiArgs != null)
			this.regabiArgs = regabiArgs;
		if (heapMinimum512KiB != null)
			this.heapMinimum512KiB = heapMinimum512KiB;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new Flags(fieldTrack, preemptibleLoops, staticLockRanking, boringCrypto, unified, regabiWrappers, regabiArgs, heapMinimum512KiB);
	}
}
